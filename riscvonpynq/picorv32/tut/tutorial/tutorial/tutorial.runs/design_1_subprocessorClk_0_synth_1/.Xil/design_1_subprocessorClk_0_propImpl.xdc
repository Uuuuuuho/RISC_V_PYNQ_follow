set_property SRC_FILE_INFO {cfile:/home/uho/workspace/3retry_RISCV/RISC-V-On-PYNQ/riscvonpynq/picorv32/tut/tutorial/tutorial/tutorial.srcs/sources_1/bd/design_1/ip/design_1_subprocessorClk_0/design_1_subprocessorClk_0.xdc rfile:../../../tutorial.srcs/sources_1/bd/design_1/ip/design_1_subprocessorClk_0/design_1_subprocessorClk_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.2
