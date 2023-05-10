module crc32_4bit ( 
    input   logic           clk,
    input   logic           rst_n,
    input   logic           crc_en,
    input   logic   [3:0]   data_in,
    input   logic           sof,
    input   logic           eof,
    output  logic   [31:0]  crc_out
    );


    localparam  logic   S_IDLE  = 1'b0;
    localparam  logic   S_CRC   = 1'b1;

    logic           state;
    logic   [31:0]  crc_q;
    logic   [31:0]  crc_c;

    assign crc_out  = crc_c;

    always_ff @(posedge clk) begin
        if(~rst_n) begin
            crc_q      <= ~0;
            state       <= S_IDLE;
        end

        else begin
            case (state)
                S_IDLE : begin
                    state       <= S_IDLE;
                    crc_q       <= ~0;
                    if (crc_en & sof) begin
                        crc_q   <= crc_c;
                        state   <= S_CRC;
                    end
                end

                S_CRC : begin
                    state   <= S_IDLE;
                    if (crc_en) begin
                        state   <= S_CRC;
                        crc_q   <= crc_c;
                        if (eof) begin
                            crc_q       <= ~0;
                            state       <= S_IDLE;
                        end
                    end
                end
            endcase
        end
    end

    assign crc_c[0]  = crc_q[28] ^ data_in[0];
    assign crc_c[1]  = crc_q[28] ^ crc_q[29] ^ data_in[0] ^ data_in[1];
    assign crc_c[2]  = crc_q[28] ^ crc_q[29] ^ crc_q[30]  ^ data_in[0] ^ data_in[1] ^ data_in[2];
    assign crc_c[3]  = crc_q[29] ^ crc_q[30] ^ crc_q[31]  ^ data_in[1] ^ data_in[2] ^ data_in[3];
    assign crc_c[4]  = crc_q[0]  ^ crc_q[28] ^ crc_q[30]  ^ crc_q[31]  ^ data_in[0] ^ data_in[2] ^ data_in[3];
    assign crc_c[5]  = crc_q[1]  ^ crc_q[28] ^ crc_q[29]  ^ crc_q[31]  ^ data_in[0] ^ data_in[1] ^ data_in[3];
    assign crc_c[6]  = crc_q[2]  ^ crc_q[29] ^ crc_q[30]  ^ data_in[1] ^ data_in[2];
    assign crc_c[7]  = crc_q[3]  ^ crc_q[28] ^ crc_q[30]  ^ crc_q[31]  ^ data_in[0] ^ data_in[2] ^ data_in[3];
    assign crc_c[8]  = crc_q[4]  ^ crc_q[28] ^ crc_q[29]  ^ crc_q[31]  ^ data_in[0] ^ data_in[1] ^ data_in[3];
    assign crc_c[9]  = crc_q[5]  ^ crc_q[29] ^ crc_q[30]  ^ data_in[1] ^ data_in[2];
    assign crc_c[10] = crc_q[6]  ^ crc_q[28] ^ crc_q[30]  ^ crc_q[31]  ^ data_in[0] ^ data_in[2] ^ data_in[3];
    assign crc_c[11] = crc_q[7]  ^ crc_q[28] ^ crc_q[29]  ^ crc_q[31]  ^ data_in[0] ^ data_in[1] ^ data_in[3];
    assign crc_c[12] = crc_q[8]  ^ crc_q[28] ^ crc_q[29]  ^ crc_q[30]  ^ data_in[0] ^ data_in[1] ^ data_in[2];
    assign crc_c[13] = crc_q[9]  ^ crc_q[29] ^ crc_q[30]  ^ crc_q[31]  ^ data_in[1] ^ data_in[2] ^ data_in[3];
    assign crc_c[14] = crc_q[10] ^ crc_q[30] ^ crc_q[31]  ^ data_in[2] ^ data_in[3];
    assign crc_c[15] = crc_q[11] ^ crc_q[31] ^ data_in[3];
    assign crc_c[16] = crc_q[12] ^ crc_q[28] ^ data_in[0];
    assign crc_c[17] = crc_q[13] ^ crc_q[29] ^ data_in[1];
    assign crc_c[18] = crc_q[14] ^ crc_q[30] ^ data_in[2];
    assign crc_c[19] = crc_q[15] ^ crc_q[31] ^ data_in[3];
    assign crc_c[20] = crc_q[16];
    assign crc_c[21] = crc_q[17];
    assign crc_c[22] = crc_q[18] ^ crc_q[28] ^ data_in[0];
    assign crc_c[23] = crc_q[19] ^ crc_q[28] ^ crc_q[29] ^ data_in[0] ^ data_in[1];
    assign crc_c[24] = crc_q[20] ^ crc_q[29] ^ crc_q[30] ^ data_in[1] ^ data_in[2];
    assign crc_c[25] = crc_q[21] ^ crc_q[30] ^ crc_q[31] ^ data_in[2] ^ data_in[3];
    assign crc_c[26] = crc_q[22] ^ crc_q[28] ^ crc_q[31] ^ data_in[0] ^ data_in[3];
    assign crc_c[27] = crc_q[23] ^ crc_q[29] ^ data_in[1];
    assign crc_c[28] = crc_q[24] ^ crc_q[30] ^ data_in[2];
    assign crc_c[29] = crc_q[25] ^ crc_q[31] ^ data_in[3];
    assign crc_c[30] = crc_q[26];
    assign crc_c[31] = crc_q[27];
 

    // initial begin
    //     $dumpfile("crc32_4bit.vcd");
    //     $dumpvars();
    // end

endmodule