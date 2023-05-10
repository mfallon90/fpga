
`timescale 1 ns / 1 ps

//////////////////////////////////////////////////////////////////////////////////
//
// Engineer: Michael Fallon
//
// Design Name: AXI STREAM SLAVE
// Module Name: fm_synth_top
// Tool Versions: Vivado 2020.2
//
// Golden Rule: The valid signal from the sending interface CANNOT be dependent 
// upon the ready signal from the receiving interface. The ready signal CAN be 
// dependent upon the valid signal from the sending interface
//
//////////////////////////////////////////////////////////////////////////////////


module axis_slave #(
    parameter integer C_AXIS_DATA_WIDTH    = 32
    )(
    input   logic                                   s_axis_aclk,
    input   logic                                   s_axis_aresetn,
    output  logic                                   s_axis_tready,
    input   logic   [C_AXIS_DATA_WIDTH-1 : 0]       s_axis_tdata,
    input   logic   [(C_AXIS_DATA_WIDTH/8)-1 : 0]   s_axis_tstrb,
    input   logic                                   s_axis_tlast,
    input   logic                                   s_axis_tvalid
    );
    
    // function called clogb2 that returns an integer which has the 
    // value of the ceiling of the log base 2.
    function integer clogb2 (input integer bit_depth);
        begin
            for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
                bit_depth = bit_depth >> 1;
        end
    endfunction

    localparam NUMBER_OF_INPUT_WORDS  = 8;
    localparam bit_num  = clogb2(NUMBER_OF_INPUT_WORDS-1);

    parameter   logic   S_IDLE          = 1'b0;
    parameter   logic   S_WRITE_FIFO    = 1'b1;

    genvar                  byte_index;

    logic                   axis_tready;
    logic                   state;  
    logic                   fifo_wren;
    logic                   fifo_full_flag;
    logic   [bit_num-1:0]   write_pointer;
    logic                   writes_done;

    assign fifo_wren = s_axis_tvalid && axis_tready;
    assign axis_tready = ((state == S_WRITE_FIFO) && (write_pointer <= NUMBER_OF_INPUT_WORDS-1));
    assign s_axis_tready    = axis_tready;

    always @(posedge s_axis_aclk) begin
        if (!s_axis_aresetn) begin
            state <= S_IDLE;
        end
        
        else begin
            case (state)
                S_IDLE: 
                    // The sink starts accepting tdata when 
                    // there tvalid is asserted to mark the
                    // presence of valid streaming data 
                    if (s_axis_tvalid) begin
                        state <= S_WRITE_FIFO;
                    end

                    else begin
                        state <= S_IDLE;
                    end

                S_WRITE_FIFO: 
                    // When the sink has accepted all the streaming input data,
                    // the interface swiches functionality to a streaming master
                    if (writes_done) begin
                        state <= S_IDLE;
                    end

                    else begin
                        // The sink accepts and stores tdata 
                        // into FIFO
                        state <= S_WRITE_FIFO;
                    end
            endcase
        end
    end

    always@(posedge s_axis_aclk) begin
        if(!s_axis_aresetn) begin
            write_pointer <= 0;
            writes_done <= 1'b0;
        end

        else begin
            if (write_pointer <= NUMBER_OF_INPUT_WORDS-1) begin
                if (fifo_wren) begin
                    // write pointer is incremented after every write to the FIFO
                    // when FIFO write signal is enabled.
                    write_pointer <= write_pointer + 1;
                    writes_done <= 1'b0;
                end
                  
                if ((write_pointer == NUMBER_OF_INPUT_WORDS-1)|| s_axis_tlast) begin
                    // reads_done is asserted when NUMBER_OF_INPUT_WORDS numbers of streaming data 
                    // has been written to the FIFO which is also marked by s_axis_tlast(kept for optional usage).
                    writes_done <= 1'b1;
                end
            end
        end
    end

    // FIFO Implementation
    generate 
        for(byte_index=0; byte_index<= (C_AXIS_DATA_WIDTH/8-1); byte_index=byte_index+1) begin:FIFO_GEN
            reg  [(C_AXIS_DATA_WIDTH/4)-1:0] stream_data_fifo [0 : NUMBER_OF_INPUT_WORDS-1];
        
            always @(posedge s_axis_aclk) begin
                if (fifo_wren) begin// && s_axis_tstrb[byte_index]) begin
                    stream_data_fifo[write_pointer] <= s_axis_tdata[(byte_index*8+7) -: 8];
                end
            end  
        end
    endgenerate


    endmodule
