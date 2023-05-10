
setws C:/Users/mfall/Documents/network_stack/vitis

platform create -name {platform} -hw {C:\Users\mfall\Documents\network_stack\vivado\block_design_wrapper.xsa} 

domain create -name {domain} -proc {microblaze_0} -os {standalone}

domain active {domain}

platform active {platform}

platform generate

app create -name {application} -platform {platform} -domain {domain} -template {Empty Application} -lang {c}

importsources -name {application} -path {C:\Users\mfall\Documents\network_stack\c} -soft-link

app build -name application