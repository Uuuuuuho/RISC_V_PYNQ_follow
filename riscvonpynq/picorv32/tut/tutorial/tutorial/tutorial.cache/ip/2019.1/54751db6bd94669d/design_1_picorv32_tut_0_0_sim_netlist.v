// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Feb 18 18:11:42 2020
// Host        : hulk running 64-bit unknown
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_picorv32_tut_0_0_sim_netlist.v
// Design      : design_1_picorv32_tut_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_picorv32_tut_0_0,picorv32_axi,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "picorv32_axi,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    resetn,
    trap,
    mem_axi_awvalid,
    mem_axi_awready,
    mem_axi_awaddr,
    mem_axi_awprot,
    mem_axi_wvalid,
    mem_axi_wready,
    mem_axi_wdata,
    mem_axi_wstrb,
    mem_axi_bvalid,
    mem_axi_bready,
    mem_axi_arvalid,
    mem_axi_arready,
    mem_axi_araddr,
    mem_axi_arprot,
    mem_axi_rvalid,
    mem_axi_rready,
    mem_axi_rdata,
    pcpi_valid,
    pcpi_insn,
    pcpi_rs1,
    pcpi_rs2,
    pcpi_wr,
    pcpi_rd,
    pcpi_wait,
    pcpi_ready,
    irq,
    eoi,
    trace_valid,
    trace_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_subprocessorClk_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  output trap;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mem_axi AWVALID" *) output mem_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mem_axi AWREADY" *) input mem_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mem_axi AWADDR" *) output [31:0]mem_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mem_axi AWPROT" *) output [2:0]mem_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mem_axi WVALID" *) output mem_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mem_axi WREADY" *) input mem_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mem_axi WDATA" *) output [31:0]mem_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mem_axi WSTRB" *) output [3:0]mem_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mem_axi BVALID" *) input mem_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mem_axi BREADY" *) output mem_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mem_axi ARVALID" *) output mem_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mem_axi ARREADY" *) input mem_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mem_axi ARADDR" *) output [31:0]mem_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mem_axi ARPROT" *) output [2:0]mem_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mem_axi RVALID" *) input mem_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mem_axi RREADY" *) output mem_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mem_axi RDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mem_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]mem_axi_rdata;
  (* X_INTERFACE_INFO = "cliffordwolf:ip:PicoBram:1.0 pcpi VALID, cliffordwolf:ip:pcpi:1.0 ip_pcpi pcpi_valid" *) output pcpi_valid;
  (* X_INTERFACE_INFO = "cliffordwolf:ip:pcpi:1.0 ip_pcpi pcpi_insn" *) output [31:0]pcpi_insn;
  (* X_INTERFACE_INFO = "cliffordwolf:ip:pcpi:1.0 ip_pcpi pcpi_rs1" *) output [31:0]pcpi_rs1;
  (* X_INTERFACE_INFO = "cliffordwolf:ip:pcpi:1.0 ip_pcpi pcpi_rs2" *) output [31:0]pcpi_rs2;
  (* X_INTERFACE_INFO = "cliffordwolf:ip:pcpi:1.0 ip_pcpi pcpi_wr" *) input pcpi_wr;
  (* X_INTERFACE_INFO = "cliffordwolf:ip:pcpi:1.0 ip_pcpi pcpi_rd" *) input [31:0]pcpi_rd;
  (* X_INTERFACE_INFO = "cliffordwolf:ip:pcpi:1.0 ip_pcpi pcpi_wait" *) input pcpi_wait;
  (* X_INTERFACE_INFO = "cliffordwolf:ip:PicoBram:1.0 pcpi READY, cliffordwolf:ip:pcpi:1.0 ip_pcpi pcpi_ready" *) input pcpi_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) input [31:0]irq;
  output [31:0]eoi;
  output trace_valid;
  output [35:0]trace_data;

  wire \<const0> ;
  wire clk;
  wire [2:2]\^mem_axi_arprot ;
  wire mem_axi_arready;
  wire mem_axi_arvalid;
  wire [31:2]\^mem_axi_awaddr ;
  wire mem_axi_awready;
  wire mem_axi_awvalid;
  wire mem_axi_bready;
  wire mem_axi_bvalid;
  wire [31:0]mem_axi_rdata;
  wire mem_axi_rready;
  wire mem_axi_rvalid;
  wire [31:0]mem_axi_wdata;
  wire mem_axi_wready;
  wire [3:0]mem_axi_wstrb;
  wire mem_axi_wvalid;
  wire [31:0]pcpi_insn;
  wire [31:0]pcpi_rs1;
  wire [31:0]pcpi_rs2;
  wire pcpi_valid;
  wire resetn;
  wire trap;

  assign eoi[31] = \<const0> ;
  assign eoi[30] = \<const0> ;
  assign eoi[29] = \<const0> ;
  assign eoi[28] = \<const0> ;
  assign eoi[27] = \<const0> ;
  assign eoi[26] = \<const0> ;
  assign eoi[25] = \<const0> ;
  assign eoi[24] = \<const0> ;
  assign eoi[23] = \<const0> ;
  assign eoi[22] = \<const0> ;
  assign eoi[21] = \<const0> ;
  assign eoi[20] = \<const0> ;
  assign eoi[19] = \<const0> ;
  assign eoi[18] = \<const0> ;
  assign eoi[17] = \<const0> ;
  assign eoi[16] = \<const0> ;
  assign eoi[15] = \<const0> ;
  assign eoi[14] = \<const0> ;
  assign eoi[13] = \<const0> ;
  assign eoi[12] = \<const0> ;
  assign eoi[11] = \<const0> ;
  assign eoi[10] = \<const0> ;
  assign eoi[9] = \<const0> ;
  assign eoi[8] = \<const0> ;
  assign eoi[7] = \<const0> ;
  assign eoi[6] = \<const0> ;
  assign eoi[5] = \<const0> ;
  assign eoi[4] = \<const0> ;
  assign eoi[3] = \<const0> ;
  assign eoi[2] = \<const0> ;
  assign eoi[1] = \<const0> ;
  assign eoi[0] = \<const0> ;
  assign mem_axi_araddr[31:2] = \^mem_axi_awaddr [31:2];
  assign mem_axi_araddr[1] = \<const0> ;
  assign mem_axi_araddr[0] = \<const0> ;
  assign mem_axi_arprot[2] = \^mem_axi_arprot [2];
  assign mem_axi_arprot[1] = \<const0> ;
  assign mem_axi_arprot[0] = \<const0> ;
  assign mem_axi_awaddr[31:2] = \^mem_axi_awaddr [31:2];
  assign mem_axi_awaddr[1] = \<const0> ;
  assign mem_axi_awaddr[0] = \<const0> ;
  assign mem_axi_awprot[2] = \<const0> ;
  assign mem_axi_awprot[1] = \<const0> ;
  assign mem_axi_awprot[0] = \<const0> ;
  assign trace_valid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32_axi inst
       (.clk(clk),
        .mem_axi_arprot(\^mem_axi_arprot ),
        .mem_axi_arready(mem_axi_arready),
        .mem_axi_arvalid(mem_axi_arvalid),
        .mem_axi_awaddr(\^mem_axi_awaddr ),
        .mem_axi_awready(mem_axi_awready),
        .mem_axi_awvalid(mem_axi_awvalid),
        .mem_axi_bready(mem_axi_bready),
        .mem_axi_bvalid(mem_axi_bvalid),
        .mem_axi_rdata(mem_axi_rdata),
        .mem_axi_rready(mem_axi_rready),
        .mem_axi_rvalid(mem_axi_rvalid),
        .mem_axi_wdata(mem_axi_wdata),
        .mem_axi_wready(mem_axi_wready),
        .mem_axi_wvalid(mem_axi_wvalid),
        .\mem_wstrb_reg[0] (mem_axi_wstrb[0]),
        .\mem_wstrb_reg[1] (mem_axi_wstrb[1]),
        .\mem_wstrb_reg[2] (mem_axi_wstrb[2]),
        .\mem_wstrb_reg[3] (mem_axi_wstrb[3]),
        .pcpi_insn(pcpi_insn),
        .pcpi_rs1(pcpi_rs1),
        .pcpi_rs2(pcpi_rs2),
        .pcpi_valid(pcpi_valid),
        .resetn(resetn),
        .trap(trap));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32
   (is_lui_auipc_jal_jalr_addi_add_sub0,
    instr_jal_reg_0,
    instr_sub,
    instr_add,
    instr_addi,
    instr_jalr,
    is_lbu_lhu_lw,
    instr_ecall_ebreak,
    pcpi_timeout,
    trap_reg_0,
    mem_axi_arprot,
    instr_lh,
    instr_lb,
    mem_do_wdata,
    mem_do_rdata,
    mem_valid,
    is_beq_bne_blt_bge_bltu_bgeu,
    latched_branch_reg_0,
    latched_stalu_reg_0,
    latched_is_lb_reg_0,
    latched_is_lh_reg_0,
    latched_is_lu_reg_0,
    latched_store_reg_0,
    mem_do_prefetch_reg_0,
    pcpi_valid,
    mem_axi_rready,
    \mem_wstrb_reg[2]_0 ,
    \mem_wstrb_reg[3]_0 ,
    \mem_wstrb_reg[0]_0 ,
    \mem_wstrb_reg[1]_0 ,
    \cpu_state_reg[5]_0 ,
    Q,
    instr_beq_reg_0,
    \cpu_state_reg[5]_1 ,
    \active_reg[1] ,
    \reg_op1_reg[31]_0 ,
    \pcpi_insn_reg[31]_0 ,
    \reg_op2_reg[31]_0 ,
    mem_axi_awvalid,
    mem_axi_wvalid,
    mem_axi_bready,
    mem_axi_arvalid,
    mem_axi_bvalid_0,
    latched_is_lu,
    mem_axi_awaddr,
    mem_axi_wdata,
    \mem_state_reg[0]_0 ,
    \cpu_state_reg[7]_0 ,
    \active_reg[1]_0 ,
    instr_bge_reg_0,
    decoder_trigger_reg_0,
    \cpu_state_reg[3]_0 ,
    clk,
    mem_do_wdata_reg_0,
    mem_do_rdata_reg_0,
    latched_branch_reg_1,
    latched_stalu_reg_1,
    latched_is_lb_reg_1,
    latched_is_lh_reg_1,
    latched_is_lu_reg_1,
    is_lui_auipc_jal_jalr_addi_add_sub_reg_0,
    latched_store_reg_1,
    pcpi_valid_reg_0,
    mem_axi_rdata,
    mem_axi_bvalid,
    mem_axi_rvalid,
    resetn,
    ack_awvalid,
    mem_axi_wvalid_0,
    mem_axi_arvalid_0,
    xfer_done,
    SS);
  output is_lui_auipc_jal_jalr_addi_add_sub0;
  output instr_jal_reg_0;
  output instr_sub;
  output instr_add;
  output instr_addi;
  output instr_jalr;
  output is_lbu_lhu_lw;
  output instr_ecall_ebreak;
  output pcpi_timeout;
  output trap_reg_0;
  output [0:0]mem_axi_arprot;
  output instr_lh;
  output instr_lb;
  output mem_do_wdata;
  output mem_do_rdata;
  output mem_valid;
  output is_beq_bne_blt_bge_bltu_bgeu;
  output latched_branch_reg_0;
  output latched_stalu_reg_0;
  output latched_is_lb_reg_0;
  output latched_is_lh_reg_0;
  output latched_is_lu_reg_0;
  output latched_store_reg_0;
  output mem_do_prefetch_reg_0;
  output pcpi_valid;
  output mem_axi_rready;
  output \mem_wstrb_reg[2]_0 ;
  output \mem_wstrb_reg[3]_0 ;
  output \mem_wstrb_reg[0]_0 ;
  output \mem_wstrb_reg[1]_0 ;
  output \cpu_state_reg[5]_0 ;
  output [2:0]Q;
  output instr_beq_reg_0;
  output \cpu_state_reg[5]_1 ;
  output [0:0]\active_reg[1] ;
  output [31:0]\reg_op1_reg[31]_0 ;
  output [31:0]\pcpi_insn_reg[31]_0 ;
  output [31:0]\reg_op2_reg[31]_0 ;
  output mem_axi_awvalid;
  output mem_axi_wvalid;
  output mem_axi_bready;
  output mem_axi_arvalid;
  output mem_axi_bvalid_0;
  output latched_is_lu;
  output [29:0]mem_axi_awaddr;
  output [31:0]mem_axi_wdata;
  output \mem_state_reg[0]_0 ;
  output \cpu_state_reg[7]_0 ;
  output \active_reg[1]_0 ;
  output instr_bge_reg_0;
  output decoder_trigger_reg_0;
  output \cpu_state_reg[3]_0 ;
  input clk;
  input mem_do_wdata_reg_0;
  input mem_do_rdata_reg_0;
  input latched_branch_reg_1;
  input latched_stalu_reg_1;
  input latched_is_lb_reg_1;
  input latched_is_lh_reg_1;
  input latched_is_lu_reg_1;
  input is_lui_auipc_jal_jalr_addi_add_sub_reg_0;
  input latched_store_reg_1;
  input pcpi_valid_reg_0;
  input [31:0]mem_axi_rdata;
  input mem_axi_bvalid;
  input mem_axi_rvalid;
  input resetn;
  input ack_awvalid;
  input mem_axi_wvalid_0;
  input mem_axi_arvalid_0;
  input xfer_done;
  input [0:0]SS;

  wire [2:0]Q;
  wire [0:0]SS;
  wire ack_awvalid;
  wire [0:0]\active_reg[1] ;
  wire \active_reg[1]_0 ;
  wire [31:0]alu_out;
  wire [31:0]alu_out_q;
  wire \alu_out_q[0]_i_10_n_0 ;
  wire \alu_out_q[0]_i_11_n_0 ;
  wire \alu_out_q[0]_i_12_n_0 ;
  wire \alu_out_q[0]_i_13_n_0 ;
  wire \alu_out_q[0]_i_14_n_0 ;
  wire \alu_out_q[0]_i_15_n_0 ;
  wire \alu_out_q[0]_i_17_n_0 ;
  wire \alu_out_q[0]_i_18_n_0 ;
  wire \alu_out_q[0]_i_19_n_0 ;
  wire \alu_out_q[0]_i_21_n_0 ;
  wire \alu_out_q[0]_i_22_n_0 ;
  wire \alu_out_q[0]_i_23_n_0 ;
  wire \alu_out_q[0]_i_24_n_0 ;
  wire \alu_out_q[0]_i_25_n_0 ;
  wire \alu_out_q[0]_i_26_n_0 ;
  wire \alu_out_q[0]_i_27_n_0 ;
  wire \alu_out_q[0]_i_28_n_0 ;
  wire \alu_out_q[0]_i_30_n_0 ;
  wire \alu_out_q[0]_i_31_n_0 ;
  wire \alu_out_q[0]_i_32_n_0 ;
  wire \alu_out_q[0]_i_33_n_0 ;
  wire \alu_out_q[0]_i_35_n_0 ;
  wire \alu_out_q[0]_i_36_n_0 ;
  wire \alu_out_q[0]_i_37_n_0 ;
  wire \alu_out_q[0]_i_38_n_0 ;
  wire \alu_out_q[0]_i_39_n_0 ;
  wire \alu_out_q[0]_i_3_n_0 ;
  wire \alu_out_q[0]_i_40_n_0 ;
  wire \alu_out_q[0]_i_41_n_0 ;
  wire \alu_out_q[0]_i_42_n_0 ;
  wire \alu_out_q[0]_i_43_n_0 ;
  wire \alu_out_q[0]_i_44_n_0 ;
  wire \alu_out_q[0]_i_45_n_0 ;
  wire \alu_out_q[0]_i_46_n_0 ;
  wire \alu_out_q[0]_i_47_n_0 ;
  wire \alu_out_q[0]_i_48_n_0 ;
  wire \alu_out_q[0]_i_49_n_0 ;
  wire \alu_out_q[0]_i_4_n_0 ;
  wire \alu_out_q[0]_i_50_n_0 ;
  wire \alu_out_q[0]_i_51_n_0 ;
  wire \alu_out_q[0]_i_52_n_0 ;
  wire \alu_out_q[0]_i_53_n_0 ;
  wire \alu_out_q[0]_i_54_n_0 ;
  wire \alu_out_q[0]_i_8_n_0 ;
  wire \alu_out_q[0]_i_9_n_0 ;
  wire \alu_out_q[10]_i_2_n_0 ;
  wire \alu_out_q[11]_i_3_n_0 ;
  wire \alu_out_q[11]_i_4_n_0 ;
  wire \alu_out_q[11]_i_5_n_0 ;
  wire \alu_out_q[11]_i_6_n_0 ;
  wire \alu_out_q[11]_i_7_n_0 ;
  wire \alu_out_q[12]_i_2_n_0 ;
  wire \alu_out_q[13]_i_2_n_0 ;
  wire \alu_out_q[14]_i_2_n_0 ;
  wire \alu_out_q[15]_i_3_n_0 ;
  wire \alu_out_q[15]_i_4_n_0 ;
  wire \alu_out_q[15]_i_5_n_0 ;
  wire \alu_out_q[15]_i_6_n_0 ;
  wire \alu_out_q[15]_i_7_n_0 ;
  wire \alu_out_q[16]_i_2_n_0 ;
  wire \alu_out_q[17]_i_2_n_0 ;
  wire \alu_out_q[18]_i_2_n_0 ;
  wire \alu_out_q[19]_i_3_n_0 ;
  wire \alu_out_q[19]_i_4_n_0 ;
  wire \alu_out_q[19]_i_5_n_0 ;
  wire \alu_out_q[19]_i_6_n_0 ;
  wire \alu_out_q[19]_i_7_n_0 ;
  wire \alu_out_q[1]_i_2_n_0 ;
  wire \alu_out_q[20]_i_2_n_0 ;
  wire \alu_out_q[21]_i_2_n_0 ;
  wire \alu_out_q[22]_i_2_n_0 ;
  wire \alu_out_q[23]_i_3_n_0 ;
  wire \alu_out_q[23]_i_4_n_0 ;
  wire \alu_out_q[23]_i_5_n_0 ;
  wire \alu_out_q[23]_i_6_n_0 ;
  wire \alu_out_q[23]_i_7_n_0 ;
  wire \alu_out_q[24]_i_2_n_0 ;
  wire \alu_out_q[25]_i_2_n_0 ;
  wire \alu_out_q[26]_i_2_n_0 ;
  wire \alu_out_q[27]_i_3_n_0 ;
  wire \alu_out_q[27]_i_4_n_0 ;
  wire \alu_out_q[27]_i_5_n_0 ;
  wire \alu_out_q[27]_i_6_n_0 ;
  wire \alu_out_q[27]_i_7_n_0 ;
  wire \alu_out_q[28]_i_2_n_0 ;
  wire \alu_out_q[29]_i_2_n_0 ;
  wire \alu_out_q[2]_i_2_n_0 ;
  wire \alu_out_q[30]_i_2_n_0 ;
  wire \alu_out_q[31]_i_2_n_0 ;
  wire \alu_out_q[31]_i_4_n_0 ;
  wire \alu_out_q[31]_i_5_n_0 ;
  wire \alu_out_q[31]_i_6_n_0 ;
  wire \alu_out_q[31]_i_7_n_0 ;
  wire \alu_out_q[31]_i_8_n_0 ;
  wire \alu_out_q[31]_i_9_n_0 ;
  wire \alu_out_q[3]_i_3_n_0 ;
  wire \alu_out_q[3]_i_4_n_0 ;
  wire \alu_out_q[3]_i_5_n_0 ;
  wire \alu_out_q[3]_i_6_n_0 ;
  wire \alu_out_q[3]_i_7_n_0 ;
  wire \alu_out_q[4]_i_2_n_0 ;
  wire \alu_out_q[5]_i_2_n_0 ;
  wire \alu_out_q[6]_i_2_n_0 ;
  wire \alu_out_q[7]_i_3_n_0 ;
  wire \alu_out_q[7]_i_4_n_0 ;
  wire \alu_out_q[7]_i_5_n_0 ;
  wire \alu_out_q[7]_i_6_n_0 ;
  wire \alu_out_q[7]_i_7_n_0 ;
  wire \alu_out_q[8]_i_2_n_0 ;
  wire \alu_out_q[9]_i_2_n_0 ;
  wire \alu_out_q_reg[0]_i_16_n_0 ;
  wire \alu_out_q_reg[0]_i_16_n_1 ;
  wire \alu_out_q_reg[0]_i_16_n_2 ;
  wire \alu_out_q_reg[0]_i_16_n_3 ;
  wire \alu_out_q_reg[0]_i_20_n_0 ;
  wire \alu_out_q_reg[0]_i_20_n_1 ;
  wire \alu_out_q_reg[0]_i_20_n_2 ;
  wire \alu_out_q_reg[0]_i_20_n_3 ;
  wire \alu_out_q_reg[0]_i_29_n_0 ;
  wire \alu_out_q_reg[0]_i_29_n_1 ;
  wire \alu_out_q_reg[0]_i_29_n_2 ;
  wire \alu_out_q_reg[0]_i_29_n_3 ;
  wire \alu_out_q_reg[0]_i_34_n_0 ;
  wire \alu_out_q_reg[0]_i_34_n_1 ;
  wire \alu_out_q_reg[0]_i_34_n_2 ;
  wire \alu_out_q_reg[0]_i_34_n_3 ;
  wire \alu_out_q_reg[0]_i_5_n_1 ;
  wire \alu_out_q_reg[0]_i_5_n_2 ;
  wire \alu_out_q_reg[0]_i_5_n_3 ;
  wire \alu_out_q_reg[0]_i_6_n_1 ;
  wire \alu_out_q_reg[0]_i_6_n_2 ;
  wire \alu_out_q_reg[0]_i_6_n_3 ;
  wire \alu_out_q_reg[0]_i_7_n_0 ;
  wire \alu_out_q_reg[0]_i_7_n_1 ;
  wire \alu_out_q_reg[0]_i_7_n_2 ;
  wire \alu_out_q_reg[0]_i_7_n_3 ;
  wire \alu_out_q_reg[11]_i_2_n_0 ;
  wire \alu_out_q_reg[11]_i_2_n_1 ;
  wire \alu_out_q_reg[11]_i_2_n_2 ;
  wire \alu_out_q_reg[11]_i_2_n_3 ;
  wire \alu_out_q_reg[11]_i_2_n_4 ;
  wire \alu_out_q_reg[11]_i_2_n_5 ;
  wire \alu_out_q_reg[11]_i_2_n_6 ;
  wire \alu_out_q_reg[11]_i_2_n_7 ;
  wire \alu_out_q_reg[15]_i_2_n_0 ;
  wire \alu_out_q_reg[15]_i_2_n_1 ;
  wire \alu_out_q_reg[15]_i_2_n_2 ;
  wire \alu_out_q_reg[15]_i_2_n_3 ;
  wire \alu_out_q_reg[15]_i_2_n_4 ;
  wire \alu_out_q_reg[15]_i_2_n_5 ;
  wire \alu_out_q_reg[15]_i_2_n_6 ;
  wire \alu_out_q_reg[15]_i_2_n_7 ;
  wire \alu_out_q_reg[19]_i_2_n_0 ;
  wire \alu_out_q_reg[19]_i_2_n_1 ;
  wire \alu_out_q_reg[19]_i_2_n_2 ;
  wire \alu_out_q_reg[19]_i_2_n_3 ;
  wire \alu_out_q_reg[19]_i_2_n_4 ;
  wire \alu_out_q_reg[19]_i_2_n_5 ;
  wire \alu_out_q_reg[19]_i_2_n_6 ;
  wire \alu_out_q_reg[19]_i_2_n_7 ;
  wire \alu_out_q_reg[23]_i_2_n_0 ;
  wire \alu_out_q_reg[23]_i_2_n_1 ;
  wire \alu_out_q_reg[23]_i_2_n_2 ;
  wire \alu_out_q_reg[23]_i_2_n_3 ;
  wire \alu_out_q_reg[23]_i_2_n_4 ;
  wire \alu_out_q_reg[23]_i_2_n_5 ;
  wire \alu_out_q_reg[23]_i_2_n_6 ;
  wire \alu_out_q_reg[23]_i_2_n_7 ;
  wire \alu_out_q_reg[27]_i_2_n_0 ;
  wire \alu_out_q_reg[27]_i_2_n_1 ;
  wire \alu_out_q_reg[27]_i_2_n_2 ;
  wire \alu_out_q_reg[27]_i_2_n_3 ;
  wire \alu_out_q_reg[27]_i_2_n_4 ;
  wire \alu_out_q_reg[27]_i_2_n_5 ;
  wire \alu_out_q_reg[27]_i_2_n_6 ;
  wire \alu_out_q_reg[27]_i_2_n_7 ;
  wire \alu_out_q_reg[31]_i_3_n_1 ;
  wire \alu_out_q_reg[31]_i_3_n_2 ;
  wire \alu_out_q_reg[31]_i_3_n_3 ;
  wire \alu_out_q_reg[31]_i_3_n_4 ;
  wire \alu_out_q_reg[31]_i_3_n_5 ;
  wire \alu_out_q_reg[31]_i_3_n_6 ;
  wire \alu_out_q_reg[31]_i_3_n_7 ;
  wire \alu_out_q_reg[3]_i_2_n_0 ;
  wire \alu_out_q_reg[3]_i_2_n_1 ;
  wire \alu_out_q_reg[3]_i_2_n_2 ;
  wire \alu_out_q_reg[3]_i_2_n_3 ;
  wire \alu_out_q_reg[3]_i_2_n_4 ;
  wire \alu_out_q_reg[3]_i_2_n_5 ;
  wire \alu_out_q_reg[3]_i_2_n_6 ;
  wire \alu_out_q_reg[3]_i_2_n_7 ;
  wire \alu_out_q_reg[7]_i_2_n_0 ;
  wire \alu_out_q_reg[7]_i_2_n_1 ;
  wire \alu_out_q_reg[7]_i_2_n_2 ;
  wire \alu_out_q_reg[7]_i_2_n_3 ;
  wire \alu_out_q_reg[7]_i_2_n_4 ;
  wire \alu_out_q_reg[7]_i_2_n_5 ;
  wire \alu_out_q_reg[7]_i_2_n_6 ;
  wire \alu_out_q_reg[7]_i_2_n_7 ;
  wire clk;
  wire \count_cycle[0]_i_2_n_0 ;
  wire [63:0]count_cycle_reg;
  wire \count_cycle_reg[0]_i_1_n_0 ;
  wire \count_cycle_reg[0]_i_1_n_1 ;
  wire \count_cycle_reg[0]_i_1_n_2 ;
  wire \count_cycle_reg[0]_i_1_n_3 ;
  wire \count_cycle_reg[0]_i_1_n_4 ;
  wire \count_cycle_reg[0]_i_1_n_5 ;
  wire \count_cycle_reg[0]_i_1_n_6 ;
  wire \count_cycle_reg[0]_i_1_n_7 ;
  wire \count_cycle_reg[12]_i_1_n_0 ;
  wire \count_cycle_reg[12]_i_1_n_1 ;
  wire \count_cycle_reg[12]_i_1_n_2 ;
  wire \count_cycle_reg[12]_i_1_n_3 ;
  wire \count_cycle_reg[12]_i_1_n_4 ;
  wire \count_cycle_reg[12]_i_1_n_5 ;
  wire \count_cycle_reg[12]_i_1_n_6 ;
  wire \count_cycle_reg[12]_i_1_n_7 ;
  wire \count_cycle_reg[16]_i_1_n_0 ;
  wire \count_cycle_reg[16]_i_1_n_1 ;
  wire \count_cycle_reg[16]_i_1_n_2 ;
  wire \count_cycle_reg[16]_i_1_n_3 ;
  wire \count_cycle_reg[16]_i_1_n_4 ;
  wire \count_cycle_reg[16]_i_1_n_5 ;
  wire \count_cycle_reg[16]_i_1_n_6 ;
  wire \count_cycle_reg[16]_i_1_n_7 ;
  wire \count_cycle_reg[20]_i_1_n_0 ;
  wire \count_cycle_reg[20]_i_1_n_1 ;
  wire \count_cycle_reg[20]_i_1_n_2 ;
  wire \count_cycle_reg[20]_i_1_n_3 ;
  wire \count_cycle_reg[20]_i_1_n_4 ;
  wire \count_cycle_reg[20]_i_1_n_5 ;
  wire \count_cycle_reg[20]_i_1_n_6 ;
  wire \count_cycle_reg[20]_i_1_n_7 ;
  wire \count_cycle_reg[24]_i_1_n_0 ;
  wire \count_cycle_reg[24]_i_1_n_1 ;
  wire \count_cycle_reg[24]_i_1_n_2 ;
  wire \count_cycle_reg[24]_i_1_n_3 ;
  wire \count_cycle_reg[24]_i_1_n_4 ;
  wire \count_cycle_reg[24]_i_1_n_5 ;
  wire \count_cycle_reg[24]_i_1_n_6 ;
  wire \count_cycle_reg[24]_i_1_n_7 ;
  wire \count_cycle_reg[28]_i_1_n_0 ;
  wire \count_cycle_reg[28]_i_1_n_1 ;
  wire \count_cycle_reg[28]_i_1_n_2 ;
  wire \count_cycle_reg[28]_i_1_n_3 ;
  wire \count_cycle_reg[28]_i_1_n_4 ;
  wire \count_cycle_reg[28]_i_1_n_5 ;
  wire \count_cycle_reg[28]_i_1_n_6 ;
  wire \count_cycle_reg[28]_i_1_n_7 ;
  wire \count_cycle_reg[32]_i_1_n_0 ;
  wire \count_cycle_reg[32]_i_1_n_1 ;
  wire \count_cycle_reg[32]_i_1_n_2 ;
  wire \count_cycle_reg[32]_i_1_n_3 ;
  wire \count_cycle_reg[32]_i_1_n_4 ;
  wire \count_cycle_reg[32]_i_1_n_5 ;
  wire \count_cycle_reg[32]_i_1_n_6 ;
  wire \count_cycle_reg[32]_i_1_n_7 ;
  wire \count_cycle_reg[36]_i_1_n_0 ;
  wire \count_cycle_reg[36]_i_1_n_1 ;
  wire \count_cycle_reg[36]_i_1_n_2 ;
  wire \count_cycle_reg[36]_i_1_n_3 ;
  wire \count_cycle_reg[36]_i_1_n_4 ;
  wire \count_cycle_reg[36]_i_1_n_5 ;
  wire \count_cycle_reg[36]_i_1_n_6 ;
  wire \count_cycle_reg[36]_i_1_n_7 ;
  wire \count_cycle_reg[40]_i_1_n_0 ;
  wire \count_cycle_reg[40]_i_1_n_1 ;
  wire \count_cycle_reg[40]_i_1_n_2 ;
  wire \count_cycle_reg[40]_i_1_n_3 ;
  wire \count_cycle_reg[40]_i_1_n_4 ;
  wire \count_cycle_reg[40]_i_1_n_5 ;
  wire \count_cycle_reg[40]_i_1_n_6 ;
  wire \count_cycle_reg[40]_i_1_n_7 ;
  wire \count_cycle_reg[44]_i_1_n_0 ;
  wire \count_cycle_reg[44]_i_1_n_1 ;
  wire \count_cycle_reg[44]_i_1_n_2 ;
  wire \count_cycle_reg[44]_i_1_n_3 ;
  wire \count_cycle_reg[44]_i_1_n_4 ;
  wire \count_cycle_reg[44]_i_1_n_5 ;
  wire \count_cycle_reg[44]_i_1_n_6 ;
  wire \count_cycle_reg[44]_i_1_n_7 ;
  wire \count_cycle_reg[48]_i_1_n_0 ;
  wire \count_cycle_reg[48]_i_1_n_1 ;
  wire \count_cycle_reg[48]_i_1_n_2 ;
  wire \count_cycle_reg[48]_i_1_n_3 ;
  wire \count_cycle_reg[48]_i_1_n_4 ;
  wire \count_cycle_reg[48]_i_1_n_5 ;
  wire \count_cycle_reg[48]_i_1_n_6 ;
  wire \count_cycle_reg[48]_i_1_n_7 ;
  wire \count_cycle_reg[4]_i_1_n_0 ;
  wire \count_cycle_reg[4]_i_1_n_1 ;
  wire \count_cycle_reg[4]_i_1_n_2 ;
  wire \count_cycle_reg[4]_i_1_n_3 ;
  wire \count_cycle_reg[4]_i_1_n_4 ;
  wire \count_cycle_reg[4]_i_1_n_5 ;
  wire \count_cycle_reg[4]_i_1_n_6 ;
  wire \count_cycle_reg[4]_i_1_n_7 ;
  wire \count_cycle_reg[52]_i_1_n_0 ;
  wire \count_cycle_reg[52]_i_1_n_1 ;
  wire \count_cycle_reg[52]_i_1_n_2 ;
  wire \count_cycle_reg[52]_i_1_n_3 ;
  wire \count_cycle_reg[52]_i_1_n_4 ;
  wire \count_cycle_reg[52]_i_1_n_5 ;
  wire \count_cycle_reg[52]_i_1_n_6 ;
  wire \count_cycle_reg[52]_i_1_n_7 ;
  wire \count_cycle_reg[56]_i_1_n_0 ;
  wire \count_cycle_reg[56]_i_1_n_1 ;
  wire \count_cycle_reg[56]_i_1_n_2 ;
  wire \count_cycle_reg[56]_i_1_n_3 ;
  wire \count_cycle_reg[56]_i_1_n_4 ;
  wire \count_cycle_reg[56]_i_1_n_5 ;
  wire \count_cycle_reg[56]_i_1_n_6 ;
  wire \count_cycle_reg[56]_i_1_n_7 ;
  wire \count_cycle_reg[60]_i_1_n_1 ;
  wire \count_cycle_reg[60]_i_1_n_2 ;
  wire \count_cycle_reg[60]_i_1_n_3 ;
  wire \count_cycle_reg[60]_i_1_n_4 ;
  wire \count_cycle_reg[60]_i_1_n_5 ;
  wire \count_cycle_reg[60]_i_1_n_6 ;
  wire \count_cycle_reg[60]_i_1_n_7 ;
  wire \count_cycle_reg[8]_i_1_n_0 ;
  wire \count_cycle_reg[8]_i_1_n_1 ;
  wire \count_cycle_reg[8]_i_1_n_2 ;
  wire \count_cycle_reg[8]_i_1_n_3 ;
  wire \count_cycle_reg[8]_i_1_n_4 ;
  wire \count_cycle_reg[8]_i_1_n_5 ;
  wire \count_cycle_reg[8]_i_1_n_6 ;
  wire \count_cycle_reg[8]_i_1_n_7 ;
  wire count_instr;
  wire \count_instr[0]_i_3_n_0 ;
  wire \count_instr_reg[0]_i_2_n_0 ;
  wire \count_instr_reg[0]_i_2_n_1 ;
  wire \count_instr_reg[0]_i_2_n_2 ;
  wire \count_instr_reg[0]_i_2_n_3 ;
  wire \count_instr_reg[0]_i_2_n_4 ;
  wire \count_instr_reg[0]_i_2_n_5 ;
  wire \count_instr_reg[0]_i_2_n_6 ;
  wire \count_instr_reg[0]_i_2_n_7 ;
  wire \count_instr_reg[12]_i_1_n_0 ;
  wire \count_instr_reg[12]_i_1_n_1 ;
  wire \count_instr_reg[12]_i_1_n_2 ;
  wire \count_instr_reg[12]_i_1_n_3 ;
  wire \count_instr_reg[12]_i_1_n_4 ;
  wire \count_instr_reg[12]_i_1_n_5 ;
  wire \count_instr_reg[12]_i_1_n_6 ;
  wire \count_instr_reg[12]_i_1_n_7 ;
  wire \count_instr_reg[16]_i_1_n_0 ;
  wire \count_instr_reg[16]_i_1_n_1 ;
  wire \count_instr_reg[16]_i_1_n_2 ;
  wire \count_instr_reg[16]_i_1_n_3 ;
  wire \count_instr_reg[16]_i_1_n_4 ;
  wire \count_instr_reg[16]_i_1_n_5 ;
  wire \count_instr_reg[16]_i_1_n_6 ;
  wire \count_instr_reg[16]_i_1_n_7 ;
  wire \count_instr_reg[20]_i_1_n_0 ;
  wire \count_instr_reg[20]_i_1_n_1 ;
  wire \count_instr_reg[20]_i_1_n_2 ;
  wire \count_instr_reg[20]_i_1_n_3 ;
  wire \count_instr_reg[20]_i_1_n_4 ;
  wire \count_instr_reg[20]_i_1_n_5 ;
  wire \count_instr_reg[20]_i_1_n_6 ;
  wire \count_instr_reg[20]_i_1_n_7 ;
  wire \count_instr_reg[24]_i_1_n_0 ;
  wire \count_instr_reg[24]_i_1_n_1 ;
  wire \count_instr_reg[24]_i_1_n_2 ;
  wire \count_instr_reg[24]_i_1_n_3 ;
  wire \count_instr_reg[24]_i_1_n_4 ;
  wire \count_instr_reg[24]_i_1_n_5 ;
  wire \count_instr_reg[24]_i_1_n_6 ;
  wire \count_instr_reg[24]_i_1_n_7 ;
  wire \count_instr_reg[28]_i_1_n_0 ;
  wire \count_instr_reg[28]_i_1_n_1 ;
  wire \count_instr_reg[28]_i_1_n_2 ;
  wire \count_instr_reg[28]_i_1_n_3 ;
  wire \count_instr_reg[28]_i_1_n_4 ;
  wire \count_instr_reg[28]_i_1_n_5 ;
  wire \count_instr_reg[28]_i_1_n_6 ;
  wire \count_instr_reg[28]_i_1_n_7 ;
  wire \count_instr_reg[32]_i_1_n_0 ;
  wire \count_instr_reg[32]_i_1_n_1 ;
  wire \count_instr_reg[32]_i_1_n_2 ;
  wire \count_instr_reg[32]_i_1_n_3 ;
  wire \count_instr_reg[32]_i_1_n_4 ;
  wire \count_instr_reg[32]_i_1_n_5 ;
  wire \count_instr_reg[32]_i_1_n_6 ;
  wire \count_instr_reg[32]_i_1_n_7 ;
  wire \count_instr_reg[36]_i_1_n_0 ;
  wire \count_instr_reg[36]_i_1_n_1 ;
  wire \count_instr_reg[36]_i_1_n_2 ;
  wire \count_instr_reg[36]_i_1_n_3 ;
  wire \count_instr_reg[36]_i_1_n_4 ;
  wire \count_instr_reg[36]_i_1_n_5 ;
  wire \count_instr_reg[36]_i_1_n_6 ;
  wire \count_instr_reg[36]_i_1_n_7 ;
  wire \count_instr_reg[40]_i_1_n_0 ;
  wire \count_instr_reg[40]_i_1_n_1 ;
  wire \count_instr_reg[40]_i_1_n_2 ;
  wire \count_instr_reg[40]_i_1_n_3 ;
  wire \count_instr_reg[40]_i_1_n_4 ;
  wire \count_instr_reg[40]_i_1_n_5 ;
  wire \count_instr_reg[40]_i_1_n_6 ;
  wire \count_instr_reg[40]_i_1_n_7 ;
  wire \count_instr_reg[44]_i_1_n_0 ;
  wire \count_instr_reg[44]_i_1_n_1 ;
  wire \count_instr_reg[44]_i_1_n_2 ;
  wire \count_instr_reg[44]_i_1_n_3 ;
  wire \count_instr_reg[44]_i_1_n_4 ;
  wire \count_instr_reg[44]_i_1_n_5 ;
  wire \count_instr_reg[44]_i_1_n_6 ;
  wire \count_instr_reg[44]_i_1_n_7 ;
  wire \count_instr_reg[48]_i_1_n_0 ;
  wire \count_instr_reg[48]_i_1_n_1 ;
  wire \count_instr_reg[48]_i_1_n_2 ;
  wire \count_instr_reg[48]_i_1_n_3 ;
  wire \count_instr_reg[48]_i_1_n_4 ;
  wire \count_instr_reg[48]_i_1_n_5 ;
  wire \count_instr_reg[48]_i_1_n_6 ;
  wire \count_instr_reg[48]_i_1_n_7 ;
  wire \count_instr_reg[4]_i_1_n_0 ;
  wire \count_instr_reg[4]_i_1_n_1 ;
  wire \count_instr_reg[4]_i_1_n_2 ;
  wire \count_instr_reg[4]_i_1_n_3 ;
  wire \count_instr_reg[4]_i_1_n_4 ;
  wire \count_instr_reg[4]_i_1_n_5 ;
  wire \count_instr_reg[4]_i_1_n_6 ;
  wire \count_instr_reg[4]_i_1_n_7 ;
  wire \count_instr_reg[52]_i_1_n_0 ;
  wire \count_instr_reg[52]_i_1_n_1 ;
  wire \count_instr_reg[52]_i_1_n_2 ;
  wire \count_instr_reg[52]_i_1_n_3 ;
  wire \count_instr_reg[52]_i_1_n_4 ;
  wire \count_instr_reg[52]_i_1_n_5 ;
  wire \count_instr_reg[52]_i_1_n_6 ;
  wire \count_instr_reg[52]_i_1_n_7 ;
  wire \count_instr_reg[56]_i_1_n_0 ;
  wire \count_instr_reg[56]_i_1_n_1 ;
  wire \count_instr_reg[56]_i_1_n_2 ;
  wire \count_instr_reg[56]_i_1_n_3 ;
  wire \count_instr_reg[56]_i_1_n_4 ;
  wire \count_instr_reg[56]_i_1_n_5 ;
  wire \count_instr_reg[56]_i_1_n_6 ;
  wire \count_instr_reg[56]_i_1_n_7 ;
  wire \count_instr_reg[60]_i_1_n_1 ;
  wire \count_instr_reg[60]_i_1_n_2 ;
  wire \count_instr_reg[60]_i_1_n_3 ;
  wire \count_instr_reg[60]_i_1_n_4 ;
  wire \count_instr_reg[60]_i_1_n_5 ;
  wire \count_instr_reg[60]_i_1_n_6 ;
  wire \count_instr_reg[60]_i_1_n_7 ;
  wire \count_instr_reg[8]_i_1_n_0 ;
  wire \count_instr_reg[8]_i_1_n_1 ;
  wire \count_instr_reg[8]_i_1_n_2 ;
  wire \count_instr_reg[8]_i_1_n_3 ;
  wire \count_instr_reg[8]_i_1_n_4 ;
  wire \count_instr_reg[8]_i_1_n_5 ;
  wire \count_instr_reg[8]_i_1_n_6 ;
  wire \count_instr_reg[8]_i_1_n_7 ;
  wire \count_instr_reg_n_0_[0] ;
  wire \count_instr_reg_n_0_[10] ;
  wire \count_instr_reg_n_0_[11] ;
  wire \count_instr_reg_n_0_[12] ;
  wire \count_instr_reg_n_0_[13] ;
  wire \count_instr_reg_n_0_[14] ;
  wire \count_instr_reg_n_0_[15] ;
  wire \count_instr_reg_n_0_[16] ;
  wire \count_instr_reg_n_0_[17] ;
  wire \count_instr_reg_n_0_[18] ;
  wire \count_instr_reg_n_0_[19] ;
  wire \count_instr_reg_n_0_[1] ;
  wire \count_instr_reg_n_0_[20] ;
  wire \count_instr_reg_n_0_[21] ;
  wire \count_instr_reg_n_0_[22] ;
  wire \count_instr_reg_n_0_[23] ;
  wire \count_instr_reg_n_0_[24] ;
  wire \count_instr_reg_n_0_[25] ;
  wire \count_instr_reg_n_0_[26] ;
  wire \count_instr_reg_n_0_[27] ;
  wire \count_instr_reg_n_0_[28] ;
  wire \count_instr_reg_n_0_[29] ;
  wire \count_instr_reg_n_0_[2] ;
  wire \count_instr_reg_n_0_[30] ;
  wire \count_instr_reg_n_0_[31] ;
  wire \count_instr_reg_n_0_[3] ;
  wire \count_instr_reg_n_0_[4] ;
  wire \count_instr_reg_n_0_[5] ;
  wire \count_instr_reg_n_0_[6] ;
  wire \count_instr_reg_n_0_[7] ;
  wire \count_instr_reg_n_0_[8] ;
  wire \count_instr_reg_n_0_[9] ;
  wire [7:0]cpu_state0_out;
  wire \cpu_state[2]_i_2_n_0 ;
  wire \cpu_state[3]_i_2_n_0 ;
  wire \cpu_state[3]_i_3_n_0 ;
  wire \cpu_state[6]_i_3_n_0 ;
  wire \cpu_state[7]_i_1_n_0 ;
  wire \cpu_state[7]_i_4_n_0 ;
  wire \cpu_state[7]_i_6_n_0 ;
  wire \cpu_state[7]_i_7_n_0 ;
  wire \cpu_state[7]_i_8_n_0 ;
  wire \cpu_state[7]_i_9_n_0 ;
  wire \cpu_state_reg[3]_0 ;
  wire \cpu_state_reg[5]_0 ;
  wire \cpu_state_reg[5]_1 ;
  wire \cpu_state_reg[7]_0 ;
  wire \cpu_state_reg_n_0_[0] ;
  wire \cpu_state_reg_n_0_[2] ;
  wire \cpu_state_reg_n_0_[5] ;
  wire \cpu_state_reg_n_0_[7] ;
  wire cpuregs_reg_r1_0_31_0_5_i_10_n_0;
  wire cpuregs_reg_r1_0_31_0_5_i_10_n_1;
  wire cpuregs_reg_r1_0_31_0_5_i_10_n_2;
  wire cpuregs_reg_r1_0_31_0_5_i_10_n_3;
  wire cpuregs_reg_r1_0_31_0_5_i_10_n_4;
  wire cpuregs_reg_r1_0_31_0_5_i_10_n_5;
  wire cpuregs_reg_r1_0_31_0_5_i_10_n_6;
  wire cpuregs_reg_r1_0_31_0_5_i_10_n_7;
  wire cpuregs_reg_r1_0_31_0_5_i_11_n_0;
  wire cpuregs_reg_r1_0_31_0_5_i_12_n_0;
  wire cpuregs_reg_r1_0_31_0_5_i_1_n_0;
  wire cpuregs_reg_r1_0_31_0_5_i_2_n_0;
  wire cpuregs_reg_r1_0_31_0_5_i_3_n_0;
  wire cpuregs_reg_r1_0_31_0_5_i_4_n_0;
  wire cpuregs_reg_r1_0_31_0_5_i_5_n_0;
  wire cpuregs_reg_r1_0_31_0_5_i_6_n_0;
  wire cpuregs_reg_r1_0_31_0_5_i_7_n_0;
  wire cpuregs_reg_r1_0_31_0_5_i_8_n_0;
  wire cpuregs_reg_r1_0_31_0_5_i_9_n_0;
  wire cpuregs_reg_r1_0_31_0_5_i_9_n_1;
  wire cpuregs_reg_r1_0_31_0_5_i_9_n_2;
  wire cpuregs_reg_r1_0_31_0_5_i_9_n_3;
  wire cpuregs_reg_r1_0_31_0_5_i_9_n_4;
  wire cpuregs_reg_r1_0_31_0_5_i_9_n_5;
  wire cpuregs_reg_r1_0_31_0_5_i_9_n_6;
  wire cpuregs_reg_r1_0_31_12_17_i_1_n_0;
  wire cpuregs_reg_r1_0_31_12_17_i_2_n_0;
  wire cpuregs_reg_r1_0_31_12_17_i_3_n_0;
  wire cpuregs_reg_r1_0_31_12_17_i_4_n_0;
  wire cpuregs_reg_r1_0_31_12_17_i_5_n_0;
  wire cpuregs_reg_r1_0_31_12_17_i_6_n_0;
  wire cpuregs_reg_r1_0_31_12_17_i_7_n_0;
  wire cpuregs_reg_r1_0_31_12_17_i_7_n_1;
  wire cpuregs_reg_r1_0_31_12_17_i_7_n_2;
  wire cpuregs_reg_r1_0_31_12_17_i_7_n_3;
  wire cpuregs_reg_r1_0_31_12_17_i_7_n_4;
  wire cpuregs_reg_r1_0_31_12_17_i_7_n_5;
  wire cpuregs_reg_r1_0_31_12_17_i_7_n_6;
  wire cpuregs_reg_r1_0_31_12_17_i_7_n_7;
  wire cpuregs_reg_r1_0_31_12_17_i_8_n_0;
  wire cpuregs_reg_r1_0_31_12_17_i_8_n_1;
  wire cpuregs_reg_r1_0_31_12_17_i_8_n_2;
  wire cpuregs_reg_r1_0_31_12_17_i_8_n_3;
  wire cpuregs_reg_r1_0_31_12_17_i_8_n_4;
  wire cpuregs_reg_r1_0_31_12_17_i_8_n_5;
  wire cpuregs_reg_r1_0_31_12_17_i_8_n_6;
  wire cpuregs_reg_r1_0_31_12_17_i_8_n_7;
  wire cpuregs_reg_r1_0_31_18_23_i_1_n_0;
  wire cpuregs_reg_r1_0_31_18_23_i_2_n_0;
  wire cpuregs_reg_r1_0_31_18_23_i_3_n_0;
  wire cpuregs_reg_r1_0_31_18_23_i_4_n_0;
  wire cpuregs_reg_r1_0_31_18_23_i_5_n_0;
  wire cpuregs_reg_r1_0_31_18_23_i_6_n_0;
  wire cpuregs_reg_r1_0_31_18_23_i_7_n_0;
  wire cpuregs_reg_r1_0_31_18_23_i_7_n_1;
  wire cpuregs_reg_r1_0_31_18_23_i_7_n_2;
  wire cpuregs_reg_r1_0_31_18_23_i_7_n_3;
  wire cpuregs_reg_r1_0_31_18_23_i_7_n_4;
  wire cpuregs_reg_r1_0_31_18_23_i_7_n_5;
  wire cpuregs_reg_r1_0_31_18_23_i_7_n_6;
  wire cpuregs_reg_r1_0_31_18_23_i_7_n_7;
  wire cpuregs_reg_r1_0_31_24_29_i_1_n_0;
  wire cpuregs_reg_r1_0_31_24_29_i_2_n_0;
  wire cpuregs_reg_r1_0_31_24_29_i_3_n_0;
  wire cpuregs_reg_r1_0_31_24_29_i_4_n_0;
  wire cpuregs_reg_r1_0_31_24_29_i_5_n_0;
  wire cpuregs_reg_r1_0_31_24_29_i_6_n_0;
  wire cpuregs_reg_r1_0_31_24_29_i_7_n_0;
  wire cpuregs_reg_r1_0_31_24_29_i_7_n_1;
  wire cpuregs_reg_r1_0_31_24_29_i_7_n_2;
  wire cpuregs_reg_r1_0_31_24_29_i_7_n_3;
  wire cpuregs_reg_r1_0_31_24_29_i_7_n_4;
  wire cpuregs_reg_r1_0_31_24_29_i_7_n_5;
  wire cpuregs_reg_r1_0_31_24_29_i_7_n_6;
  wire cpuregs_reg_r1_0_31_24_29_i_7_n_7;
  wire cpuregs_reg_r1_0_31_24_29_i_8_n_1;
  wire cpuregs_reg_r1_0_31_24_29_i_8_n_2;
  wire cpuregs_reg_r1_0_31_24_29_i_8_n_3;
  wire cpuregs_reg_r1_0_31_24_29_i_8_n_4;
  wire cpuregs_reg_r1_0_31_24_29_i_8_n_5;
  wire cpuregs_reg_r1_0_31_24_29_i_8_n_6;
  wire cpuregs_reg_r1_0_31_24_29_i_8_n_7;
  wire cpuregs_reg_r1_0_31_30_31_i_1_n_0;
  wire cpuregs_reg_r1_0_31_30_31_i_2_n_0;
  wire cpuregs_reg_r1_0_31_6_11_i_1_n_0;
  wire cpuregs_reg_r1_0_31_6_11_i_2_n_0;
  wire cpuregs_reg_r1_0_31_6_11_i_3_n_0;
  wire cpuregs_reg_r1_0_31_6_11_i_4_n_0;
  wire cpuregs_reg_r1_0_31_6_11_i_5_n_0;
  wire cpuregs_reg_r1_0_31_6_11_i_6_n_0;
  wire cpuregs_reg_r1_0_31_6_11_i_7_n_0;
  wire cpuregs_reg_r1_0_31_6_11_i_7_n_1;
  wire cpuregs_reg_r1_0_31_6_11_i_7_n_2;
  wire cpuregs_reg_r1_0_31_6_11_i_7_n_3;
  wire cpuregs_reg_r1_0_31_6_11_i_7_n_4;
  wire cpuregs_reg_r1_0_31_6_11_i_7_n_5;
  wire cpuregs_reg_r1_0_31_6_11_i_7_n_6;
  wire cpuregs_reg_r1_0_31_6_11_i_7_n_7;
  wire [31:1]current_pc;
  wire [31:0]data3;
  wire data4;
  wire data5;
  wire [11:0]decoded_imm;
  wire \decoded_imm[11]_i_2_n_0 ;
  wire \decoded_imm[11]_i_3_n_0 ;
  wire \decoded_imm[12]_i_1_n_0 ;
  wire \decoded_imm[13]_i_1_n_0 ;
  wire \decoded_imm[14]_i_1_n_0 ;
  wire \decoded_imm[15]_i_1_n_0 ;
  wire \decoded_imm[16]_i_1_n_0 ;
  wire \decoded_imm[17]_i_1_n_0 ;
  wire \decoded_imm[18]_i_1_n_0 ;
  wire \decoded_imm[19]_i_1_n_0 ;
  wire \decoded_imm[20]_i_1_n_0 ;
  wire \decoded_imm[21]_i_1_n_0 ;
  wire \decoded_imm[22]_i_1_n_0 ;
  wire \decoded_imm[23]_i_1_n_0 ;
  wire \decoded_imm[24]_i_1_n_0 ;
  wire \decoded_imm[25]_i_1_n_0 ;
  wire \decoded_imm[26]_i_1_n_0 ;
  wire \decoded_imm[27]_i_1_n_0 ;
  wire \decoded_imm[28]_i_1_n_0 ;
  wire \decoded_imm[29]_i_1_n_0 ;
  wire \decoded_imm[30]_i_1_n_0 ;
  wire \decoded_imm[31]_i_1_n_0 ;
  wire \decoded_imm[31]_i_2_n_0 ;
  wire \decoded_imm[4]_i_2_n_0 ;
  wire \decoded_imm_reg_n_0_[0] ;
  wire \decoded_imm_reg_n_0_[10] ;
  wire \decoded_imm_reg_n_0_[11] ;
  wire \decoded_imm_reg_n_0_[12] ;
  wire \decoded_imm_reg_n_0_[13] ;
  wire \decoded_imm_reg_n_0_[14] ;
  wire \decoded_imm_reg_n_0_[15] ;
  wire \decoded_imm_reg_n_0_[16] ;
  wire \decoded_imm_reg_n_0_[17] ;
  wire \decoded_imm_reg_n_0_[18] ;
  wire \decoded_imm_reg_n_0_[19] ;
  wire \decoded_imm_reg_n_0_[1] ;
  wire \decoded_imm_reg_n_0_[20] ;
  wire \decoded_imm_reg_n_0_[21] ;
  wire \decoded_imm_reg_n_0_[22] ;
  wire \decoded_imm_reg_n_0_[23] ;
  wire \decoded_imm_reg_n_0_[24] ;
  wire \decoded_imm_reg_n_0_[25] ;
  wire \decoded_imm_reg_n_0_[26] ;
  wire \decoded_imm_reg_n_0_[27] ;
  wire \decoded_imm_reg_n_0_[28] ;
  wire \decoded_imm_reg_n_0_[29] ;
  wire \decoded_imm_reg_n_0_[2] ;
  wire \decoded_imm_reg_n_0_[30] ;
  wire \decoded_imm_reg_n_0_[31] ;
  wire \decoded_imm_reg_n_0_[3] ;
  wire \decoded_imm_reg_n_0_[4] ;
  wire \decoded_imm_reg_n_0_[5] ;
  wire \decoded_imm_reg_n_0_[6] ;
  wire \decoded_imm_reg_n_0_[7] ;
  wire \decoded_imm_reg_n_0_[8] ;
  wire \decoded_imm_reg_n_0_[9] ;
  wire [31:5]decoded_imm_uj;
  wire \decoded_imm_uj[10]_i_1_n_0 ;
  wire \decoded_imm_uj[5]_i_1_n_0 ;
  wire \decoded_imm_uj[6]_i_1_n_0 ;
  wire \decoded_imm_uj[7]_i_1_n_0 ;
  wire \decoded_imm_uj[8]_i_1_n_0 ;
  wire \decoded_imm_uj[9]_i_1_n_0 ;
  wire [4:0]decoded_rd;
  wire \decoded_rd[0]_i_1_n_0 ;
  wire \decoded_rd[1]_i_1_n_0 ;
  wire \decoded_rd[2]_i_1_n_0 ;
  wire \decoded_rd[3]_i_1_n_0 ;
  wire \decoded_rd[4]_i_1_n_0 ;
  wire [4:0]decoded_rs1;
  wire [4:0]decoded_rs1__0;
  wire \decoded_rs1_rep[0]_i_1_n_0 ;
  wire \decoded_rs1_rep[1]_i_1_n_0 ;
  wire \decoded_rs1_rep[2]_i_1_n_0 ;
  wire \decoded_rs1_rep[3]_i_1_n_0 ;
  wire \decoded_rs1_rep[4]_i_1_n_0 ;
  wire [4:0]decoded_rs2;
  wire [4:0]decoded_rs2__0;
  wire decoder_pseudo_trigger;
  wire decoder_pseudo_trigger_i_2_n_0;
  wire decoder_pseudo_trigger_reg_n_0;
  wire decoder_trigger_i_10_n_0;
  wire decoder_trigger_i_11_n_0;
  wire decoder_trigger_i_12_n_0;
  wire decoder_trigger_i_13_n_0;
  wire decoder_trigger_i_14_n_0;
  wire decoder_trigger_i_15_n_0;
  wire decoder_trigger_i_17_n_0;
  wire decoder_trigger_i_18_n_0;
  wire decoder_trigger_i_19_n_0;
  wire decoder_trigger_i_1_n_0;
  wire decoder_trigger_i_20_n_0;
  wire decoder_trigger_i_21_n_0;
  wire decoder_trigger_i_22_n_0;
  wire decoder_trigger_i_23_n_0;
  wire decoder_trigger_i_24_n_0;
  wire decoder_trigger_i_26_n_0;
  wire decoder_trigger_i_27_n_0;
  wire decoder_trigger_i_28_n_0;
  wire decoder_trigger_i_29_n_0;
  wire decoder_trigger_i_2_n_0;
  wire decoder_trigger_i_30_n_0;
  wire decoder_trigger_i_31_n_0;
  wire decoder_trigger_i_32_n_0;
  wire decoder_trigger_i_33_n_0;
  wire decoder_trigger_i_34_n_0;
  wire decoder_trigger_i_35_n_0;
  wire decoder_trigger_i_36_n_0;
  wire decoder_trigger_i_37_n_0;
  wire decoder_trigger_i_38_n_0;
  wire decoder_trigger_i_39_n_0;
  wire decoder_trigger_i_3_n_0;
  wire decoder_trigger_i_40_n_0;
  wire decoder_trigger_i_41_n_0;
  wire decoder_trigger_i_4_n_0;
  wire decoder_trigger_i_5_n_0;
  wire decoder_trigger_i_8_n_0;
  wire decoder_trigger_i_9_n_0;
  wire decoder_trigger_reg_0;
  wire decoder_trigger_reg_i_16_n_0;
  wire decoder_trigger_reg_i_16_n_1;
  wire decoder_trigger_reg_i_16_n_2;
  wire decoder_trigger_reg_i_16_n_3;
  wire decoder_trigger_reg_i_25_n_0;
  wire decoder_trigger_reg_i_25_n_1;
  wire decoder_trigger_reg_i_25_n_2;
  wire decoder_trigger_reg_i_25_n_3;
  wire decoder_trigger_reg_i_6_n_1;
  wire decoder_trigger_reg_i_6_n_2;
  wire decoder_trigger_reg_i_6_n_3;
  wire decoder_trigger_reg_i_7_n_0;
  wire decoder_trigger_reg_i_7_n_1;
  wire decoder_trigger_reg_i_7_n_2;
  wire decoder_trigger_reg_i_7_n_3;
  wire decoder_trigger_reg_n_0;
  wire instr_add;
  wire instr_add0;
  wire instr_addi;
  wire instr_addi0;
  wire instr_and;
  wire instr_and0;
  wire instr_and_i_2_n_0;
  wire instr_andi;
  wire instr_andi0;
  wire instr_auipc;
  wire instr_auipc_i_1_n_0;
  wire instr_auipc_i_2_n_0;
  wire instr_auipc_i_3_n_0;
  wire instr_beq;
  wire instr_beq0;
  wire instr_beq_reg_0;
  wire instr_bge;
  wire instr_bge_i_1_n_0;
  wire instr_bge_reg_0;
  wire instr_bgeu;
  wire instr_bgeu0;
  wire instr_blt;
  wire instr_blt0;
  wire instr_bltu;
  wire instr_bltu0;
  wire instr_bne;
  wire instr_bne0;
  wire instr_ecall_ebreak;
  wire instr_ecall_ebreak0;
  wire instr_ecall_ebreak_i_2_n_0;
  wire instr_ecall_ebreak_i_3_n_0;
  wire instr_ecall_ebreak_i_4_n_0;
  wire instr_ecall_ebreak_i_5_n_0;
  wire instr_jal;
  wire instr_jal_i_2_n_0;
  wire instr_jal_i_4_n_0;
  wire instr_jal_reg_0;
  wire instr_jalr;
  wire instr_jalr0;
  wire instr_jalr_i_2_n_0;
  wire instr_jalr_i_3_n_0;
  wire instr_lb;
  wire instr_lb_i_1_n_0;
  wire instr_lbu;
  wire instr_lbu_i_1_n_0;
  wire instr_lh;
  wire instr_lh_i_1_n_0;
  wire instr_lhu;
  wire instr_lhu_i_1_n_0;
  wire instr_lhu_i_2_n_0;
  wire instr_lui;
  wire instr_lui0;
  wire instr_lui_i_1_n_0;
  wire instr_lui_i_2_n_0;
  wire instr_lui_i_3_n_0;
  wire instr_lw;
  wire instr_lw_i_1_n_0;
  wire instr_or;
  wire instr_or0;
  wire instr_ori;
  wire instr_ori0;
  wire instr_rdcycle;
  wire instr_rdcycle0;
  wire instr_rdcycle_i_2_n_0;
  wire instr_rdcycle_i_3_n_0;
  wire instr_rdcycleh;
  wire instr_rdcycleh0;
  wire instr_rdcycleh_i_2_n_0;
  wire instr_rdcycleh_i_3_n_0;
  wire instr_rdcycleh_i_4_n_0;
  wire instr_rdcycleh_i_5_n_0;
  wire instr_rdcycleh_i_6_n_0;
  wire instr_rdcycleh_i_7_n_0;
  wire instr_rdinstr;
  wire instr_rdinstr0;
  wire instr_rdinstr_i_2_n_0;
  wire instr_rdinstr_i_3_n_0;
  wire instr_rdinstr_i_4_n_0;
  wire instr_rdinstrh;
  wire instr_rdinstrh0;
  wire instr_rdinstrh_i_2_n_0;
  wire instr_rdinstrh_i_3_n_0;
  wire instr_rdinstrh_i_4_n_0;
  wire instr_sb;
  wire instr_sb0;
  wire instr_sh;
  wire instr_sh0;
  wire instr_sll;
  wire instr_sll0;
  wire instr_slli;
  wire instr_slli0;
  wire instr_slt;
  wire instr_slt0;
  wire instr_slti;
  wire instr_slti0;
  wire instr_sltiu;
  wire instr_sltiu_i_1_n_0;
  wire instr_sltu;
  wire instr_sltu0;
  wire instr_sra;
  wire instr_sra_i_1_n_0;
  wire instr_sra_i_2_n_0;
  wire instr_srai;
  wire instr_srai0;
  wire instr_srl;
  wire instr_srl_i_1_n_0;
  wire instr_srli;
  wire instr_srli0;
  wire instr_sub;
  wire instr_sub0;
  wire instr_sw;
  wire instr_sw0;
  wire instr_xor;
  wire instr_xor0;
  wire instr_xori;
  wire instr_xori0;
  wire is_alu_reg_imm;
  wire is_alu_reg_imm_i_1_n_0;
  wire is_alu_reg_reg;
  wire is_alu_reg_reg_i_1_n_0;
  wire is_alu_reg_reg_i_2_n_0;
  wire is_beq_bne_blt_bge_bltu_bgeu;
  wire is_beq_bne_blt_bge_bltu_bgeu_i_1_n_0;
  wire is_compare;
  wire is_compare_i_1_n_0;
  wire is_compare_i_2_n_0;
  wire is_jalr_addi_slti_sltiu_xori_ori_andi;
  wire is_jalr_addi_slti_sltiu_xori_ori_andi0;
  wire is_lb_lh_lw_lbu_lhu;
  wire is_lb_lh_lw_lbu_lhu_i_1_n_0;
  wire is_lbu_lhu_lw;
  wire is_lbu_lhu_lw_i_1_n_0;
  wire is_lui_auipc_jal;
  wire is_lui_auipc_jal_jalr_addi_add_sub;
  wire is_lui_auipc_jal_jalr_addi_add_sub0;
  wire is_lui_auipc_jal_jalr_addi_add_sub_reg_0;
  wire is_sb_sh_sw;
  wire is_sb_sh_sw_i_1_n_0;
  wire is_sb_sh_sw_i_2_n_0;
  wire is_sll_srl_sra;
  wire is_sll_srl_sra0;
  wire is_slli_srli_srai;
  wire is_slli_srli_srai0;
  wire is_slli_srli_srai_i_2_n_0;
  wire is_slti_blt_slt;
  wire is_slti_blt_slt_i_1_n_0;
  wire is_sltiu_bltu_sltu;
  wire is_sltiu_bltu_sltu_i_1_n_0;
  wire latched_branch_reg_0;
  wire latched_branch_reg_1;
  wire latched_is_lb_reg_0;
  wire latched_is_lb_reg_1;
  wire latched_is_lh_reg_0;
  wire latched_is_lh_reg_1;
  wire latched_is_lu;
  wire latched_is_lu_reg_0;
  wire latched_is_lu_reg_1;
  wire [4:0]latched_rd;
  wire \latched_rd[4]_i_1_n_0 ;
  wire \latched_rd[4]_i_2_n_0 ;
  wire latched_stalu_reg_0;
  wire latched_stalu_reg_1;
  wire latched_store_i_6_n_0;
  wire latched_store_i_7_n_0;
  wire latched_store_reg_0;
  wire latched_store_reg_1;
  wire \mem_addr[10]_i_1_n_0 ;
  wire \mem_addr[11]_i_1_n_0 ;
  wire \mem_addr[12]_i_1_n_0 ;
  wire \mem_addr[13]_i_1_n_0 ;
  wire \mem_addr[14]_i_1_n_0 ;
  wire \mem_addr[15]_i_1_n_0 ;
  wire \mem_addr[16]_i_1_n_0 ;
  wire \mem_addr[17]_i_1_n_0 ;
  wire \mem_addr[18]_i_1_n_0 ;
  wire \mem_addr[19]_i_1_n_0 ;
  wire \mem_addr[20]_i_1_n_0 ;
  wire \mem_addr[21]_i_1_n_0 ;
  wire \mem_addr[22]_i_1_n_0 ;
  wire \mem_addr[23]_i_1_n_0 ;
  wire \mem_addr[24]_i_1_n_0 ;
  wire \mem_addr[25]_i_1_n_0 ;
  wire \mem_addr[26]_i_1_n_0 ;
  wire \mem_addr[27]_i_1_n_0 ;
  wire \mem_addr[28]_i_1_n_0 ;
  wire \mem_addr[29]_i_1_n_0 ;
  wire \mem_addr[2]_i_1_n_0 ;
  wire \mem_addr[30]_i_1_n_0 ;
  wire \mem_addr[31]_i_1_n_0 ;
  wire \mem_addr[31]_i_2_n_0 ;
  wire \mem_addr[31]_i_3_n_0 ;
  wire \mem_addr[31]_i_4_n_0 ;
  wire \mem_addr[31]_i_5_n_0 ;
  wire \mem_addr[3]_i_1_n_0 ;
  wire \mem_addr[4]_i_1_n_0 ;
  wire \mem_addr[5]_i_1_n_0 ;
  wire \mem_addr[6]_i_1_n_0 ;
  wire \mem_addr[7]_i_1_n_0 ;
  wire \mem_addr[8]_i_1_n_0 ;
  wire \mem_addr[9]_i_1_n_0 ;
  wire [0:0]mem_axi_arprot;
  wire mem_axi_arvalid;
  wire mem_axi_arvalid_0;
  wire [29:0]mem_axi_awaddr;
  wire mem_axi_awvalid;
  wire mem_axi_bready;
  wire mem_axi_bvalid;
  wire mem_axi_bvalid_0;
  wire [31:0]mem_axi_rdata;
  wire mem_axi_rready;
  wire mem_axi_rvalid;
  wire [31:0]mem_axi_wdata;
  wire mem_axi_wvalid;
  wire mem_axi_wvalid_0;
  wire mem_do_prefetch_i_1_n_0;
  wire mem_do_prefetch_i_2_n_0;
  wire mem_do_prefetch_reg_0;
  wire mem_do_rdata;
  wire mem_do_rdata_reg_0;
  wire mem_do_rinst0;
  wire mem_do_rinst_i_10_n_0;
  wire mem_do_rinst_i_11_n_0;
  wire mem_do_rinst_i_12_n_0;
  wire mem_do_rinst_i_13_n_0;
  wire mem_do_rinst_i_14_n_0;
  wire mem_do_rinst_i_15_n_0;
  wire mem_do_rinst_i_16_n_0;
  wire mem_do_rinst_i_4_n_0;
  wire mem_do_rinst_i_5_n_0;
  wire mem_do_rinst_i_6_n_0;
  wire mem_do_rinst_i_7_n_0;
  wire mem_do_rinst_i_8_n_0;
  wire mem_do_rinst_reg_n_0;
  wire mem_do_wdata;
  wire mem_do_wdata_reg_0;
  wire mem_instr_i_1_n_0;
  wire \mem_rdata_q[0]_i_1_n_0 ;
  wire \mem_rdata_q[12]_i_1_n_0 ;
  wire \mem_rdata_q[13]_i_1_n_0 ;
  wire \mem_rdata_q[14]_i_1_n_0 ;
  wire \mem_rdata_q[1]_i_1_n_0 ;
  wire \mem_rdata_q[2]_i_1_n_0 ;
  wire \mem_rdata_q[31]_i_1_n_0 ;
  wire \mem_rdata_q[3]_i_1_n_0 ;
  wire \mem_rdata_q[4]_i_1_n_0 ;
  wire \mem_rdata_q[5]_i_1_n_0 ;
  wire \mem_rdata_q[6]_i_1_n_0 ;
  wire \mem_rdata_q_reg_n_0_[0] ;
  wire \mem_rdata_q_reg_n_0_[10] ;
  wire \mem_rdata_q_reg_n_0_[11] ;
  wire \mem_rdata_q_reg_n_0_[15] ;
  wire \mem_rdata_q_reg_n_0_[16] ;
  wire \mem_rdata_q_reg_n_0_[17] ;
  wire \mem_rdata_q_reg_n_0_[18] ;
  wire \mem_rdata_q_reg_n_0_[19] ;
  wire \mem_rdata_q_reg_n_0_[1] ;
  wire \mem_rdata_q_reg_n_0_[20] ;
  wire \mem_rdata_q_reg_n_0_[21] ;
  wire \mem_rdata_q_reg_n_0_[22] ;
  wire \mem_rdata_q_reg_n_0_[23] ;
  wire \mem_rdata_q_reg_n_0_[24] ;
  wire \mem_rdata_q_reg_n_0_[25] ;
  wire \mem_rdata_q_reg_n_0_[26] ;
  wire \mem_rdata_q_reg_n_0_[27] ;
  wire \mem_rdata_q_reg_n_0_[28] ;
  wire \mem_rdata_q_reg_n_0_[29] ;
  wire \mem_rdata_q_reg_n_0_[2] ;
  wire \mem_rdata_q_reg_n_0_[30] ;
  wire \mem_rdata_q_reg_n_0_[31] ;
  wire \mem_rdata_q_reg_n_0_[3] ;
  wire \mem_rdata_q_reg_n_0_[4] ;
  wire \mem_rdata_q_reg_n_0_[5] ;
  wire \mem_rdata_q_reg_n_0_[6] ;
  wire \mem_rdata_q_reg_n_0_[7] ;
  wire \mem_rdata_q_reg_n_0_[8] ;
  wire \mem_rdata_q_reg_n_0_[9] ;
  wire mem_ready;
  wire mem_state;
  wire \mem_state[0]_i_1_n_0 ;
  wire \mem_state[1]_i_1_n_0 ;
  wire \mem_state_reg[0]_0 ;
  wire \mem_state_reg_n_0_[0] ;
  wire \mem_state_reg_n_0_[1] ;
  wire mem_valid;
  wire mem_valid13_out;
  wire mem_valid_i_1_n_0;
  wire mem_valid_i_3_n_0;
  wire \mem_wdata[10]_i_1_n_0 ;
  wire \mem_wdata[11]_i_1_n_0 ;
  wire \mem_wdata[12]_i_1_n_0 ;
  wire \mem_wdata[13]_i_1_n_0 ;
  wire \mem_wdata[14]_i_1_n_0 ;
  wire \mem_wdata[15]_i_1_n_0 ;
  wire \mem_wdata[16]_i_1_n_0 ;
  wire \mem_wdata[17]_i_1_n_0 ;
  wire \mem_wdata[18]_i_1_n_0 ;
  wire \mem_wdata[19]_i_1_n_0 ;
  wire \mem_wdata[20]_i_1_n_0 ;
  wire \mem_wdata[21]_i_1_n_0 ;
  wire \mem_wdata[22]_i_1_n_0 ;
  wire \mem_wdata[23]_i_1_n_0 ;
  wire \mem_wdata[24]_i_1_n_0 ;
  wire \mem_wdata[25]_i_1_n_0 ;
  wire \mem_wdata[26]_i_1_n_0 ;
  wire \mem_wdata[27]_i_1_n_0 ;
  wire \mem_wdata[28]_i_1_n_0 ;
  wire \mem_wdata[29]_i_1_n_0 ;
  wire \mem_wdata[30]_i_1_n_0 ;
  wire \mem_wdata[31]_i_1_n_0 ;
  wire \mem_wdata[31]_i_2_n_0 ;
  wire \mem_wdata[8]_i_1_n_0 ;
  wire \mem_wdata[9]_i_1_n_0 ;
  wire [1:0]mem_wordsize;
  wire \mem_wordsize[0]_i_1_n_0 ;
  wire \mem_wordsize[1]_i_1_n_0 ;
  wire \mem_wordsize_reg_n_0_[0] ;
  wire \mem_wordsize_reg_n_0_[1] ;
  wire \mem_wstrb[0]_i_1_n_0 ;
  wire \mem_wstrb[1]_i_1_n_0 ;
  wire \mem_wstrb[2]_i_1_n_0 ;
  wire \mem_wstrb[3]_i_1_n_0 ;
  wire \mem_wstrb[3]_i_2_n_0 ;
  wire \mem_wstrb_reg[0]_0 ;
  wire \mem_wstrb_reg[1]_0 ;
  wire \mem_wstrb_reg[2]_0 ;
  wire \mem_wstrb_reg[3]_0 ;
  wire [2:0]p_0_in;
  wire p_0_in0;
  wire [4:0]p_1_in;
  wire [31:0]\pcpi_insn_reg[31]_0 ;
  wire pcpi_mul_n_0;
  wire pcpi_mul_n_1;
  wire pcpi_mul_n_100;
  wire pcpi_mul_n_2;
  wire pcpi_mul_n_22;
  wire pcpi_mul_n_23;
  wire pcpi_mul_n_24;
  wire pcpi_mul_n_25;
  wire pcpi_mul_n_26;
  wire pcpi_mul_n_27;
  wire pcpi_mul_n_28;
  wire pcpi_mul_n_29;
  wire pcpi_mul_n_3;
  wire pcpi_mul_n_31;
  wire pcpi_mul_n_32;
  wire pcpi_mul_n_33;
  wire pcpi_mul_n_34;
  wire pcpi_mul_n_35;
  wire pcpi_mul_n_36;
  wire pcpi_mul_n_37;
  wire pcpi_mul_n_38;
  wire pcpi_mul_n_39;
  wire pcpi_mul_n_40;
  wire pcpi_mul_n_41;
  wire pcpi_mul_n_42;
  wire pcpi_mul_n_43;
  wire pcpi_mul_n_44;
  wire pcpi_mul_n_45;
  wire pcpi_mul_n_46;
  wire pcpi_mul_n_47;
  wire pcpi_mul_n_48;
  wire pcpi_mul_n_49;
  wire pcpi_mul_n_50;
  wire pcpi_mul_n_51;
  wire pcpi_mul_n_52;
  wire pcpi_mul_n_53;
  wire pcpi_mul_n_54;
  wire pcpi_mul_n_55;
  wire pcpi_mul_n_56;
  wire pcpi_mul_n_57;
  wire pcpi_mul_n_58;
  wire pcpi_mul_n_59;
  wire pcpi_mul_n_60;
  wire pcpi_mul_n_61;
  wire pcpi_mul_n_62;
  wire pcpi_mul_n_63;
  wire pcpi_mul_n_64;
  wire pcpi_mul_n_65;
  wire pcpi_mul_n_66;
  wire pcpi_mul_n_67;
  wire pcpi_mul_n_68;
  wire pcpi_mul_n_69;
  wire pcpi_mul_n_70;
  wire pcpi_mul_n_71;
  wire pcpi_mul_n_72;
  wire pcpi_mul_n_73;
  wire pcpi_mul_n_74;
  wire pcpi_mul_n_75;
  wire pcpi_mul_n_76;
  wire pcpi_mul_n_77;
  wire pcpi_mul_n_78;
  wire pcpi_mul_n_79;
  wire pcpi_mul_n_80;
  wire pcpi_mul_n_81;
  wire pcpi_mul_n_82;
  wire pcpi_mul_n_87;
  wire pcpi_mul_n_89;
  wire pcpi_mul_n_90;
  wire pcpi_mul_n_91;
  wire pcpi_mul_n_92;
  wire pcpi_mul_n_93;
  wire pcpi_mul_n_94;
  wire pcpi_mul_n_95;
  wire pcpi_mul_n_96;
  wire pcpi_mul_n_97;
  wire pcpi_mul_n_98;
  wire pcpi_mul_n_99;
  wire pcpi_timeout;
  wire [3:0]pcpi_timeout_counter0;
  wire \pcpi_timeout_counter[1]_i_1_n_0 ;
  wire \pcpi_timeout_counter[3]_i_2_n_0 ;
  wire [3:0]pcpi_timeout_counter_reg;
  wire pcpi_timeout_i_1_n_0;
  wire pcpi_valid;
  wire pcpi_valid_reg_0;
  wire [31:1]reg_next_pc1_in;
  wire \reg_next_pc[12]_i_2_n_0 ;
  wire \reg_next_pc[12]_i_3_n_0 ;
  wire \reg_next_pc[12]_i_4_n_0 ;
  wire \reg_next_pc[12]_i_5_n_0 ;
  wire \reg_next_pc[16]_i_2_n_0 ;
  wire \reg_next_pc[16]_i_3_n_0 ;
  wire \reg_next_pc[16]_i_4_n_0 ;
  wire \reg_next_pc[16]_i_5_n_0 ;
  wire \reg_next_pc[20]_i_2_n_0 ;
  wire \reg_next_pc[20]_i_3_n_0 ;
  wire \reg_next_pc[20]_i_4_n_0 ;
  wire \reg_next_pc[20]_i_5_n_0 ;
  wire \reg_next_pc[24]_i_2_n_0 ;
  wire \reg_next_pc[24]_i_3_n_0 ;
  wire \reg_next_pc[24]_i_4_n_0 ;
  wire \reg_next_pc[24]_i_5_n_0 ;
  wire \reg_next_pc[28]_i_2_n_0 ;
  wire \reg_next_pc[28]_i_3_n_0 ;
  wire \reg_next_pc[28]_i_4_n_0 ;
  wire \reg_next_pc[28]_i_5_n_0 ;
  wire \reg_next_pc[31]_i_2_n_0 ;
  wire \reg_next_pc[31]_i_3_n_0 ;
  wire \reg_next_pc[31]_i_4_n_0 ;
  wire \reg_next_pc[31]_i_5_n_0 ;
  wire \reg_next_pc[4]_i_2_n_0 ;
  wire \reg_next_pc[4]_i_3_n_0 ;
  wire \reg_next_pc[4]_i_4_n_0 ;
  wire \reg_next_pc[4]_i_5_n_0 ;
  wire \reg_next_pc[8]_i_2_n_0 ;
  wire \reg_next_pc[8]_i_3_n_0 ;
  wire \reg_next_pc[8]_i_4_n_0 ;
  wire \reg_next_pc[8]_i_5_n_0 ;
  wire \reg_next_pc_reg[12]_i_1_n_0 ;
  wire \reg_next_pc_reg[12]_i_1_n_1 ;
  wire \reg_next_pc_reg[12]_i_1_n_2 ;
  wire \reg_next_pc_reg[12]_i_1_n_3 ;
  wire \reg_next_pc_reg[16]_i_1_n_0 ;
  wire \reg_next_pc_reg[16]_i_1_n_1 ;
  wire \reg_next_pc_reg[16]_i_1_n_2 ;
  wire \reg_next_pc_reg[16]_i_1_n_3 ;
  wire \reg_next_pc_reg[20]_i_1_n_0 ;
  wire \reg_next_pc_reg[20]_i_1_n_1 ;
  wire \reg_next_pc_reg[20]_i_1_n_2 ;
  wire \reg_next_pc_reg[20]_i_1_n_3 ;
  wire \reg_next_pc_reg[24]_i_1_n_0 ;
  wire \reg_next_pc_reg[24]_i_1_n_1 ;
  wire \reg_next_pc_reg[24]_i_1_n_2 ;
  wire \reg_next_pc_reg[24]_i_1_n_3 ;
  wire \reg_next_pc_reg[28]_i_1_n_0 ;
  wire \reg_next_pc_reg[28]_i_1_n_1 ;
  wire \reg_next_pc_reg[28]_i_1_n_2 ;
  wire \reg_next_pc_reg[28]_i_1_n_3 ;
  wire \reg_next_pc_reg[31]_i_1_n_2 ;
  wire \reg_next_pc_reg[31]_i_1_n_3 ;
  wire \reg_next_pc_reg[4]_i_1_n_0 ;
  wire \reg_next_pc_reg[4]_i_1_n_1 ;
  wire \reg_next_pc_reg[4]_i_1_n_2 ;
  wire \reg_next_pc_reg[4]_i_1_n_3 ;
  wire \reg_next_pc_reg[8]_i_1_n_0 ;
  wire \reg_next_pc_reg[8]_i_1_n_1 ;
  wire \reg_next_pc_reg[8]_i_1_n_2 ;
  wire \reg_next_pc_reg[8]_i_1_n_3 ;
  wire \reg_next_pc_reg_n_0_[10] ;
  wire \reg_next_pc_reg_n_0_[11] ;
  wire \reg_next_pc_reg_n_0_[12] ;
  wire \reg_next_pc_reg_n_0_[13] ;
  wire \reg_next_pc_reg_n_0_[14] ;
  wire \reg_next_pc_reg_n_0_[15] ;
  wire \reg_next_pc_reg_n_0_[16] ;
  wire \reg_next_pc_reg_n_0_[17] ;
  wire \reg_next_pc_reg_n_0_[18] ;
  wire \reg_next_pc_reg_n_0_[19] ;
  wire \reg_next_pc_reg_n_0_[1] ;
  wire \reg_next_pc_reg_n_0_[20] ;
  wire \reg_next_pc_reg_n_0_[21] ;
  wire \reg_next_pc_reg_n_0_[22] ;
  wire \reg_next_pc_reg_n_0_[23] ;
  wire \reg_next_pc_reg_n_0_[24] ;
  wire \reg_next_pc_reg_n_0_[25] ;
  wire \reg_next_pc_reg_n_0_[26] ;
  wire \reg_next_pc_reg_n_0_[27] ;
  wire \reg_next_pc_reg_n_0_[28] ;
  wire \reg_next_pc_reg_n_0_[29] ;
  wire \reg_next_pc_reg_n_0_[2] ;
  wire \reg_next_pc_reg_n_0_[30] ;
  wire \reg_next_pc_reg_n_0_[31] ;
  wire \reg_next_pc_reg_n_0_[3] ;
  wire \reg_next_pc_reg_n_0_[4] ;
  wire \reg_next_pc_reg_n_0_[5] ;
  wire \reg_next_pc_reg_n_0_[6] ;
  wire \reg_next_pc_reg_n_0_[7] ;
  wire \reg_next_pc_reg_n_0_[8] ;
  wire \reg_next_pc_reg_n_0_[9] ;
  wire \reg_op1[17]_i_1_n_0 ;
  wire \reg_op1[17]_i_2_n_0 ;
  wire \reg_op1[17]_i_3_n_0 ;
  wire \reg_op1[17]_i_4_n_0 ;
  wire \reg_op1[18]_i_1_n_0 ;
  wire \reg_op1[18]_i_2_n_0 ;
  wire \reg_op1[18]_i_3_n_0 ;
  wire \reg_op1[18]_i_4_n_0 ;
  wire \reg_op1[19]_i_1_n_0 ;
  wire \reg_op1[19]_i_2_n_0 ;
  wire \reg_op1[19]_i_3_n_0 ;
  wire \reg_op1[19]_i_4_n_0 ;
  wire \reg_op1[20]_i_1_n_0 ;
  wire \reg_op1[20]_i_2_n_0 ;
  wire \reg_op1[20]_i_3_n_0 ;
  wire \reg_op1[20]_i_4_n_0 ;
  wire \reg_op1[20]_i_5_n_0 ;
  wire \reg_op1[21]_i_1_n_0 ;
  wire \reg_op1[21]_i_2_n_0 ;
  wire \reg_op1[21]_i_3_n_0 ;
  wire \reg_op1[21]_i_4_n_0 ;
  wire \reg_op1[21]_i_5_n_0 ;
  wire \reg_op1[22]_i_1_n_0 ;
  wire \reg_op1[22]_i_2_n_0 ;
  wire \reg_op1[22]_i_3_n_0 ;
  wire \reg_op1[22]_i_4_n_0 ;
  wire \reg_op1[22]_i_5_n_0 ;
  wire \reg_op1[23]_i_10_n_0 ;
  wire \reg_op1[23]_i_1_n_0 ;
  wire \reg_op1[23]_i_2_n_0 ;
  wire \reg_op1[23]_i_3_n_0 ;
  wire \reg_op1[23]_i_4_n_0 ;
  wire \reg_op1[23]_i_6_n_0 ;
  wire \reg_op1[23]_i_7_n_0 ;
  wire \reg_op1[23]_i_8_n_0 ;
  wire \reg_op1[23]_i_9_n_0 ;
  wire \reg_op1[24]_i_1_n_0 ;
  wire \reg_op1[24]_i_2_n_0 ;
  wire \reg_op1[24]_i_3_n_0 ;
  wire \reg_op1[24]_i_4_n_0 ;
  wire \reg_op1[24]_i_5_n_0 ;
  wire \reg_op1[25]_i_1_n_0 ;
  wire \reg_op1[25]_i_2_n_0 ;
  wire \reg_op1[25]_i_3_n_0 ;
  wire \reg_op1[25]_i_4_n_0 ;
  wire \reg_op1[25]_i_5_n_0 ;
  wire \reg_op1[25]_i_6_n_0 ;
  wire \reg_op1[26]_i_1_n_0 ;
  wire \reg_op1[26]_i_2_n_0 ;
  wire \reg_op1[26]_i_3_n_0 ;
  wire \reg_op1[26]_i_4_n_0 ;
  wire \reg_op1[26]_i_5_n_0 ;
  wire \reg_op1[26]_i_6_n_0 ;
  wire \reg_op1[27]_i_1_n_0 ;
  wire \reg_op1[27]_i_2_n_0 ;
  wire \reg_op1[27]_i_3_n_0 ;
  wire \reg_op1[27]_i_4_n_0 ;
  wire \reg_op1[27]_i_5_n_0 ;
  wire \reg_op1[27]_i_7_n_0 ;
  wire \reg_op1[28]_i_1_n_0 ;
  wire \reg_op1[28]_i_2_n_0 ;
  wire \reg_op1[28]_i_3_n_0 ;
  wire \reg_op1[28]_i_4_n_0 ;
  wire \reg_op1[28]_i_5_n_0 ;
  wire \reg_op1[29]_i_1_n_0 ;
  wire \reg_op1[29]_i_2_n_0 ;
  wire \reg_op1[29]_i_3_n_0 ;
  wire \reg_op1[29]_i_4_n_0 ;
  wire \reg_op1[29]_i_5_n_0 ;
  wire \reg_op1[30]_i_1_n_0 ;
  wire \reg_op1[30]_i_3_n_0 ;
  wire \reg_op1[30]_i_4_n_0 ;
  wire \reg_op1[30]_i_5_n_0 ;
  wire \reg_op1[30]_i_6_n_0 ;
  wire \reg_op1[31]_i_10_n_0 ;
  wire \reg_op1[31]_i_12_n_0 ;
  wire \reg_op1[31]_i_13_n_0 ;
  wire \reg_op1[31]_i_14_n_0 ;
  wire \reg_op1[31]_i_15_n_0 ;
  wire \reg_op1[31]_i_16_n_0 ;
  wire \reg_op1[31]_i_17_n_0 ;
  wire \reg_op1[31]_i_18_n_0 ;
  wire \reg_op1[31]_i_19_n_0 ;
  wire \reg_op1[31]_i_2_n_0 ;
  wire \reg_op1[31]_i_6_n_0 ;
  wire \reg_op1[31]_i_7_n_0 ;
  wire \reg_op1[31]_i_9_n_0 ;
  wire \reg_op1_reg[23]_i_5_n_0 ;
  wire \reg_op1_reg[23]_i_5_n_1 ;
  wire \reg_op1_reg[23]_i_5_n_2 ;
  wire \reg_op1_reg[23]_i_5_n_3 ;
  wire \reg_op1_reg[23]_i_5_n_4 ;
  wire \reg_op1_reg[23]_i_5_n_5 ;
  wire \reg_op1_reg[23]_i_5_n_6 ;
  wire \reg_op1_reg[23]_i_5_n_7 ;
  wire [31:0]\reg_op1_reg[31]_0 ;
  wire \reg_op1_reg[31]_i_11_n_0 ;
  wire \reg_op1_reg[31]_i_11_n_1 ;
  wire \reg_op1_reg[31]_i_11_n_2 ;
  wire \reg_op1_reg[31]_i_11_n_3 ;
  wire \reg_op1_reg[31]_i_11_n_4 ;
  wire \reg_op1_reg[31]_i_11_n_5 ;
  wire \reg_op1_reg[31]_i_11_n_6 ;
  wire \reg_op1_reg[31]_i_11_n_7 ;
  wire \reg_op1_reg[31]_i_8_n_1 ;
  wire \reg_op1_reg[31]_i_8_n_2 ;
  wire \reg_op1_reg[31]_i_8_n_3 ;
  wire \reg_op1_reg[31]_i_8_n_4 ;
  wire \reg_op1_reg[31]_i_8_n_5 ;
  wire \reg_op1_reg[31]_i_8_n_6 ;
  wire \reg_op1_reg[31]_i_8_n_7 ;
  wire [31:0]reg_op2;
  wire [31:0]\reg_op2_reg[31]_0 ;
  wire [31:0]reg_out1;
  wire \reg_out[0]_i_2_n_0 ;
  wire \reg_out[0]_i_3_n_0 ;
  wire \reg_out[0]_i_4_n_0 ;
  wire \reg_out[0]_i_5_n_0 ;
  wire \reg_out[0]_i_6_n_0 ;
  wire \reg_out[10]_i_2_n_0 ;
  wire \reg_out[10]_i_4_n_0 ;
  wire \reg_out[10]_i_5_n_0 ;
  wire \reg_out[10]_i_6_n_0 ;
  wire \reg_out[11]_i_2_n_0 ;
  wire \reg_out[11]_i_4_n_0 ;
  wire \reg_out[11]_i_5_n_0 ;
  wire \reg_out[11]_i_7_n_0 ;
  wire \reg_out[12]_i_10_n_0 ;
  wire \reg_out[12]_i_11_n_0 ;
  wire \reg_out[12]_i_2_n_0 ;
  wire \reg_out[12]_i_4_n_0 ;
  wire \reg_out[12]_i_5_n_0 ;
  wire \reg_out[12]_i_7_n_0 ;
  wire \reg_out[12]_i_8_n_0 ;
  wire \reg_out[12]_i_9_n_0 ;
  wire \reg_out[13]_i_2_n_0 ;
  wire \reg_out[13]_i_4_n_0 ;
  wire \reg_out[13]_i_5_n_0 ;
  wire \reg_out[13]_i_6_n_0 ;
  wire \reg_out[14]_i_2_n_0 ;
  wire \reg_out[14]_i_4_n_0 ;
  wire \reg_out[14]_i_5_n_0 ;
  wire \reg_out[14]_i_6_n_0 ;
  wire \reg_out[14]_i_7_n_0 ;
  wire \reg_out[15]_i_2_n_0 ;
  wire \reg_out[15]_i_4_n_0 ;
  wire \reg_out[15]_i_5_n_0 ;
  wire \reg_out[15]_i_6_n_0 ;
  wire \reg_out[15]_i_7_n_0 ;
  wire \reg_out[15]_i_9_n_0 ;
  wire \reg_out[16]_i_10_n_0 ;
  wire \reg_out[16]_i_11_n_0 ;
  wire \reg_out[16]_i_2_n_0 ;
  wire \reg_out[16]_i_4_n_0 ;
  wire \reg_out[16]_i_5_n_0 ;
  wire \reg_out[16]_i_7_n_0 ;
  wire \reg_out[16]_i_8_n_0 ;
  wire \reg_out[16]_i_9_n_0 ;
  wire \reg_out[17]_i_2_n_0 ;
  wire \reg_out[17]_i_4_n_0 ;
  wire \reg_out[17]_i_5_n_0 ;
  wire \reg_out[17]_i_6_n_0 ;
  wire \reg_out[18]_i_2_n_0 ;
  wire \reg_out[18]_i_4_n_0 ;
  wire \reg_out[18]_i_5_n_0 ;
  wire \reg_out[18]_i_6_n_0 ;
  wire \reg_out[19]_i_2_n_0 ;
  wire \reg_out[19]_i_4_n_0 ;
  wire \reg_out[19]_i_5_n_0 ;
  wire \reg_out[19]_i_8_n_0 ;
  wire \reg_out[1]_i_2_n_0 ;
  wire \reg_out[1]_i_3_n_0 ;
  wire \reg_out[1]_i_4_n_0 ;
  wire \reg_out[1]_i_5_n_0 ;
  wire \reg_out[1]_i_6_n_0 ;
  wire \reg_out[20]_i_10_n_0 ;
  wire \reg_out[20]_i_11_n_0 ;
  wire \reg_out[20]_i_12_n_0 ;
  wire \reg_out[20]_i_2_n_0 ;
  wire \reg_out[20]_i_3_n_0 ;
  wire \reg_out[20]_i_5_n_0 ;
  wire \reg_out[20]_i_8_n_0 ;
  wire \reg_out[20]_i_9_n_0 ;
  wire \reg_out[21]_i_2_n_0 ;
  wire \reg_out[21]_i_4_n_0 ;
  wire \reg_out[21]_i_5_n_0 ;
  wire \reg_out[21]_i_6_n_0 ;
  wire \reg_out[22]_i_2_n_0 ;
  wire \reg_out[22]_i_4_n_0 ;
  wire \reg_out[22]_i_5_n_0 ;
  wire \reg_out[22]_i_6_n_0 ;
  wire \reg_out[23]_i_2_n_0 ;
  wire \reg_out[23]_i_4_n_0 ;
  wire \reg_out[23]_i_5_n_0 ;
  wire \reg_out[23]_i_8_n_0 ;
  wire \reg_out[24]_i_10_n_0 ;
  wire \reg_out[24]_i_11_n_0 ;
  wire \reg_out[24]_i_2_n_0 ;
  wire \reg_out[24]_i_4_n_0 ;
  wire \reg_out[24]_i_5_n_0 ;
  wire \reg_out[24]_i_7_n_0 ;
  wire \reg_out[24]_i_8_n_0 ;
  wire \reg_out[24]_i_9_n_0 ;
  wire \reg_out[25]_i_2_n_0 ;
  wire \reg_out[25]_i_4_n_0 ;
  wire \reg_out[25]_i_5_n_0 ;
  wire \reg_out[25]_i_6_n_0 ;
  wire \reg_out[26]_i_2_n_0 ;
  wire \reg_out[26]_i_4_n_0 ;
  wire \reg_out[26]_i_5_n_0 ;
  wire \reg_out[26]_i_6_n_0 ;
  wire \reg_out[27]_i_2_n_0 ;
  wire \reg_out[27]_i_4_n_0 ;
  wire \reg_out[27]_i_5_n_0 ;
  wire \reg_out[27]_i_8_n_0 ;
  wire \reg_out[28]_i_10_n_0 ;
  wire \reg_out[28]_i_11_n_0 ;
  wire \reg_out[28]_i_2_n_0 ;
  wire \reg_out[28]_i_4_n_0 ;
  wire \reg_out[28]_i_5_n_0 ;
  wire \reg_out[28]_i_7_n_0 ;
  wire \reg_out[28]_i_8_n_0 ;
  wire \reg_out[28]_i_9_n_0 ;
  wire \reg_out[29]_i_2_n_0 ;
  wire \reg_out[29]_i_4_n_0 ;
  wire \reg_out[29]_i_5_n_0 ;
  wire \reg_out[29]_i_6_n_0 ;
  wire \reg_out[2]_i_2_n_0 ;
  wire \reg_out[2]_i_3_n_0 ;
  wire \reg_out[2]_i_4_n_0 ;
  wire \reg_out[2]_i_5_n_0 ;
  wire \reg_out[2]_i_6_n_0 ;
  wire \reg_out[30]_i_2_n_0 ;
  wire \reg_out[30]_i_4_n_0 ;
  wire \reg_out[30]_i_5_n_0 ;
  wire \reg_out[30]_i_6_n_0 ;
  wire \reg_out[31]_i_12_n_0 ;
  wire \reg_out[31]_i_13_n_0 ;
  wire \reg_out[31]_i_22_n_0 ;
  wire \reg_out[31]_i_23_n_0 ;
  wire \reg_out[31]_i_24_n_0 ;
  wire \reg_out[31]_i_2_n_0 ;
  wire \reg_out[31]_i_4_n_0 ;
  wire \reg_out[31]_i_5_n_0 ;
  wire \reg_out[31]_i_6_n_0 ;
  wire \reg_out[31]_i_7_n_0 ;
  wire \reg_out[31]_i_8_n_0 ;
  wire \reg_out[3]_i_11_n_0 ;
  wire \reg_out[3]_i_2_n_0 ;
  wire \reg_out[3]_i_3_n_0 ;
  wire \reg_out[3]_i_5_n_0 ;
  wire \reg_out[3]_i_6_n_0 ;
  wire \reg_out[4]_i_10_n_0 ;
  wire \reg_out[4]_i_11_n_0 ;
  wire \reg_out[4]_i_2_n_0 ;
  wire \reg_out[4]_i_3_n_0 ;
  wire \reg_out[4]_i_4_n_0 ;
  wire \reg_out[4]_i_5_n_0 ;
  wire \reg_out[4]_i_7_n_0 ;
  wire \reg_out[4]_i_8_n_0 ;
  wire \reg_out[4]_i_9_n_0 ;
  wire \reg_out[5]_i_2_n_0 ;
  wire \reg_out[5]_i_3_n_0 ;
  wire \reg_out[5]_i_4_n_0 ;
  wire \reg_out[5]_i_5_n_0 ;
  wire \reg_out[5]_i_6_n_0 ;
  wire \reg_out[6]_i_2_n_0 ;
  wire \reg_out[6]_i_3_n_0 ;
  wire \reg_out[6]_i_4_n_0 ;
  wire \reg_out[6]_i_5_n_0 ;
  wire \reg_out[6]_i_6_n_0 ;
  wire \reg_out[7]_i_12_n_0 ;
  wire \reg_out[7]_i_2_n_0 ;
  wire \reg_out[7]_i_3_n_0 ;
  wire \reg_out[7]_i_5_n_0 ;
  wire \reg_out[7]_i_6_n_0 ;
  wire \reg_out[7]_i_7_n_0 ;
  wire \reg_out[8]_i_10_n_0 ;
  wire \reg_out[8]_i_11_n_0 ;
  wire \reg_out[8]_i_2_n_0 ;
  wire \reg_out[8]_i_4_n_0 ;
  wire \reg_out[8]_i_5_n_0 ;
  wire \reg_out[8]_i_7_n_0 ;
  wire \reg_out[8]_i_8_n_0 ;
  wire \reg_out[8]_i_9_n_0 ;
  wire \reg_out[9]_i_2_n_0 ;
  wire \reg_out[9]_i_4_n_0 ;
  wire \reg_out[9]_i_5_n_0 ;
  wire \reg_out[9]_i_6_n_0 ;
  wire \reg_out_reg[12]_i_6_n_0 ;
  wire \reg_out_reg[12]_i_6_n_1 ;
  wire \reg_out_reg[12]_i_6_n_2 ;
  wire \reg_out_reg[12]_i_6_n_3 ;
  wire \reg_out_reg[12]_i_6_n_4 ;
  wire \reg_out_reg[12]_i_6_n_5 ;
  wire \reg_out_reg[12]_i_6_n_6 ;
  wire \reg_out_reg[12]_i_6_n_7 ;
  wire \reg_out_reg[16]_i_6_n_0 ;
  wire \reg_out_reg[16]_i_6_n_1 ;
  wire \reg_out_reg[16]_i_6_n_2 ;
  wire \reg_out_reg[16]_i_6_n_3 ;
  wire \reg_out_reg[16]_i_6_n_4 ;
  wire \reg_out_reg[16]_i_6_n_5 ;
  wire \reg_out_reg[16]_i_6_n_6 ;
  wire \reg_out_reg[16]_i_6_n_7 ;
  wire \reg_out_reg[20]_i_6_n_0 ;
  wire \reg_out_reg[20]_i_6_n_1 ;
  wire \reg_out_reg[20]_i_6_n_2 ;
  wire \reg_out_reg[20]_i_6_n_3 ;
  wire \reg_out_reg[20]_i_6_n_4 ;
  wire \reg_out_reg[20]_i_6_n_5 ;
  wire \reg_out_reg[20]_i_6_n_6 ;
  wire \reg_out_reg[20]_i_6_n_7 ;
  wire \reg_out_reg[24]_i_6_n_0 ;
  wire \reg_out_reg[24]_i_6_n_1 ;
  wire \reg_out_reg[24]_i_6_n_2 ;
  wire \reg_out_reg[24]_i_6_n_3 ;
  wire \reg_out_reg[24]_i_6_n_4 ;
  wire \reg_out_reg[24]_i_6_n_5 ;
  wire \reg_out_reg[24]_i_6_n_6 ;
  wire \reg_out_reg[24]_i_6_n_7 ;
  wire \reg_out_reg[28]_i_6_n_0 ;
  wire \reg_out_reg[28]_i_6_n_1 ;
  wire \reg_out_reg[28]_i_6_n_2 ;
  wire \reg_out_reg[28]_i_6_n_3 ;
  wire \reg_out_reg[28]_i_6_n_4 ;
  wire \reg_out_reg[28]_i_6_n_5 ;
  wire \reg_out_reg[28]_i_6_n_6 ;
  wire \reg_out_reg[28]_i_6_n_7 ;
  wire \reg_out_reg[31]_i_11_n_2 ;
  wire \reg_out_reg[31]_i_11_n_3 ;
  wire \reg_out_reg[31]_i_11_n_5 ;
  wire \reg_out_reg[31]_i_11_n_6 ;
  wire \reg_out_reg[31]_i_11_n_7 ;
  wire \reg_out_reg[4]_i_6_n_0 ;
  wire \reg_out_reg[4]_i_6_n_1 ;
  wire \reg_out_reg[4]_i_6_n_2 ;
  wire \reg_out_reg[4]_i_6_n_3 ;
  wire \reg_out_reg[4]_i_6_n_4 ;
  wire \reg_out_reg[4]_i_6_n_5 ;
  wire \reg_out_reg[4]_i_6_n_6 ;
  wire \reg_out_reg[8]_i_6_n_0 ;
  wire \reg_out_reg[8]_i_6_n_1 ;
  wire \reg_out_reg[8]_i_6_n_2 ;
  wire \reg_out_reg[8]_i_6_n_3 ;
  wire \reg_out_reg[8]_i_6_n_4 ;
  wire \reg_out_reg[8]_i_6_n_5 ;
  wire \reg_out_reg[8]_i_6_n_6 ;
  wire \reg_out_reg[8]_i_6_n_7 ;
  wire \reg_out_reg_n_0_[0] ;
  wire \reg_out_reg_n_0_[10] ;
  wire \reg_out_reg_n_0_[11] ;
  wire \reg_out_reg_n_0_[12] ;
  wire \reg_out_reg_n_0_[13] ;
  wire \reg_out_reg_n_0_[14] ;
  wire \reg_out_reg_n_0_[15] ;
  wire \reg_out_reg_n_0_[16] ;
  wire \reg_out_reg_n_0_[17] ;
  wire \reg_out_reg_n_0_[18] ;
  wire \reg_out_reg_n_0_[19] ;
  wire \reg_out_reg_n_0_[1] ;
  wire \reg_out_reg_n_0_[20] ;
  wire \reg_out_reg_n_0_[21] ;
  wire \reg_out_reg_n_0_[22] ;
  wire \reg_out_reg_n_0_[23] ;
  wire \reg_out_reg_n_0_[24] ;
  wire \reg_out_reg_n_0_[25] ;
  wire \reg_out_reg_n_0_[26] ;
  wire \reg_out_reg_n_0_[27] ;
  wire \reg_out_reg_n_0_[28] ;
  wire \reg_out_reg_n_0_[29] ;
  wire \reg_out_reg_n_0_[2] ;
  wire \reg_out_reg_n_0_[30] ;
  wire \reg_out_reg_n_0_[31] ;
  wire \reg_out_reg_n_0_[3] ;
  wire \reg_out_reg_n_0_[4] ;
  wire \reg_out_reg_n_0_[5] ;
  wire \reg_out_reg_n_0_[6] ;
  wire \reg_out_reg_n_0_[7] ;
  wire \reg_out_reg_n_0_[8] ;
  wire \reg_out_reg_n_0_[9] ;
  wire \reg_pc_reg_n_0_[10] ;
  wire \reg_pc_reg_n_0_[11] ;
  wire \reg_pc_reg_n_0_[12] ;
  wire \reg_pc_reg_n_0_[13] ;
  wire \reg_pc_reg_n_0_[14] ;
  wire \reg_pc_reg_n_0_[15] ;
  wire \reg_pc_reg_n_0_[16] ;
  wire \reg_pc_reg_n_0_[17] ;
  wire \reg_pc_reg_n_0_[18] ;
  wire \reg_pc_reg_n_0_[19] ;
  wire \reg_pc_reg_n_0_[1] ;
  wire \reg_pc_reg_n_0_[20] ;
  wire \reg_pc_reg_n_0_[21] ;
  wire \reg_pc_reg_n_0_[22] ;
  wire \reg_pc_reg_n_0_[23] ;
  wire \reg_pc_reg_n_0_[24] ;
  wire \reg_pc_reg_n_0_[25] ;
  wire \reg_pc_reg_n_0_[26] ;
  wire \reg_pc_reg_n_0_[27] ;
  wire \reg_pc_reg_n_0_[28] ;
  wire \reg_pc_reg_n_0_[29] ;
  wire \reg_pc_reg_n_0_[2] ;
  wire \reg_pc_reg_n_0_[30] ;
  wire \reg_pc_reg_n_0_[31] ;
  wire \reg_pc_reg_n_0_[3] ;
  wire \reg_pc_reg_n_0_[4] ;
  wire \reg_pc_reg_n_0_[5] ;
  wire \reg_pc_reg_n_0_[6] ;
  wire \reg_pc_reg_n_0_[7] ;
  wire \reg_pc_reg_n_0_[8] ;
  wire \reg_pc_reg_n_0_[9] ;
  wire [31:0]reg_sh1;
  wire \reg_sh[0]_i_1_n_0 ;
  wire \reg_sh[0]_i_3_n_0 ;
  wire \reg_sh[1]_i_1_n_0 ;
  wire \reg_sh[1]_i_2_n_0 ;
  wire \reg_sh[1]_i_3_n_0 ;
  wire \reg_sh[2]_i_1_n_0 ;
  wire \reg_sh[2]_i_2_n_0 ;
  wire \reg_sh[3]_i_1_n_0 ;
  wire \reg_sh[3]_i_2_n_0 ;
  wire \reg_sh[4]_i_1_n_0 ;
  wire \reg_sh[4]_i_2_n_0 ;
  wire \reg_sh[4]_i_3_n_0 ;
  wire \reg_sh_reg_n_0_[0] ;
  wire \reg_sh_reg_n_0_[1] ;
  wire \reg_sh_reg_n_0_[2] ;
  wire \reg_sh_reg_n_0_[3] ;
  wire \reg_sh_reg_n_0_[4] ;
  wire resetn;
  wire trap_reg_0;
  wire xfer_done;
  wire [3:0]\NLW_alu_out_q_reg[0]_i_16_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out_q_reg[0]_i_20_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out_q_reg[0]_i_29_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out_q_reg[0]_i_34_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out_q_reg[0]_i_5_O_UNCONNECTED ;
  wire [3:3]\NLW_alu_out_q_reg[0]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_alu_out_q_reg[0]_i_6_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out_q_reg[0]_i_7_O_UNCONNECTED ;
  wire [3:3]\NLW_alu_out_q_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_cycle_reg[60]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_instr_reg[60]_i_1_CO_UNCONNECTED ;
  wire [1:0]NLW_cpuregs_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [0:0]NLW_cpuregs_reg_r1_0_31_0_5_i_9_O_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire [3:3]NLW_cpuregs_reg_r1_0_31_24_29_i_8_CO_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r1_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r1_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r1_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r2_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r2_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r2_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r2_0_31_6_11_DOD_UNCONNECTED;
  wire [3:0]NLW_decoder_trigger_reg_i_16_O_UNCONNECTED;
  wire [3:0]NLW_decoder_trigger_reg_i_25_O_UNCONNECTED;
  wire [3:0]NLW_decoder_trigger_reg_i_6_O_UNCONNECTED;
  wire [3:0]NLW_decoder_trigger_reg_i_7_O_UNCONNECTED;
  wire [3:2]\NLW_reg_next_pc_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_reg_next_pc_reg[31]_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_reg_next_pc_reg[4]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_reg_op1_reg[31]_i_8_CO_UNCONNECTED ;
  wire [3:2]\NLW_reg_out_reg[31]_i_11_CO_UNCONNECTED ;
  wire [3:3]\NLW_reg_out_reg[31]_i_11_O_UNCONNECTED ;
  wire [0:0]\NLW_reg_out_reg[4]_i_6_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFF4FF04)) 
    \alu_out_q[0]_i_1 
       (.I0(instr_bge_reg_0),
        .I1(is_compare),
        .I2(is_lui_auipc_jal_jalr_addi_add_sub),
        .I3(\alu_out_q[0]_i_3_n_0 ),
        .I4(\alu_out_q_reg[3]_i_2_n_7 ),
        .I5(\alu_out_q[0]_i_4_n_0 ),
        .O(alu_out[0]));
  LUT4 #(
    .INIT(16'h44D4)) 
    \alu_out_q[0]_i_10 
       (.I0(\reg_op1_reg[31]_0 [27]),
        .I1(\reg_op2_reg[31]_0 [27]),
        .I2(\reg_op2_reg[31]_0 [26]),
        .I3(\reg_op1_reg[31]_0 [26]),
        .O(\alu_out_q[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \alu_out_q[0]_i_11 
       (.I0(\reg_op1_reg[31]_0 [25]),
        .I1(\reg_op2_reg[31]_0 [25]),
        .I2(\reg_op2_reg[31]_0 [24]),
        .I3(\reg_op1_reg[31]_0 [24]),
        .O(\alu_out_q[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_12 
       (.I0(\reg_op2_reg[31]_0 [31]),
        .I1(\reg_op1_reg[31]_0 [31]),
        .I2(\reg_op2_reg[31]_0 [30]),
        .I3(\reg_op1_reg[31]_0 [30]),
        .O(\alu_out_q[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_13 
       (.I0(\reg_op2_reg[31]_0 [29]),
        .I1(\reg_op1_reg[31]_0 [29]),
        .I2(\reg_op2_reg[31]_0 [28]),
        .I3(\reg_op1_reg[31]_0 [28]),
        .O(\alu_out_q[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_14 
       (.I0(\reg_op2_reg[31]_0 [26]),
        .I1(\reg_op1_reg[31]_0 [26]),
        .I2(\reg_op2_reg[31]_0 [27]),
        .I3(\reg_op1_reg[31]_0 [27]),
        .O(\alu_out_q[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_15 
       (.I0(\reg_op2_reg[31]_0 [24]),
        .I1(\reg_op1_reg[31]_0 [24]),
        .I2(\reg_op2_reg[31]_0 [25]),
        .I3(\reg_op1_reg[31]_0 [25]),
        .O(\alu_out_q[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_17 
       (.I0(\reg_op2_reg[31]_0 [31]),
        .I1(\reg_op1_reg[31]_0 [31]),
        .I2(\reg_op2_reg[31]_0 [30]),
        .I3(\reg_op1_reg[31]_0 [30]),
        .O(\alu_out_q[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \alu_out_q[0]_i_18 
       (.I0(\reg_op1_reg[31]_0 [28]),
        .I1(\reg_op2_reg[31]_0 [28]),
        .I2(\reg_op1_reg[31]_0 [29]),
        .I3(\reg_op2_reg[31]_0 [29]),
        .I4(\reg_op2_reg[31]_0 [27]),
        .I5(\reg_op1_reg[31]_0 [27]),
        .O(\alu_out_q[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \alu_out_q[0]_i_19 
       (.I0(\reg_op1_reg[31]_0 [25]),
        .I1(\reg_op2_reg[31]_0 [25]),
        .I2(\reg_op1_reg[31]_0 [24]),
        .I3(\reg_op2_reg[31]_0 [24]),
        .I4(\reg_op2_reg[31]_0 [26]),
        .I5(\reg_op1_reg[31]_0 [26]),
        .O(\alu_out_q[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h3333CCAF3333CCA0)) 
    \alu_out_q[0]_i_2 
       (.I0(data4),
        .I1(\alu_out_q_reg[0]_i_6_n_1 ),
        .I2(instr_bge),
        .I3(instr_bne),
        .I4(instr_beq),
        .I5(decoder_trigger_i_5_n_0),
        .O(instr_bge_reg_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    \alu_out_q[0]_i_21 
       (.I0(\reg_op1_reg[31]_0 [23]),
        .I1(\reg_op2_reg[31]_0 [23]),
        .I2(\reg_op2_reg[31]_0 [22]),
        .I3(\reg_op1_reg[31]_0 [22]),
        .O(\alu_out_q[0]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \alu_out_q[0]_i_22 
       (.I0(\reg_op1_reg[31]_0 [21]),
        .I1(\reg_op2_reg[31]_0 [21]),
        .I2(\reg_op2_reg[31]_0 [20]),
        .I3(\reg_op1_reg[31]_0 [20]),
        .O(\alu_out_q[0]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \alu_out_q[0]_i_23 
       (.I0(\reg_op1_reg[31]_0 [19]),
        .I1(\reg_op2_reg[31]_0 [19]),
        .I2(\reg_op2_reg[31]_0 [18]),
        .I3(\reg_op1_reg[31]_0 [18]),
        .O(\alu_out_q[0]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \alu_out_q[0]_i_24 
       (.I0(\reg_op1_reg[31]_0 [17]),
        .I1(\reg_op2_reg[31]_0 [17]),
        .I2(\reg_op2_reg[31]_0 [16]),
        .I3(\reg_op1_reg[31]_0 [16]),
        .O(\alu_out_q[0]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_25 
       (.I0(\reg_op2_reg[31]_0 [23]),
        .I1(\reg_op1_reg[31]_0 [23]),
        .I2(\reg_op2_reg[31]_0 [22]),
        .I3(\reg_op1_reg[31]_0 [22]),
        .O(\alu_out_q[0]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_26 
       (.I0(\reg_op2_reg[31]_0 [20]),
        .I1(\reg_op1_reg[31]_0 [20]),
        .I2(\reg_op2_reg[31]_0 [21]),
        .I3(\reg_op1_reg[31]_0 [21]),
        .O(\alu_out_q[0]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_27 
       (.I0(\reg_op2_reg[31]_0 [18]),
        .I1(\reg_op1_reg[31]_0 [18]),
        .I2(\reg_op2_reg[31]_0 [19]),
        .I3(\reg_op1_reg[31]_0 [19]),
        .O(\alu_out_q[0]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_28 
       (.I0(\reg_op2_reg[31]_0 [17]),
        .I1(\reg_op1_reg[31]_0 [17]),
        .I2(\reg_op2_reg[31]_0 [16]),
        .I3(\reg_op1_reg[31]_0 [16]),
        .O(\alu_out_q[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0110011001100000)) 
    \alu_out_q[0]_i_3 
       (.I0(is_lui_auipc_jal_jalr_addi_add_sub),
        .I1(is_compare),
        .I2(\reg_op1_reg[31]_0 [0]),
        .I3(\reg_op2_reg[31]_0 [0]),
        .I4(instr_xor),
        .I5(instr_xori),
        .O(\alu_out_q[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \alu_out_q[0]_i_30 
       (.I0(\reg_op1_reg[31]_0 [22]),
        .I1(\reg_op2_reg[31]_0 [22]),
        .I2(\reg_op1_reg[31]_0 [23]),
        .I3(\reg_op2_reg[31]_0 [23]),
        .I4(\reg_op2_reg[31]_0 [21]),
        .I5(\reg_op1_reg[31]_0 [21]),
        .O(\alu_out_q[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \alu_out_q[0]_i_31 
       (.I0(\reg_op1_reg[31]_0 [19]),
        .I1(\reg_op2_reg[31]_0 [19]),
        .I2(\reg_op1_reg[31]_0 [18]),
        .I3(\reg_op2_reg[31]_0 [18]),
        .I4(\reg_op2_reg[31]_0 [20]),
        .I5(\reg_op1_reg[31]_0 [20]),
        .O(\alu_out_q[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \alu_out_q[0]_i_32 
       (.I0(\reg_op1_reg[31]_0 [16]),
        .I1(\reg_op2_reg[31]_0 [16]),
        .I2(\reg_op1_reg[31]_0 [17]),
        .I3(\reg_op2_reg[31]_0 [17]),
        .I4(\reg_op2_reg[31]_0 [15]),
        .I5(\reg_op1_reg[31]_0 [15]),
        .O(\alu_out_q[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \alu_out_q[0]_i_33 
       (.I0(\reg_op1_reg[31]_0 [13]),
        .I1(\reg_op2_reg[31]_0 [13]),
        .I2(\reg_op1_reg[31]_0 [12]),
        .I3(\reg_op2_reg[31]_0 [12]),
        .I4(\reg_op2_reg[31]_0 [14]),
        .I5(\reg_op1_reg[31]_0 [14]),
        .O(\alu_out_q[0]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \alu_out_q[0]_i_35 
       (.I0(\reg_op1_reg[31]_0 [15]),
        .I1(\reg_op2_reg[31]_0 [15]),
        .I2(\reg_op2_reg[31]_0 [14]),
        .I3(\reg_op1_reg[31]_0 [14]),
        .O(\alu_out_q[0]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \alu_out_q[0]_i_36 
       (.I0(\reg_op1_reg[31]_0 [13]),
        .I1(\reg_op2_reg[31]_0 [13]),
        .I2(\reg_op2_reg[31]_0 [12]),
        .I3(\reg_op1_reg[31]_0 [12]),
        .O(\alu_out_q[0]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \alu_out_q[0]_i_37 
       (.I0(\reg_op1_reg[31]_0 [11]),
        .I1(\reg_op2_reg[31]_0 [11]),
        .I2(\reg_op2_reg[31]_0 [10]),
        .I3(\reg_op1_reg[31]_0 [10]),
        .O(\alu_out_q[0]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \alu_out_q[0]_i_38 
       (.I0(\reg_op1_reg[31]_0 [9]),
        .I1(\reg_op2_reg[31]_0 [9]),
        .I2(\reg_op2_reg[31]_0 [8]),
        .I3(\reg_op1_reg[31]_0 [8]),
        .O(\alu_out_q[0]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_39 
       (.I0(\reg_op2_reg[31]_0 [14]),
        .I1(\reg_op1_reg[31]_0 [14]),
        .I2(\reg_op2_reg[31]_0 [15]),
        .I3(\reg_op1_reg[31]_0 [15]),
        .O(\alu_out_q[0]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hAAA8A800)) 
    \alu_out_q[0]_i_4 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(instr_ori),
        .I2(instr_or),
        .I3(\reg_op2_reg[31]_0 [0]),
        .I4(\reg_op1_reg[31]_0 [0]),
        .O(\alu_out_q[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_40 
       (.I0(\reg_op2_reg[31]_0 [12]),
        .I1(\reg_op1_reg[31]_0 [12]),
        .I2(\reg_op2_reg[31]_0 [13]),
        .I3(\reg_op1_reg[31]_0 [13]),
        .O(\alu_out_q[0]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_41 
       (.I0(\reg_op2_reg[31]_0 [11]),
        .I1(\reg_op1_reg[31]_0 [11]),
        .I2(\reg_op2_reg[31]_0 [10]),
        .I3(\reg_op1_reg[31]_0 [10]),
        .O(\alu_out_q[0]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_42 
       (.I0(\reg_op2_reg[31]_0 [8]),
        .I1(\reg_op1_reg[31]_0 [8]),
        .I2(\reg_op2_reg[31]_0 [9]),
        .I3(\reg_op1_reg[31]_0 [9]),
        .O(\alu_out_q[0]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \alu_out_q[0]_i_43 
       (.I0(\reg_op1_reg[31]_0 [10]),
        .I1(\reg_op2_reg[31]_0 [10]),
        .I2(\reg_op1_reg[31]_0 [11]),
        .I3(\reg_op2_reg[31]_0 [11]),
        .I4(\reg_op2_reg[31]_0 [9]),
        .I5(\reg_op1_reg[31]_0 [9]),
        .O(\alu_out_q[0]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \alu_out_q[0]_i_44 
       (.I0(\reg_op1_reg[31]_0 [7]),
        .I1(\reg_op2_reg[31]_0 [7]),
        .I2(\reg_op1_reg[31]_0 [6]),
        .I3(\reg_op2_reg[31]_0 [6]),
        .I4(\reg_op2_reg[31]_0 [8]),
        .I5(\reg_op1_reg[31]_0 [8]),
        .O(\alu_out_q[0]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \alu_out_q[0]_i_45 
       (.I0(\reg_op1_reg[31]_0 [4]),
        .I1(\reg_op2_reg[31]_0 [4]),
        .I2(\reg_op1_reg[31]_0 [5]),
        .I3(\reg_op2_reg[31]_0 [5]),
        .I4(\reg_op2_reg[31]_0 [3]),
        .I5(\reg_op1_reg[31]_0 [3]),
        .O(\alu_out_q[0]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \alu_out_q[0]_i_46 
       (.I0(\reg_op1_reg[31]_0 [1]),
        .I1(\reg_op2_reg[31]_0 [1]),
        .I2(\reg_op1_reg[31]_0 [0]),
        .I3(\reg_op2_reg[31]_0 [0]),
        .I4(\reg_op2_reg[31]_0 [2]),
        .I5(\reg_op1_reg[31]_0 [2]),
        .O(\alu_out_q[0]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \alu_out_q[0]_i_47 
       (.I0(\reg_op1_reg[31]_0 [7]),
        .I1(\reg_op2_reg[31]_0 [7]),
        .I2(\reg_op2_reg[31]_0 [6]),
        .I3(\reg_op1_reg[31]_0 [6]),
        .O(\alu_out_q[0]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \alu_out_q[0]_i_48 
       (.I0(\reg_op1_reg[31]_0 [5]),
        .I1(\reg_op2_reg[31]_0 [5]),
        .I2(\reg_op2_reg[31]_0 [4]),
        .I3(\reg_op1_reg[31]_0 [4]),
        .O(\alu_out_q[0]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \alu_out_q[0]_i_49 
       (.I0(\reg_op1_reg[31]_0 [3]),
        .I1(\reg_op2_reg[31]_0 [3]),
        .I2(\reg_op2_reg[31]_0 [2]),
        .I3(\reg_op1_reg[31]_0 [2]),
        .O(\alu_out_q[0]_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \alu_out_q[0]_i_50 
       (.I0(\reg_op1_reg[31]_0 [1]),
        .I1(\reg_op2_reg[31]_0 [1]),
        .I2(\reg_op2_reg[31]_0 [0]),
        .I3(\reg_op1_reg[31]_0 [0]),
        .O(\alu_out_q[0]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_51 
       (.I0(\reg_op2_reg[31]_0 [6]),
        .I1(\reg_op1_reg[31]_0 [6]),
        .I2(\reg_op2_reg[31]_0 [7]),
        .I3(\reg_op1_reg[31]_0 [7]),
        .O(\alu_out_q[0]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_52 
       (.I0(\reg_op2_reg[31]_0 [5]),
        .I1(\reg_op1_reg[31]_0 [5]),
        .I2(\reg_op2_reg[31]_0 [4]),
        .I3(\reg_op1_reg[31]_0 [4]),
        .O(\alu_out_q[0]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_53 
       (.I0(\reg_op2_reg[31]_0 [2]),
        .I1(\reg_op1_reg[31]_0 [2]),
        .I2(\reg_op2_reg[31]_0 [3]),
        .I3(\reg_op1_reg[31]_0 [3]),
        .O(\alu_out_q[0]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \alu_out_q[0]_i_54 
       (.I0(\reg_op2_reg[31]_0 [0]),
        .I1(\reg_op1_reg[31]_0 [0]),
        .I2(\reg_op2_reg[31]_0 [1]),
        .I3(\reg_op1_reg[31]_0 [1]),
        .O(\alu_out_q[0]_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \alu_out_q[0]_i_8 
       (.I0(\reg_op1_reg[31]_0 [31]),
        .I1(\reg_op2_reg[31]_0 [31]),
        .I2(\reg_op2_reg[31]_0 [30]),
        .I3(\reg_op1_reg[31]_0 [30]),
        .O(\alu_out_q[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \alu_out_q[0]_i_9 
       (.I0(\reg_op1_reg[31]_0 [29]),
        .I1(\reg_op2_reg[31]_0 [29]),
        .I2(\reg_op2_reg[31]_0 [28]),
        .I3(\reg_op1_reg[31]_0 [28]),
        .O(\alu_out_q[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[10]_i_1 
       (.I0(\reg_op2_reg[31]_0 [10]),
        .I1(\reg_op1_reg[31]_0 [10]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[11]_i_2_n_5 ),
        .I5(\alu_out_q[10]_i_2_n_0 ),
        .O(alu_out[10]));
  LUT5 #(
    .INIT(32'hA8A8A880)) 
    \alu_out_q[10]_i_2 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(\reg_op2_reg[31]_0 [10]),
        .I2(\reg_op1_reg[31]_0 [10]),
        .I3(instr_ori),
        .I4(instr_or),
        .O(\alu_out_q[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[11]_i_1 
       (.I0(\reg_op2_reg[31]_0 [11]),
        .I1(\reg_op1_reg[31]_0 [11]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[11]_i_2_n_4 ),
        .I5(\alu_out_q[11]_i_3_n_0 ),
        .O(alu_out[11]));
  LUT5 #(
    .INIT(32'hA8A8A880)) 
    \alu_out_q[11]_i_3 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(\reg_op2_reg[31]_0 [11]),
        .I2(\reg_op1_reg[31]_0 [11]),
        .I3(instr_ori),
        .I4(instr_or),
        .O(\alu_out_q[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[11]_i_4 
       (.I0(\reg_op2_reg[31]_0 [11]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [11]),
        .O(\alu_out_q[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[11]_i_5 
       (.I0(\reg_op2_reg[31]_0 [10]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [10]),
        .O(\alu_out_q[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[11]_i_6 
       (.I0(\reg_op2_reg[31]_0 [9]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [9]),
        .O(\alu_out_q[11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[11]_i_7 
       (.I0(\reg_op2_reg[31]_0 [8]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [8]),
        .O(\alu_out_q[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[12]_i_1 
       (.I0(\reg_op2_reg[31]_0 [12]),
        .I1(\reg_op1_reg[31]_0 [12]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[15]_i_2_n_7 ),
        .I5(\alu_out_q[12]_i_2_n_0 ),
        .O(alu_out[12]));
  LUT5 #(
    .INIT(32'hA8A8A880)) 
    \alu_out_q[12]_i_2 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(\reg_op2_reg[31]_0 [12]),
        .I2(\reg_op1_reg[31]_0 [12]),
        .I3(instr_ori),
        .I4(instr_or),
        .O(\alu_out_q[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[13]_i_1 
       (.I0(\reg_op2_reg[31]_0 [13]),
        .I1(\reg_op1_reg[31]_0 [13]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[15]_i_2_n_6 ),
        .I5(\alu_out_q[13]_i_2_n_0 ),
        .O(alu_out[13]));
  LUT5 #(
    .INIT(32'hA8A8A880)) 
    \alu_out_q[13]_i_2 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(\reg_op2_reg[31]_0 [13]),
        .I2(\reg_op1_reg[31]_0 [13]),
        .I3(instr_ori),
        .I4(instr_or),
        .O(\alu_out_q[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[14]_i_1 
       (.I0(\reg_op2_reg[31]_0 [14]),
        .I1(\reg_op1_reg[31]_0 [14]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[15]_i_2_n_5 ),
        .I5(\alu_out_q[14]_i_2_n_0 ),
        .O(alu_out[14]));
  LUT5 #(
    .INIT(32'hA8A8A880)) 
    \alu_out_q[14]_i_2 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(\reg_op2_reg[31]_0 [14]),
        .I2(\reg_op1_reg[31]_0 [14]),
        .I3(instr_ori),
        .I4(instr_or),
        .O(\alu_out_q[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[15]_i_1 
       (.I0(\reg_op2_reg[31]_0 [15]),
        .I1(\reg_op1_reg[31]_0 [15]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[15]_i_2_n_4 ),
        .I5(\alu_out_q[15]_i_3_n_0 ),
        .O(alu_out[15]));
  LUT5 #(
    .INIT(32'hAAA8A800)) 
    \alu_out_q[15]_i_3 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(instr_ori),
        .I2(instr_or),
        .I3(\reg_op2_reg[31]_0 [15]),
        .I4(\reg_op1_reg[31]_0 [15]),
        .O(\alu_out_q[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[15]_i_4 
       (.I0(\reg_op2_reg[31]_0 [15]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [15]),
        .O(\alu_out_q[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[15]_i_5 
       (.I0(\reg_op2_reg[31]_0 [14]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [14]),
        .O(\alu_out_q[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[15]_i_6 
       (.I0(\reg_op2_reg[31]_0 [13]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [13]),
        .O(\alu_out_q[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[15]_i_7 
       (.I0(\reg_op2_reg[31]_0 [12]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [12]),
        .O(\alu_out_q[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[16]_i_1 
       (.I0(\reg_op2_reg[31]_0 [16]),
        .I1(\reg_op1_reg[31]_0 [16]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[19]_i_2_n_7 ),
        .I5(\alu_out_q[16]_i_2_n_0 ),
        .O(alu_out[16]));
  LUT5 #(
    .INIT(32'hAAA8A800)) 
    \alu_out_q[16]_i_2 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(instr_ori),
        .I2(instr_or),
        .I3(\reg_op2_reg[31]_0 [16]),
        .I4(\reg_op1_reg[31]_0 [16]),
        .O(\alu_out_q[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[17]_i_1 
       (.I0(\reg_op2_reg[31]_0 [17]),
        .I1(\reg_op1_reg[31]_0 [17]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[19]_i_2_n_6 ),
        .I5(\alu_out_q[17]_i_2_n_0 ),
        .O(alu_out[17]));
  LUT5 #(
    .INIT(32'hAAA8A800)) 
    \alu_out_q[17]_i_2 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(instr_ori),
        .I2(instr_or),
        .I3(\reg_op2_reg[31]_0 [17]),
        .I4(\reg_op1_reg[31]_0 [17]),
        .O(\alu_out_q[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[18]_i_1 
       (.I0(\reg_op2_reg[31]_0 [18]),
        .I1(\reg_op1_reg[31]_0 [18]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[19]_i_2_n_5 ),
        .I5(\alu_out_q[18]_i_2_n_0 ),
        .O(alu_out[18]));
  LUT5 #(
    .INIT(32'hAAA8A800)) 
    \alu_out_q[18]_i_2 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(instr_ori),
        .I2(instr_or),
        .I3(\reg_op2_reg[31]_0 [18]),
        .I4(\reg_op1_reg[31]_0 [18]),
        .O(\alu_out_q[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[19]_i_1 
       (.I0(\reg_op2_reg[31]_0 [19]),
        .I1(\reg_op1_reg[31]_0 [19]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[19]_i_2_n_4 ),
        .I5(\alu_out_q[19]_i_3_n_0 ),
        .O(alu_out[19]));
  LUT5 #(
    .INIT(32'hAAA8A800)) 
    \alu_out_q[19]_i_3 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(instr_ori),
        .I2(instr_or),
        .I3(\reg_op2_reg[31]_0 [19]),
        .I4(\reg_op1_reg[31]_0 [19]),
        .O(\alu_out_q[19]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[19]_i_4 
       (.I0(\reg_op2_reg[31]_0 [19]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [19]),
        .O(\alu_out_q[19]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[19]_i_5 
       (.I0(\reg_op2_reg[31]_0 [18]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [18]),
        .O(\alu_out_q[19]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[19]_i_6 
       (.I0(\reg_op2_reg[31]_0 [17]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [17]),
        .O(\alu_out_q[19]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[19]_i_7 
       (.I0(\reg_op2_reg[31]_0 [16]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [16]),
        .O(\alu_out_q[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[1]_i_1 
       (.I0(\reg_op2_reg[31]_0 [1]),
        .I1(\reg_op1_reg[31]_0 [1]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[3]_i_2_n_6 ),
        .I5(\alu_out_q[1]_i_2_n_0 ),
        .O(alu_out[1]));
  LUT5 #(
    .INIT(32'hAAA8A800)) 
    \alu_out_q[1]_i_2 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(instr_ori),
        .I2(instr_or),
        .I3(\reg_op2_reg[31]_0 [1]),
        .I4(\reg_op1_reg[31]_0 [1]),
        .O(\alu_out_q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[20]_i_1 
       (.I0(\reg_op2_reg[31]_0 [20]),
        .I1(\reg_op1_reg[31]_0 [20]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[23]_i_2_n_7 ),
        .I5(\alu_out_q[20]_i_2_n_0 ),
        .O(alu_out[20]));
  LUT5 #(
    .INIT(32'hAAA8A800)) 
    \alu_out_q[20]_i_2 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(instr_ori),
        .I2(instr_or),
        .I3(\reg_op2_reg[31]_0 [20]),
        .I4(\reg_op1_reg[31]_0 [20]),
        .O(\alu_out_q[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[21]_i_1 
       (.I0(\reg_op2_reg[31]_0 [21]),
        .I1(\reg_op1_reg[31]_0 [21]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[23]_i_2_n_6 ),
        .I5(\alu_out_q[21]_i_2_n_0 ),
        .O(alu_out[21]));
  LUT5 #(
    .INIT(32'hA8A8A880)) 
    \alu_out_q[21]_i_2 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(\reg_op2_reg[31]_0 [21]),
        .I2(\reg_op1_reg[31]_0 [21]),
        .I3(instr_ori),
        .I4(instr_or),
        .O(\alu_out_q[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[22]_i_1 
       (.I0(\reg_op2_reg[31]_0 [22]),
        .I1(\reg_op1_reg[31]_0 [22]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[23]_i_2_n_5 ),
        .I5(\alu_out_q[22]_i_2_n_0 ),
        .O(alu_out[22]));
  LUT5 #(
    .INIT(32'hA8A8A880)) 
    \alu_out_q[22]_i_2 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(\reg_op2_reg[31]_0 [22]),
        .I2(\reg_op1_reg[31]_0 [22]),
        .I3(instr_ori),
        .I4(instr_or),
        .O(\alu_out_q[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[23]_i_1 
       (.I0(\reg_op2_reg[31]_0 [23]),
        .I1(\reg_op1_reg[31]_0 [23]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[23]_i_2_n_4 ),
        .I5(\alu_out_q[23]_i_3_n_0 ),
        .O(alu_out[23]));
  LUT5 #(
    .INIT(32'hAAA8A800)) 
    \alu_out_q[23]_i_3 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(instr_ori),
        .I2(instr_or),
        .I3(\reg_op2_reg[31]_0 [23]),
        .I4(\reg_op1_reg[31]_0 [23]),
        .O(\alu_out_q[23]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[23]_i_4 
       (.I0(\reg_op2_reg[31]_0 [23]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [23]),
        .O(\alu_out_q[23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[23]_i_5 
       (.I0(\reg_op2_reg[31]_0 [22]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [22]),
        .O(\alu_out_q[23]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[23]_i_6 
       (.I0(\reg_op2_reg[31]_0 [21]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [21]),
        .O(\alu_out_q[23]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[23]_i_7 
       (.I0(\reg_op2_reg[31]_0 [20]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [20]),
        .O(\alu_out_q[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[24]_i_1 
       (.I0(\reg_op2_reg[31]_0 [24]),
        .I1(\reg_op1_reg[31]_0 [24]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[27]_i_2_n_7 ),
        .I5(\alu_out_q[24]_i_2_n_0 ),
        .O(alu_out[24]));
  LUT5 #(
    .INIT(32'hAAA8A800)) 
    \alu_out_q[24]_i_2 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(instr_ori),
        .I2(instr_or),
        .I3(\reg_op2_reg[31]_0 [24]),
        .I4(\reg_op1_reg[31]_0 [24]),
        .O(\alu_out_q[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[25]_i_1 
       (.I0(\reg_op2_reg[31]_0 [25]),
        .I1(\reg_op1_reg[31]_0 [25]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[27]_i_2_n_6 ),
        .I5(\alu_out_q[25]_i_2_n_0 ),
        .O(alu_out[25]));
  LUT5 #(
    .INIT(32'hA8A8A880)) 
    \alu_out_q[25]_i_2 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(\reg_op2_reg[31]_0 [25]),
        .I2(\reg_op1_reg[31]_0 [25]),
        .I3(instr_ori),
        .I4(instr_or),
        .O(\alu_out_q[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[26]_i_1 
       (.I0(\reg_op2_reg[31]_0 [26]),
        .I1(\reg_op1_reg[31]_0 [26]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[27]_i_2_n_5 ),
        .I5(\alu_out_q[26]_i_2_n_0 ),
        .O(alu_out[26]));
  LUT5 #(
    .INIT(32'hA8A8A880)) 
    \alu_out_q[26]_i_2 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(\reg_op2_reg[31]_0 [26]),
        .I2(\reg_op1_reg[31]_0 [26]),
        .I3(instr_ori),
        .I4(instr_or),
        .O(\alu_out_q[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[27]_i_1 
       (.I0(\reg_op2_reg[31]_0 [27]),
        .I1(\reg_op1_reg[31]_0 [27]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[27]_i_2_n_4 ),
        .I5(\alu_out_q[27]_i_3_n_0 ),
        .O(alu_out[27]));
  LUT5 #(
    .INIT(32'hAAA8A800)) 
    \alu_out_q[27]_i_3 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(instr_ori),
        .I2(instr_or),
        .I3(\reg_op2_reg[31]_0 [27]),
        .I4(\reg_op1_reg[31]_0 [27]),
        .O(\alu_out_q[27]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[27]_i_4 
       (.I0(\reg_op2_reg[31]_0 [27]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [27]),
        .O(\alu_out_q[27]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[27]_i_5 
       (.I0(\reg_op2_reg[31]_0 [26]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [26]),
        .O(\alu_out_q[27]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[27]_i_6 
       (.I0(\reg_op2_reg[31]_0 [25]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [25]),
        .O(\alu_out_q[27]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[27]_i_7 
       (.I0(\reg_op2_reg[31]_0 [24]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [24]),
        .O(\alu_out_q[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[28]_i_1 
       (.I0(\reg_op2_reg[31]_0 [28]),
        .I1(\reg_op1_reg[31]_0 [28]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[31]_i_3_n_7 ),
        .I5(\alu_out_q[28]_i_2_n_0 ),
        .O(alu_out[28]));
  LUT5 #(
    .INIT(32'hAAA8A800)) 
    \alu_out_q[28]_i_2 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(instr_ori),
        .I2(instr_or),
        .I3(\reg_op2_reg[31]_0 [28]),
        .I4(\reg_op1_reg[31]_0 [28]),
        .O(\alu_out_q[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[29]_i_1 
       (.I0(\reg_op2_reg[31]_0 [29]),
        .I1(\reg_op1_reg[31]_0 [29]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[31]_i_3_n_6 ),
        .I5(\alu_out_q[29]_i_2_n_0 ),
        .O(alu_out[29]));
  LUT5 #(
    .INIT(32'hAAA8A800)) 
    \alu_out_q[29]_i_2 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(instr_ori),
        .I2(instr_or),
        .I3(\reg_op2_reg[31]_0 [29]),
        .I4(\reg_op1_reg[31]_0 [29]),
        .O(\alu_out_q[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[2]_i_1 
       (.I0(\reg_op2_reg[31]_0 [2]),
        .I1(\reg_op1_reg[31]_0 [2]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[3]_i_2_n_5 ),
        .I5(\alu_out_q[2]_i_2_n_0 ),
        .O(alu_out[2]));
  LUT5 #(
    .INIT(32'hAAA8A800)) 
    \alu_out_q[2]_i_2 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(instr_ori),
        .I2(instr_or),
        .I3(\reg_op2_reg[31]_0 [2]),
        .I4(\reg_op1_reg[31]_0 [2]),
        .O(\alu_out_q[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[30]_i_1 
       (.I0(\reg_op2_reg[31]_0 [30]),
        .I1(\reg_op1_reg[31]_0 [30]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[31]_i_3_n_5 ),
        .I5(\alu_out_q[30]_i_2_n_0 ),
        .O(alu_out[30]));
  LUT5 #(
    .INIT(32'hA8A8A880)) 
    \alu_out_q[30]_i_2 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(\reg_op2_reg[31]_0 [30]),
        .I2(\reg_op1_reg[31]_0 [30]),
        .I3(instr_ori),
        .I4(instr_or),
        .O(\alu_out_q[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[31]_i_1 
       (.I0(\reg_op2_reg[31]_0 [31]),
        .I1(\reg_op1_reg[31]_0 [31]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[31]_i_3_n_4 ),
        .I5(\alu_out_q[31]_i_4_n_0 ),
        .O(alu_out[31]));
  LUT4 #(
    .INIT(16'hFFF1)) 
    \alu_out_q[31]_i_2 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(is_lui_auipc_jal_jalr_addi_add_sub),
        .I3(is_compare),
        .O(\alu_out_q[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA8A8A880)) 
    \alu_out_q[31]_i_4 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(\reg_op2_reg[31]_0 [31]),
        .I2(\reg_op1_reg[31]_0 [31]),
        .I3(instr_ori),
        .I4(instr_or),
        .O(\alu_out_q[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[31]_i_5 
       (.I0(instr_sub),
        .I1(\reg_op2_reg[31]_0 [31]),
        .I2(\reg_op1_reg[31]_0 [31]),
        .O(\alu_out_q[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[31]_i_6 
       (.I0(\reg_op2_reg[31]_0 [30]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [30]),
        .O(\alu_out_q[31]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[31]_i_7 
       (.I0(\reg_op2_reg[31]_0 [29]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [29]),
        .O(\alu_out_q[31]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[31]_i_8 
       (.I0(\reg_op2_reg[31]_0 [28]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [28]),
        .O(\alu_out_q[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0101010101010100)) 
    \alu_out_q[31]_i_9 
       (.I0(pcpi_mul_n_95),
        .I1(is_compare),
        .I2(is_lui_auipc_jal_jalr_addi_add_sub),
        .I3(pcpi_mul_n_94),
        .I4(instr_and),
        .I5(instr_andi),
        .O(\alu_out_q[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[3]_i_1 
       (.I0(\reg_op2_reg[31]_0 [3]),
        .I1(\reg_op1_reg[31]_0 [3]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[3]_i_2_n_4 ),
        .I5(\alu_out_q[3]_i_3_n_0 ),
        .O(alu_out[3]));
  LUT5 #(
    .INIT(32'hAAA8A800)) 
    \alu_out_q[3]_i_3 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(instr_ori),
        .I2(instr_or),
        .I3(\reg_op2_reg[31]_0 [3]),
        .I4(\reg_op1_reg[31]_0 [3]),
        .O(\alu_out_q[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[3]_i_4 
       (.I0(\reg_op2_reg[31]_0 [3]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [3]),
        .O(\alu_out_q[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[3]_i_5 
       (.I0(\reg_op2_reg[31]_0 [2]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [2]),
        .O(\alu_out_q[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[3]_i_6 
       (.I0(\reg_op2_reg[31]_0 [1]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [1]),
        .O(\alu_out_q[3]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \alu_out_q[3]_i_7 
       (.I0(\reg_op2_reg[31]_0 [0]),
        .O(\alu_out_q[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[4]_i_1 
       (.I0(\reg_op2_reg[31]_0 [4]),
        .I1(\reg_op1_reg[31]_0 [4]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[7]_i_2_n_7 ),
        .I5(\alu_out_q[4]_i_2_n_0 ),
        .O(alu_out[4]));
  LUT5 #(
    .INIT(32'hAAA8A800)) 
    \alu_out_q[4]_i_2 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(instr_ori),
        .I2(instr_or),
        .I3(\reg_op2_reg[31]_0 [4]),
        .I4(\reg_op1_reg[31]_0 [4]),
        .O(\alu_out_q[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[5]_i_1 
       (.I0(\reg_op2_reg[31]_0 [5]),
        .I1(\reg_op1_reg[31]_0 [5]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[7]_i_2_n_6 ),
        .I5(\alu_out_q[5]_i_2_n_0 ),
        .O(alu_out[5]));
  LUT5 #(
    .INIT(32'hAAA8A800)) 
    \alu_out_q[5]_i_2 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(instr_ori),
        .I2(instr_or),
        .I3(\reg_op2_reg[31]_0 [5]),
        .I4(\reg_op1_reg[31]_0 [5]),
        .O(\alu_out_q[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[6]_i_1 
       (.I0(\reg_op2_reg[31]_0 [6]),
        .I1(\reg_op1_reg[31]_0 [6]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[7]_i_2_n_5 ),
        .I5(\alu_out_q[6]_i_2_n_0 ),
        .O(alu_out[6]));
  LUT5 #(
    .INIT(32'hA8A8A880)) 
    \alu_out_q[6]_i_2 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(\reg_op2_reg[31]_0 [6]),
        .I2(\reg_op1_reg[31]_0 [6]),
        .I3(instr_ori),
        .I4(instr_or),
        .O(\alu_out_q[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[7]_i_1 
       (.I0(\reg_op2_reg[31]_0 [7]),
        .I1(\reg_op1_reg[31]_0 [7]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[7]_i_2_n_4 ),
        .I5(\alu_out_q[7]_i_3_n_0 ),
        .O(alu_out[7]));
  LUT5 #(
    .INIT(32'hAAA8A800)) 
    \alu_out_q[7]_i_3 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(instr_ori),
        .I2(instr_or),
        .I3(\reg_op2_reg[31]_0 [7]),
        .I4(\reg_op1_reg[31]_0 [7]),
        .O(\alu_out_q[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[7]_i_4 
       (.I0(\reg_op2_reg[31]_0 [7]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [7]),
        .O(\alu_out_q[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[7]_i_5 
       (.I0(\reg_op2_reg[31]_0 [6]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [6]),
        .O(\alu_out_q[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[7]_i_6 
       (.I0(\reg_op2_reg[31]_0 [5]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [5]),
        .O(\alu_out_q[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \alu_out_q[7]_i_7 
       (.I0(\reg_op2_reg[31]_0 [4]),
        .I1(instr_sub),
        .I2(\reg_op1_reg[31]_0 [4]),
        .O(\alu_out_q[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[8]_i_1 
       (.I0(\reg_op2_reg[31]_0 [8]),
        .I1(\reg_op1_reg[31]_0 [8]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[11]_i_2_n_7 ),
        .I5(\alu_out_q[8]_i_2_n_0 ),
        .O(alu_out[8]));
  LUT5 #(
    .INIT(32'hAAA8A800)) 
    \alu_out_q[8]_i_2 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(instr_ori),
        .I2(instr_or),
        .I3(\reg_op2_reg[31]_0 [8]),
        .I4(\reg_op1_reg[31]_0 [8]),
        .O(\alu_out_q[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF060606)) 
    \alu_out_q[9]_i_1 
       (.I0(\reg_op2_reg[31]_0 [9]),
        .I1(\reg_op1_reg[31]_0 [9]),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_jalr_addi_add_sub),
        .I4(\alu_out_q_reg[11]_i_2_n_6 ),
        .I5(\alu_out_q[9]_i_2_n_0 ),
        .O(alu_out[9]));
  LUT5 #(
    .INIT(32'hA8A8A880)) 
    \alu_out_q[9]_i_2 
       (.I0(\alu_out_q[31]_i_9_n_0 ),
        .I1(\reg_op2_reg[31]_0 [9]),
        .I2(\reg_op1_reg[31]_0 [9]),
        .I3(instr_ori),
        .I4(instr_or),
        .O(\alu_out_q[9]_i_2_n_0 ));
  FDRE \alu_out_q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[0]),
        .Q(alu_out_q[0]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[0]_i_16 
       (.CI(\alu_out_q_reg[0]_i_29_n_0 ),
        .CO({\alu_out_q_reg[0]_i_16_n_0 ,\alu_out_q_reg[0]_i_16_n_1 ,\alu_out_q_reg[0]_i_16_n_2 ,\alu_out_q_reg[0]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_alu_out_q_reg[0]_i_16_O_UNCONNECTED [3:0]),
        .S({\alu_out_q[0]_i_30_n_0 ,\alu_out_q[0]_i_31_n_0 ,\alu_out_q[0]_i_32_n_0 ,\alu_out_q[0]_i_33_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[0]_i_20 
       (.CI(\alu_out_q_reg[0]_i_34_n_0 ),
        .CO({\alu_out_q_reg[0]_i_20_n_0 ,\alu_out_q_reg[0]_i_20_n_1 ,\alu_out_q_reg[0]_i_20_n_2 ,\alu_out_q_reg[0]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\alu_out_q[0]_i_35_n_0 ,\alu_out_q[0]_i_36_n_0 ,\alu_out_q[0]_i_37_n_0 ,\alu_out_q[0]_i_38_n_0 }),
        .O(\NLW_alu_out_q_reg[0]_i_20_O_UNCONNECTED [3:0]),
        .S({\alu_out_q[0]_i_39_n_0 ,\alu_out_q[0]_i_40_n_0 ,\alu_out_q[0]_i_41_n_0 ,\alu_out_q[0]_i_42_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[0]_i_29 
       (.CI(1'b0),
        .CO({\alu_out_q_reg[0]_i_29_n_0 ,\alu_out_q_reg[0]_i_29_n_1 ,\alu_out_q_reg[0]_i_29_n_2 ,\alu_out_q_reg[0]_i_29_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_alu_out_q_reg[0]_i_29_O_UNCONNECTED [3:0]),
        .S({\alu_out_q[0]_i_43_n_0 ,\alu_out_q[0]_i_44_n_0 ,\alu_out_q[0]_i_45_n_0 ,\alu_out_q[0]_i_46_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[0]_i_34 
       (.CI(1'b0),
        .CO({\alu_out_q_reg[0]_i_34_n_0 ,\alu_out_q_reg[0]_i_34_n_1 ,\alu_out_q_reg[0]_i_34_n_2 ,\alu_out_q_reg[0]_i_34_n_3 }),
        .CYINIT(1'b0),
        .DI({\alu_out_q[0]_i_47_n_0 ,\alu_out_q[0]_i_48_n_0 ,\alu_out_q[0]_i_49_n_0 ,\alu_out_q[0]_i_50_n_0 }),
        .O(\NLW_alu_out_q_reg[0]_i_34_O_UNCONNECTED [3:0]),
        .S({\alu_out_q[0]_i_51_n_0 ,\alu_out_q[0]_i_52_n_0 ,\alu_out_q[0]_i_53_n_0 ,\alu_out_q[0]_i_54_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[0]_i_5 
       (.CI(\alu_out_q_reg[0]_i_7_n_0 ),
        .CO({data4,\alu_out_q_reg[0]_i_5_n_1 ,\alu_out_q_reg[0]_i_5_n_2 ,\alu_out_q_reg[0]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\alu_out_q[0]_i_8_n_0 ,\alu_out_q[0]_i_9_n_0 ,\alu_out_q[0]_i_10_n_0 ,\alu_out_q[0]_i_11_n_0 }),
        .O(\NLW_alu_out_q_reg[0]_i_5_O_UNCONNECTED [3:0]),
        .S({\alu_out_q[0]_i_12_n_0 ,\alu_out_q[0]_i_13_n_0 ,\alu_out_q[0]_i_14_n_0 ,\alu_out_q[0]_i_15_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[0]_i_6 
       (.CI(\alu_out_q_reg[0]_i_16_n_0 ),
        .CO({\NLW_alu_out_q_reg[0]_i_6_CO_UNCONNECTED [3],\alu_out_q_reg[0]_i_6_n_1 ,\alu_out_q_reg[0]_i_6_n_2 ,\alu_out_q_reg[0]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_alu_out_q_reg[0]_i_6_O_UNCONNECTED [3:0]),
        .S({1'b0,\alu_out_q[0]_i_17_n_0 ,\alu_out_q[0]_i_18_n_0 ,\alu_out_q[0]_i_19_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[0]_i_7 
       (.CI(\alu_out_q_reg[0]_i_20_n_0 ),
        .CO({\alu_out_q_reg[0]_i_7_n_0 ,\alu_out_q_reg[0]_i_7_n_1 ,\alu_out_q_reg[0]_i_7_n_2 ,\alu_out_q_reg[0]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\alu_out_q[0]_i_21_n_0 ,\alu_out_q[0]_i_22_n_0 ,\alu_out_q[0]_i_23_n_0 ,\alu_out_q[0]_i_24_n_0 }),
        .O(\NLW_alu_out_q_reg[0]_i_7_O_UNCONNECTED [3:0]),
        .S({\alu_out_q[0]_i_25_n_0 ,\alu_out_q[0]_i_26_n_0 ,\alu_out_q[0]_i_27_n_0 ,\alu_out_q[0]_i_28_n_0 }));
  FDRE \alu_out_q_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[10]),
        .Q(alu_out_q[10]),
        .R(1'b0));
  FDRE \alu_out_q_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[11]),
        .Q(alu_out_q[11]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[11]_i_2 
       (.CI(\alu_out_q_reg[7]_i_2_n_0 ),
        .CO({\alu_out_q_reg[11]_i_2_n_0 ,\alu_out_q_reg[11]_i_2_n_1 ,\alu_out_q_reg[11]_i_2_n_2 ,\alu_out_q_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(\reg_op1_reg[31]_0 [11:8]),
        .O({\alu_out_q_reg[11]_i_2_n_4 ,\alu_out_q_reg[11]_i_2_n_5 ,\alu_out_q_reg[11]_i_2_n_6 ,\alu_out_q_reg[11]_i_2_n_7 }),
        .S({\alu_out_q[11]_i_4_n_0 ,\alu_out_q[11]_i_5_n_0 ,\alu_out_q[11]_i_6_n_0 ,\alu_out_q[11]_i_7_n_0 }));
  FDRE \alu_out_q_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[12]),
        .Q(alu_out_q[12]),
        .R(1'b0));
  FDRE \alu_out_q_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[13]),
        .Q(alu_out_q[13]),
        .R(1'b0));
  FDRE \alu_out_q_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[14]),
        .Q(alu_out_q[14]),
        .R(1'b0));
  FDRE \alu_out_q_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[15]),
        .Q(alu_out_q[15]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[15]_i_2 
       (.CI(\alu_out_q_reg[11]_i_2_n_0 ),
        .CO({\alu_out_q_reg[15]_i_2_n_0 ,\alu_out_q_reg[15]_i_2_n_1 ,\alu_out_q_reg[15]_i_2_n_2 ,\alu_out_q_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(\reg_op1_reg[31]_0 [15:12]),
        .O({\alu_out_q_reg[15]_i_2_n_4 ,\alu_out_q_reg[15]_i_2_n_5 ,\alu_out_q_reg[15]_i_2_n_6 ,\alu_out_q_reg[15]_i_2_n_7 }),
        .S({\alu_out_q[15]_i_4_n_0 ,\alu_out_q[15]_i_5_n_0 ,\alu_out_q[15]_i_6_n_0 ,\alu_out_q[15]_i_7_n_0 }));
  FDRE \alu_out_q_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[16]),
        .Q(alu_out_q[16]),
        .R(1'b0));
  FDRE \alu_out_q_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[17]),
        .Q(alu_out_q[17]),
        .R(1'b0));
  FDRE \alu_out_q_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[18]),
        .Q(alu_out_q[18]),
        .R(1'b0));
  FDRE \alu_out_q_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[19]),
        .Q(alu_out_q[19]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[19]_i_2 
       (.CI(\alu_out_q_reg[15]_i_2_n_0 ),
        .CO({\alu_out_q_reg[19]_i_2_n_0 ,\alu_out_q_reg[19]_i_2_n_1 ,\alu_out_q_reg[19]_i_2_n_2 ,\alu_out_q_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(\reg_op1_reg[31]_0 [19:16]),
        .O({\alu_out_q_reg[19]_i_2_n_4 ,\alu_out_q_reg[19]_i_2_n_5 ,\alu_out_q_reg[19]_i_2_n_6 ,\alu_out_q_reg[19]_i_2_n_7 }),
        .S({\alu_out_q[19]_i_4_n_0 ,\alu_out_q[19]_i_5_n_0 ,\alu_out_q[19]_i_6_n_0 ,\alu_out_q[19]_i_7_n_0 }));
  FDRE \alu_out_q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[1]),
        .Q(alu_out_q[1]),
        .R(1'b0));
  FDRE \alu_out_q_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[20]),
        .Q(alu_out_q[20]),
        .R(1'b0));
  FDRE \alu_out_q_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[21]),
        .Q(alu_out_q[21]),
        .R(1'b0));
  FDRE \alu_out_q_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[22]),
        .Q(alu_out_q[22]),
        .R(1'b0));
  FDRE \alu_out_q_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[23]),
        .Q(alu_out_q[23]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[23]_i_2 
       (.CI(\alu_out_q_reg[19]_i_2_n_0 ),
        .CO({\alu_out_q_reg[23]_i_2_n_0 ,\alu_out_q_reg[23]_i_2_n_1 ,\alu_out_q_reg[23]_i_2_n_2 ,\alu_out_q_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(\reg_op1_reg[31]_0 [23:20]),
        .O({\alu_out_q_reg[23]_i_2_n_4 ,\alu_out_q_reg[23]_i_2_n_5 ,\alu_out_q_reg[23]_i_2_n_6 ,\alu_out_q_reg[23]_i_2_n_7 }),
        .S({\alu_out_q[23]_i_4_n_0 ,\alu_out_q[23]_i_5_n_0 ,\alu_out_q[23]_i_6_n_0 ,\alu_out_q[23]_i_7_n_0 }));
  FDRE \alu_out_q_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[24]),
        .Q(alu_out_q[24]),
        .R(1'b0));
  FDRE \alu_out_q_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[25]),
        .Q(alu_out_q[25]),
        .R(1'b0));
  FDRE \alu_out_q_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[26]),
        .Q(alu_out_q[26]),
        .R(1'b0));
  FDRE \alu_out_q_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[27]),
        .Q(alu_out_q[27]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[27]_i_2 
       (.CI(\alu_out_q_reg[23]_i_2_n_0 ),
        .CO({\alu_out_q_reg[27]_i_2_n_0 ,\alu_out_q_reg[27]_i_2_n_1 ,\alu_out_q_reg[27]_i_2_n_2 ,\alu_out_q_reg[27]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(\reg_op1_reg[31]_0 [27:24]),
        .O({\alu_out_q_reg[27]_i_2_n_4 ,\alu_out_q_reg[27]_i_2_n_5 ,\alu_out_q_reg[27]_i_2_n_6 ,\alu_out_q_reg[27]_i_2_n_7 }),
        .S({\alu_out_q[27]_i_4_n_0 ,\alu_out_q[27]_i_5_n_0 ,\alu_out_q[27]_i_6_n_0 ,\alu_out_q[27]_i_7_n_0 }));
  FDRE \alu_out_q_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[28]),
        .Q(alu_out_q[28]),
        .R(1'b0));
  FDRE \alu_out_q_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[29]),
        .Q(alu_out_q[29]),
        .R(1'b0));
  FDRE \alu_out_q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[2]),
        .Q(alu_out_q[2]),
        .R(1'b0));
  FDRE \alu_out_q_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[30]),
        .Q(alu_out_q[30]),
        .R(1'b0));
  FDRE \alu_out_q_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[31]),
        .Q(alu_out_q[31]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[31]_i_3 
       (.CI(\alu_out_q_reg[27]_i_2_n_0 ),
        .CO({\NLW_alu_out_q_reg[31]_i_3_CO_UNCONNECTED [3],\alu_out_q_reg[31]_i_3_n_1 ,\alu_out_q_reg[31]_i_3_n_2 ,\alu_out_q_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\reg_op1_reg[31]_0 [30:28]}),
        .O({\alu_out_q_reg[31]_i_3_n_4 ,\alu_out_q_reg[31]_i_3_n_5 ,\alu_out_q_reg[31]_i_3_n_6 ,\alu_out_q_reg[31]_i_3_n_7 }),
        .S({\alu_out_q[31]_i_5_n_0 ,\alu_out_q[31]_i_6_n_0 ,\alu_out_q[31]_i_7_n_0 ,\alu_out_q[31]_i_8_n_0 }));
  FDRE \alu_out_q_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[3]),
        .Q(alu_out_q[3]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\alu_out_q_reg[3]_i_2_n_0 ,\alu_out_q_reg[3]_i_2_n_1 ,\alu_out_q_reg[3]_i_2_n_2 ,\alu_out_q_reg[3]_i_2_n_3 }),
        .CYINIT(\reg_op1_reg[31]_0 [0]),
        .DI({\reg_op1_reg[31]_0 [3:1],instr_sub}),
        .O({\alu_out_q_reg[3]_i_2_n_4 ,\alu_out_q_reg[3]_i_2_n_5 ,\alu_out_q_reg[3]_i_2_n_6 ,\alu_out_q_reg[3]_i_2_n_7 }),
        .S({\alu_out_q[3]_i_4_n_0 ,\alu_out_q[3]_i_5_n_0 ,\alu_out_q[3]_i_6_n_0 ,\alu_out_q[3]_i_7_n_0 }));
  FDRE \alu_out_q_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[4]),
        .Q(alu_out_q[4]),
        .R(1'b0));
  FDRE \alu_out_q_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[5]),
        .Q(alu_out_q[5]),
        .R(1'b0));
  FDRE \alu_out_q_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[6]),
        .Q(alu_out_q[6]),
        .R(1'b0));
  FDRE \alu_out_q_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[7]),
        .Q(alu_out_q[7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_q_reg[7]_i_2 
       (.CI(\alu_out_q_reg[3]_i_2_n_0 ),
        .CO({\alu_out_q_reg[7]_i_2_n_0 ,\alu_out_q_reg[7]_i_2_n_1 ,\alu_out_q_reg[7]_i_2_n_2 ,\alu_out_q_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(\reg_op1_reg[31]_0 [7:4]),
        .O({\alu_out_q_reg[7]_i_2_n_4 ,\alu_out_q_reg[7]_i_2_n_5 ,\alu_out_q_reg[7]_i_2_n_6 ,\alu_out_q_reg[7]_i_2_n_7 }),
        .S({\alu_out_q[7]_i_4_n_0 ,\alu_out_q[7]_i_5_n_0 ,\alu_out_q[7]_i_6_n_0 ,\alu_out_q[7]_i_7_n_0 }));
  FDRE \alu_out_q_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[8]),
        .Q(alu_out_q[8]),
        .R(1'b0));
  FDRE \alu_out_q_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(alu_out[9]),
        .Q(alu_out_q[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \count_cycle[0]_i_2 
       (.I0(count_cycle_reg[0]),
        .O(\count_cycle[0]_i_2_n_0 ));
  FDRE \count_cycle_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[0]_i_1_n_7 ),
        .Q(count_cycle_reg[0]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_cycle_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_cycle_reg[0]_i_1_n_0 ,\count_cycle_reg[0]_i_1_n_1 ,\count_cycle_reg[0]_i_1_n_2 ,\count_cycle_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_cycle_reg[0]_i_1_n_4 ,\count_cycle_reg[0]_i_1_n_5 ,\count_cycle_reg[0]_i_1_n_6 ,\count_cycle_reg[0]_i_1_n_7 }),
        .S({count_cycle_reg[3:1],\count_cycle[0]_i_2_n_0 }));
  FDRE \count_cycle_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[8]_i_1_n_5 ),
        .Q(count_cycle_reg[10]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[8]_i_1_n_4 ),
        .Q(count_cycle_reg[11]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[12]_i_1_n_7 ),
        .Q(count_cycle_reg[12]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_cycle_reg[12]_i_1 
       (.CI(\count_cycle_reg[8]_i_1_n_0 ),
        .CO({\count_cycle_reg[12]_i_1_n_0 ,\count_cycle_reg[12]_i_1_n_1 ,\count_cycle_reg[12]_i_1_n_2 ,\count_cycle_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[12]_i_1_n_4 ,\count_cycle_reg[12]_i_1_n_5 ,\count_cycle_reg[12]_i_1_n_6 ,\count_cycle_reg[12]_i_1_n_7 }),
        .S(count_cycle_reg[15:12]));
  FDRE \count_cycle_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[12]_i_1_n_6 ),
        .Q(count_cycle_reg[13]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[12]_i_1_n_5 ),
        .Q(count_cycle_reg[14]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[12]_i_1_n_4 ),
        .Q(count_cycle_reg[15]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[16]_i_1_n_7 ),
        .Q(count_cycle_reg[16]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_cycle_reg[16]_i_1 
       (.CI(\count_cycle_reg[12]_i_1_n_0 ),
        .CO({\count_cycle_reg[16]_i_1_n_0 ,\count_cycle_reg[16]_i_1_n_1 ,\count_cycle_reg[16]_i_1_n_2 ,\count_cycle_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[16]_i_1_n_4 ,\count_cycle_reg[16]_i_1_n_5 ,\count_cycle_reg[16]_i_1_n_6 ,\count_cycle_reg[16]_i_1_n_7 }),
        .S(count_cycle_reg[19:16]));
  FDRE \count_cycle_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[16]_i_1_n_6 ),
        .Q(count_cycle_reg[17]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[16]_i_1_n_5 ),
        .Q(count_cycle_reg[18]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[16]_i_1_n_4 ),
        .Q(count_cycle_reg[19]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[0]_i_1_n_6 ),
        .Q(count_cycle_reg[1]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[20]_i_1_n_7 ),
        .Q(count_cycle_reg[20]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_cycle_reg[20]_i_1 
       (.CI(\count_cycle_reg[16]_i_1_n_0 ),
        .CO({\count_cycle_reg[20]_i_1_n_0 ,\count_cycle_reg[20]_i_1_n_1 ,\count_cycle_reg[20]_i_1_n_2 ,\count_cycle_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[20]_i_1_n_4 ,\count_cycle_reg[20]_i_1_n_5 ,\count_cycle_reg[20]_i_1_n_6 ,\count_cycle_reg[20]_i_1_n_7 }),
        .S(count_cycle_reg[23:20]));
  FDRE \count_cycle_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[20]_i_1_n_6 ),
        .Q(count_cycle_reg[21]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[20]_i_1_n_5 ),
        .Q(count_cycle_reg[22]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[20]_i_1_n_4 ),
        .Q(count_cycle_reg[23]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[24]_i_1_n_7 ),
        .Q(count_cycle_reg[24]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_cycle_reg[24]_i_1 
       (.CI(\count_cycle_reg[20]_i_1_n_0 ),
        .CO({\count_cycle_reg[24]_i_1_n_0 ,\count_cycle_reg[24]_i_1_n_1 ,\count_cycle_reg[24]_i_1_n_2 ,\count_cycle_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[24]_i_1_n_4 ,\count_cycle_reg[24]_i_1_n_5 ,\count_cycle_reg[24]_i_1_n_6 ,\count_cycle_reg[24]_i_1_n_7 }),
        .S(count_cycle_reg[27:24]));
  FDRE \count_cycle_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[24]_i_1_n_6 ),
        .Q(count_cycle_reg[25]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[24]_i_1_n_5 ),
        .Q(count_cycle_reg[26]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[24]_i_1_n_4 ),
        .Q(count_cycle_reg[27]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[28]_i_1_n_7 ),
        .Q(count_cycle_reg[28]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_cycle_reg[28]_i_1 
       (.CI(\count_cycle_reg[24]_i_1_n_0 ),
        .CO({\count_cycle_reg[28]_i_1_n_0 ,\count_cycle_reg[28]_i_1_n_1 ,\count_cycle_reg[28]_i_1_n_2 ,\count_cycle_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[28]_i_1_n_4 ,\count_cycle_reg[28]_i_1_n_5 ,\count_cycle_reg[28]_i_1_n_6 ,\count_cycle_reg[28]_i_1_n_7 }),
        .S(count_cycle_reg[31:28]));
  FDRE \count_cycle_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[28]_i_1_n_6 ),
        .Q(count_cycle_reg[29]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[0]_i_1_n_5 ),
        .Q(count_cycle_reg[2]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[28]_i_1_n_5 ),
        .Q(count_cycle_reg[30]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[28]_i_1_n_4 ),
        .Q(count_cycle_reg[31]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[32]_i_1_n_7 ),
        .Q(count_cycle_reg[32]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_cycle_reg[32]_i_1 
       (.CI(\count_cycle_reg[28]_i_1_n_0 ),
        .CO({\count_cycle_reg[32]_i_1_n_0 ,\count_cycle_reg[32]_i_1_n_1 ,\count_cycle_reg[32]_i_1_n_2 ,\count_cycle_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[32]_i_1_n_4 ,\count_cycle_reg[32]_i_1_n_5 ,\count_cycle_reg[32]_i_1_n_6 ,\count_cycle_reg[32]_i_1_n_7 }),
        .S(count_cycle_reg[35:32]));
  FDRE \count_cycle_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[32]_i_1_n_6 ),
        .Q(count_cycle_reg[33]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[32]_i_1_n_5 ),
        .Q(count_cycle_reg[34]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[32]_i_1_n_4 ),
        .Q(count_cycle_reg[35]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[36]_i_1_n_7 ),
        .Q(count_cycle_reg[36]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_cycle_reg[36]_i_1 
       (.CI(\count_cycle_reg[32]_i_1_n_0 ),
        .CO({\count_cycle_reg[36]_i_1_n_0 ,\count_cycle_reg[36]_i_1_n_1 ,\count_cycle_reg[36]_i_1_n_2 ,\count_cycle_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[36]_i_1_n_4 ,\count_cycle_reg[36]_i_1_n_5 ,\count_cycle_reg[36]_i_1_n_6 ,\count_cycle_reg[36]_i_1_n_7 }),
        .S(count_cycle_reg[39:36]));
  FDRE \count_cycle_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[36]_i_1_n_6 ),
        .Q(count_cycle_reg[37]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[36]_i_1_n_5 ),
        .Q(count_cycle_reg[38]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[36]_i_1_n_4 ),
        .Q(count_cycle_reg[39]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[0]_i_1_n_4 ),
        .Q(count_cycle_reg[3]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[40]_i_1_n_7 ),
        .Q(count_cycle_reg[40]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_cycle_reg[40]_i_1 
       (.CI(\count_cycle_reg[36]_i_1_n_0 ),
        .CO({\count_cycle_reg[40]_i_1_n_0 ,\count_cycle_reg[40]_i_1_n_1 ,\count_cycle_reg[40]_i_1_n_2 ,\count_cycle_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[40]_i_1_n_4 ,\count_cycle_reg[40]_i_1_n_5 ,\count_cycle_reg[40]_i_1_n_6 ,\count_cycle_reg[40]_i_1_n_7 }),
        .S(count_cycle_reg[43:40]));
  FDRE \count_cycle_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[40]_i_1_n_6 ),
        .Q(count_cycle_reg[41]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[40]_i_1_n_5 ),
        .Q(count_cycle_reg[42]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[40]_i_1_n_4 ),
        .Q(count_cycle_reg[43]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[44]_i_1_n_7 ),
        .Q(count_cycle_reg[44]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_cycle_reg[44]_i_1 
       (.CI(\count_cycle_reg[40]_i_1_n_0 ),
        .CO({\count_cycle_reg[44]_i_1_n_0 ,\count_cycle_reg[44]_i_1_n_1 ,\count_cycle_reg[44]_i_1_n_2 ,\count_cycle_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[44]_i_1_n_4 ,\count_cycle_reg[44]_i_1_n_5 ,\count_cycle_reg[44]_i_1_n_6 ,\count_cycle_reg[44]_i_1_n_7 }),
        .S(count_cycle_reg[47:44]));
  FDRE \count_cycle_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[44]_i_1_n_6 ),
        .Q(count_cycle_reg[45]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[44]_i_1_n_5 ),
        .Q(count_cycle_reg[46]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[44]_i_1_n_4 ),
        .Q(count_cycle_reg[47]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[48]_i_1_n_7 ),
        .Q(count_cycle_reg[48]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_cycle_reg[48]_i_1 
       (.CI(\count_cycle_reg[44]_i_1_n_0 ),
        .CO({\count_cycle_reg[48]_i_1_n_0 ,\count_cycle_reg[48]_i_1_n_1 ,\count_cycle_reg[48]_i_1_n_2 ,\count_cycle_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[48]_i_1_n_4 ,\count_cycle_reg[48]_i_1_n_5 ,\count_cycle_reg[48]_i_1_n_6 ,\count_cycle_reg[48]_i_1_n_7 }),
        .S(count_cycle_reg[51:48]));
  FDRE \count_cycle_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[48]_i_1_n_6 ),
        .Q(count_cycle_reg[49]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[4]_i_1_n_7 ),
        .Q(count_cycle_reg[4]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_cycle_reg[4]_i_1 
       (.CI(\count_cycle_reg[0]_i_1_n_0 ),
        .CO({\count_cycle_reg[4]_i_1_n_0 ,\count_cycle_reg[4]_i_1_n_1 ,\count_cycle_reg[4]_i_1_n_2 ,\count_cycle_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[4]_i_1_n_4 ,\count_cycle_reg[4]_i_1_n_5 ,\count_cycle_reg[4]_i_1_n_6 ,\count_cycle_reg[4]_i_1_n_7 }),
        .S(count_cycle_reg[7:4]));
  FDRE \count_cycle_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[48]_i_1_n_5 ),
        .Q(count_cycle_reg[50]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[48]_i_1_n_4 ),
        .Q(count_cycle_reg[51]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[52]_i_1_n_7 ),
        .Q(count_cycle_reg[52]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_cycle_reg[52]_i_1 
       (.CI(\count_cycle_reg[48]_i_1_n_0 ),
        .CO({\count_cycle_reg[52]_i_1_n_0 ,\count_cycle_reg[52]_i_1_n_1 ,\count_cycle_reg[52]_i_1_n_2 ,\count_cycle_reg[52]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[52]_i_1_n_4 ,\count_cycle_reg[52]_i_1_n_5 ,\count_cycle_reg[52]_i_1_n_6 ,\count_cycle_reg[52]_i_1_n_7 }),
        .S(count_cycle_reg[55:52]));
  FDRE \count_cycle_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[52]_i_1_n_6 ),
        .Q(count_cycle_reg[53]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[52]_i_1_n_5 ),
        .Q(count_cycle_reg[54]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[52]_i_1_n_4 ),
        .Q(count_cycle_reg[55]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[56]_i_1_n_7 ),
        .Q(count_cycle_reg[56]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_cycle_reg[56]_i_1 
       (.CI(\count_cycle_reg[52]_i_1_n_0 ),
        .CO({\count_cycle_reg[56]_i_1_n_0 ,\count_cycle_reg[56]_i_1_n_1 ,\count_cycle_reg[56]_i_1_n_2 ,\count_cycle_reg[56]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[56]_i_1_n_4 ,\count_cycle_reg[56]_i_1_n_5 ,\count_cycle_reg[56]_i_1_n_6 ,\count_cycle_reg[56]_i_1_n_7 }),
        .S(count_cycle_reg[59:56]));
  FDRE \count_cycle_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[56]_i_1_n_6 ),
        .Q(count_cycle_reg[57]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[56]_i_1_n_5 ),
        .Q(count_cycle_reg[58]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[56]_i_1_n_4 ),
        .Q(count_cycle_reg[59]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[4]_i_1_n_6 ),
        .Q(count_cycle_reg[5]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[60]_i_1_n_7 ),
        .Q(count_cycle_reg[60]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_cycle_reg[60]_i_1 
       (.CI(\count_cycle_reg[56]_i_1_n_0 ),
        .CO({\NLW_count_cycle_reg[60]_i_1_CO_UNCONNECTED [3],\count_cycle_reg[60]_i_1_n_1 ,\count_cycle_reg[60]_i_1_n_2 ,\count_cycle_reg[60]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[60]_i_1_n_4 ,\count_cycle_reg[60]_i_1_n_5 ,\count_cycle_reg[60]_i_1_n_6 ,\count_cycle_reg[60]_i_1_n_7 }),
        .S(count_cycle_reg[63:60]));
  FDRE \count_cycle_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[60]_i_1_n_6 ),
        .Q(count_cycle_reg[61]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[60]_i_1_n_5 ),
        .Q(count_cycle_reg[62]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[60]_i_1_n_4 ),
        .Q(count_cycle_reg[63]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[4]_i_1_n_5 ),
        .Q(count_cycle_reg[6]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[4]_i_1_n_4 ),
        .Q(count_cycle_reg[7]),
        .R(pcpi_mul_n_24));
  FDRE \count_cycle_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[8]_i_1_n_7 ),
        .Q(count_cycle_reg[8]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_cycle_reg[8]_i_1 
       (.CI(\count_cycle_reg[4]_i_1_n_0 ),
        .CO({\count_cycle_reg[8]_i_1_n_0 ,\count_cycle_reg[8]_i_1_n_1 ,\count_cycle_reg[8]_i_1_n_2 ,\count_cycle_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[8]_i_1_n_4 ,\count_cycle_reg[8]_i_1_n_5 ,\count_cycle_reg[8]_i_1_n_6 ,\count_cycle_reg[8]_i_1_n_7 }),
        .S(count_cycle_reg[11:8]));
  FDRE \count_cycle_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_cycle_reg[8]_i_1_n_6 ),
        .Q(count_cycle_reg[9]),
        .R(pcpi_mul_n_24));
  LUT2 #(
    .INIT(4'h8)) 
    \count_instr[0]_i_1 
       (.I0(decoder_trigger_reg_n_0),
        .I1(Q[2]),
        .O(count_instr));
  LUT1 #(
    .INIT(2'h1)) 
    \count_instr[0]_i_3 
       (.I0(\count_instr_reg_n_0_[0] ),
        .O(\count_instr[0]_i_3_n_0 ));
  FDRE \count_instr_reg[0] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[0]_i_2_n_7 ),
        .Q(\count_instr_reg_n_0_[0] ),
        .R(pcpi_mul_n_24));
  CARRY4 \count_instr_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_instr_reg[0]_i_2_n_0 ,\count_instr_reg[0]_i_2_n_1 ,\count_instr_reg[0]_i_2_n_2 ,\count_instr_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_instr_reg[0]_i_2_n_4 ,\count_instr_reg[0]_i_2_n_5 ,\count_instr_reg[0]_i_2_n_6 ,\count_instr_reg[0]_i_2_n_7 }),
        .S({\count_instr_reg_n_0_[3] ,\count_instr_reg_n_0_[2] ,\count_instr_reg_n_0_[1] ,\count_instr[0]_i_3_n_0 }));
  FDRE \count_instr_reg[10] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[8]_i_1_n_5 ),
        .Q(\count_instr_reg_n_0_[10] ),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[11] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[8]_i_1_n_4 ),
        .Q(\count_instr_reg_n_0_[11] ),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[12] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[12]_i_1_n_7 ),
        .Q(\count_instr_reg_n_0_[12] ),
        .R(pcpi_mul_n_24));
  CARRY4 \count_instr_reg[12]_i_1 
       (.CI(\count_instr_reg[8]_i_1_n_0 ),
        .CO({\count_instr_reg[12]_i_1_n_0 ,\count_instr_reg[12]_i_1_n_1 ,\count_instr_reg[12]_i_1_n_2 ,\count_instr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[12]_i_1_n_4 ,\count_instr_reg[12]_i_1_n_5 ,\count_instr_reg[12]_i_1_n_6 ,\count_instr_reg[12]_i_1_n_7 }),
        .S({\count_instr_reg_n_0_[15] ,\count_instr_reg_n_0_[14] ,\count_instr_reg_n_0_[13] ,\count_instr_reg_n_0_[12] }));
  FDRE \count_instr_reg[13] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[12]_i_1_n_6 ),
        .Q(\count_instr_reg_n_0_[13] ),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[14] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[12]_i_1_n_5 ),
        .Q(\count_instr_reg_n_0_[14] ),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[15] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[12]_i_1_n_4 ),
        .Q(\count_instr_reg_n_0_[15] ),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[16] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[16]_i_1_n_7 ),
        .Q(\count_instr_reg_n_0_[16] ),
        .R(pcpi_mul_n_24));
  CARRY4 \count_instr_reg[16]_i_1 
       (.CI(\count_instr_reg[12]_i_1_n_0 ),
        .CO({\count_instr_reg[16]_i_1_n_0 ,\count_instr_reg[16]_i_1_n_1 ,\count_instr_reg[16]_i_1_n_2 ,\count_instr_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[16]_i_1_n_4 ,\count_instr_reg[16]_i_1_n_5 ,\count_instr_reg[16]_i_1_n_6 ,\count_instr_reg[16]_i_1_n_7 }),
        .S({\count_instr_reg_n_0_[19] ,\count_instr_reg_n_0_[18] ,\count_instr_reg_n_0_[17] ,\count_instr_reg_n_0_[16] }));
  FDRE \count_instr_reg[17] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[16]_i_1_n_6 ),
        .Q(\count_instr_reg_n_0_[17] ),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[18] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[16]_i_1_n_5 ),
        .Q(\count_instr_reg_n_0_[18] ),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[19] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[16]_i_1_n_4 ),
        .Q(\count_instr_reg_n_0_[19] ),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[1] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[0]_i_2_n_6 ),
        .Q(\count_instr_reg_n_0_[1] ),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[20] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[20]_i_1_n_7 ),
        .Q(\count_instr_reg_n_0_[20] ),
        .R(pcpi_mul_n_24));
  CARRY4 \count_instr_reg[20]_i_1 
       (.CI(\count_instr_reg[16]_i_1_n_0 ),
        .CO({\count_instr_reg[20]_i_1_n_0 ,\count_instr_reg[20]_i_1_n_1 ,\count_instr_reg[20]_i_1_n_2 ,\count_instr_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[20]_i_1_n_4 ,\count_instr_reg[20]_i_1_n_5 ,\count_instr_reg[20]_i_1_n_6 ,\count_instr_reg[20]_i_1_n_7 }),
        .S({\count_instr_reg_n_0_[23] ,\count_instr_reg_n_0_[22] ,\count_instr_reg_n_0_[21] ,\count_instr_reg_n_0_[20] }));
  FDRE \count_instr_reg[21] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[20]_i_1_n_6 ),
        .Q(\count_instr_reg_n_0_[21] ),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[22] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[20]_i_1_n_5 ),
        .Q(\count_instr_reg_n_0_[22] ),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[23] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[20]_i_1_n_4 ),
        .Q(\count_instr_reg_n_0_[23] ),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[24] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[24]_i_1_n_7 ),
        .Q(\count_instr_reg_n_0_[24] ),
        .R(pcpi_mul_n_24));
  CARRY4 \count_instr_reg[24]_i_1 
       (.CI(\count_instr_reg[20]_i_1_n_0 ),
        .CO({\count_instr_reg[24]_i_1_n_0 ,\count_instr_reg[24]_i_1_n_1 ,\count_instr_reg[24]_i_1_n_2 ,\count_instr_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[24]_i_1_n_4 ,\count_instr_reg[24]_i_1_n_5 ,\count_instr_reg[24]_i_1_n_6 ,\count_instr_reg[24]_i_1_n_7 }),
        .S({\count_instr_reg_n_0_[27] ,\count_instr_reg_n_0_[26] ,\count_instr_reg_n_0_[25] ,\count_instr_reg_n_0_[24] }));
  FDRE \count_instr_reg[25] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[24]_i_1_n_6 ),
        .Q(\count_instr_reg_n_0_[25] ),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[26] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[24]_i_1_n_5 ),
        .Q(\count_instr_reg_n_0_[26] ),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[27] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[24]_i_1_n_4 ),
        .Q(\count_instr_reg_n_0_[27] ),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[28] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[28]_i_1_n_7 ),
        .Q(\count_instr_reg_n_0_[28] ),
        .R(pcpi_mul_n_24));
  CARRY4 \count_instr_reg[28]_i_1 
       (.CI(\count_instr_reg[24]_i_1_n_0 ),
        .CO({\count_instr_reg[28]_i_1_n_0 ,\count_instr_reg[28]_i_1_n_1 ,\count_instr_reg[28]_i_1_n_2 ,\count_instr_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[28]_i_1_n_4 ,\count_instr_reg[28]_i_1_n_5 ,\count_instr_reg[28]_i_1_n_6 ,\count_instr_reg[28]_i_1_n_7 }),
        .S({\count_instr_reg_n_0_[31] ,\count_instr_reg_n_0_[30] ,\count_instr_reg_n_0_[29] ,\count_instr_reg_n_0_[28] }));
  FDRE \count_instr_reg[29] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[28]_i_1_n_6 ),
        .Q(\count_instr_reg_n_0_[29] ),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[2] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[0]_i_2_n_5 ),
        .Q(\count_instr_reg_n_0_[2] ),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[30] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[28]_i_1_n_5 ),
        .Q(\count_instr_reg_n_0_[30] ),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[31] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[28]_i_1_n_4 ),
        .Q(\count_instr_reg_n_0_[31] ),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[32] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[32]_i_1_n_7 ),
        .Q(data3[0]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_instr_reg[32]_i_1 
       (.CI(\count_instr_reg[28]_i_1_n_0 ),
        .CO({\count_instr_reg[32]_i_1_n_0 ,\count_instr_reg[32]_i_1_n_1 ,\count_instr_reg[32]_i_1_n_2 ,\count_instr_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[32]_i_1_n_4 ,\count_instr_reg[32]_i_1_n_5 ,\count_instr_reg[32]_i_1_n_6 ,\count_instr_reg[32]_i_1_n_7 }),
        .S(data3[3:0]));
  FDRE \count_instr_reg[33] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[32]_i_1_n_6 ),
        .Q(data3[1]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[34] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[32]_i_1_n_5 ),
        .Q(data3[2]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[35] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[32]_i_1_n_4 ),
        .Q(data3[3]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[36] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[36]_i_1_n_7 ),
        .Q(data3[4]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_instr_reg[36]_i_1 
       (.CI(\count_instr_reg[32]_i_1_n_0 ),
        .CO({\count_instr_reg[36]_i_1_n_0 ,\count_instr_reg[36]_i_1_n_1 ,\count_instr_reg[36]_i_1_n_2 ,\count_instr_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[36]_i_1_n_4 ,\count_instr_reg[36]_i_1_n_5 ,\count_instr_reg[36]_i_1_n_6 ,\count_instr_reg[36]_i_1_n_7 }),
        .S(data3[7:4]));
  FDRE \count_instr_reg[37] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[36]_i_1_n_6 ),
        .Q(data3[5]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[38] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[36]_i_1_n_5 ),
        .Q(data3[6]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[39] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[36]_i_1_n_4 ),
        .Q(data3[7]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[3] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[0]_i_2_n_4 ),
        .Q(\count_instr_reg_n_0_[3] ),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[40] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[40]_i_1_n_7 ),
        .Q(data3[8]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_instr_reg[40]_i_1 
       (.CI(\count_instr_reg[36]_i_1_n_0 ),
        .CO({\count_instr_reg[40]_i_1_n_0 ,\count_instr_reg[40]_i_1_n_1 ,\count_instr_reg[40]_i_1_n_2 ,\count_instr_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[40]_i_1_n_4 ,\count_instr_reg[40]_i_1_n_5 ,\count_instr_reg[40]_i_1_n_6 ,\count_instr_reg[40]_i_1_n_7 }),
        .S(data3[11:8]));
  FDRE \count_instr_reg[41] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[40]_i_1_n_6 ),
        .Q(data3[9]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[42] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[40]_i_1_n_5 ),
        .Q(data3[10]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[43] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[40]_i_1_n_4 ),
        .Q(data3[11]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[44] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[44]_i_1_n_7 ),
        .Q(data3[12]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_instr_reg[44]_i_1 
       (.CI(\count_instr_reg[40]_i_1_n_0 ),
        .CO({\count_instr_reg[44]_i_1_n_0 ,\count_instr_reg[44]_i_1_n_1 ,\count_instr_reg[44]_i_1_n_2 ,\count_instr_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[44]_i_1_n_4 ,\count_instr_reg[44]_i_1_n_5 ,\count_instr_reg[44]_i_1_n_6 ,\count_instr_reg[44]_i_1_n_7 }),
        .S(data3[15:12]));
  FDRE \count_instr_reg[45] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[44]_i_1_n_6 ),
        .Q(data3[13]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[46] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[44]_i_1_n_5 ),
        .Q(data3[14]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[47] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[44]_i_1_n_4 ),
        .Q(data3[15]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[48] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[48]_i_1_n_7 ),
        .Q(data3[16]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_instr_reg[48]_i_1 
       (.CI(\count_instr_reg[44]_i_1_n_0 ),
        .CO({\count_instr_reg[48]_i_1_n_0 ,\count_instr_reg[48]_i_1_n_1 ,\count_instr_reg[48]_i_1_n_2 ,\count_instr_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[48]_i_1_n_4 ,\count_instr_reg[48]_i_1_n_5 ,\count_instr_reg[48]_i_1_n_6 ,\count_instr_reg[48]_i_1_n_7 }),
        .S(data3[19:16]));
  FDRE \count_instr_reg[49] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[48]_i_1_n_6 ),
        .Q(data3[17]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[4] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[4]_i_1_n_7 ),
        .Q(\count_instr_reg_n_0_[4] ),
        .R(pcpi_mul_n_24));
  CARRY4 \count_instr_reg[4]_i_1 
       (.CI(\count_instr_reg[0]_i_2_n_0 ),
        .CO({\count_instr_reg[4]_i_1_n_0 ,\count_instr_reg[4]_i_1_n_1 ,\count_instr_reg[4]_i_1_n_2 ,\count_instr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[4]_i_1_n_4 ,\count_instr_reg[4]_i_1_n_5 ,\count_instr_reg[4]_i_1_n_6 ,\count_instr_reg[4]_i_1_n_7 }),
        .S({\count_instr_reg_n_0_[7] ,\count_instr_reg_n_0_[6] ,\count_instr_reg_n_0_[5] ,\count_instr_reg_n_0_[4] }));
  FDRE \count_instr_reg[50] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[48]_i_1_n_5 ),
        .Q(data3[18]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[51] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[48]_i_1_n_4 ),
        .Q(data3[19]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[52] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[52]_i_1_n_7 ),
        .Q(data3[20]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_instr_reg[52]_i_1 
       (.CI(\count_instr_reg[48]_i_1_n_0 ),
        .CO({\count_instr_reg[52]_i_1_n_0 ,\count_instr_reg[52]_i_1_n_1 ,\count_instr_reg[52]_i_1_n_2 ,\count_instr_reg[52]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[52]_i_1_n_4 ,\count_instr_reg[52]_i_1_n_5 ,\count_instr_reg[52]_i_1_n_6 ,\count_instr_reg[52]_i_1_n_7 }),
        .S(data3[23:20]));
  FDRE \count_instr_reg[53] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[52]_i_1_n_6 ),
        .Q(data3[21]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[54] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[52]_i_1_n_5 ),
        .Q(data3[22]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[55] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[52]_i_1_n_4 ),
        .Q(data3[23]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[56] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[56]_i_1_n_7 ),
        .Q(data3[24]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_instr_reg[56]_i_1 
       (.CI(\count_instr_reg[52]_i_1_n_0 ),
        .CO({\count_instr_reg[56]_i_1_n_0 ,\count_instr_reg[56]_i_1_n_1 ,\count_instr_reg[56]_i_1_n_2 ,\count_instr_reg[56]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[56]_i_1_n_4 ,\count_instr_reg[56]_i_1_n_5 ,\count_instr_reg[56]_i_1_n_6 ,\count_instr_reg[56]_i_1_n_7 }),
        .S(data3[27:24]));
  FDRE \count_instr_reg[57] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[56]_i_1_n_6 ),
        .Q(data3[25]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[58] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[56]_i_1_n_5 ),
        .Q(data3[26]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[59] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[56]_i_1_n_4 ),
        .Q(data3[27]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[5] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[4]_i_1_n_6 ),
        .Q(\count_instr_reg_n_0_[5] ),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[60] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[60]_i_1_n_7 ),
        .Q(data3[28]),
        .R(pcpi_mul_n_24));
  CARRY4 \count_instr_reg[60]_i_1 
       (.CI(\count_instr_reg[56]_i_1_n_0 ),
        .CO({\NLW_count_instr_reg[60]_i_1_CO_UNCONNECTED [3],\count_instr_reg[60]_i_1_n_1 ,\count_instr_reg[60]_i_1_n_2 ,\count_instr_reg[60]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[60]_i_1_n_4 ,\count_instr_reg[60]_i_1_n_5 ,\count_instr_reg[60]_i_1_n_6 ,\count_instr_reg[60]_i_1_n_7 }),
        .S(data3[31:28]));
  FDRE \count_instr_reg[61] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[60]_i_1_n_6 ),
        .Q(data3[29]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[62] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[60]_i_1_n_5 ),
        .Q(data3[30]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[63] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[60]_i_1_n_4 ),
        .Q(data3[31]),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[6] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[4]_i_1_n_5 ),
        .Q(\count_instr_reg_n_0_[6] ),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[7] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[4]_i_1_n_4 ),
        .Q(\count_instr_reg_n_0_[7] ),
        .R(pcpi_mul_n_24));
  FDRE \count_instr_reg[8] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[8]_i_1_n_7 ),
        .Q(\count_instr_reg_n_0_[8] ),
        .R(pcpi_mul_n_24));
  CARRY4 \count_instr_reg[8]_i_1 
       (.CI(\count_instr_reg[4]_i_1_n_0 ),
        .CO({\count_instr_reg[8]_i_1_n_0 ,\count_instr_reg[8]_i_1_n_1 ,\count_instr_reg[8]_i_1_n_2 ,\count_instr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[8]_i_1_n_4 ,\count_instr_reg[8]_i_1_n_5 ,\count_instr_reg[8]_i_1_n_6 ,\count_instr_reg[8]_i_1_n_7 }),
        .S({\count_instr_reg_n_0_[11] ,\count_instr_reg_n_0_[10] ,\count_instr_reg_n_0_[9] ,\count_instr_reg_n_0_[8] }));
  FDRE \count_instr_reg[9] 
       (.C(clk),
        .CE(count_instr),
        .D(\count_instr_reg[8]_i_1_n_6 ),
        .Q(\count_instr_reg_n_0_[9] ),
        .R(pcpi_mul_n_24));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \cpu_state[0]_i_1 
       (.I0(is_lb_lh_lw_lbu_lhu),
        .I1(is_lui_auipc_jal),
        .I2(resetn),
        .I3(\cpu_state_reg_n_0_[5] ),
        .I4(pcpi_mul_n_22),
        .I5(\cpu_state[3]_i_3_n_0 ),
        .O(cpu_state0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \cpu_state[1]_i_1 
       (.I0(\cpu_state[2]_i_2_n_0 ),
        .I1(is_sb_sh_sw),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(is_slli_srli_srai),
        .O(cpu_state0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hF200)) 
    \cpu_state[2]_i_1 
       (.I0(is_sll_srl_sra),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_slli_srli_srai),
        .I3(\cpu_state[2]_i_2_n_0 ),
        .O(cpu_state0_out[2]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \cpu_state[2]_i_2 
       (.I0(is_lb_lh_lw_lbu_lhu),
        .I1(is_lui_auipc_jal),
        .I2(resetn),
        .I3(\cpu_state_reg_n_0_[5] ),
        .I4(pcpi_mul_n_22),
        .I5(\cpu_state[3]_i_3_n_0 ),
        .O(\cpu_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4040000000400000)) 
    \cpu_state[3]_i_1 
       (.I0(\cpu_state[3]_i_2_n_0 ),
        .I1(\cpu_state[3]_i_3_n_0 ),
        .I2(pcpi_mul_n_87),
        .I3(is_lb_lh_lw_lbu_lhu),
        .I4(pcpi_mul_n_22),
        .I5(is_lui_auipc_jal),
        .O(cpu_state0_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h45454544)) 
    \cpu_state[3]_i_2 
       (.I0(is_lui_auipc_jal),
        .I1(is_slli_srli_srai),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(is_sll_srl_sra),
        .I4(is_sb_sh_sw),
        .O(\cpu_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \cpu_state[3]_i_3 
       (.I0(instr_rdcycleh),
        .I1(instr_rdinstr),
        .I2(instr_rdcycle),
        .I3(instr_rdinstrh),
        .O(\cpu_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_state[5]_i_1 
       (.I0(resetn),
        .I1(Q[2]),
        .O(cpu_state0_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cpu_state[6]_i_3 
       (.I0(Q[0]),
        .I1(\cpu_state_reg_n_0_[0] ),
        .O(\cpu_state[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h80AA)) 
    \cpu_state[7]_i_1 
       (.I0(resetn),
        .I1(mem_do_rinst_reg_n_0),
        .I2(\reg_pc_reg_n_0_[1] ),
        .I3(\cpu_state[7]_i_4_n_0 ),
        .O(\cpu_state[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCECFCECFCECFFFFF)) 
    \cpu_state[7]_i_4 
       (.I0(\mem_wordsize_reg_n_0_[0] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op1_reg[31]_0 [0]),
        .I3(\reg_op1_reg[31]_0 [1]),
        .I4(mem_do_wdata),
        .I5(mem_do_rdata),
        .O(\cpu_state[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h08FF08FFFFFF08FF)) 
    \cpu_state[7]_i_6 
       (.I0(Q[2]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_jal),
        .I3(resetn),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\cpu_state[7]_i_9_n_0 ),
        .O(\cpu_state[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    \cpu_state[7]_i_7 
       (.I0(\cpu_state_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(pcpi_mul_n_27),
        .I3(mem_do_prefetch_reg_0),
        .O(\cpu_state[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cpu_state[7]_i_8 
       (.I0(instr_rdinstrh),
        .I1(instr_rdcycle),
        .I2(pcpi_mul_n_96),
        .I3(is_slli_srli_srai),
        .I4(is_lui_auipc_jal),
        .I5(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .O(\cpu_state[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cpu_state[7]_i_9 
       (.I0(\reg_sh_reg_n_0_[1] ),
        .I1(\reg_sh_reg_n_0_[4] ),
        .I2(\reg_sh_reg_n_0_[2] ),
        .I3(\reg_sh_reg_n_0_[3] ),
        .I4(\reg_sh_reg_n_0_[0] ),
        .O(\cpu_state[7]_i_9_n_0 ));
  FDRE \cpu_state_reg[0] 
       (.C(clk),
        .CE(pcpi_mul_n_26),
        .D(cpu_state0_out[0]),
        .Q(\cpu_state_reg_n_0_[0] ),
        .R(\cpu_state[7]_i_1_n_0 ));
  FDRE \cpu_state_reg[1] 
       (.C(clk),
        .CE(pcpi_mul_n_26),
        .D(cpu_state0_out[1]),
        .Q(Q[0]),
        .R(\cpu_state[7]_i_1_n_0 ));
  FDRE \cpu_state_reg[2] 
       (.C(clk),
        .CE(pcpi_mul_n_26),
        .D(cpu_state0_out[2]),
        .Q(\cpu_state_reg_n_0_[2] ),
        .R(\cpu_state[7]_i_1_n_0 ));
  FDRE \cpu_state_reg[3] 
       (.C(clk),
        .CE(pcpi_mul_n_26),
        .D(cpu_state0_out[3]),
        .Q(Q[1]),
        .R(\cpu_state[7]_i_1_n_0 ));
  FDRE \cpu_state_reg[5] 
       (.C(clk),
        .CE(pcpi_mul_n_26),
        .D(cpu_state0_out[5]),
        .Q(\cpu_state_reg_n_0_[5] ),
        .R(\cpu_state[7]_i_1_n_0 ));
  FDRE \cpu_state_reg[6] 
       (.C(clk),
        .CE(pcpi_mul_n_26),
        .D(cpu_state0_out[6]),
        .Q(Q[2]),
        .R(\cpu_state[7]_i_1_n_0 ));
  FDSE \cpu_state_reg[7] 
       (.C(clk),
        .CE(pcpi_mul_n_26),
        .D(cpu_state0_out[7]),
        .Q(\cpu_state_reg_n_0_[7] ),
        .S(\cpu_state[7]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M cpuregs_reg_r1_0_31_0_5
       (.ADDRA(decoded_rs2),
        .ADDRB(decoded_rs2),
        .ADDRC(decoded_rs2),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_0_5_i_2_n_0,cpuregs_reg_r1_0_31_0_5_i_3_n_0}),
        .DIB({cpuregs_reg_r1_0_31_0_5_i_4_n_0,cpuregs_reg_r1_0_31_0_5_i_5_n_0}),
        .DIC({cpuregs_reg_r1_0_31_0_5_i_6_n_0,cpuregs_reg_r1_0_31_0_5_i_7_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_sh1[1:0]),
        .DOB(reg_sh1[3:2]),
        .DOC(reg_sh1[5:4]),
        .DOD(NLW_cpuregs_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    cpuregs_reg_r1_0_31_0_5_i_1
       (.I0(latched_rd[1]),
        .I1(latched_rd[3]),
        .I2(latched_rd[4]),
        .I3(latched_rd[2]),
        .I4(latched_rd[0]),
        .I5(cpuregs_reg_r1_0_31_0_5_i_8_n_0),
        .O(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cpuregs_reg_r1_0_31_0_5_i_10
       (.CI(cpuregs_reg_r1_0_31_0_5_i_9_n_0),
        .CO({cpuregs_reg_r1_0_31_0_5_i_10_n_0,cpuregs_reg_r1_0_31_0_5_i_10_n_1,cpuregs_reg_r1_0_31_0_5_i_10_n_2,cpuregs_reg_r1_0_31_0_5_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cpuregs_reg_r1_0_31_0_5_i_10_n_4,cpuregs_reg_r1_0_31_0_5_i_10_n_5,cpuregs_reg_r1_0_31_0_5_i_10_n_6,cpuregs_reg_r1_0_31_0_5_i_10_n_7}),
        .S({\reg_pc_reg_n_0_[7] ,\reg_pc_reg_n_0_[6] ,\reg_pc_reg_n_0_[5] ,\reg_pc_reg_n_0_[4] }));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cpuregs_reg_r1_0_31_0_5_i_11
       (.I0(\cpu_state_reg_n_0_[7] ),
        .I1(\cpu_state_reg_n_0_[5] ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(Q[1]),
        .O(cpuregs_reg_r1_0_31_0_5_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cpuregs_reg_r1_0_31_0_5_i_12
       (.I0(\reg_pc_reg_n_0_[2] ),
        .O(cpuregs_reg_r1_0_31_0_5_i_12_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_0_5_i_2
       (.I0(cpuregs_reg_r1_0_31_0_5_i_9_n_6),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[1]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[1] ),
        .O(cpuregs_reg_r1_0_31_0_5_i_2_n_0));
  LUT5 #(
    .INIT(32'h0000E200)) 
    cpuregs_reg_r1_0_31_0_5_i_3
       (.I0(\reg_out_reg_n_0_[0] ),
        .I1(latched_stalu_reg_0),
        .I2(alu_out_q[0]),
        .I3(latched_store_reg_0),
        .I4(latched_branch_reg_0),
        .O(cpuregs_reg_r1_0_31_0_5_i_3_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_0_5_i_4
       (.I0(cpuregs_reg_r1_0_31_0_5_i_9_n_4),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[3]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[3] ),
        .O(cpuregs_reg_r1_0_31_0_5_i_4_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_0_5_i_5
       (.I0(cpuregs_reg_r1_0_31_0_5_i_9_n_5),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[2]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[2] ),
        .O(cpuregs_reg_r1_0_31_0_5_i_5_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_0_5_i_6
       (.I0(cpuregs_reg_r1_0_31_0_5_i_10_n_6),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[5]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[5] ),
        .O(cpuregs_reg_r1_0_31_0_5_i_6_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_0_5_i_7
       (.I0(cpuregs_reg_r1_0_31_0_5_i_10_n_7),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[4]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[4] ),
        .O(cpuregs_reg_r1_0_31_0_5_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFF7FFF7FFF7FFFF)) 
    cpuregs_reg_r1_0_31_0_5_i_8
       (.I0(resetn),
        .I1(Q[2]),
        .I2(\cpu_state[6]_i_3_n_0 ),
        .I3(cpuregs_reg_r1_0_31_0_5_i_11_n_0),
        .I4(latched_branch_reg_0),
        .I5(latched_store_reg_0),
        .O(cpuregs_reg_r1_0_31_0_5_i_8_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cpuregs_reg_r1_0_31_0_5_i_9
       (.CI(1'b0),
        .CO({cpuregs_reg_r1_0_31_0_5_i_9_n_0,cpuregs_reg_r1_0_31_0_5_i_9_n_1,cpuregs_reg_r1_0_31_0_5_i_9_n_2,cpuregs_reg_r1_0_31_0_5_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\reg_pc_reg_n_0_[2] ,\reg_pc_reg_n_0_[1] ,1'b0}),
        .O({cpuregs_reg_r1_0_31_0_5_i_9_n_4,cpuregs_reg_r1_0_31_0_5_i_9_n_5,cpuregs_reg_r1_0_31_0_5_i_9_n_6,NLW_cpuregs_reg_r1_0_31_0_5_i_9_O_UNCONNECTED[0]}),
        .S({\reg_pc_reg_n_0_[3] ,cpuregs_reg_r1_0_31_0_5_i_12_n_0,\reg_pc_reg_n_0_[1] ,1'b0}));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M cpuregs_reg_r1_0_31_12_17
       (.ADDRA(decoded_rs2),
        .ADDRB(decoded_rs2),
        .ADDRC(decoded_rs2),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_12_17_i_1_n_0,cpuregs_reg_r1_0_31_12_17_i_2_n_0}),
        .DIB({cpuregs_reg_r1_0_31_12_17_i_3_n_0,cpuregs_reg_r1_0_31_12_17_i_4_n_0}),
        .DIC({cpuregs_reg_r1_0_31_12_17_i_5_n_0,cpuregs_reg_r1_0_31_12_17_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_sh1[13:12]),
        .DOB(reg_sh1[15:14]),
        .DOC(reg_sh1[17:16]),
        .DOD(NLW_cpuregs_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_12_17_i_1
       (.I0(cpuregs_reg_r1_0_31_12_17_i_7_n_6),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[13]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[13] ),
        .O(cpuregs_reg_r1_0_31_12_17_i_1_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_12_17_i_2
       (.I0(cpuregs_reg_r1_0_31_12_17_i_7_n_7),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[12]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[12] ),
        .O(cpuregs_reg_r1_0_31_12_17_i_2_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_12_17_i_3
       (.I0(cpuregs_reg_r1_0_31_12_17_i_7_n_4),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[15]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[15] ),
        .O(cpuregs_reg_r1_0_31_12_17_i_3_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_12_17_i_4
       (.I0(cpuregs_reg_r1_0_31_12_17_i_7_n_5),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[14]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[14] ),
        .O(cpuregs_reg_r1_0_31_12_17_i_4_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_12_17_i_5
       (.I0(cpuregs_reg_r1_0_31_12_17_i_8_n_6),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[17]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[17] ),
        .O(cpuregs_reg_r1_0_31_12_17_i_5_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_12_17_i_6
       (.I0(cpuregs_reg_r1_0_31_12_17_i_8_n_7),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[16]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[16] ),
        .O(cpuregs_reg_r1_0_31_12_17_i_6_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cpuregs_reg_r1_0_31_12_17_i_7
       (.CI(cpuregs_reg_r1_0_31_6_11_i_7_n_0),
        .CO({cpuregs_reg_r1_0_31_12_17_i_7_n_0,cpuregs_reg_r1_0_31_12_17_i_7_n_1,cpuregs_reg_r1_0_31_12_17_i_7_n_2,cpuregs_reg_r1_0_31_12_17_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cpuregs_reg_r1_0_31_12_17_i_7_n_4,cpuregs_reg_r1_0_31_12_17_i_7_n_5,cpuregs_reg_r1_0_31_12_17_i_7_n_6,cpuregs_reg_r1_0_31_12_17_i_7_n_7}),
        .S({\reg_pc_reg_n_0_[15] ,\reg_pc_reg_n_0_[14] ,\reg_pc_reg_n_0_[13] ,\reg_pc_reg_n_0_[12] }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cpuregs_reg_r1_0_31_12_17_i_8
       (.CI(cpuregs_reg_r1_0_31_12_17_i_7_n_0),
        .CO({cpuregs_reg_r1_0_31_12_17_i_8_n_0,cpuregs_reg_r1_0_31_12_17_i_8_n_1,cpuregs_reg_r1_0_31_12_17_i_8_n_2,cpuregs_reg_r1_0_31_12_17_i_8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cpuregs_reg_r1_0_31_12_17_i_8_n_4,cpuregs_reg_r1_0_31_12_17_i_8_n_5,cpuregs_reg_r1_0_31_12_17_i_8_n_6,cpuregs_reg_r1_0_31_12_17_i_8_n_7}),
        .S({\reg_pc_reg_n_0_[19] ,\reg_pc_reg_n_0_[18] ,\reg_pc_reg_n_0_[17] ,\reg_pc_reg_n_0_[16] }));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M cpuregs_reg_r1_0_31_18_23
       (.ADDRA(decoded_rs2),
        .ADDRB(decoded_rs2),
        .ADDRC(decoded_rs2),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_18_23_i_1_n_0,cpuregs_reg_r1_0_31_18_23_i_2_n_0}),
        .DIB({cpuregs_reg_r1_0_31_18_23_i_3_n_0,cpuregs_reg_r1_0_31_18_23_i_4_n_0}),
        .DIC({cpuregs_reg_r1_0_31_18_23_i_5_n_0,cpuregs_reg_r1_0_31_18_23_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_sh1[19:18]),
        .DOB(reg_sh1[21:20]),
        .DOC(reg_sh1[23:22]),
        .DOD(NLW_cpuregs_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_18_23_i_1
       (.I0(cpuregs_reg_r1_0_31_12_17_i_8_n_4),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[19]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[19] ),
        .O(cpuregs_reg_r1_0_31_18_23_i_1_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_18_23_i_2
       (.I0(cpuregs_reg_r1_0_31_12_17_i_8_n_5),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[18]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[18] ),
        .O(cpuregs_reg_r1_0_31_18_23_i_2_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_18_23_i_3
       (.I0(cpuregs_reg_r1_0_31_18_23_i_7_n_6),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[21]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[21] ),
        .O(cpuregs_reg_r1_0_31_18_23_i_3_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_18_23_i_4
       (.I0(cpuregs_reg_r1_0_31_18_23_i_7_n_7),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[20]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[20] ),
        .O(cpuregs_reg_r1_0_31_18_23_i_4_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_18_23_i_5
       (.I0(cpuregs_reg_r1_0_31_18_23_i_7_n_4),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[23]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[23] ),
        .O(cpuregs_reg_r1_0_31_18_23_i_5_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_18_23_i_6
       (.I0(cpuregs_reg_r1_0_31_18_23_i_7_n_5),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[22]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[22] ),
        .O(cpuregs_reg_r1_0_31_18_23_i_6_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cpuregs_reg_r1_0_31_18_23_i_7
       (.CI(cpuregs_reg_r1_0_31_12_17_i_8_n_0),
        .CO({cpuregs_reg_r1_0_31_18_23_i_7_n_0,cpuregs_reg_r1_0_31_18_23_i_7_n_1,cpuregs_reg_r1_0_31_18_23_i_7_n_2,cpuregs_reg_r1_0_31_18_23_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cpuregs_reg_r1_0_31_18_23_i_7_n_4,cpuregs_reg_r1_0_31_18_23_i_7_n_5,cpuregs_reg_r1_0_31_18_23_i_7_n_6,cpuregs_reg_r1_0_31_18_23_i_7_n_7}),
        .S({\reg_pc_reg_n_0_[23] ,\reg_pc_reg_n_0_[22] ,\reg_pc_reg_n_0_[21] ,\reg_pc_reg_n_0_[20] }));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M cpuregs_reg_r1_0_31_24_29
       (.ADDRA(decoded_rs2),
        .ADDRB(decoded_rs2),
        .ADDRC(decoded_rs2),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_24_29_i_1_n_0,cpuregs_reg_r1_0_31_24_29_i_2_n_0}),
        .DIB({cpuregs_reg_r1_0_31_24_29_i_3_n_0,cpuregs_reg_r1_0_31_24_29_i_4_n_0}),
        .DIC({cpuregs_reg_r1_0_31_24_29_i_5_n_0,cpuregs_reg_r1_0_31_24_29_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_sh1[25:24]),
        .DOB(reg_sh1[27:26]),
        .DOC(reg_sh1[29:28]),
        .DOD(NLW_cpuregs_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_24_29_i_1
       (.I0(cpuregs_reg_r1_0_31_24_29_i_7_n_6),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[25]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[25] ),
        .O(cpuregs_reg_r1_0_31_24_29_i_1_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_24_29_i_2
       (.I0(cpuregs_reg_r1_0_31_24_29_i_7_n_7),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[24]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[24] ),
        .O(cpuregs_reg_r1_0_31_24_29_i_2_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_24_29_i_3
       (.I0(cpuregs_reg_r1_0_31_24_29_i_7_n_4),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[27]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[27] ),
        .O(cpuregs_reg_r1_0_31_24_29_i_3_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_24_29_i_4
       (.I0(cpuregs_reg_r1_0_31_24_29_i_7_n_5),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[26]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[26] ),
        .O(cpuregs_reg_r1_0_31_24_29_i_4_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_24_29_i_5
       (.I0(cpuregs_reg_r1_0_31_24_29_i_8_n_6),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[29]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[29] ),
        .O(cpuregs_reg_r1_0_31_24_29_i_5_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_24_29_i_6
       (.I0(cpuregs_reg_r1_0_31_24_29_i_8_n_7),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[28]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[28] ),
        .O(cpuregs_reg_r1_0_31_24_29_i_6_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cpuregs_reg_r1_0_31_24_29_i_7
       (.CI(cpuregs_reg_r1_0_31_18_23_i_7_n_0),
        .CO({cpuregs_reg_r1_0_31_24_29_i_7_n_0,cpuregs_reg_r1_0_31_24_29_i_7_n_1,cpuregs_reg_r1_0_31_24_29_i_7_n_2,cpuregs_reg_r1_0_31_24_29_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cpuregs_reg_r1_0_31_24_29_i_7_n_4,cpuregs_reg_r1_0_31_24_29_i_7_n_5,cpuregs_reg_r1_0_31_24_29_i_7_n_6,cpuregs_reg_r1_0_31_24_29_i_7_n_7}),
        .S({\reg_pc_reg_n_0_[27] ,\reg_pc_reg_n_0_[26] ,\reg_pc_reg_n_0_[25] ,\reg_pc_reg_n_0_[24] }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cpuregs_reg_r1_0_31_24_29_i_8
       (.CI(cpuregs_reg_r1_0_31_24_29_i_7_n_0),
        .CO({NLW_cpuregs_reg_r1_0_31_24_29_i_8_CO_UNCONNECTED[3],cpuregs_reg_r1_0_31_24_29_i_8_n_1,cpuregs_reg_r1_0_31_24_29_i_8_n_2,cpuregs_reg_r1_0_31_24_29_i_8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cpuregs_reg_r1_0_31_24_29_i_8_n_4,cpuregs_reg_r1_0_31_24_29_i_8_n_5,cpuregs_reg_r1_0_31_24_29_i_8_n_6,cpuregs_reg_r1_0_31_24_29_i_8_n_7}),
        .S({\reg_pc_reg_n_0_[31] ,\reg_pc_reg_n_0_[30] ,\reg_pc_reg_n_0_[29] ,\reg_pc_reg_n_0_[28] }));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M cpuregs_reg_r1_0_31_30_31
       (.ADDRA(decoded_rs2),
        .ADDRB(decoded_rs2),
        .ADDRC(decoded_rs2),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_30_31_i_1_n_0,cpuregs_reg_r1_0_31_30_31_i_2_n_0}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_sh1[31:30]),
        .DOB(NLW_cpuregs_reg_r1_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_cpuregs_reg_r1_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_cpuregs_reg_r1_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_30_31_i_1
       (.I0(cpuregs_reg_r1_0_31_24_29_i_8_n_4),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[31]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[31] ),
        .O(cpuregs_reg_r1_0_31_30_31_i_1_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_30_31_i_2
       (.I0(cpuregs_reg_r1_0_31_24_29_i_8_n_5),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[30]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[30] ),
        .O(cpuregs_reg_r1_0_31_30_31_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M cpuregs_reg_r1_0_31_6_11
       (.ADDRA(decoded_rs2),
        .ADDRB(decoded_rs2),
        .ADDRC(decoded_rs2),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_6_11_i_1_n_0,cpuregs_reg_r1_0_31_6_11_i_2_n_0}),
        .DIB({cpuregs_reg_r1_0_31_6_11_i_3_n_0,cpuregs_reg_r1_0_31_6_11_i_4_n_0}),
        .DIC({cpuregs_reg_r1_0_31_6_11_i_5_n_0,cpuregs_reg_r1_0_31_6_11_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_sh1[7:6]),
        .DOB(reg_sh1[9:8]),
        .DOC(reg_sh1[11:10]),
        .DOD(NLW_cpuregs_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_6_11_i_1
       (.I0(cpuregs_reg_r1_0_31_0_5_i_10_n_4),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[7]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[7] ),
        .O(cpuregs_reg_r1_0_31_6_11_i_1_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_6_11_i_2
       (.I0(cpuregs_reg_r1_0_31_0_5_i_10_n_5),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[6]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[6] ),
        .O(cpuregs_reg_r1_0_31_6_11_i_2_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_6_11_i_3
       (.I0(cpuregs_reg_r1_0_31_6_11_i_7_n_6),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[9]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[9] ),
        .O(cpuregs_reg_r1_0_31_6_11_i_3_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_6_11_i_4
       (.I0(cpuregs_reg_r1_0_31_6_11_i_7_n_7),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[8]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[8] ),
        .O(cpuregs_reg_r1_0_31_6_11_i_4_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_6_11_i_5
       (.I0(cpuregs_reg_r1_0_31_6_11_i_7_n_4),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[11]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[11] ),
        .O(cpuregs_reg_r1_0_31_6_11_i_5_n_0));
  LUT6 #(
    .INIT(64'hB888B8B8B8888888)) 
    cpuregs_reg_r1_0_31_6_11_i_6
       (.I0(cpuregs_reg_r1_0_31_6_11_i_7_n_5),
        .I1(latched_branch_reg_0),
        .I2(latched_store_reg_0),
        .I3(alu_out_q[10]),
        .I4(latched_stalu_reg_0),
        .I5(\reg_out_reg_n_0_[10] ),
        .O(cpuregs_reg_r1_0_31_6_11_i_6_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 cpuregs_reg_r1_0_31_6_11_i_7
       (.CI(cpuregs_reg_r1_0_31_0_5_i_10_n_0),
        .CO({cpuregs_reg_r1_0_31_6_11_i_7_n_0,cpuregs_reg_r1_0_31_6_11_i_7_n_1,cpuregs_reg_r1_0_31_6_11_i_7_n_2,cpuregs_reg_r1_0_31_6_11_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({cpuregs_reg_r1_0_31_6_11_i_7_n_4,cpuregs_reg_r1_0_31_6_11_i_7_n_5,cpuregs_reg_r1_0_31_6_11_i_7_n_6,cpuregs_reg_r1_0_31_6_11_i_7_n_7}),
        .S({\reg_pc_reg_n_0_[11] ,\reg_pc_reg_n_0_[10] ,\reg_pc_reg_n_0_[9] ,\reg_pc_reg_n_0_[8] }));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M cpuregs_reg_r2_0_31_0_5
       (.ADDRA(decoded_rs1__0),
        .ADDRB(decoded_rs1__0),
        .ADDRC(decoded_rs1__0),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_0_5_i_2_n_0,cpuregs_reg_r1_0_31_0_5_i_3_n_0}),
        .DIB({cpuregs_reg_r1_0_31_0_5_i_4_n_0,cpuregs_reg_r1_0_31_0_5_i_5_n_0}),
        .DIC({cpuregs_reg_r1_0_31_0_5_i_6_n_0,cpuregs_reg_r1_0_31_0_5_i_7_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_out1[1:0]),
        .DOB(reg_out1[3:2]),
        .DOC(reg_out1[5:4]),
        .DOD(NLW_cpuregs_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M cpuregs_reg_r2_0_31_12_17
       (.ADDRA(decoded_rs1__0),
        .ADDRB(decoded_rs1__0),
        .ADDRC(decoded_rs1__0),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_12_17_i_1_n_0,cpuregs_reg_r1_0_31_12_17_i_2_n_0}),
        .DIB({cpuregs_reg_r1_0_31_12_17_i_3_n_0,cpuregs_reg_r1_0_31_12_17_i_4_n_0}),
        .DIC({cpuregs_reg_r1_0_31_12_17_i_5_n_0,cpuregs_reg_r1_0_31_12_17_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_out1[13:12]),
        .DOB(reg_out1[15:14]),
        .DOC(reg_out1[17:16]),
        .DOD(NLW_cpuregs_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M cpuregs_reg_r2_0_31_18_23
       (.ADDRA(decoded_rs1__0),
        .ADDRB(decoded_rs1__0),
        .ADDRC(decoded_rs1__0),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_18_23_i_1_n_0,cpuregs_reg_r1_0_31_18_23_i_2_n_0}),
        .DIB({cpuregs_reg_r1_0_31_18_23_i_3_n_0,cpuregs_reg_r1_0_31_18_23_i_4_n_0}),
        .DIC({cpuregs_reg_r1_0_31_18_23_i_5_n_0,cpuregs_reg_r1_0_31_18_23_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_out1[19:18]),
        .DOB(reg_out1[21:20]),
        .DOC(reg_out1[23:22]),
        .DOD(NLW_cpuregs_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M cpuregs_reg_r2_0_31_24_29
       (.ADDRA(decoded_rs1__0),
        .ADDRB(decoded_rs1__0),
        .ADDRC(decoded_rs1__0),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_24_29_i_1_n_0,cpuregs_reg_r1_0_31_24_29_i_2_n_0}),
        .DIB({cpuregs_reg_r1_0_31_24_29_i_3_n_0,cpuregs_reg_r1_0_31_24_29_i_4_n_0}),
        .DIC({cpuregs_reg_r1_0_31_24_29_i_5_n_0,cpuregs_reg_r1_0_31_24_29_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_out1[25:24]),
        .DOB(reg_out1[27:26]),
        .DOC(reg_out1[29:28]),
        .DOD(NLW_cpuregs_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M cpuregs_reg_r2_0_31_30_31
       (.ADDRA(decoded_rs1__0),
        .ADDRB(decoded_rs1__0),
        .ADDRC(decoded_rs1__0),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_30_31_i_1_n_0,cpuregs_reg_r1_0_31_30_31_i_2_n_0}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_out1[31:30]),
        .DOB(NLW_cpuregs_reg_r2_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_cpuregs_reg_r2_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_cpuregs_reg_r2_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "cpuregs" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M cpuregs_reg_r2_0_31_6_11
       (.ADDRA(decoded_rs1__0),
        .ADDRB(decoded_rs1__0),
        .ADDRC(decoded_rs1__0),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_6_11_i_1_n_0,cpuregs_reg_r1_0_31_6_11_i_2_n_0}),
        .DIB({cpuregs_reg_r1_0_31_6_11_i_3_n_0,cpuregs_reg_r1_0_31_6_11_i_4_n_0}),
        .DIC({cpuregs_reg_r1_0_31_6_11_i_5_n_0,cpuregs_reg_r1_0_31_6_11_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_out1[7:6]),
        .DOB(reg_out1[9:8]),
        .DOC(reg_out1[11:10]),
        .DOD(NLW_cpuregs_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000022E22222)) 
    \decoded_imm[0]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[20] ),
        .I1(\decoded_imm[4]_i_2_n_0 ),
        .I2(is_sb_sh_sw),
        .I3(is_beq_bne_blt_bge_bltu_bgeu),
        .I4(\mem_rdata_q_reg_n_0_[7] ),
        .I5(instr_jal_reg_0),
        .O(decoded_imm[0]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \decoded_imm[10]_i_1 
       (.I0(decoded_imm_uj[10]),
        .I1(instr_jal),
        .I2(\decoded_imm[11]_i_2_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[30] ),
        .O(decoded_imm[10]));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \decoded_imm[11]_i_1 
       (.I0(decoded_rs2__0[0]),
        .I1(instr_jal),
        .I2(\decoded_imm[11]_i_2_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[7] ),
        .I4(\decoded_imm[11]_i_3_n_0 ),
        .I5(\mem_rdata_q_reg_n_0_[31] ),
        .O(decoded_imm[11]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \decoded_imm[11]_i_2 
       (.I0(instr_jal_reg_0),
        .I1(is_beq_bne_blt_bge_bltu_bgeu),
        .I2(is_sb_sh_sw),
        .I3(is_alu_reg_imm),
        .I4(is_lb_lh_lw_lbu_lhu),
        .I5(instr_jalr),
        .O(\decoded_imm[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \decoded_imm[11]_i_3 
       (.I0(instr_jalr),
        .I1(is_lb_lh_lw_lbu_lhu),
        .I2(is_alu_reg_imm),
        .I3(is_beq_bne_blt_bge_bltu_bgeu),
        .O(\decoded_imm[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFE000E0)) 
    \decoded_imm[12]_i_1 
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(p_0_in[0]),
        .I3(instr_jal),
        .I4(decoded_imm_uj[12]),
        .O(\decoded_imm[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBB88888)) 
    \decoded_imm[13]_i_1 
       (.I0(decoded_imm_uj[13]),
        .I1(instr_jal),
        .I2(instr_auipc),
        .I3(instr_lui),
        .I4(p_0_in[1]),
        .O(\decoded_imm[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE000E0)) 
    \decoded_imm[14]_i_1 
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(p_0_in[2]),
        .I3(instr_jal),
        .I4(decoded_imm_uj[14]),
        .O(\decoded_imm[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8B888)) 
    \decoded_imm[15]_i_1 
       (.I0(decoded_rs1[0]),
        .I1(instr_jal),
        .I2(\mem_rdata_q_reg_n_0_[15] ),
        .I3(instr_auipc),
        .I4(instr_lui),
        .O(\decoded_imm[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE000E0)) 
    \decoded_imm[16]_i_1 
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(\mem_rdata_q_reg_n_0_[16] ),
        .I3(instr_jal),
        .I4(decoded_rs1[1]),
        .O(\decoded_imm[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE000E0)) 
    \decoded_imm[17]_i_1 
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(\mem_rdata_q_reg_n_0_[17] ),
        .I3(instr_jal),
        .I4(decoded_rs1[2]),
        .O(\decoded_imm[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8B888)) 
    \decoded_imm[18]_i_1 
       (.I0(decoded_rs1[3]),
        .I1(instr_jal),
        .I2(\mem_rdata_q_reg_n_0_[18] ),
        .I3(instr_auipc),
        .I4(instr_lui),
        .O(\decoded_imm[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8B888)) 
    \decoded_imm[19]_i_1 
       (.I0(decoded_rs1[4]),
        .I1(instr_jal),
        .I2(\mem_rdata_q_reg_n_0_[19] ),
        .I3(instr_auipc),
        .I4(instr_lui),
        .O(\decoded_imm[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \decoded_imm[1]_i_1 
       (.I0(decoded_rs2__0[1]),
        .I1(instr_jal),
        .I2(\decoded_imm[11]_i_2_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[8] ),
        .I4(\decoded_imm[4]_i_2_n_0 ),
        .I5(\mem_rdata_q_reg_n_0_[21] ),
        .O(decoded_imm[1]));
  LUT5 #(
    .INIT(32'hFFE000E0)) 
    \decoded_imm[20]_i_1 
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(\mem_rdata_q_reg_n_0_[20] ),
        .I3(instr_jal),
        .I4(decoded_imm_uj[31]),
        .O(\decoded_imm[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE000E0)) 
    \decoded_imm[21]_i_1 
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(\mem_rdata_q_reg_n_0_[21] ),
        .I3(instr_jal),
        .I4(decoded_imm_uj[31]),
        .O(\decoded_imm[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE000E0)) 
    \decoded_imm[22]_i_1 
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(\mem_rdata_q_reg_n_0_[22] ),
        .I3(instr_jal),
        .I4(decoded_imm_uj[31]),
        .O(\decoded_imm[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE000E0)) 
    \decoded_imm[23]_i_1 
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(\mem_rdata_q_reg_n_0_[23] ),
        .I3(instr_jal),
        .I4(decoded_imm_uj[31]),
        .O(\decoded_imm[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE000E0)) 
    \decoded_imm[24]_i_1 
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(\mem_rdata_q_reg_n_0_[24] ),
        .I3(instr_jal),
        .I4(decoded_imm_uj[31]),
        .O(\decoded_imm[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE000E0)) 
    \decoded_imm[25]_i_1 
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(\mem_rdata_q_reg_n_0_[25] ),
        .I3(instr_jal),
        .I4(decoded_imm_uj[31]),
        .O(\decoded_imm[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE000E0)) 
    \decoded_imm[26]_i_1 
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(\mem_rdata_q_reg_n_0_[26] ),
        .I3(instr_jal),
        .I4(decoded_imm_uj[31]),
        .O(\decoded_imm[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE000E0)) 
    \decoded_imm[27]_i_1 
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(\mem_rdata_q_reg_n_0_[27] ),
        .I3(instr_jal),
        .I4(decoded_imm_uj[31]),
        .O(\decoded_imm[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE000E0)) 
    \decoded_imm[28]_i_1 
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(\mem_rdata_q_reg_n_0_[28] ),
        .I3(instr_jal),
        .I4(decoded_imm_uj[31]),
        .O(\decoded_imm[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE000E0)) 
    \decoded_imm[29]_i_1 
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(\mem_rdata_q_reg_n_0_[29] ),
        .I3(instr_jal),
        .I4(decoded_imm_uj[31]),
        .O(\decoded_imm[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \decoded_imm[2]_i_1 
       (.I0(decoded_rs2__0[2]),
        .I1(instr_jal),
        .I2(\decoded_imm[11]_i_2_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[9] ),
        .I4(\decoded_imm[4]_i_2_n_0 ),
        .I5(\mem_rdata_q_reg_n_0_[22] ),
        .O(decoded_imm[2]));
  LUT5 #(
    .INIT(32'hFFE000E0)) 
    \decoded_imm[30]_i_1 
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(\mem_rdata_q_reg_n_0_[30] ),
        .I3(instr_jal),
        .I4(decoded_imm_uj[31]),
        .O(\decoded_imm[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \decoded_imm[31]_i_1 
       (.I0(\decoded_imm[11]_i_2_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[31] ),
        .I2(decoder_pseudo_trigger_reg_n_0),
        .I3(decoder_trigger_reg_n_0),
        .O(\decoded_imm[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE000E0)) 
    \decoded_imm[31]_i_2 
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(\mem_rdata_q_reg_n_0_[31] ),
        .I3(instr_jal),
        .I4(decoded_imm_uj[31]),
        .O(\decoded_imm[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \decoded_imm[3]_i_1 
       (.I0(decoded_rs2__0[3]),
        .I1(instr_jal),
        .I2(\decoded_imm[11]_i_2_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[10] ),
        .I4(\decoded_imm[4]_i_2_n_0 ),
        .I5(\mem_rdata_q_reg_n_0_[23] ),
        .O(decoded_imm[3]));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \decoded_imm[4]_i_1 
       (.I0(decoded_rs2__0[4]),
        .I1(instr_jal),
        .I2(\decoded_imm[11]_i_2_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[11] ),
        .I4(\decoded_imm[4]_i_2_n_0 ),
        .I5(\mem_rdata_q_reg_n_0_[24] ),
        .O(decoded_imm[4]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \decoded_imm[4]_i_2 
       (.I0(is_alu_reg_imm),
        .I1(is_lb_lh_lw_lbu_lhu),
        .I2(instr_jalr),
        .O(\decoded_imm[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \decoded_imm[5]_i_1 
       (.I0(decoded_imm_uj[5]),
        .I1(instr_jal),
        .I2(\decoded_imm[11]_i_2_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[25] ),
        .O(decoded_imm[5]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \decoded_imm[6]_i_1 
       (.I0(decoded_imm_uj[6]),
        .I1(instr_jal),
        .I2(\decoded_imm[11]_i_2_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[26] ),
        .O(decoded_imm[6]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \decoded_imm[7]_i_1 
       (.I0(decoded_imm_uj[7]),
        .I1(instr_jal),
        .I2(\decoded_imm[11]_i_2_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[27] ),
        .O(decoded_imm[7]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \decoded_imm[8]_i_1 
       (.I0(decoded_imm_uj[8]),
        .I1(instr_jal),
        .I2(\decoded_imm[11]_i_2_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[28] ),
        .O(decoded_imm[8]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \decoded_imm[9]_i_1 
       (.I0(decoded_imm_uj[9]),
        .I1(instr_jal),
        .I2(\decoded_imm[11]_i_2_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[29] ),
        .O(decoded_imm[9]));
  FDRE \decoded_imm_reg[0] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(decoded_imm[0]),
        .Q(\decoded_imm_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \decoded_imm_reg[10] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(decoded_imm[10]),
        .Q(\decoded_imm_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \decoded_imm_reg[11] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(decoded_imm[11]),
        .Q(\decoded_imm_reg_n_0_[11] ),
        .R(1'b0));
  FDSE \decoded_imm_reg[12] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[12]_i_1_n_0 ),
        .Q(\decoded_imm_reg_n_0_[12] ),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE \decoded_imm_reg[13] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[13]_i_1_n_0 ),
        .Q(\decoded_imm_reg_n_0_[13] ),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE \decoded_imm_reg[14] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[14]_i_1_n_0 ),
        .Q(\decoded_imm_reg_n_0_[14] ),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE \decoded_imm_reg[15] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[15]_i_1_n_0 ),
        .Q(\decoded_imm_reg_n_0_[15] ),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE \decoded_imm_reg[16] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[16]_i_1_n_0 ),
        .Q(\decoded_imm_reg_n_0_[16] ),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE \decoded_imm_reg[17] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[17]_i_1_n_0 ),
        .Q(\decoded_imm_reg_n_0_[17] ),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE \decoded_imm_reg[18] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[18]_i_1_n_0 ),
        .Q(\decoded_imm_reg_n_0_[18] ),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE \decoded_imm_reg[19] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[19]_i_1_n_0 ),
        .Q(\decoded_imm_reg_n_0_[19] ),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDRE \decoded_imm_reg[1] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(decoded_imm[1]),
        .Q(\decoded_imm_reg_n_0_[1] ),
        .R(1'b0));
  FDSE \decoded_imm_reg[20] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[20]_i_1_n_0 ),
        .Q(\decoded_imm_reg_n_0_[20] ),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE \decoded_imm_reg[21] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[21]_i_1_n_0 ),
        .Q(\decoded_imm_reg_n_0_[21] ),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE \decoded_imm_reg[22] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[22]_i_1_n_0 ),
        .Q(\decoded_imm_reg_n_0_[22] ),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE \decoded_imm_reg[23] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[23]_i_1_n_0 ),
        .Q(\decoded_imm_reg_n_0_[23] ),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE \decoded_imm_reg[24] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[24]_i_1_n_0 ),
        .Q(\decoded_imm_reg_n_0_[24] ),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE \decoded_imm_reg[25] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[25]_i_1_n_0 ),
        .Q(\decoded_imm_reg_n_0_[25] ),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE \decoded_imm_reg[26] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[26]_i_1_n_0 ),
        .Q(\decoded_imm_reg_n_0_[26] ),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE \decoded_imm_reg[27] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[27]_i_1_n_0 ),
        .Q(\decoded_imm_reg_n_0_[27] ),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE \decoded_imm_reg[28] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[28]_i_1_n_0 ),
        .Q(\decoded_imm_reg_n_0_[28] ),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE \decoded_imm_reg[29] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[29]_i_1_n_0 ),
        .Q(\decoded_imm_reg_n_0_[29] ),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDRE \decoded_imm_reg[2] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(decoded_imm[2]),
        .Q(\decoded_imm_reg_n_0_[2] ),
        .R(1'b0));
  FDSE \decoded_imm_reg[30] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[30]_i_1_n_0 ),
        .Q(\decoded_imm_reg_n_0_[30] ),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE \decoded_imm_reg[31] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[31]_i_2_n_0 ),
        .Q(\decoded_imm_reg_n_0_[31] ),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDRE \decoded_imm_reg[3] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(decoded_imm[3]),
        .Q(\decoded_imm_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \decoded_imm_reg[4] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(decoded_imm[4]),
        .Q(\decoded_imm_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \decoded_imm_reg[5] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(decoded_imm[5]),
        .Q(\decoded_imm_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \decoded_imm_reg[6] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(decoded_imm[6]),
        .Q(\decoded_imm_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \decoded_imm_reg[7] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(decoded_imm[7]),
        .Q(\decoded_imm_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \decoded_imm_reg[8] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(decoded_imm[8]),
        .Q(\decoded_imm_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \decoded_imm_reg[9] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(decoded_imm[9]),
        .Q(\decoded_imm_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \decoded_imm_uj[10]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[30] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[30]),
        .O(\decoded_imm_uj[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \decoded_imm_uj[31]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[31] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[31]),
        .O(p_0_in0));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \decoded_imm_uj[5]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[25] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[25]),
        .O(\decoded_imm_uj[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \decoded_imm_uj[6]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[26] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[26]),
        .O(\decoded_imm_uj[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \decoded_imm_uj[7]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[27] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[27]),
        .O(\decoded_imm_uj[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \decoded_imm_uj[8]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[28] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[28]),
        .O(\decoded_imm_uj[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \decoded_imm_uj[9]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[29] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[29]),
        .O(\decoded_imm_uj[9]_i_1_n_0 ));
  FDRE \decoded_imm_uj_reg[10] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[10]_i_1_n_0 ),
        .Q(decoded_imm_uj[10]),
        .R(1'b0));
  FDRE \decoded_imm_uj_reg[12] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\mem_rdata_q[12]_i_1_n_0 ),
        .Q(decoded_imm_uj[12]),
        .R(1'b0));
  FDRE \decoded_imm_uj_reg[13] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\mem_rdata_q[13]_i_1_n_0 ),
        .Q(decoded_imm_uj[13]),
        .R(1'b0));
  FDRE \decoded_imm_uj_reg[14] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\mem_rdata_q[14]_i_1_n_0 ),
        .Q(decoded_imm_uj[14]),
        .R(1'b0));
  FDRE \decoded_imm_uj_reg[31] 
       (.C(clk),
        .CE(instr_lui0),
        .D(p_0_in0),
        .Q(decoded_imm_uj[31]),
        .R(1'b0));
  FDRE \decoded_imm_uj_reg[5] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[5]_i_1_n_0 ),
        .Q(decoded_imm_uj[5]),
        .R(1'b0));
  FDRE \decoded_imm_uj_reg[6] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[6]_i_1_n_0 ),
        .Q(decoded_imm_uj[6]),
        .R(1'b0));
  FDRE \decoded_imm_uj_reg[7] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[7]_i_1_n_0 ),
        .Q(decoded_imm_uj[7]),
        .R(1'b0));
  FDRE \decoded_imm_uj_reg[8] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[8]_i_1_n_0 ),
        .Q(decoded_imm_uj[8]),
        .R(1'b0));
  FDRE \decoded_imm_uj_reg[9] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_imm_uj[9]_i_1_n_0 ),
        .Q(decoded_imm_uj[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \decoded_rd[0]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[7] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[7]),
        .O(\decoded_rd[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \decoded_rd[1]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[8] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[8]),
        .O(\decoded_rd[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \decoded_rd[2]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[9] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[9]),
        .O(\decoded_rd[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \decoded_rd[3]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[10] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[10]),
        .O(\decoded_rd[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \decoded_rd[4]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[11] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[11]),
        .O(\decoded_rd[4]_i_1_n_0 ));
  FDRE \decoded_rd_reg[0] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rd[0]_i_1_n_0 ),
        .Q(decoded_rd[0]),
        .R(1'b0));
  FDRE \decoded_rd_reg[1] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rd[1]_i_1_n_0 ),
        .Q(decoded_rd[1]),
        .R(1'b0));
  FDRE \decoded_rd_reg[2] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rd[2]_i_1_n_0 ),
        .Q(decoded_rd[2]),
        .R(1'b0));
  FDRE \decoded_rd_reg[3] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rd[3]_i_1_n_0 ),
        .Q(decoded_rd[3]),
        .R(1'b0));
  FDRE \decoded_rd_reg[4] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rd[4]_i_1_n_0 ),
        .Q(decoded_rd[4]),
        .R(1'b0));
  FDRE \decoded_rs1_reg[0] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rs1_rep[0]_i_1_n_0 ),
        .Q(decoded_rs1[0]),
        .R(1'b0));
  FDRE \decoded_rs1_reg[1] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rs1_rep[1]_i_1_n_0 ),
        .Q(decoded_rs1[1]),
        .R(1'b0));
  FDRE \decoded_rs1_reg[2] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rs1_rep[2]_i_1_n_0 ),
        .Q(decoded_rs1[2]),
        .R(1'b0));
  FDRE \decoded_rs1_reg[3] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rs1_rep[3]_i_1_n_0 ),
        .Q(decoded_rs1[3]),
        .R(1'b0));
  FDRE \decoded_rs1_reg[4] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rs1_rep[4]_i_1_n_0 ),
        .Q(decoded_rs1[4]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \decoded_rs1_reg_rep[0] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rs1_rep[0]_i_1_n_0 ),
        .Q(decoded_rs1__0[0]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \decoded_rs1_reg_rep[1] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rs1_rep[1]_i_1_n_0 ),
        .Q(decoded_rs1__0[1]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \decoded_rs1_reg_rep[2] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rs1_rep[2]_i_1_n_0 ),
        .Q(decoded_rs1__0[2]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \decoded_rs1_reg_rep[3] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rs1_rep[3]_i_1_n_0 ),
        .Q(decoded_rs1__0[3]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \decoded_rs1_reg_rep[4] 
       (.C(clk),
        .CE(instr_lui0),
        .D(\decoded_rs1_rep[4]_i_1_n_0 ),
        .Q(decoded_rs1__0[4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \decoded_rs1_rep[0]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[15] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[15]),
        .O(\decoded_rs1_rep[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \decoded_rs1_rep[1]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[16] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[16]),
        .O(\decoded_rs1_rep[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \decoded_rs1_rep[2]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[17] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[17]),
        .O(\decoded_rs1_rep[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \decoded_rs1_rep[3]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[18] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[18]),
        .O(\decoded_rs1_rep[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \decoded_rs1_rep[4]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[19] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[19]),
        .O(\decoded_rs1_rep[4]_i_1_n_0 ));
  FDRE \decoded_rs2_reg[0] 
       (.C(clk),
        .CE(instr_lui0),
        .D(p_1_in[0]),
        .Q(decoded_rs2__0[0]),
        .R(1'b0));
  FDRE \decoded_rs2_reg[1] 
       (.C(clk),
        .CE(instr_lui0),
        .D(p_1_in[1]),
        .Q(decoded_rs2__0[1]),
        .R(1'b0));
  FDRE \decoded_rs2_reg[2] 
       (.C(clk),
        .CE(instr_lui0),
        .D(p_1_in[2]),
        .Q(decoded_rs2__0[2]),
        .R(1'b0));
  FDRE \decoded_rs2_reg[3] 
       (.C(clk),
        .CE(instr_lui0),
        .D(p_1_in[3]),
        .Q(decoded_rs2__0[3]),
        .R(1'b0));
  FDRE \decoded_rs2_reg[4] 
       (.C(clk),
        .CE(instr_lui0),
        .D(p_1_in[4]),
        .Q(decoded_rs2__0[4]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \decoded_rs2_reg_rep[0] 
       (.C(clk),
        .CE(instr_lui0),
        .D(p_1_in[0]),
        .Q(decoded_rs2[0]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \decoded_rs2_reg_rep[1] 
       (.C(clk),
        .CE(instr_lui0),
        .D(p_1_in[1]),
        .Q(decoded_rs2[1]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \decoded_rs2_reg_rep[2] 
       (.C(clk),
        .CE(instr_lui0),
        .D(p_1_in[2]),
        .Q(decoded_rs2[2]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \decoded_rs2_reg_rep[3] 
       (.C(clk),
        .CE(instr_lui0),
        .D(p_1_in[3]),
        .Q(decoded_rs2[3]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \decoded_rs2_reg_rep[4] 
       (.C(clk),
        .CE(instr_lui0),
        .D(p_1_in[4]),
        .Q(decoded_rs2[4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \decoded_rs2_rep[0]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[20] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[20]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \decoded_rs2_rep[1]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[21] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[21]),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \decoded_rs2_rep[2]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[22] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[22]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \decoded_rs2_rep[3]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[23] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[23]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \decoded_rs2_rep[4]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[24] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[24]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    decoder_pseudo_trigger_i_1
       (.I0(\cpu_state_reg_n_0_[7] ),
        .I1(\cpu_state_reg_n_0_[5] ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(decoder_pseudo_trigger_i_2_n_0),
        .O(decoder_pseudo_trigger));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    decoder_pseudo_trigger_i_2
       (.I0(mem_do_prefetch_reg_0),
        .I1(pcpi_mul_n_27),
        .O(decoder_pseudo_trigger_i_2_n_0));
  FDRE decoder_pseudo_trigger_reg
       (.C(clk),
        .CE(1'b1),
        .D(decoder_pseudo_trigger),
        .Q(decoder_pseudo_trigger_reg_n_0),
        .R(pcpi_mul_n_24));
  LUT6 #(
    .INIT(64'hFE00FE000000FC00)) 
    decoder_trigger_i_1
       (.I0(decoder_trigger_i_2_n_0),
        .I1(\cpu_state_reg_n_0_[0] ),
        .I2(Q[0]),
        .I3(pcpi_mul_n_27),
        .I4(mem_do_prefetch_reg_0),
        .I5(mem_do_rinst_reg_n_0),
        .O(decoder_trigger_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    decoder_trigger_i_10
       (.I0(\reg_op1_reg[31]_0 [27]),
        .I1(\reg_op2_reg[31]_0 [27]),
        .I2(\reg_op2_reg[31]_0 [26]),
        .I3(\reg_op1_reg[31]_0 [26]),
        .O(decoder_trigger_i_10_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    decoder_trigger_i_11
       (.I0(\reg_op1_reg[31]_0 [25]),
        .I1(\reg_op2_reg[31]_0 [25]),
        .I2(\reg_op2_reg[31]_0 [24]),
        .I3(\reg_op1_reg[31]_0 [24]),
        .O(decoder_trigger_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    decoder_trigger_i_12
       (.I0(\reg_op2_reg[31]_0 [31]),
        .I1(\reg_op1_reg[31]_0 [31]),
        .I2(\reg_op2_reg[31]_0 [30]),
        .I3(\reg_op1_reg[31]_0 [30]),
        .O(decoder_trigger_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    decoder_trigger_i_13
       (.I0(\reg_op2_reg[31]_0 [29]),
        .I1(\reg_op1_reg[31]_0 [29]),
        .I2(\reg_op2_reg[31]_0 [28]),
        .I3(\reg_op1_reg[31]_0 [28]),
        .O(decoder_trigger_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    decoder_trigger_i_14
       (.I0(\reg_op2_reg[31]_0 [26]),
        .I1(\reg_op1_reg[31]_0 [26]),
        .I2(\reg_op2_reg[31]_0 [27]),
        .I3(\reg_op1_reg[31]_0 [27]),
        .O(decoder_trigger_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    decoder_trigger_i_15
       (.I0(\reg_op2_reg[31]_0 [24]),
        .I1(\reg_op1_reg[31]_0 [24]),
        .I2(\reg_op2_reg[31]_0 [25]),
        .I3(\reg_op1_reg[31]_0 [25]),
        .O(decoder_trigger_i_15_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    decoder_trigger_i_17
       (.I0(\reg_op1_reg[31]_0 [23]),
        .I1(\reg_op2_reg[31]_0 [23]),
        .I2(\reg_op2_reg[31]_0 [22]),
        .I3(\reg_op1_reg[31]_0 [22]),
        .O(decoder_trigger_i_17_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    decoder_trigger_i_18
       (.I0(\reg_op1_reg[31]_0 [21]),
        .I1(\reg_op2_reg[31]_0 [21]),
        .I2(\reg_op2_reg[31]_0 [20]),
        .I3(\reg_op1_reg[31]_0 [20]),
        .O(decoder_trigger_i_18_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    decoder_trigger_i_19
       (.I0(\reg_op1_reg[31]_0 [19]),
        .I1(\reg_op2_reg[31]_0 [19]),
        .I2(\reg_op2_reg[31]_0 [18]),
        .I3(\reg_op1_reg[31]_0 [18]),
        .O(decoder_trigger_i_19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hDFD5FFFF)) 
    decoder_trigger_i_2
       (.I0(Q[1]),
        .I1(decoder_trigger_i_3_n_0),
        .I2(decoder_trigger_i_4_n_0),
        .I3(decoder_trigger_i_5_n_0),
        .I4(is_beq_bne_blt_bge_bltu_bgeu),
        .O(decoder_trigger_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    decoder_trigger_i_20
       (.I0(\reg_op1_reg[31]_0 [17]),
        .I1(\reg_op2_reg[31]_0 [17]),
        .I2(\reg_op2_reg[31]_0 [16]),
        .I3(\reg_op1_reg[31]_0 [16]),
        .O(decoder_trigger_i_20_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    decoder_trigger_i_21
       (.I0(\reg_op2_reg[31]_0 [23]),
        .I1(\reg_op1_reg[31]_0 [23]),
        .I2(\reg_op2_reg[31]_0 [22]),
        .I3(\reg_op1_reg[31]_0 [22]),
        .O(decoder_trigger_i_21_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    decoder_trigger_i_22
       (.I0(\reg_op2_reg[31]_0 [20]),
        .I1(\reg_op1_reg[31]_0 [20]),
        .I2(\reg_op2_reg[31]_0 [21]),
        .I3(\reg_op1_reg[31]_0 [21]),
        .O(decoder_trigger_i_22_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    decoder_trigger_i_23
       (.I0(\reg_op2_reg[31]_0 [18]),
        .I1(\reg_op1_reg[31]_0 [18]),
        .I2(\reg_op2_reg[31]_0 [19]),
        .I3(\reg_op1_reg[31]_0 [19]),
        .O(decoder_trigger_i_23_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    decoder_trigger_i_24
       (.I0(\reg_op2_reg[31]_0 [17]),
        .I1(\reg_op1_reg[31]_0 [17]),
        .I2(\reg_op2_reg[31]_0 [16]),
        .I3(\reg_op1_reg[31]_0 [16]),
        .O(decoder_trigger_i_24_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    decoder_trigger_i_26
       (.I0(\reg_op1_reg[31]_0 [15]),
        .I1(\reg_op2_reg[31]_0 [15]),
        .I2(\reg_op2_reg[31]_0 [14]),
        .I3(\reg_op1_reg[31]_0 [14]),
        .O(decoder_trigger_i_26_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    decoder_trigger_i_27
       (.I0(\reg_op1_reg[31]_0 [13]),
        .I1(\reg_op2_reg[31]_0 [13]),
        .I2(\reg_op2_reg[31]_0 [12]),
        .I3(\reg_op1_reg[31]_0 [12]),
        .O(decoder_trigger_i_27_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    decoder_trigger_i_28
       (.I0(\reg_op1_reg[31]_0 [11]),
        .I1(\reg_op2_reg[31]_0 [11]),
        .I2(\reg_op2_reg[31]_0 [10]),
        .I3(\reg_op1_reg[31]_0 [10]),
        .O(decoder_trigger_i_28_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    decoder_trigger_i_29
       (.I0(\reg_op1_reg[31]_0 [9]),
        .I1(\reg_op2_reg[31]_0 [9]),
        .I2(\reg_op2_reg[31]_0 [8]),
        .I3(\reg_op1_reg[31]_0 [8]),
        .O(decoder_trigger_i_29_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h33CA)) 
    decoder_trigger_i_3
       (.I0(data4),
        .I1(\alu_out_q_reg[0]_i_6_n_1 ),
        .I2(instr_bne),
        .I3(instr_beq),
        .O(decoder_trigger_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    decoder_trigger_i_30
       (.I0(\reg_op2_reg[31]_0 [14]),
        .I1(\reg_op1_reg[31]_0 [14]),
        .I2(\reg_op2_reg[31]_0 [15]),
        .I3(\reg_op1_reg[31]_0 [15]),
        .O(decoder_trigger_i_30_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    decoder_trigger_i_31
       (.I0(\reg_op2_reg[31]_0 [12]),
        .I1(\reg_op1_reg[31]_0 [12]),
        .I2(\reg_op2_reg[31]_0 [13]),
        .I3(\reg_op1_reg[31]_0 [13]),
        .O(decoder_trigger_i_31_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    decoder_trigger_i_32
       (.I0(\reg_op2_reg[31]_0 [11]),
        .I1(\reg_op1_reg[31]_0 [11]),
        .I2(\reg_op2_reg[31]_0 [10]),
        .I3(\reg_op1_reg[31]_0 [10]),
        .O(decoder_trigger_i_32_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    decoder_trigger_i_33
       (.I0(\reg_op2_reg[31]_0 [8]),
        .I1(\reg_op1_reg[31]_0 [8]),
        .I2(\reg_op2_reg[31]_0 [9]),
        .I3(\reg_op1_reg[31]_0 [9]),
        .O(decoder_trigger_i_33_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    decoder_trigger_i_34
       (.I0(\reg_op1_reg[31]_0 [7]),
        .I1(\reg_op2_reg[31]_0 [7]),
        .I2(\reg_op2_reg[31]_0 [6]),
        .I3(\reg_op1_reg[31]_0 [6]),
        .O(decoder_trigger_i_34_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    decoder_trigger_i_35
       (.I0(\reg_op1_reg[31]_0 [5]),
        .I1(\reg_op2_reg[31]_0 [5]),
        .I2(\reg_op2_reg[31]_0 [4]),
        .I3(\reg_op1_reg[31]_0 [4]),
        .O(decoder_trigger_i_35_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    decoder_trigger_i_36
       (.I0(\reg_op1_reg[31]_0 [3]),
        .I1(\reg_op2_reg[31]_0 [3]),
        .I2(\reg_op2_reg[31]_0 [2]),
        .I3(\reg_op1_reg[31]_0 [2]),
        .O(decoder_trigger_i_36_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    decoder_trigger_i_37
       (.I0(\reg_op1_reg[31]_0 [1]),
        .I1(\reg_op2_reg[31]_0 [1]),
        .I2(\reg_op2_reg[31]_0 [0]),
        .I3(\reg_op1_reg[31]_0 [0]),
        .O(decoder_trigger_i_37_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    decoder_trigger_i_38
       (.I0(\reg_op2_reg[31]_0 [6]),
        .I1(\reg_op1_reg[31]_0 [6]),
        .I2(\reg_op2_reg[31]_0 [7]),
        .I3(\reg_op1_reg[31]_0 [7]),
        .O(decoder_trigger_i_38_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    decoder_trigger_i_39
       (.I0(\reg_op2_reg[31]_0 [5]),
        .I1(\reg_op1_reg[31]_0 [5]),
        .I2(\reg_op2_reg[31]_0 [4]),
        .I3(\reg_op1_reg[31]_0 [4]),
        .O(decoder_trigger_i_39_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    decoder_trigger_i_4
       (.I0(instr_bge),
        .I1(instr_bne),
        .I2(instr_beq),
        .O(decoder_trigger_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    decoder_trigger_i_40
       (.I0(\reg_op2_reg[31]_0 [2]),
        .I1(\reg_op1_reg[31]_0 [2]),
        .I2(\reg_op2_reg[31]_0 [3]),
        .I3(\reg_op1_reg[31]_0 [3]),
        .O(decoder_trigger_i_40_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    decoder_trigger_i_41
       (.I0(\reg_op2_reg[31]_0 [0]),
        .I1(\reg_op1_reg[31]_0 [0]),
        .I2(\reg_op2_reg[31]_0 [1]),
        .I3(\reg_op1_reg[31]_0 [1]),
        .O(decoder_trigger_i_41_n_0));
  LUT5 #(
    .INIT(32'hFF004777)) 
    decoder_trigger_i_5
       (.I0(data4),
        .I1(is_slti_blt_slt),
        .I2(is_sltiu_bltu_sltu),
        .I3(data5),
        .I4(instr_bgeu),
        .O(decoder_trigger_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    decoder_trigger_i_8
       (.I0(\reg_op2_reg[31]_0 [30]),
        .I1(\reg_op1_reg[31]_0 [30]),
        .I2(\reg_op1_reg[31]_0 [31]),
        .I3(\reg_op2_reg[31]_0 [31]),
        .O(decoder_trigger_i_8_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    decoder_trigger_i_9
       (.I0(\reg_op1_reg[31]_0 [29]),
        .I1(\reg_op2_reg[31]_0 [29]),
        .I2(\reg_op2_reg[31]_0 [28]),
        .I3(\reg_op1_reg[31]_0 [28]),
        .O(decoder_trigger_i_9_n_0));
  FDRE decoder_trigger_reg
       (.C(clk),
        .CE(1'b1),
        .D(decoder_trigger_i_1_n_0),
        .Q(decoder_trigger_reg_n_0),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 decoder_trigger_reg_i_16
       (.CI(decoder_trigger_reg_i_25_n_0),
        .CO({decoder_trigger_reg_i_16_n_0,decoder_trigger_reg_i_16_n_1,decoder_trigger_reg_i_16_n_2,decoder_trigger_reg_i_16_n_3}),
        .CYINIT(1'b0),
        .DI({decoder_trigger_i_26_n_0,decoder_trigger_i_27_n_0,decoder_trigger_i_28_n_0,decoder_trigger_i_29_n_0}),
        .O(NLW_decoder_trigger_reg_i_16_O_UNCONNECTED[3:0]),
        .S({decoder_trigger_i_30_n_0,decoder_trigger_i_31_n_0,decoder_trigger_i_32_n_0,decoder_trigger_i_33_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 decoder_trigger_reg_i_25
       (.CI(1'b0),
        .CO({decoder_trigger_reg_i_25_n_0,decoder_trigger_reg_i_25_n_1,decoder_trigger_reg_i_25_n_2,decoder_trigger_reg_i_25_n_3}),
        .CYINIT(1'b0),
        .DI({decoder_trigger_i_34_n_0,decoder_trigger_i_35_n_0,decoder_trigger_i_36_n_0,decoder_trigger_i_37_n_0}),
        .O(NLW_decoder_trigger_reg_i_25_O_UNCONNECTED[3:0]),
        .S({decoder_trigger_i_38_n_0,decoder_trigger_i_39_n_0,decoder_trigger_i_40_n_0,decoder_trigger_i_41_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 decoder_trigger_reg_i_6
       (.CI(decoder_trigger_reg_i_7_n_0),
        .CO({data5,decoder_trigger_reg_i_6_n_1,decoder_trigger_reg_i_6_n_2,decoder_trigger_reg_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({decoder_trigger_i_8_n_0,decoder_trigger_i_9_n_0,decoder_trigger_i_10_n_0,decoder_trigger_i_11_n_0}),
        .O(NLW_decoder_trigger_reg_i_6_O_UNCONNECTED[3:0]),
        .S({decoder_trigger_i_12_n_0,decoder_trigger_i_13_n_0,decoder_trigger_i_14_n_0,decoder_trigger_i_15_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 decoder_trigger_reg_i_7
       (.CI(decoder_trigger_reg_i_16_n_0),
        .CO({decoder_trigger_reg_i_7_n_0,decoder_trigger_reg_i_7_n_1,decoder_trigger_reg_i_7_n_2,decoder_trigger_reg_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({decoder_trigger_i_17_n_0,decoder_trigger_i_18_n_0,decoder_trigger_i_19_n_0,decoder_trigger_i_20_n_0}),
        .O(NLW_decoder_trigger_reg_i_7_O_UNCONNECTED[3:0]),
        .S({decoder_trigger_i_21_n_0,decoder_trigger_i_22_n_0,decoder_trigger_i_23_n_0,decoder_trigger_i_24_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    instr_add_i_1
       (.I0(instr_and_i_2_n_0),
        .I1(is_alu_reg_reg),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(instr_add0));
  FDRE instr_add_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_add0),
        .Q(instr_add),
        .R(pcpi_mul_n_24));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    instr_addi_i_1
       (.I0(is_alu_reg_imm),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(instr_addi0));
  FDRE instr_addi_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_addi0),
        .Q(instr_addi),
        .R(pcpi_mul_n_24));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    instr_and_i_1
       (.I0(instr_and_i_2_n_0),
        .I1(is_alu_reg_reg),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(instr_and0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    instr_and_i_2
       (.I0(\mem_rdata_q_reg_n_0_[30] ),
        .I1(\mem_rdata_q_reg_n_0_[26] ),
        .I2(\mem_rdata_q_reg_n_0_[25] ),
        .I3(\mem_rdata_q_reg_n_0_[27] ),
        .I4(\mem_rdata_q_reg_n_0_[31] ),
        .I5(instr_rdinstr_i_3_n_0),
        .O(instr_and_i_2_n_0));
  FDRE instr_and_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_and0),
        .Q(instr_and),
        .R(pcpi_mul_n_24));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    instr_andi_i_1
       (.I0(is_alu_reg_imm),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(instr_andi0));
  FDRE instr_andi_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_andi0),
        .Q(instr_andi),
        .R(pcpi_mul_n_24));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h80888000)) 
    instr_auipc_i_1
       (.I0(instr_auipc_i_2_n_0),
        .I1(instr_auipc_i_3_n_0),
        .I2(\mem_rdata_q_reg_n_0_[2] ),
        .I3(pcpi_mul_n_31),
        .I4(mem_axi_rdata[2]),
        .O(instr_auipc_i_1_n_0));
  LUT6 #(
    .INIT(64'h8A800A0080800000)) 
    instr_auipc_i_2
       (.I0(\mem_rdata_q[4]_i_1_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[0] ),
        .I2(pcpi_mul_n_31),
        .I3(mem_axi_rdata[0]),
        .I4(\mem_rdata_q_reg_n_0_[1] ),
        .I5(mem_axi_rdata[1]),
        .O(instr_auipc_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000101000051015)) 
    instr_auipc_i_3
       (.I0(\mem_rdata_q[5]_i_1_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[3] ),
        .I2(pcpi_mul_n_31),
        .I3(mem_axi_rdata[3]),
        .I4(\mem_rdata_q_reg_n_0_[6] ),
        .I5(mem_axi_rdata[6]),
        .O(instr_auipc_i_3_n_0));
  FDRE instr_auipc_reg
       (.C(clk),
        .CE(instr_lui0),
        .D(instr_auipc_i_1_n_0),
        .Q(instr_auipc),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    instr_beq_i_1
       (.I0(is_beq_bne_blt_bge_bltu_bgeu),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(instr_beq0));
  FDRE instr_beq_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_beq0),
        .Q(instr_beq),
        .R(pcpi_mul_n_24));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    instr_bge_i_1
       (.I0(p_0_in[2]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(is_beq_bne_blt_bge_bltu_bgeu),
        .O(instr_bge_i_1_n_0));
  FDRE instr_bge_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_bge_i_1_n_0),
        .Q(instr_bge),
        .R(pcpi_mul_n_24));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    instr_bgeu_i_1
       (.I0(is_beq_bne_blt_bge_bltu_bgeu),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(instr_bgeu0));
  FDRE instr_bgeu_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_bgeu0),
        .Q(instr_bgeu),
        .R(pcpi_mul_n_24));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    instr_blt_i_1
       (.I0(is_beq_bne_blt_bge_bltu_bgeu),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .O(instr_blt0));
  FDRE instr_blt_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_blt0),
        .Q(instr_blt),
        .R(pcpi_mul_n_24));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    instr_bltu_i_1
       (.I0(is_beq_bne_blt_bge_bltu_bgeu),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .O(instr_bltu0));
  FDRE instr_bltu_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_bltu0),
        .Q(instr_bltu),
        .R(pcpi_mul_n_24));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    instr_bne_i_1
       (.I0(is_beq_bne_blt_bge_bltu_bgeu),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .O(instr_bne0));
  FDRE instr_bne_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_bne0),
        .Q(instr_bne),
        .R(pcpi_mul_n_24));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    instr_ecall_ebreak_i_1
       (.I0(instr_ecall_ebreak_i_2_n_0),
        .I1(\mem_rdata_q_reg_n_0_[17] ),
        .I2(\mem_rdata_q_reg_n_0_[16] ),
        .I3(\mem_rdata_q_reg_n_0_[19] ),
        .I4(\mem_rdata_q_reg_n_0_[18] ),
        .I5(instr_ecall_ebreak_i_3_n_0),
        .O(instr_ecall_ebreak0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    instr_ecall_ebreak_i_2
       (.I0(\mem_rdata_q_reg_n_0_[25] ),
        .I1(\mem_rdata_q_reg_n_0_[24] ),
        .I2(\mem_rdata_q_reg_n_0_[27] ),
        .I3(\mem_rdata_q_reg_n_0_[26] ),
        .O(instr_ecall_ebreak_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    instr_ecall_ebreak_i_3
       (.I0(instr_rdcycleh_i_5_n_0),
        .I1(\mem_rdata_q_reg_n_0_[9] ),
        .I2(\mem_rdata_q_reg_n_0_[31] ),
        .I3(\mem_rdata_q_reg_n_0_[30] ),
        .I4(instr_ecall_ebreak_i_4_n_0),
        .I5(instr_ecall_ebreak_i_5_n_0),
        .O(instr_ecall_ebreak_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    instr_ecall_ebreak_i_4
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .O(instr_ecall_ebreak_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    instr_ecall_ebreak_i_5
       (.I0(instr_rdcycleh_i_6_n_0),
        .I1(instr_rdinstr_i_3_n_0),
        .I2(\mem_rdata_q_reg_n_0_[11] ),
        .I3(\mem_rdata_q_reg_n_0_[7] ),
        .I4(\mem_rdata_q_reg_n_0_[10] ),
        .I5(\mem_rdata_q_reg_n_0_[8] ),
        .O(instr_ecall_ebreak_i_5_n_0));
  FDRE instr_ecall_ebreak_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_ecall_ebreak0),
        .Q(instr_ecall_ebreak),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    instr_jal_i_1
       (.I0(mem_do_rinst_reg_n_0),
        .I1(pcpi_mul_n_27),
        .O(instr_lui0));
  LUT6 #(
    .INIT(64'h8A800A0080800000)) 
    instr_jal_i_2
       (.I0(instr_jal_i_4_n_0),
        .I1(\mem_rdata_q_reg_n_0_[3] ),
        .I2(pcpi_mul_n_31),
        .I3(mem_axi_rdata[3]),
        .I4(\mem_rdata_q_reg_n_0_[2] ),
        .I5(mem_axi_rdata[2]),
        .O(instr_jal_i_2_n_0));
  LUT6 #(
    .INIT(64'h888AAAAA88800000)) 
    instr_jal_i_4
       (.I0(instr_jalr_i_2_n_0),
        .I1(mem_axi_rdata[5]),
        .I2(mem_axi_bvalid),
        .I3(mem_axi_rvalid),
        .I4(mem_valid),
        .I5(\mem_rdata_q_reg_n_0_[5] ),
        .O(instr_jal_i_4_n_0));
  FDRE instr_jal_reg
       (.C(clk),
        .CE(instr_lui0),
        .D(instr_jal_i_2_n_0),
        .Q(instr_jal),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00020000)) 
    instr_jalr_i_1
       (.I0(instr_jalr_i_2_n_0),
        .I1(\mem_rdata_q[13]_i_1_n_0 ),
        .I2(\mem_rdata_q[12]_i_1_n_0 ),
        .I3(\mem_rdata_q[14]_i_1_n_0 ),
        .I4(instr_jalr_i_3_n_0),
        .O(instr_jalr0));
  LUT6 #(
    .INIT(64'h000080800A008A80)) 
    instr_jalr_i_2
       (.I0(instr_lui_i_3_n_0),
        .I1(\mem_rdata_q_reg_n_0_[6] ),
        .I2(pcpi_mul_n_31),
        .I3(mem_axi_rdata[6]),
        .I4(\mem_rdata_q_reg_n_0_[4] ),
        .I5(mem_axi_rdata[4]),
        .O(instr_jalr_i_2_n_0));
  LUT6 #(
    .INIT(64'h00C0000000C0A0A0)) 
    instr_jalr_i_3
       (.I0(mem_axi_rdata[2]),
        .I1(\mem_rdata_q_reg_n_0_[2] ),
        .I2(\mem_rdata_q[5]_i_1_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[3] ),
        .I4(pcpi_mul_n_31),
        .I5(mem_axi_rdata[3]),
        .O(instr_jalr_i_3_n_0));
  FDRE instr_jalr_reg
       (.C(clk),
        .CE(instr_lui0),
        .D(instr_jalr0),
        .Q(instr_jalr),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    instr_lb_i_1
       (.I0(p_0_in[2]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .O(instr_lb_i_1_n_0));
  FDRE instr_lb_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_lb_i_1_n_0),
        .Q(instr_lb),
        .R(instr_lhu_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h04)) 
    instr_lbu_i_1
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .O(instr_lbu_i_1_n_0));
  FDRE instr_lbu_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_lbu_i_1_n_0),
        .Q(instr_lbu),
        .R(instr_lhu_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h02)) 
    instr_lh_i_1
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .O(instr_lh_i_1_n_0));
  FDRE instr_lh_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_lh_i_1_n_0),
        .Q(instr_lh),
        .R(instr_lhu_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    instr_lhu_i_1
       (.I0(decoder_pseudo_trigger_reg_n_0),
        .I1(decoder_trigger_reg_n_0),
        .I2(is_lb_lh_lw_lbu_lhu),
        .O(instr_lhu_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h40)) 
    instr_lhu_i_2
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .O(instr_lhu_i_2_n_0));
  FDRE instr_lhu_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_lhu_i_2_n_0),
        .Q(instr_lhu),
        .R(instr_lhu_i_1_n_0));
  LUT6 #(
    .INIT(64'h1D00000000000000)) 
    instr_lui_i_1
       (.I0(mem_axi_rdata[3]),
        .I1(pcpi_mul_n_31),
        .I2(\mem_rdata_q_reg_n_0_[3] ),
        .I3(\mem_rdata_q[5]_i_1_n_0 ),
        .I4(\mem_rdata_q[2]_i_1_n_0 ),
        .I5(instr_lui_i_2_n_0),
        .O(instr_lui_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000A0888800A0)) 
    instr_lui_i_2
       (.I0(instr_lui_i_3_n_0),
        .I1(\mem_rdata_q_reg_n_0_[4] ),
        .I2(mem_axi_rdata[4]),
        .I3(mem_axi_rdata[6]),
        .I4(pcpi_mul_n_31),
        .I5(\mem_rdata_q_reg_n_0_[6] ),
        .O(instr_lui_i_2_n_0));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    instr_lui_i_3
       (.I0(mem_axi_rdata[1]),
        .I1(\mem_rdata_q_reg_n_0_[1] ),
        .I2(mem_axi_rdata[0]),
        .I3(pcpi_mul_n_31),
        .I4(\mem_rdata_q_reg_n_0_[0] ),
        .O(instr_lui_i_3_n_0));
  FDRE instr_lui_reg
       (.C(clk),
        .CE(instr_lui0),
        .D(instr_lui_i_1_n_0),
        .Q(instr_lui),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h02)) 
    instr_lw_i_1
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .O(instr_lw_i_1_n_0));
  FDRE instr_lw_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_lw_i_1_n_0),
        .Q(instr_lw),
        .R(instr_lhu_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    instr_or_i_1
       (.I0(instr_and_i_2_n_0),
        .I1(is_alu_reg_reg),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(instr_or0));
  FDRE instr_or_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_or0),
        .Q(instr_or),
        .R(pcpi_mul_n_24));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    instr_ori_i_1
       (.I0(is_alu_reg_imm),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .O(instr_ori0));
  FDRE instr_ori_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_ori0),
        .Q(instr_ori),
        .R(pcpi_mul_n_24));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    instr_rdcycle_i_1
       (.I0(instr_rdcycle_i_2_n_0),
        .I1(\mem_rdata_q_reg_n_0_[30] ),
        .I2(\mem_rdata_q_reg_n_0_[31] ),
        .I3(p_0_in[1]),
        .I4(instr_rdcycleh_i_5_n_0),
        .I5(instr_rdcycle_i_3_n_0),
        .O(instr_rdcycle0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'hE)) 
    instr_rdcycle_i_2
       (.I0(p_0_in[2]),
        .I1(p_0_in[0]),
        .O(instr_rdcycle_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    instr_rdcycle_i_3
       (.I0(\mem_rdata_q_reg_n_0_[26] ),
        .I1(\mem_rdata_q_reg_n_0_[27] ),
        .I2(\mem_rdata_q_reg_n_0_[24] ),
        .I3(\mem_rdata_q_reg_n_0_[25] ),
        .I4(instr_rdinstrh_i_2_n_0),
        .I5(instr_rdcycleh_i_6_n_0),
        .O(instr_rdcycle_i_3_n_0));
  FDRE instr_rdcycle_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_rdcycle0),
        .Q(instr_rdcycle),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    instr_rdcycleh_i_1
       (.I0(instr_rdcycleh_i_2_n_0),
        .I1(instr_rdcycleh_i_3_n_0),
        .I2(\mem_rdata_q_reg_n_0_[27] ),
        .I3(instr_rdcycleh_i_4_n_0),
        .I4(instr_rdcycleh_i_5_n_0),
        .I5(instr_rdcycleh_i_6_n_0),
        .O(instr_rdcycleh0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h08)) 
    instr_rdcycleh_i_2
       (.I0(instr_rdinstrh_i_2_n_0),
        .I1(\mem_rdata_q_reg_n_0_[30] ),
        .I2(p_0_in[0]),
        .O(instr_rdcycleh_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    instr_rdcycleh_i_3
       (.I0(\mem_rdata_q_reg_n_0_[25] ),
        .I1(\mem_rdata_q_reg_n_0_[24] ),
        .I2(\mem_rdata_q_reg_n_0_[26] ),
        .I3(p_0_in[2]),
        .O(instr_rdcycleh_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h7)) 
    instr_rdcycleh_i_4
       (.I0(\mem_rdata_q_reg_n_0_[31] ),
        .I1(p_0_in[1]),
        .O(instr_rdcycleh_i_4_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    instr_rdcycleh_i_5
       (.I0(\mem_rdata_q_reg_n_0_[23] ),
        .I1(\mem_rdata_q_reg_n_0_[22] ),
        .I2(\mem_rdata_q_reg_n_0_[21] ),
        .I3(\mem_rdata_q_reg_n_0_[15] ),
        .O(instr_rdcycleh_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    instr_rdcycleh_i_6
       (.I0(\mem_rdata_q_reg_n_0_[5] ),
        .I1(\mem_rdata_q_reg_n_0_[2] ),
        .I2(\mem_rdata_q_reg_n_0_[4] ),
        .I3(instr_rdcycleh_i_7_n_0),
        .O(instr_rdcycleh_i_6_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    instr_rdcycleh_i_7
       (.I0(\mem_rdata_q_reg_n_0_[1] ),
        .I1(\mem_rdata_q_reg_n_0_[0] ),
        .I2(\mem_rdata_q_reg_n_0_[6] ),
        .I3(\mem_rdata_q_reg_n_0_[3] ),
        .O(instr_rdcycleh_i_7_n_0));
  FDRE instr_rdcycleh_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_rdcycleh0),
        .Q(instr_rdcycleh),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    instr_rdinstr_i_1
       (.I0(instr_rdinstrh_i_4_n_0),
        .I1(instr_rdinstr_i_2_n_0),
        .I2(instr_rdinstr_i_3_n_0),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(instr_rdinstr_i_4_n_0),
        .O(instr_rdinstr0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    instr_rdinstr_i_2
       (.I0(\mem_rdata_q_reg_n_0_[30] ),
        .I1(\mem_rdata_q_reg_n_0_[20] ),
        .I2(\mem_rdata_q_reg_n_0_[21] ),
        .I3(\mem_rdata_q_reg_n_0_[15] ),
        .O(instr_rdinstr_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h1)) 
    instr_rdinstr_i_3
       (.I0(\mem_rdata_q_reg_n_0_[28] ),
        .I1(\mem_rdata_q_reg_n_0_[29] ),
        .O(instr_rdinstr_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    instr_rdinstr_i_4
       (.I0(\mem_rdata_q_reg_n_0_[18] ),
        .I1(\mem_rdata_q_reg_n_0_[19] ),
        .I2(\mem_rdata_q_reg_n_0_[16] ),
        .I3(\mem_rdata_q_reg_n_0_[17] ),
        .I4(instr_ecall_ebreak_i_2_n_0),
        .O(instr_rdinstr_i_4_n_0));
  FDRE instr_rdinstr_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_rdinstr0),
        .Q(instr_rdinstr),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    instr_rdinstrh_i_1
       (.I0(p_0_in[0]),
        .I1(\mem_rdata_q_reg_n_0_[30] ),
        .I2(instr_rdinstrh_i_2_n_0),
        .I3(instr_rdinstrh_i_3_n_0),
        .I4(instr_rdinstrh_i_4_n_0),
        .O(instr_rdinstrh0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    instr_rdinstrh_i_2
       (.I0(\mem_rdata_q_reg_n_0_[29] ),
        .I1(\mem_rdata_q_reg_n_0_[28] ),
        .I2(\mem_rdata_q_reg_n_0_[18] ),
        .I3(\mem_rdata_q_reg_n_0_[19] ),
        .I4(\mem_rdata_q_reg_n_0_[16] ),
        .I5(\mem_rdata_q_reg_n_0_[17] ),
        .O(instr_rdinstrh_i_2_n_0));
  LUT5 #(
    .INIT(32'h00100000)) 
    instr_rdinstrh_i_3
       (.I0(instr_rdcycleh_i_3_n_0),
        .I1(\mem_rdata_q_reg_n_0_[15] ),
        .I2(\mem_rdata_q_reg_n_0_[27] ),
        .I3(\mem_rdata_q_reg_n_0_[20] ),
        .I4(\mem_rdata_q_reg_n_0_[21] ),
        .O(instr_rdinstrh_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    instr_rdinstrh_i_4
       (.I0(instr_rdcycleh_i_6_n_0),
        .I1(\mem_rdata_q_reg_n_0_[31] ),
        .I2(p_0_in[1]),
        .I3(\mem_rdata_q_reg_n_0_[22] ),
        .I4(\mem_rdata_q_reg_n_0_[23] ),
        .O(instr_rdinstrh_i_4_n_0));
  FDRE instr_rdinstrh_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_rdinstrh0),
        .Q(instr_rdinstrh),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    instr_sb_i_1
       (.I0(is_sb_sh_sw),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(instr_sb0));
  FDRE instr_sb_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sb0),
        .Q(instr_sb),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    instr_sh_i_1
       (.I0(is_sb_sh_sw),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .O(instr_sh0));
  FDRE instr_sh_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sh0),
        .Q(instr_sh),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    instr_sll_i_1
       (.I0(is_alu_reg_reg),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(instr_and_i_2_n_0),
        .O(instr_sll0));
  FDRE instr_sll_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sll0),
        .Q(instr_sll),
        .R(pcpi_mul_n_24));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    instr_slli_i_1
       (.I0(is_alu_reg_imm),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(instr_and_i_2_n_0),
        .O(instr_slli0));
  FDRE instr_slli_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_slli0),
        .Q(instr_slli),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    instr_slt_i_1
       (.I0(instr_and_i_2_n_0),
        .I1(is_alu_reg_reg),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .O(instr_slt0));
  FDRE instr_slt_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_slt0),
        .Q(instr_slt),
        .R(pcpi_mul_n_24));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    instr_slti_i_1
       (.I0(is_alu_reg_imm),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .O(instr_slti0));
  FDRE instr_slti_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_slti0),
        .Q(instr_slti),
        .R(pcpi_mul_n_24));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    instr_sltiu_i_1
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(is_alu_reg_imm),
        .O(instr_sltiu_i_1_n_0));
  FDRE instr_sltiu_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sltiu_i_1_n_0),
        .Q(instr_sltiu),
        .R(pcpi_mul_n_24));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    instr_sltu_i_1
       (.I0(instr_and_i_2_n_0),
        .I1(is_alu_reg_reg),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .O(instr_sltu0));
  FDRE instr_sltu_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sltu0),
        .Q(instr_sltu),
        .R(pcpi_mul_n_24));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    instr_sra_i_1
       (.I0(is_alu_reg_reg),
        .I1(instr_sra_i_2_n_0),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(instr_sra_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    instr_sra_i_2
       (.I0(\mem_rdata_q_reg_n_0_[25] ),
        .I1(\mem_rdata_q_reg_n_0_[30] ),
        .I2(\mem_rdata_q_reg_n_0_[26] ),
        .I3(\mem_rdata_q_reg_n_0_[27] ),
        .I4(instr_rdinstr_i_3_n_0),
        .I5(\mem_rdata_q_reg_n_0_[31] ),
        .O(instr_sra_i_2_n_0));
  FDRE instr_sra_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sra_i_1_n_0),
        .Q(instr_sra),
        .R(pcpi_mul_n_24));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    instr_srai_i_1
       (.I0(instr_sra_i_2_n_0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(is_alu_reg_imm),
        .O(instr_srai0));
  FDRE instr_srai_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_srai0),
        .Q(instr_srai),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    instr_srl_i_1
       (.I0(instr_and_i_2_n_0),
        .I1(is_alu_reg_reg),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(instr_srl_i_1_n_0));
  FDRE instr_srl_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_srl_i_1_n_0),
        .Q(instr_srl),
        .R(pcpi_mul_n_24));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    instr_srli_i_1
       (.I0(instr_and_i_2_n_0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(is_alu_reg_imm),
        .O(instr_srli0));
  FDRE instr_srli_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_srli0),
        .Q(instr_srli),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    instr_sub_i_1
       (.I0(is_alu_reg_reg),
        .I1(instr_sra_i_2_n_0),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(instr_sub0));
  FDRE instr_sub_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sub0),
        .Q(instr_sub),
        .R(pcpi_mul_n_24));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    instr_sw_i_1
       (.I0(is_sb_sh_sw),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .O(instr_sw0));
  FDRE instr_sw_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sw0),
        .Q(instr_sw),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    instr_xor_i_1
       (.I0(instr_and_i_2_n_0),
        .I1(is_alu_reg_reg),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(instr_xor0));
  FDRE instr_xor_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_xor0),
        .Q(instr_xor),
        .R(pcpi_mul_n_24));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    instr_xori_i_1
       (.I0(is_alu_reg_imm),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .O(instr_xori0));
  FDRE instr_xori_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_xori0),
        .Q(instr_xori),
        .R(pcpi_mul_n_24));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h08000888)) 
    is_alu_reg_imm_i_1
       (.I0(instr_auipc_i_2_n_0),
        .I1(instr_auipc_i_3_n_0),
        .I2(\mem_rdata_q_reg_n_0_[2] ),
        .I3(pcpi_mul_n_31),
        .I4(mem_axi_rdata[2]),
        .O(is_alu_reg_imm_i_1_n_0));
  FDRE is_alu_reg_imm_reg
       (.C(clk),
        .CE(instr_lui0),
        .D(is_alu_reg_imm_i_1_n_0),
        .Q(is_alu_reg_imm),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000047000000)) 
    is_alu_reg_reg_i_1
       (.I0(\mem_rdata_q_reg_n_0_[6] ),
        .I1(pcpi_mul_n_31),
        .I2(mem_axi_rdata[6]),
        .I3(instr_auipc_i_2_n_0),
        .I4(\mem_rdata_q[5]_i_1_n_0 ),
        .I5(is_alu_reg_reg_i_2_n_0),
        .O(is_alu_reg_reg_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    is_alu_reg_reg_i_2
       (.I0(mem_axi_rdata[2]),
        .I1(\mem_rdata_q_reg_n_0_[2] ),
        .I2(mem_axi_rdata[3]),
        .I3(pcpi_mul_n_31),
        .I4(\mem_rdata_q_reg_n_0_[3] ),
        .O(is_alu_reg_reg_i_2_n_0));
  FDRE is_alu_reg_reg_reg
       (.C(clk),
        .CE(instr_lui0),
        .D(is_alu_reg_reg_i_1_n_0),
        .Q(is_alu_reg_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7777F77700008000)) 
    is_beq_bne_blt_bge_bltu_bgeu_i_1
       (.I0(mem_do_rinst_reg_n_0),
        .I1(pcpi_mul_n_27),
        .I2(\mem_rdata_q[5]_i_1_n_0 ),
        .I3(instr_jalr_i_2_n_0),
        .I4(is_alu_reg_reg_i_2_n_0),
        .I5(is_beq_bne_blt_bge_bltu_bgeu),
        .O(is_beq_bne_blt_bge_bltu_bgeu_i_1_n_0));
  FDRE is_beq_bne_blt_bge_bltu_bgeu_reg
       (.C(clk),
        .CE(1'b1),
        .D(is_beq_bne_blt_bge_bltu_bgeu_i_1_n_0),
        .Q(is_beq_bne_blt_bge_bltu_bgeu),
        .R(pcpi_mul_n_24));
  LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
    is_compare_i_1
       (.I0(instr_sltiu),
        .I1(instr_slti),
        .I2(is_beq_bne_blt_bge_bltu_bgeu),
        .I3(is_compare_i_2_n_0),
        .I4(resetn),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub0),
        .O(is_compare_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'hE)) 
    is_compare_i_2
       (.I0(instr_slt),
        .I1(instr_sltu),
        .O(is_compare_i_2_n_0));
  FDRE is_compare_reg
       (.C(clk),
        .CE(1'b1),
        .D(is_compare_i_1_n_0),
        .Q(is_compare),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hFBAA)) 
    is_jalr_addi_slti_sltiu_xori_ori_andi_i_1
       (.I0(instr_jalr),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(is_alu_reg_imm),
        .O(is_jalr_addi_slti_sltiu_xori_ori_andi0));
  FDRE is_jalr_addi_slti_sltiu_xori_ori_andi_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(is_jalr_addi_slti_sltiu_xori_ori_andi0),
        .Q(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000540057FF)) 
    is_lb_lh_lw_lbu_lhu_i_1
       (.I0(mem_axi_rdata[5]),
        .I1(mem_axi_bvalid),
        .I2(mem_axi_rvalid),
        .I3(mem_valid),
        .I4(\mem_rdata_q_reg_n_0_[5] ),
        .I5(is_sb_sh_sw_i_2_n_0),
        .O(is_lb_lh_lw_lbu_lhu_i_1_n_0));
  FDRE is_lb_lh_lw_lbu_lhu_reg
       (.C(clk),
        .CE(instr_lui0),
        .D(is_lb_lh_lw_lbu_lhu_i_1_n_0),
        .Q(is_lb_lh_lw_lbu_lhu),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    is_lbu_lhu_lw_i_1
       (.I0(instr_lw),
        .I1(instr_lbu),
        .I2(instr_lhu),
        .O(is_lbu_lhu_lw_i_1_n_0));
  FDRE is_lbu_lhu_lw_reg
       (.C(clk),
        .CE(1'b1),
        .D(is_lbu_lhu_lw_i_1_n_0),
        .Q(is_lbu_lhu_lw),
        .R(1'b0));
  FDRE is_lui_auipc_jal_jalr_addi_add_sub_reg
       (.C(clk),
        .CE(1'b1),
        .D(is_lui_auipc_jal_jalr_addi_add_sub_reg_0),
        .Q(is_lui_auipc_jal_jalr_addi_add_sub),
        .R(1'b0));
  FDRE is_lui_auipc_jal_reg
       (.C(clk),
        .CE(1'b1),
        .D(instr_jal_reg_0),
        .Q(is_lui_auipc_jal),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000ABFFA800)) 
    is_sb_sh_sw_i_1
       (.I0(mem_axi_rdata[5]),
        .I1(mem_axi_bvalid),
        .I2(mem_axi_rvalid),
        .I3(mem_valid),
        .I4(\mem_rdata_q_reg_n_0_[5] ),
        .I5(is_sb_sh_sw_i_2_n_0),
        .O(is_sb_sh_sw_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFD5D)) 
    is_sb_sh_sw_i_2
       (.I0(instr_lui_i_3_n_0),
        .I1(mem_axi_rdata[4]),
        .I2(pcpi_mul_n_31),
        .I3(\mem_rdata_q_reg_n_0_[4] ),
        .I4(\mem_rdata_q[6]_i_1_n_0 ),
        .I5(is_alu_reg_reg_i_2_n_0),
        .O(is_sb_sh_sw_i_2_n_0));
  FDRE is_sb_sh_sw_reg
       (.C(clk),
        .CE(instr_lui0),
        .D(is_sb_sh_sw_i_1_n_0),
        .Q(is_sb_sh_sw),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000800000008800)) 
    is_sll_srl_sra_i_1
       (.I0(is_alu_reg_reg),
        .I1(is_slli_srli_srai_i_2_n_0),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\mem_rdata_q_reg_n_0_[30] ),
        .O(is_sll_srl_sra0));
  FDRE is_sll_srl_sra_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(is_sll_srl_sra0),
        .Q(is_sll_srl_sra),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000800000008800)) 
    is_slli_srli_srai_i_1
       (.I0(is_alu_reg_imm),
        .I1(is_slli_srli_srai_i_2_n_0),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\mem_rdata_q_reg_n_0_[30] ),
        .O(is_slli_srli_srai0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_slli_srli_srai_i_2
       (.I0(\mem_rdata_q_reg_n_0_[29] ),
        .I1(\mem_rdata_q_reg_n_0_[28] ),
        .I2(\mem_rdata_q_reg_n_0_[31] ),
        .I3(\mem_rdata_q_reg_n_0_[27] ),
        .I4(\mem_rdata_q_reg_n_0_[25] ),
        .I5(\mem_rdata_q_reg_n_0_[26] ),
        .O(is_slli_srli_srai_i_2_n_0));
  FDRE is_slli_srli_srai_reg
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(is_slli_srli_srai0),
        .Q(is_slli_srli_srai),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    is_slti_blt_slt_i_1
       (.I0(instr_slt),
        .I1(instr_slti),
        .I2(instr_blt),
        .O(is_slti_blt_slt_i_1_n_0));
  FDRE is_slti_blt_slt_reg
       (.C(clk),
        .CE(1'b1),
        .D(is_slti_blt_slt_i_1_n_0),
        .Q(is_slti_blt_slt),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    is_sltiu_bltu_sltu_i_1
       (.I0(instr_sltu),
        .I1(instr_sltiu),
        .I2(instr_bltu),
        .O(is_sltiu_bltu_sltu_i_1_n_0));
  FDRE is_sltiu_bltu_sltu_reg
       (.C(clk),
        .CE(1'b1),
        .D(is_sltiu_bltu_sltu_i_1_n_0),
        .Q(is_sltiu_bltu_sltu),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hFF770F77)) 
    latched_branch_i_2
       (.I0(decoder_trigger_reg_n_0),
        .I1(instr_jal),
        .I2(instr_jalr),
        .I3(Q[1]),
        .I4(is_beq_bne_blt_bge_bltu_bgeu),
        .O(decoder_trigger_reg_0));
  FDRE latched_branch_reg
       (.C(clk),
        .CE(1'b1),
        .D(latched_branch_reg_1),
        .Q(latched_branch_reg_0),
        .R(pcpi_mul_n_24));
  FDRE latched_is_lb_reg
       (.C(clk),
        .CE(1'b1),
        .D(latched_is_lb_reg_1),
        .Q(latched_is_lb_reg_0),
        .R(pcpi_mul_n_24));
  FDRE latched_is_lh_reg
       (.C(clk),
        .CE(1'b1),
        .D(latched_is_lh_reg_1),
        .Q(latched_is_lh_reg_0),
        .R(pcpi_mul_n_24));
  FDRE latched_is_lu_reg
       (.C(clk),
        .CE(1'b1),
        .D(latched_is_lu_reg_1),
        .Q(latched_is_lu_reg_0),
        .R(pcpi_mul_n_24));
  LUT4 #(
    .INIT(16'h0080)) 
    \latched_rd[4]_i_1 
       (.I0(Q[1]),
        .I1(is_beq_bne_blt_bge_bltu_bgeu),
        .I2(resetn),
        .I3(Q[2]),
        .O(\latched_rd[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA80)) 
    \latched_rd[4]_i_2 
       (.I0(resetn),
        .I1(is_beq_bne_blt_bge_bltu_bgeu),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\latched_rd[4]_i_2_n_0 ));
  FDRE \latched_rd_reg[0] 
       (.C(clk),
        .CE(\latched_rd[4]_i_2_n_0 ),
        .D(decoded_rd[0]),
        .Q(latched_rd[0]),
        .R(\latched_rd[4]_i_1_n_0 ));
  FDRE \latched_rd_reg[1] 
       (.C(clk),
        .CE(\latched_rd[4]_i_2_n_0 ),
        .D(decoded_rd[1]),
        .Q(latched_rd[1]),
        .R(\latched_rd[4]_i_1_n_0 ));
  FDRE \latched_rd_reg[2] 
       (.C(clk),
        .CE(\latched_rd[4]_i_2_n_0 ),
        .D(decoded_rd[2]),
        .Q(latched_rd[2]),
        .R(\latched_rd[4]_i_1_n_0 ));
  FDRE \latched_rd_reg[3] 
       (.C(clk),
        .CE(\latched_rd[4]_i_2_n_0 ),
        .D(decoded_rd[3]),
        .Q(latched_rd[3]),
        .R(\latched_rd[4]_i_1_n_0 ));
  FDRE \latched_rd_reg[4] 
       (.C(clk),
        .CE(\latched_rd[4]_i_2_n_0 ),
        .D(decoded_rd[4]),
        .Q(latched_rd[4]),
        .R(\latched_rd[4]_i_1_n_0 ));
  FDRE latched_stalu_reg
       (.C(clk),
        .CE(1'b1),
        .D(latched_stalu_reg_1),
        .Q(latched_stalu_reg_0),
        .R(pcpi_mul_n_24));
  LUT6 #(
    .INIT(64'hFFFE0002FFFFFFFF)) 
    latched_store_i_2
       (.I0(decoder_trigger_i_5_n_0),
        .I1(instr_beq),
        .I2(instr_bne),
        .I3(instr_bge),
        .I4(decoder_trigger_i_3_n_0),
        .I5(Q[1]),
        .O(instr_beq_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h1)) 
    latched_store_i_4
       (.I0(Q[1]),
        .I1(\cpu_state_reg_n_0_[2] ),
        .O(\cpu_state_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h1)) 
    latched_store_i_6
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(latched_store_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    latched_store_i_7
       (.I0(Q[1]),
        .I1(is_beq_bne_blt_bge_bltu_bgeu),
        .O(latched_store_i_7_n_0));
  FDRE latched_store_reg
       (.C(clk),
        .CE(1'b1),
        .D(latched_store_reg_1),
        .Q(latched_store_reg_0),
        .R(pcpi_mul_n_24));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[10]_i_1 
       (.I0(\reg_op1_reg[31]_0 [10]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[10] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[10] ),
        .O(\mem_addr[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[11]_i_1 
       (.I0(\reg_op1_reg[31]_0 [11]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[11] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[11] ),
        .O(\mem_addr[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[12]_i_1 
       (.I0(\reg_op1_reg[31]_0 [12]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[12] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[12] ),
        .O(\mem_addr[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[13]_i_1 
       (.I0(\reg_op1_reg[31]_0 [13]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[13] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[13] ),
        .O(\mem_addr[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[14]_i_1 
       (.I0(\reg_op1_reg[31]_0 [14]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[14] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[14] ),
        .O(\mem_addr[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[15]_i_1 
       (.I0(\reg_op1_reg[31]_0 [15]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[15] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[15] ),
        .O(\mem_addr[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[16]_i_1 
       (.I0(\reg_op1_reg[31]_0 [16]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[16] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[16] ),
        .O(\mem_addr[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[17]_i_1 
       (.I0(\reg_op1_reg[31]_0 [17]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[17] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[17] ),
        .O(\mem_addr[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[18]_i_1 
       (.I0(\reg_op1_reg[31]_0 [18]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[18] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[18] ),
        .O(\mem_addr[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[19]_i_1 
       (.I0(\reg_op1_reg[31]_0 [19]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[19] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[19] ),
        .O(\mem_addr[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[20]_i_1 
       (.I0(\reg_op1_reg[31]_0 [20]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[20] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[20] ),
        .O(\mem_addr[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[21]_i_1 
       (.I0(\reg_op1_reg[31]_0 [21]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[21] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[21] ),
        .O(\mem_addr[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[22]_i_1 
       (.I0(\reg_op1_reg[31]_0 [22]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[22] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[22] ),
        .O(\mem_addr[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[23]_i_1 
       (.I0(\reg_op1_reg[31]_0 [23]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[23] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[23] ),
        .O(\mem_addr[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[24]_i_1 
       (.I0(\reg_op1_reg[31]_0 [24]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[24] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[24] ),
        .O(\mem_addr[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[25]_i_1 
       (.I0(\reg_op1_reg[31]_0 [25]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[25] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[25] ),
        .O(\mem_addr[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[26]_i_1 
       (.I0(\reg_op1_reg[31]_0 [26]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[26] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[26] ),
        .O(\mem_addr[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[27]_i_1 
       (.I0(\reg_op1_reg[31]_0 [27]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[27] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[27] ),
        .O(\mem_addr[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[28]_i_1 
       (.I0(\reg_op1_reg[31]_0 [28]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[28] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[28] ),
        .O(\mem_addr[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[29]_i_1 
       (.I0(\reg_op1_reg[31]_0 [29]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[29] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[29] ),
        .O(\mem_addr[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[2]_i_1 
       (.I0(\reg_op1_reg[31]_0 [2]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[2] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[2] ),
        .O(\mem_addr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[30]_i_1 
       (.I0(\reg_op1_reg[31]_0 [30]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[30] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[30] ),
        .O(\mem_addr[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0202020002020202)) 
    \mem_addr[31]_i_1 
       (.I0(\mem_addr[31]_i_3_n_0 ),
        .I1(\mem_state_reg_n_0_[1] ),
        .I2(\mem_state_reg_n_0_[0] ),
        .I3(mem_do_wdata),
        .I4(mem_do_rdata),
        .I5(\mem_addr[31]_i_4_n_0 ),
        .O(\mem_addr[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[31]_i_2 
       (.I0(\reg_op1_reg[31]_0 [31]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[31] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[31] ),
        .O(\mem_addr[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mem_addr[31]_i_3 
       (.I0(resetn),
        .I1(trap_reg_0),
        .O(\mem_addr[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \mem_addr[31]_i_4 
       (.I0(mem_do_rinst_reg_n_0),
        .I1(mem_do_prefetch_reg_0),
        .O(\mem_addr[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mem_addr[31]_i_5 
       (.I0(latched_branch_reg_0),
        .I1(latched_store_reg_0),
        .O(\mem_addr[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[3]_i_1 
       (.I0(\reg_op1_reg[31]_0 [3]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[3] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[3] ),
        .O(\mem_addr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[4]_i_1 
       (.I0(\reg_op1_reg[31]_0 [4]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[4] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[4] ),
        .O(\mem_addr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[5]_i_1 
       (.I0(\reg_op1_reg[31]_0 [5]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[5] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[5] ),
        .O(\mem_addr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[6]_i_1 
       (.I0(\reg_op1_reg[31]_0 [6]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[6] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[6] ),
        .O(\mem_addr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[7]_i_1 
       (.I0(\reg_op1_reg[31]_0 [7]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[7] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[7] ),
        .O(\mem_addr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[8]_i_1 
       (.I0(\reg_op1_reg[31]_0 [8]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[8] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[8] ),
        .O(\mem_addr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \mem_addr[9]_i_1 
       (.I0(\reg_op1_reg[31]_0 [9]),
        .I1(mem_do_rinst_reg_n_0),
        .I2(mem_do_prefetch_reg_0),
        .I3(\reg_out_reg_n_0_[9] ),
        .I4(\mem_addr[31]_i_5_n_0 ),
        .I5(\reg_next_pc_reg_n_0_[9] ),
        .O(\mem_addr[9]_i_1_n_0 ));
  FDRE \mem_addr_reg[10] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[10]_i_1_n_0 ),
        .Q(mem_axi_awaddr[8]),
        .R(1'b0));
  FDRE \mem_addr_reg[11] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[11]_i_1_n_0 ),
        .Q(mem_axi_awaddr[9]),
        .R(1'b0));
  FDRE \mem_addr_reg[12] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[12]_i_1_n_0 ),
        .Q(mem_axi_awaddr[10]),
        .R(1'b0));
  FDRE \mem_addr_reg[13] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[13]_i_1_n_0 ),
        .Q(mem_axi_awaddr[11]),
        .R(1'b0));
  FDRE \mem_addr_reg[14] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[14]_i_1_n_0 ),
        .Q(mem_axi_awaddr[12]),
        .R(1'b0));
  FDRE \mem_addr_reg[15] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[15]_i_1_n_0 ),
        .Q(mem_axi_awaddr[13]),
        .R(1'b0));
  FDRE \mem_addr_reg[16] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[16]_i_1_n_0 ),
        .Q(mem_axi_awaddr[14]),
        .R(1'b0));
  FDRE \mem_addr_reg[17] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[17]_i_1_n_0 ),
        .Q(mem_axi_awaddr[15]),
        .R(1'b0));
  FDRE \mem_addr_reg[18] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[18]_i_1_n_0 ),
        .Q(mem_axi_awaddr[16]),
        .R(1'b0));
  FDRE \mem_addr_reg[19] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[19]_i_1_n_0 ),
        .Q(mem_axi_awaddr[17]),
        .R(1'b0));
  FDRE \mem_addr_reg[20] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[20]_i_1_n_0 ),
        .Q(mem_axi_awaddr[18]),
        .R(1'b0));
  FDRE \mem_addr_reg[21] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[21]_i_1_n_0 ),
        .Q(mem_axi_awaddr[19]),
        .R(1'b0));
  FDRE \mem_addr_reg[22] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[22]_i_1_n_0 ),
        .Q(mem_axi_awaddr[20]),
        .R(1'b0));
  FDRE \mem_addr_reg[23] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[23]_i_1_n_0 ),
        .Q(mem_axi_awaddr[21]),
        .R(1'b0));
  FDRE \mem_addr_reg[24] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[24]_i_1_n_0 ),
        .Q(mem_axi_awaddr[22]),
        .R(1'b0));
  FDRE \mem_addr_reg[25] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[25]_i_1_n_0 ),
        .Q(mem_axi_awaddr[23]),
        .R(1'b0));
  FDRE \mem_addr_reg[26] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[26]_i_1_n_0 ),
        .Q(mem_axi_awaddr[24]),
        .R(1'b0));
  FDRE \mem_addr_reg[27] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[27]_i_1_n_0 ),
        .Q(mem_axi_awaddr[25]),
        .R(1'b0));
  FDRE \mem_addr_reg[28] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[28]_i_1_n_0 ),
        .Q(mem_axi_awaddr[26]),
        .R(1'b0));
  FDRE \mem_addr_reg[29] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[29]_i_1_n_0 ),
        .Q(mem_axi_awaddr[27]),
        .R(1'b0));
  FDRE \mem_addr_reg[2] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[2]_i_1_n_0 ),
        .Q(mem_axi_awaddr[0]),
        .R(1'b0));
  FDRE \mem_addr_reg[30] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[30]_i_1_n_0 ),
        .Q(mem_axi_awaddr[28]),
        .R(1'b0));
  FDRE \mem_addr_reg[31] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[31]_i_2_n_0 ),
        .Q(mem_axi_awaddr[29]),
        .R(1'b0));
  FDRE \mem_addr_reg[3] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[3]_i_1_n_0 ),
        .Q(mem_axi_awaddr[1]),
        .R(1'b0));
  FDRE \mem_addr_reg[4] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[4]_i_1_n_0 ),
        .Q(mem_axi_awaddr[2]),
        .R(1'b0));
  FDRE \mem_addr_reg[5] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[5]_i_1_n_0 ),
        .Q(mem_axi_awaddr[3]),
        .R(1'b0));
  FDRE \mem_addr_reg[6] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[6]_i_1_n_0 ),
        .Q(mem_axi_awaddr[4]),
        .R(1'b0));
  FDRE \mem_addr_reg[7] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[7]_i_1_n_0 ),
        .Q(mem_axi_awaddr[5]),
        .R(1'b0));
  FDRE \mem_addr_reg[8] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[8]_i_1_n_0 ),
        .Q(mem_axi_awaddr[6]),
        .R(1'b0));
  FDRE \mem_addr_reg[9] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_addr[9]_i_1_n_0 ),
        .Q(mem_axi_awaddr[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    mem_axi_arvalid_INST_0
       (.I0(\mem_wstrb_reg[1]_0 ),
        .I1(\mem_wstrb_reg[0]_0 ),
        .I2(\mem_wstrb_reg[3]_0 ),
        .I3(\mem_wstrb_reg[2]_0 ),
        .I4(mem_valid),
        .I5(mem_axi_arvalid_0),
        .O(mem_axi_arvalid));
  LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
    mem_axi_awvalid_INST_0
       (.I0(\mem_wstrb_reg[1]_0 ),
        .I1(\mem_wstrb_reg[0]_0 ),
        .I2(\mem_wstrb_reg[3]_0 ),
        .I3(\mem_wstrb_reg[2]_0 ),
        .I4(mem_valid),
        .I5(ack_awvalid),
        .O(mem_axi_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    mem_axi_bready_INST_0
       (.I0(mem_valid),
        .I1(\mem_wstrb_reg[2]_0 ),
        .I2(\mem_wstrb_reg[3]_0 ),
        .I3(\mem_wstrb_reg[0]_0 ),
        .I4(\mem_wstrb_reg[1]_0 ),
        .O(mem_axi_bready));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    mem_axi_rready_INST_0
       (.I0(mem_valid),
        .I1(\mem_wstrb_reg[2]_0 ),
        .I2(\mem_wstrb_reg[3]_0 ),
        .I3(\mem_wstrb_reg[0]_0 ),
        .I4(\mem_wstrb_reg[1]_0 ),
        .O(mem_axi_rready));
  LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
    mem_axi_wvalid_INST_0
       (.I0(\mem_wstrb_reg[1]_0 ),
        .I1(\mem_wstrb_reg[0]_0 ),
        .I2(\mem_wstrb_reg[3]_0 ),
        .I3(\mem_wstrb_reg[2]_0 ),
        .I4(mem_valid),
        .I5(mem_axi_wvalid_0),
        .O(mem_axi_wvalid));
  LUT6 #(
    .INIT(64'h000000002AAAEAAA)) 
    mem_do_prefetch_i_1
       (.I0(mem_do_prefetch_reg_0),
        .I1(mem_do_prefetch_i_2_n_0),
        .I2(resetn),
        .I3(Q[2]),
        .I4(instr_jalr),
        .I5(mem_do_rinst0),
        .O(mem_do_prefetch_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    mem_do_prefetch_i_2
       (.I0(decoder_trigger_reg_n_0),
        .I1(instr_jal),
        .O(mem_do_prefetch_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h7)) 
    mem_do_prefetch_i_3
       (.I0(resetn),
        .I1(\mem_state_reg[0]_0 ),
        .O(mem_do_rinst0));
  FDRE mem_do_prefetch_reg
       (.C(clk),
        .CE(1'b1),
        .D(mem_do_prefetch_i_1_n_0),
        .Q(mem_do_prefetch_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    mem_do_rdata_i_2
       (.I0(\cpu_state_reg_n_0_[5] ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(\cpu_state_reg_n_0_[7] ),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\cpu_state_reg[5]_0 ));
  FDRE mem_do_rdata_reg
       (.C(clk),
        .CE(1'b1),
        .D(mem_do_rdata_reg_0),
        .Q(mem_do_rdata),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAA00000008)) 
    mem_do_rinst_i_10
       (.I0(resetn),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\reg_sh_reg_n_0_[0] ),
        .I3(pcpi_mul_n_82),
        .I4(\reg_sh_reg_n_0_[1] ),
        .I5(Q[2]),
        .O(mem_do_rinst_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h5504)) 
    mem_do_rinst_i_11
       (.I0(is_slli_srli_srai),
        .I1(is_sb_sh_sw),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(mem_do_prefetch_reg_0),
        .O(mem_do_rinst_i_11_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    mem_do_rinst_i_12
       (.I0(is_lui_auipc_jal),
        .I1(mem_do_prefetch_reg_0),
        .O(mem_do_rinst_i_12_n_0));
  LUT6 #(
    .INIT(64'h00000002FFFFFFFF)) 
    mem_do_rinst_i_13
       (.I0(pcpi_mul_n_0),
        .I1(pcpi_mul_n_1),
        .I2(pcpi_mul_n_2),
        .I3(pcpi_mul_n_3),
        .I4(mem_do_rinst_i_15_n_0),
        .I5(\cpu_state[3]_i_3_n_0 ),
        .O(mem_do_rinst_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    mem_do_rinst_i_14
       (.I0(mem_do_rinst_i_15_n_0),
        .I1(mem_do_rinst_i_16_n_0),
        .I2(pcpi_mul_n_90),
        .I3(pcpi_mul_n_94),
        .I4(instr_srl),
        .I5(instr_sra),
        .O(mem_do_rinst_i_14_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    mem_do_rinst_i_15
       (.I0(instr_jalr),
        .I1(instr_lui),
        .I2(instr_auipc),
        .I3(instr_jal),
        .O(mem_do_rinst_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'hE)) 
    mem_do_rinst_i_16
       (.I0(instr_rdinstrh),
        .I1(instr_rdcycle),
        .O(mem_do_rinst_i_16_n_0));
  LUT5 #(
    .INIT(32'hFF8F8888)) 
    mem_do_rinst_i_4
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(mem_do_prefetch_reg_0),
        .I2(decoder_trigger_reg_n_0),
        .I3(instr_jal),
        .I4(Q[2]),
        .O(mem_do_rinst_i_4_n_0));
  LUT6 #(
    .INIT(64'h0008880800000000)) 
    mem_do_rinst_i_5
       (.I0(resetn),
        .I1(is_beq_bne_blt_bge_bltu_bgeu),
        .I2(decoder_trigger_i_5_n_0),
        .I3(decoder_trigger_i_4_n_0),
        .I4(decoder_trigger_i_3_n_0),
        .I5(Q[1]),
        .O(mem_do_rinst_i_5_n_0));
  LUT6 #(
    .INIT(64'h55575555FFFFFFFF)) 
    mem_do_rinst_i_6
       (.I0(\cpu_state[3]_i_3_n_0 ),
        .I1(mem_do_rinst_i_14_n_0),
        .I2(pcpi_mul_n_2),
        .I3(pcpi_mul_n_1),
        .I4(pcpi_mul_n_0),
        .I5(pcpi_mul_n_87),
        .O(mem_do_rinst_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFFAAAAAAAA)) 
    mem_do_rinst_i_7
       (.I0(is_lui_auipc_jal),
        .I1(mem_do_rinst_i_14_n_0),
        .I2(pcpi_mul_n_2),
        .I3(pcpi_mul_n_1),
        .I4(pcpi_mul_n_0),
        .I5(is_lb_lh_lw_lbu_lhu),
        .O(mem_do_rinst_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h5545)) 
    mem_do_rinst_i_8
       (.I0(is_slli_srli_srai),
        .I1(is_sb_sh_sw),
        .I2(is_sll_srl_sra),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .O(mem_do_rinst_i_8_n_0));
  FDRE mem_do_rinst_reg
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_25),
        .Q(mem_do_rinst_reg_n_0),
        .R(1'b0));
  FDRE mem_do_wdata_reg
       (.C(clk),
        .CE(1'b1),
        .D(mem_do_wdata_reg_0),
        .Q(mem_do_wdata),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h54)) 
    mem_instr_i_1
       (.I0(mem_do_wdata),
        .I1(mem_do_prefetch_reg_0),
        .I2(mem_do_rinst_reg_n_0),
        .O(mem_instr_i_1_n_0));
  FDRE mem_instr_reg
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(mem_instr_i_1_n_0),
        .Q(mem_axi_arprot),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \mem_rdata_q[0]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[0] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[0]),
        .O(\mem_rdata_q[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \mem_rdata_q[12]_i_1 
       (.I0(p_0_in[0]),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[12]),
        .O(\mem_rdata_q[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \mem_rdata_q[13]_i_1 
       (.I0(p_0_in[1]),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[13]),
        .O(\mem_rdata_q[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \mem_rdata_q[14]_i_1 
       (.I0(p_0_in[2]),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[14]),
        .O(\mem_rdata_q[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \mem_rdata_q[1]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[1] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[1]),
        .O(\mem_rdata_q[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \mem_rdata_q[2]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[2] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[2]),
        .O(\mem_rdata_q[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \mem_rdata_q[31]_i_1 
       (.I0(mem_axi_bvalid),
        .I1(mem_axi_rvalid),
        .I2(mem_valid),
        .O(\mem_rdata_q[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \mem_rdata_q[3]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[3] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[3]),
        .O(\mem_rdata_q[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \mem_rdata_q[4]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[4] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[4]),
        .O(\mem_rdata_q[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \mem_rdata_q[5]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[5] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[5]),
        .O(\mem_rdata_q[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEA222A)) 
    \mem_rdata_q[6]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[6] ),
        .I1(mem_valid),
        .I2(mem_axi_rvalid),
        .I3(mem_axi_bvalid),
        .I4(mem_axi_rdata[6]),
        .O(\mem_rdata_q[6]_i_1_n_0 ));
  FDRE \mem_rdata_q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_rdata_q[0]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[10] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(mem_axi_rdata[10]),
        .Q(\mem_rdata_q_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[11] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(mem_axi_rdata[11]),
        .Q(\mem_rdata_q_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_rdata_q[12]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_rdata_q[13]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_rdata_q[14]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[15] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(mem_axi_rdata[15]),
        .Q(\mem_rdata_q_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[16] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(mem_axi_rdata[16]),
        .Q(\mem_rdata_q_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[17] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(mem_axi_rdata[17]),
        .Q(\mem_rdata_q_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[18] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(mem_axi_rdata[18]),
        .Q(\mem_rdata_q_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[19] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(mem_axi_rdata[19]),
        .Q(\mem_rdata_q_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_rdata_q[1]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[20] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(mem_axi_rdata[20]),
        .Q(\mem_rdata_q_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[21] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(mem_axi_rdata[21]),
        .Q(\mem_rdata_q_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[22] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(mem_axi_rdata[22]),
        .Q(\mem_rdata_q_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[23] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(mem_axi_rdata[23]),
        .Q(\mem_rdata_q_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[24] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(mem_axi_rdata[24]),
        .Q(\mem_rdata_q_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[25] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(mem_axi_rdata[25]),
        .Q(\mem_rdata_q_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[26] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(mem_axi_rdata[26]),
        .Q(\mem_rdata_q_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[27] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(mem_axi_rdata[27]),
        .Q(\mem_rdata_q_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[28] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(mem_axi_rdata[28]),
        .Q(\mem_rdata_q_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[29] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(mem_axi_rdata[29]),
        .Q(\mem_rdata_q_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_rdata_q[2]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[30] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(mem_axi_rdata[30]),
        .Q(\mem_rdata_q_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[31] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(mem_axi_rdata[31]),
        .Q(\mem_rdata_q_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_rdata_q[3]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_rdata_q[4]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_rdata_q[5]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_rdata_q[6]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[7] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(mem_axi_rdata[7]),
        .Q(\mem_rdata_q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[8] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(mem_axi_rdata[8]),
        .Q(\mem_rdata_q_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \mem_rdata_q_reg[9] 
       (.C(clk),
        .CE(\mem_rdata_q[31]_i_1_n_0 ),
        .D(mem_axi_rdata[9]),
        .Q(\mem_rdata_q_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0101FFFF000F0000)) 
    \mem_state[0]_i_1 
       (.I0(mem_do_rdata),
        .I1(mem_do_rinst_reg_n_0),
        .I2(\mem_state_reg_n_0_[1] ),
        .I3(mem_do_wdata),
        .I4(mem_state),
        .I5(\mem_state_reg_n_0_[0] ),
        .O(\mem_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF1F100000)) 
    \mem_state[1]_i_1 
       (.I0(mem_do_rdata),
        .I1(mem_do_rinst_reg_n_0),
        .I2(\mem_state_reg_n_0_[0] ),
        .I3(mem_do_wdata),
        .I4(mem_state),
        .I5(\mem_state_reg_n_0_[1] ),
        .O(\mem_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAAAAAAAAAAAA)) 
    \mem_state[1]_i_2 
       (.I0(mem_valid13_out),
        .I1(resetn),
        .I2(trap_reg_0),
        .I3(mem_do_rinst_reg_n_0),
        .I4(\mem_state_reg_n_0_[0] ),
        .I5(\mem_state_reg_n_0_[1] ),
        .O(mem_state));
  FDRE \mem_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_state[0]_i_1_n_0 ),
        .Q(\mem_state_reg_n_0_[0] ),
        .R(pcpi_mul_n_24));
  FDRE \mem_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_state[1]_i_1_n_0 ),
        .Q(\mem_state_reg_n_0_[1] ),
        .R(pcpi_mul_n_24));
  LUT6 #(
    .INIT(64'h7077700000000000)) 
    mem_valid_i_1
       (.I0(mem_ready),
        .I1(trap_reg_0),
        .I2(mem_valid_i_3_n_0),
        .I3(mem_valid13_out),
        .I4(mem_valid),
        .I5(resetn),
        .O(mem_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    mem_valid_i_2
       (.I0(mem_axi_bvalid),
        .I1(mem_axi_rvalid),
        .O(mem_ready));
  LUT6 #(
    .INIT(64'h1111111111111110)) 
    mem_valid_i_3
       (.I0(\mem_state_reg_n_0_[0] ),
        .I1(\mem_state_reg_n_0_[1] ),
        .I2(mem_do_wdata),
        .I3(mem_do_rdata),
        .I4(mem_do_rinst_reg_n_0),
        .I5(mem_do_prefetch_reg_0),
        .O(mem_valid_i_3_n_0));
  LUT6 #(
    .INIT(64'h4040404440444040)) 
    mem_valid_i_4
       (.I0(trap_reg_0),
        .I1(resetn),
        .I2(mem_valid_i_3_n_0),
        .I3(pcpi_mul_n_31),
        .I4(\mem_state_reg_n_0_[0] ),
        .I5(\mem_state_reg_n_0_[1] ),
        .O(mem_valid13_out));
  FDRE mem_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(mem_valid_i_1_n_0),
        .Q(mem_valid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[10]_i_1 
       (.I0(\reg_op2_reg[31]_0 [2]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg[31]_0 [10]),
        .O(\mem_wdata[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[11]_i_1 
       (.I0(\reg_op2_reg[31]_0 [3]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg[31]_0 [11]),
        .O(\mem_wdata[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[12]_i_1 
       (.I0(\reg_op2_reg[31]_0 [4]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg[31]_0 [12]),
        .O(\mem_wdata[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[13]_i_1 
       (.I0(\reg_op2_reg[31]_0 [5]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg[31]_0 [13]),
        .O(\mem_wdata[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[14]_i_1 
       (.I0(\reg_op2_reg[31]_0 [6]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg[31]_0 [14]),
        .O(\mem_wdata[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[15]_i_1 
       (.I0(\reg_op2_reg[31]_0 [7]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg[31]_0 [15]),
        .O(\mem_wdata[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hFE02)) 
    \mem_wdata[16]_i_1 
       (.I0(\reg_op2_reg[31]_0 [16]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\reg_op2_reg[31]_0 [0]),
        .O(\mem_wdata[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \mem_wdata[17]_i_1 
       (.I0(\reg_op2_reg[31]_0 [17]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\reg_op2_reg[31]_0 [1]),
        .O(\mem_wdata[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \mem_wdata[18]_i_1 
       (.I0(\reg_op2_reg[31]_0 [18]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\reg_op2_reg[31]_0 [2]),
        .O(\mem_wdata[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \mem_wdata[19]_i_1 
       (.I0(\reg_op2_reg[31]_0 [19]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\reg_op2_reg[31]_0 [3]),
        .O(\mem_wdata[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \mem_wdata[20]_i_1 
       (.I0(\reg_op2_reg[31]_0 [20]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\reg_op2_reg[31]_0 [4]),
        .O(\mem_wdata[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \mem_wdata[21]_i_1 
       (.I0(\reg_op2_reg[31]_0 [21]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\reg_op2_reg[31]_0 [5]),
        .O(\mem_wdata[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \mem_wdata[22]_i_1 
       (.I0(\reg_op2_reg[31]_0 [22]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\reg_op2_reg[31]_0 [6]),
        .O(\mem_wdata[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \mem_wdata[23]_i_1 
       (.I0(\reg_op2_reg[31]_0 [23]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\reg_op2_reg[31]_0 [7]),
        .O(\mem_wdata[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mem_wdata[24]_i_1 
       (.I0(\reg_op2_reg[31]_0 [0]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg[31]_0 [8]),
        .I3(\mem_wordsize_reg_n_0_[0] ),
        .I4(\reg_op2_reg[31]_0 [24]),
        .O(\mem_wdata[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mem_wdata[25]_i_1 
       (.I0(\reg_op2_reg[31]_0 [1]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg[31]_0 [9]),
        .I3(\mem_wordsize_reg_n_0_[0] ),
        .I4(\reg_op2_reg[31]_0 [25]),
        .O(\mem_wdata[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mem_wdata[26]_i_1 
       (.I0(\reg_op2_reg[31]_0 [2]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg[31]_0 [10]),
        .I3(\mem_wordsize_reg_n_0_[0] ),
        .I4(\reg_op2_reg[31]_0 [26]),
        .O(\mem_wdata[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mem_wdata[27]_i_1 
       (.I0(\reg_op2_reg[31]_0 [3]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg[31]_0 [11]),
        .I3(\mem_wordsize_reg_n_0_[0] ),
        .I4(\reg_op2_reg[31]_0 [27]),
        .O(\mem_wdata[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mem_wdata[28]_i_1 
       (.I0(\reg_op2_reg[31]_0 [4]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg[31]_0 [12]),
        .I3(\mem_wordsize_reg_n_0_[0] ),
        .I4(\reg_op2_reg[31]_0 [28]),
        .O(\mem_wdata[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mem_wdata[29]_i_1 
       (.I0(\reg_op2_reg[31]_0 [5]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg[31]_0 [13]),
        .I3(\mem_wordsize_reg_n_0_[0] ),
        .I4(\reg_op2_reg[31]_0 [29]),
        .O(\mem_wdata[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mem_wdata[30]_i_1 
       (.I0(\reg_op2_reg[31]_0 [6]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg[31]_0 [14]),
        .I3(\mem_wordsize_reg_n_0_[0] ),
        .I4(\reg_op2_reg[31]_0 [30]),
        .O(\mem_wdata[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \mem_wdata[31]_i_1 
       (.I0(trap_reg_0),
        .I1(resetn),
        .I2(mem_do_wdata),
        .I3(\mem_state_reg_n_0_[1] ),
        .I4(\mem_state_reg_n_0_[0] ),
        .O(\mem_wdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mem_wdata[31]_i_2 
       (.I0(\reg_op2_reg[31]_0 [7]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg[31]_0 [15]),
        .I3(\mem_wordsize_reg_n_0_[0] ),
        .I4(\reg_op2_reg[31]_0 [31]),
        .O(\mem_wdata[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[8]_i_1 
       (.I0(\reg_op2_reg[31]_0 [0]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg[31]_0 [8]),
        .O(\mem_wdata[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[9]_i_1 
       (.I0(\reg_op2_reg[31]_0 [1]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg[31]_0 [9]),
        .O(\mem_wdata[9]_i_1_n_0 ));
  FDRE \mem_wdata_reg[0] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\reg_op2_reg[31]_0 [0]),
        .Q(mem_axi_wdata[0]),
        .R(1'b0));
  FDRE \mem_wdata_reg[10] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[10]_i_1_n_0 ),
        .Q(mem_axi_wdata[10]),
        .R(1'b0));
  FDRE \mem_wdata_reg[11] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[11]_i_1_n_0 ),
        .Q(mem_axi_wdata[11]),
        .R(1'b0));
  FDRE \mem_wdata_reg[12] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[12]_i_1_n_0 ),
        .Q(mem_axi_wdata[12]),
        .R(1'b0));
  FDRE \mem_wdata_reg[13] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[13]_i_1_n_0 ),
        .Q(mem_axi_wdata[13]),
        .R(1'b0));
  FDRE \mem_wdata_reg[14] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[14]_i_1_n_0 ),
        .Q(mem_axi_wdata[14]),
        .R(1'b0));
  FDRE \mem_wdata_reg[15] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[15]_i_1_n_0 ),
        .Q(mem_axi_wdata[15]),
        .R(1'b0));
  FDRE \mem_wdata_reg[16] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[16]_i_1_n_0 ),
        .Q(mem_axi_wdata[16]),
        .R(1'b0));
  FDRE \mem_wdata_reg[17] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[17]_i_1_n_0 ),
        .Q(mem_axi_wdata[17]),
        .R(1'b0));
  FDRE \mem_wdata_reg[18] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[18]_i_1_n_0 ),
        .Q(mem_axi_wdata[18]),
        .R(1'b0));
  FDRE \mem_wdata_reg[19] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[19]_i_1_n_0 ),
        .Q(mem_axi_wdata[19]),
        .R(1'b0));
  FDRE \mem_wdata_reg[1] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\reg_op2_reg[31]_0 [1]),
        .Q(mem_axi_wdata[1]),
        .R(1'b0));
  FDRE \mem_wdata_reg[20] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[20]_i_1_n_0 ),
        .Q(mem_axi_wdata[20]),
        .R(1'b0));
  FDRE \mem_wdata_reg[21] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[21]_i_1_n_0 ),
        .Q(mem_axi_wdata[21]),
        .R(1'b0));
  FDRE \mem_wdata_reg[22] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[22]_i_1_n_0 ),
        .Q(mem_axi_wdata[22]),
        .R(1'b0));
  FDRE \mem_wdata_reg[23] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[23]_i_1_n_0 ),
        .Q(mem_axi_wdata[23]),
        .R(1'b0));
  FDRE \mem_wdata_reg[24] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[24]_i_1_n_0 ),
        .Q(mem_axi_wdata[24]),
        .R(1'b0));
  FDRE \mem_wdata_reg[25] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[25]_i_1_n_0 ),
        .Q(mem_axi_wdata[25]),
        .R(1'b0));
  FDRE \mem_wdata_reg[26] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[26]_i_1_n_0 ),
        .Q(mem_axi_wdata[26]),
        .R(1'b0));
  FDRE \mem_wdata_reg[27] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[27]_i_1_n_0 ),
        .Q(mem_axi_wdata[27]),
        .R(1'b0));
  FDRE \mem_wdata_reg[28] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[28]_i_1_n_0 ),
        .Q(mem_axi_wdata[28]),
        .R(1'b0));
  FDRE \mem_wdata_reg[29] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[29]_i_1_n_0 ),
        .Q(mem_axi_wdata[29]),
        .R(1'b0));
  FDRE \mem_wdata_reg[2] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\reg_op2_reg[31]_0 [2]),
        .Q(mem_axi_wdata[2]),
        .R(1'b0));
  FDRE \mem_wdata_reg[30] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[30]_i_1_n_0 ),
        .Q(mem_axi_wdata[30]),
        .R(1'b0));
  FDRE \mem_wdata_reg[31] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[31]_i_2_n_0 ),
        .Q(mem_axi_wdata[31]),
        .R(1'b0));
  FDRE \mem_wdata_reg[3] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\reg_op2_reg[31]_0 [3]),
        .Q(mem_axi_wdata[3]),
        .R(1'b0));
  FDRE \mem_wdata_reg[4] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\reg_op2_reg[31]_0 [4]),
        .Q(mem_axi_wdata[4]),
        .R(1'b0));
  FDRE \mem_wdata_reg[5] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\reg_op2_reg[31]_0 [5]),
        .Q(mem_axi_wdata[5]),
        .R(1'b0));
  FDRE \mem_wdata_reg[6] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\reg_op2_reg[31]_0 [6]),
        .Q(mem_axi_wdata[6]),
        .R(1'b0));
  FDRE \mem_wdata_reg[7] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\reg_op2_reg[31]_0 [7]),
        .Q(mem_axi_wdata[7]),
        .R(1'b0));
  FDRE \mem_wdata_reg[8] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[8]_i_1_n_0 ),
        .Q(mem_axi_wdata[8]),
        .R(1'b0));
  FDRE \mem_wdata_reg[9] 
       (.C(clk),
        .CE(\mem_wdata[31]_i_1_n_0 ),
        .D(\mem_wdata[9]_i_1_n_0 ),
        .Q(mem_axi_wdata[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \mem_wordsize[0]_i_1 
       (.I0(mem_wordsize[0]),
        .I1(pcpi_mul_n_29),
        .I2(resetn),
        .I3(latched_is_lu),
        .I4(\mem_wordsize_reg_n_0_[0] ),
        .O(\mem_wordsize[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0E0EFE0)) 
    \mem_wordsize[0]_i_2 
       (.I0(instr_lhu),
        .I1(instr_lh),
        .I2(\cpu_state_reg_n_0_[0] ),
        .I3(instr_sh),
        .I4(Q[2]),
        .O(mem_wordsize[0]));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    \mem_wordsize[1]_i_1 
       (.I0(mem_wordsize[1]),
        .I1(pcpi_mul_n_29),
        .I2(resetn),
        .I3(latched_is_lu),
        .I4(\mem_wordsize_reg_n_0_[1] ),
        .O(\mem_wordsize[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0E0EFE0)) 
    \mem_wordsize[1]_i_2 
       (.I0(instr_lbu),
        .I1(instr_lb),
        .I2(\cpu_state_reg_n_0_[0] ),
        .I3(instr_sb),
        .I4(Q[2]),
        .O(mem_wordsize[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hBABBAAAA)) 
    \mem_wordsize[1]_i_3 
       (.I0(Q[2]),
        .I1(mem_do_rdata),
        .I2(pcpi_mul_n_27),
        .I3(mem_do_prefetch_reg_0),
        .I4(\cpu_state_reg_n_0_[0] ),
        .O(latched_is_lu));
  FDRE \mem_wordsize_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_wordsize[0]_i_1_n_0 ),
        .Q(\mem_wordsize_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mem_wordsize_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\mem_wordsize[1]_i_1_n_0 ),
        .Q(\mem_wordsize_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h03F7)) 
    \mem_wstrb[0]_i_1 
       (.I0(\reg_op1_reg[31]_0 [0]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\reg_op1_reg[31]_0 [1]),
        .O(\mem_wstrb[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h03FB)) 
    \mem_wstrb[1]_i_1 
       (.I0(\reg_op1_reg[31]_0 [0]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\reg_op1_reg[31]_0 [1]),
        .O(\mem_wstrb[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hD1F1)) 
    \mem_wstrb[2]_i_1 
       (.I0(\mem_wordsize_reg_n_0_[1] ),
        .I1(\mem_wordsize_reg_n_0_[0] ),
        .I2(\reg_op1_reg[31]_0 [1]),
        .I3(\reg_op1_reg[31]_0 [0]),
        .O(\mem_wstrb[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100010000000100)) 
    \mem_wstrb[3]_i_1 
       (.I0(\mem_state_reg_n_0_[1] ),
        .I1(\mem_state_reg_n_0_[0] ),
        .I2(trap_reg_0),
        .I3(resetn),
        .I4(\mem_addr[31]_i_4_n_0 ),
        .I5(mem_do_rdata),
        .O(\mem_wstrb[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hFB03)) 
    \mem_wstrb[3]_i_2 
       (.I0(\reg_op1_reg[31]_0 [0]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\reg_op1_reg[31]_0 [1]),
        .O(\mem_wstrb[3]_i_2_n_0 ));
  FDRE \mem_wstrb_reg[0] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_wstrb[0]_i_1_n_0 ),
        .Q(\mem_wstrb_reg[0]_0 ),
        .R(\mem_wstrb[3]_i_1_n_0 ));
  FDRE \mem_wstrb_reg[1] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_wstrb[1]_i_1_n_0 ),
        .Q(\mem_wstrb_reg[1]_0 ),
        .R(\mem_wstrb[3]_i_1_n_0 ));
  FDRE \mem_wstrb_reg[2] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_wstrb[2]_i_1_n_0 ),
        .Q(\mem_wstrb_reg[2]_0 ),
        .R(\mem_wstrb[3]_i_1_n_0 ));
  FDRE \mem_wstrb_reg[3] 
       (.C(clk),
        .CE(\mem_addr[31]_i_1_n_0 ),
        .D(\mem_wstrb[3]_i_2_n_0 ),
        .Q(\mem_wstrb_reg[3]_0 ),
        .R(\mem_wstrb[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pcpi_insn[31]_i_1 
       (.I0(decoder_trigger_reg_n_0),
        .I1(decoder_pseudo_trigger_reg_n_0),
        .O(is_lui_auipc_jal_jalr_addi_add_sub0));
  FDRE \pcpi_insn_reg[0] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[0] ),
        .Q(\pcpi_insn_reg[31]_0 [0]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[10] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[10] ),
        .Q(\pcpi_insn_reg[31]_0 [10]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[11] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[11] ),
        .Q(\pcpi_insn_reg[31]_0 [11]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[12] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(p_0_in[0]),
        .Q(\pcpi_insn_reg[31]_0 [12]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[13] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(p_0_in[1]),
        .Q(\pcpi_insn_reg[31]_0 [13]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[14] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(p_0_in[2]),
        .Q(\pcpi_insn_reg[31]_0 [14]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[15] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[15] ),
        .Q(\pcpi_insn_reg[31]_0 [15]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[16] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[16] ),
        .Q(\pcpi_insn_reg[31]_0 [16]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[17] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[17] ),
        .Q(\pcpi_insn_reg[31]_0 [17]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[18] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[18] ),
        .Q(\pcpi_insn_reg[31]_0 [18]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[19] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[19] ),
        .Q(\pcpi_insn_reg[31]_0 [19]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[1] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[1] ),
        .Q(\pcpi_insn_reg[31]_0 [1]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[20] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[20] ),
        .Q(\pcpi_insn_reg[31]_0 [20]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[21] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[21] ),
        .Q(\pcpi_insn_reg[31]_0 [21]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[22] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[22] ),
        .Q(\pcpi_insn_reg[31]_0 [22]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[23] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[23] ),
        .Q(\pcpi_insn_reg[31]_0 [23]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[24] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[24] ),
        .Q(\pcpi_insn_reg[31]_0 [24]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[25] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[25] ),
        .Q(\pcpi_insn_reg[31]_0 [25]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[26] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[26] ),
        .Q(\pcpi_insn_reg[31]_0 [26]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[27] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[27] ),
        .Q(\pcpi_insn_reg[31]_0 [27]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[28] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[28] ),
        .Q(\pcpi_insn_reg[31]_0 [28]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[29] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[29] ),
        .Q(\pcpi_insn_reg[31]_0 [29]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[2] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[2] ),
        .Q(\pcpi_insn_reg[31]_0 [2]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[30] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[30] ),
        .Q(\pcpi_insn_reg[31]_0 [30]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[31] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[31] ),
        .Q(\pcpi_insn_reg[31]_0 [31]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[3] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[3] ),
        .Q(\pcpi_insn_reg[31]_0 [3]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[4] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[4] ),
        .Q(\pcpi_insn_reg[31]_0 [4]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[5] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[5] ),
        .Q(\pcpi_insn_reg[31]_0 [5]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[6] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[6] ),
        .Q(\pcpi_insn_reg[31]_0 [6]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[7] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[7] ),
        .Q(\pcpi_insn_reg[31]_0 [7]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[8] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[8] ),
        .Q(\pcpi_insn_reg[31]_0 [8]),
        .R(1'b0));
  FDRE \pcpi_insn_reg[9] 
       (.C(clk),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\mem_rdata_q_reg_n_0_[9] ),
        .Q(\pcpi_insn_reg[31]_0 [9]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32_pcpi_fast_mul pcpi_mul
       (.CO(pcpi_mul_n_97),
        .D({pcpi_mul_n_32,pcpi_mul_n_33,pcpi_mul_n_34,pcpi_mul_n_35,pcpi_mul_n_36,pcpi_mul_n_37,pcpi_mul_n_38,pcpi_mul_n_39,pcpi_mul_n_40,pcpi_mul_n_41,pcpi_mul_n_42,pcpi_mul_n_43,pcpi_mul_n_44,pcpi_mul_n_45,pcpi_mul_n_46,pcpi_mul_n_47,pcpi_mul_n_48,pcpi_mul_n_49,pcpi_mul_n_50,pcpi_mul_n_51,pcpi_mul_n_52,pcpi_mul_n_53,pcpi_mul_n_54,pcpi_mul_n_55,pcpi_mul_n_56,pcpi_mul_n_57,pcpi_mul_n_58,pcpi_mul_n_59,pcpi_mul_n_60,pcpi_mul_n_61,pcpi_mul_n_62,pcpi_mul_n_63}),
        .DI(instr_sub),
        .E(pcpi_mul_n_26),
        .O({pcpi_mul_n_98,pcpi_mul_n_99,pcpi_mul_n_100}),
        .Q({\cpu_state_reg_n_0_[7] ,Q[2],\cpu_state_reg_n_0_[5] ,Q[1],\cpu_state_reg_n_0_[2] ,Q[0],\cpu_state_reg_n_0_[0] }),
        .SS(SS),
        .\active_reg[1]_0 (\active_reg[1]_0 ),
        .clk(clk),
        .\cpu_state_reg[0] (is_beq_bne_blt_bge_bltu_bgeu),
        .\cpu_state_reg[0]_0 (\cpu_state[7]_i_6_n_0 ),
        .\cpu_state_reg[0]_1 (\cpu_state[7]_i_7_n_0 ),
        .\cpu_state_reg[0]_2 (\cpu_state[7]_i_8_n_0 ),
        .\cpu_state_reg[6] (\cpu_state[6]_i_3_n_0 ),
        .\cpu_state_reg[7] (\cpu_state_reg[7]_0 ),
        .\cpu_state_reg[7]_0 (instr_jalr),
        .decoded_rs1(decoded_rs1),
        .decoded_rs2__0(decoded_rs2__0),
        .\decoded_rs2_reg[4] (pcpi_mul_n_23),
        .instr_add(instr_add),
        .instr_addi(instr_addi),
        .instr_and(instr_and),
        .instr_andi(instr_andi),
        .instr_auipc(instr_auipc),
        .instr_beq(instr_beq),
        .instr_bge(instr_bge),
        .instr_bgeu(instr_bgeu),
        .instr_blt(instr_blt),
        .instr_bltu(instr_bltu),
        .instr_bne(instr_bne),
        .instr_ecall_ebreak(instr_ecall_ebreak),
        .instr_jal(instr_jal),
        .instr_jal_reg(instr_jal_reg_0),
        .instr_jal_reg_0(mem_valid),
        .instr_jalr_reg(pcpi_mul_n_22),
        .instr_lb(instr_lb),
        .instr_lb_reg(pcpi_mul_n_1),
        .instr_lbu(instr_lbu),
        .instr_lh(instr_lh),
        .instr_lhu(instr_lhu),
        .instr_lui(instr_lui),
        .instr_lw(instr_lw),
        .instr_or(instr_or),
        .instr_or_reg(pcpi_mul_n_94),
        .instr_ori(instr_ori),
        .instr_rdcycle(instr_rdcycle),
        .instr_rdcycleh(instr_rdcycleh),
        .instr_rdinstr(instr_rdinstr),
        .instr_rdinstr_reg(pcpi_mul_n_96),
        .instr_rdinstrh(instr_rdinstrh),
        .instr_sb(instr_sb),
        .instr_sh(instr_sh),
        .instr_sll(instr_sll),
        .instr_sll_reg(pcpi_mul_n_90),
        .instr_slli(instr_slli),
        .instr_slt(instr_slt),
        .instr_slti(instr_slti),
        .instr_slti_reg(pcpi_mul_n_0),
        .instr_sltiu(instr_sltiu),
        .instr_sltu(instr_sltu),
        .instr_sra(instr_sra),
        .instr_sra_reg(pcpi_mul_n_3),
        .instr_srai(instr_srai),
        .instr_srai_reg(pcpi_mul_n_2),
        .instr_srl(instr_srl),
        .instr_srli(instr_srli),
        .instr_srli_reg(pcpi_mul_n_92),
        .instr_sw(instr_sw),
        .instr_xor(instr_xor),
        .instr_xor_reg(pcpi_mul_n_95),
        .instr_xori(instr_xori),
        .is_jalr_addi_slti_sltiu_xori_ori_andi(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .is_lui_auipc_jal(is_lui_auipc_jal),
        .is_lui_auipc_jal_reg(pcpi_mul_n_81),
        .latched_store_reg(\cpu_state[3]_i_3_n_0 ),
        .latched_store_reg_0(latched_store_i_6_n_0),
        .latched_store_reg_1(latched_store_i_7_n_0),
        .mem_axi_bvalid(mem_axi_bvalid),
        .mem_axi_rvalid(mem_axi_rvalid),
        .mem_do_prefetch_reg(pcpi_mul_n_29),
        .mem_do_rdata_reg(mem_do_rdata),
        .mem_do_rdata_reg_0(mem_do_wdata),
        .mem_do_rdata_reg_1(\mem_state_reg_n_0_[0] ),
        .mem_do_rdata_reg_2(\mem_state_reg_n_0_[1] ),
        .mem_do_rinst0(mem_do_rinst0),
        .mem_do_rinst_i_2_0(mem_do_rinst_i_15_n_0),
        .mem_do_rinst_reg(pcpi_mul_n_25),
        .mem_do_rinst_reg_0(mem_do_rinst_reg_n_0),
        .mem_do_rinst_reg_1(mem_do_rinst_i_4_n_0),
        .mem_do_rinst_reg_2(mem_do_rinst_i_5_n_0),
        .mem_do_rinst_reg_3(mem_do_rinst_i_6_n_0),
        .mem_do_rinst_reg_4(mem_do_rinst_i_7_n_0),
        .mem_do_rinst_reg_5(mem_do_rinst_i_8_n_0),
        .mem_do_rinst_reg_6(mem_do_rinst_i_10_n_0),
        .mem_do_rinst_reg_7(mem_do_rinst_i_11_n_0),
        .mem_do_rinst_reg_8(mem_do_rinst_i_12_n_0),
        .mem_do_rinst_reg_9(mem_do_rinst_i_13_n_0),
        .\mem_state_reg[0] (\mem_state_reg[0]_0 ),
        .mem_valid_reg(pcpi_mul_n_31),
        .pcpi_ready(\active_reg[1] ),
        .pcpi_rs1({pcpi_mul_n_64,pcpi_mul_n_65,pcpi_mul_n_66,pcpi_mul_n_67,pcpi_mul_n_68,pcpi_mul_n_69,pcpi_mul_n_70,pcpi_mul_n_71,pcpi_mul_n_72,pcpi_mul_n_73,pcpi_mul_n_74,pcpi_mul_n_75,pcpi_mul_n_76,pcpi_mul_n_77,pcpi_mul_n_78,pcpi_mul_n_79,pcpi_mul_n_80}),
        .pcpi_rs2(reg_op2[16:0]),
        .pcpi_timeout(pcpi_timeout),
        .rd0_0(\decoded_imm_reg_n_0_[16] ),
        .rd0_1(\decoded_imm_reg_n_0_[15] ),
        .rd0_2(\decoded_imm_reg_n_0_[14] ),
        .rd0_3(\decoded_imm_reg_n_0_[13] ),
        .rd0_4(\decoded_imm_reg_n_0_[12] ),
        .rd0_5({\decoded_imm_reg_n_0_[11] ,\decoded_imm_reg_n_0_[10] ,\decoded_imm_reg_n_0_[9] ,\decoded_imm_reg_n_0_[8] ,\decoded_imm_reg_n_0_[7] ,\decoded_imm_reg_n_0_[6] ,\decoded_imm_reg_n_0_[5] ,\decoded_imm_reg_n_0_[4] ,\decoded_imm_reg_n_0_[3] ,\decoded_imm_reg_n_0_[2] ,\decoded_imm_reg_n_0_[1] ,\decoded_imm_reg_n_0_[0] }),
        .rd0__0_0(mem_do_prefetch_reg_0),
        .rd0__0_1({\reg_pc_reg_n_0_[16] ,\reg_pc_reg_n_0_[15] ,\reg_pc_reg_n_0_[14] ,\reg_pc_reg_n_0_[13] ,\reg_pc_reg_n_0_[12] ,\reg_pc_reg_n_0_[11] ,\reg_pc_reg_n_0_[10] ,\reg_pc_reg_n_0_[9] ,\reg_pc_reg_n_0_[8] ,\reg_pc_reg_n_0_[7] ,\reg_pc_reg_n_0_[6] ,\reg_pc_reg_n_0_[5] ,\reg_pc_reg_n_0_[4] ,\reg_pc_reg_n_0_[3] ,\reg_pc_reg_n_0_[2] ,\reg_pc_reg_n_0_[1] }),
        .rd_reg_0(\reg_op1_reg[31]_0 ),
        .rd_reg__0_0({\pcpi_insn_reg[31]_0 [31:25],\pcpi_insn_reg[31]_0 [14:12],\pcpi_insn_reg[31]_0 [6:0]}),
        .rd_reg__0_1(\reg_op2_reg[31]_0 [31:17]),
        .\reg_op1_reg[18] (pcpi_mul_n_93),
        .\reg_op1_reg[19] (pcpi_mul_n_91),
        .\reg_op1_reg[19]_i_5_0 (\decoded_imm_reg_n_0_[17] ),
        .\reg_op1_reg[19]_i_5_1 (\decoded_imm_reg_n_0_[18] ),
        .\reg_op1_reg[19]_i_5_2 (\decoded_imm_reg_n_0_[19] ),
        .\reg_op1_reg[20] (pcpi_mul_n_89),
        .reg_out1(reg_out1[16:0]),
        .\reg_out_reg[0] (\reg_out[0]_i_2_n_0 ),
        .\reg_out_reg[0]_0 (\reg_out[0]_i_3_n_0 ),
        .\reg_out_reg[10] (\reg_out[10]_i_2_n_0 ),
        .\reg_out_reg[10]_0 (\reg_out[10]_i_4_n_0 ),
        .\reg_out_reg[10]_1 (\reg_out[10]_i_5_n_0 ),
        .\reg_out_reg[11] (\reg_out[11]_i_2_n_0 ),
        .\reg_out_reg[11]_0 (\reg_out[11]_i_4_n_0 ),
        .\reg_out_reg[11]_1 (\reg_out[11]_i_5_n_0 ),
        .\reg_out_reg[12] (\reg_out[12]_i_2_n_0 ),
        .\reg_out_reg[12]_0 (\reg_out[12]_i_4_n_0 ),
        .\reg_out_reg[12]_1 (\reg_out[12]_i_5_n_0 ),
        .\reg_out_reg[13] (\reg_out[13]_i_2_n_0 ),
        .\reg_out_reg[13]_0 (\reg_out[13]_i_4_n_0 ),
        .\reg_out_reg[13]_1 (\reg_out[13]_i_5_n_0 ),
        .\reg_out_reg[14] (\reg_out[14]_i_2_n_0 ),
        .\reg_out_reg[14]_0 (\reg_out[14]_i_4_n_0 ),
        .\reg_out_reg[14]_1 (\reg_out[14]_i_5_n_0 ),
        .\reg_out_reg[15] (\reg_out[15]_i_2_n_0 ),
        .\reg_out_reg[15]_0 (\reg_out[15]_i_4_n_0 ),
        .\reg_out_reg[15]_1 (\reg_out[15]_i_5_n_0 ),
        .\reg_out_reg[16] (\reg_out[16]_i_2_n_0 ),
        .\reg_out_reg[16]_0 (\reg_out[16]_i_4_n_0 ),
        .\reg_out_reg[16]_1 (\reg_out[16]_i_5_n_0 ),
        .\reg_out_reg[17] (\reg_out[17]_i_2_n_0 ),
        .\reg_out_reg[17]_0 (\reg_out[17]_i_4_n_0 ),
        .\reg_out_reg[17]_1 (\reg_out[17]_i_5_n_0 ),
        .\reg_out_reg[18] (\reg_out[18]_i_2_n_0 ),
        .\reg_out_reg[18]_0 (\reg_out[18]_i_4_n_0 ),
        .\reg_out_reg[18]_1 (\reg_out[18]_i_5_n_0 ),
        .\reg_out_reg[19] (\reg_out[19]_i_2_n_0 ),
        .\reg_out_reg[19]_0 (\reg_out[19]_i_4_n_0 ),
        .\reg_out_reg[19]_1 (\reg_out[19]_i_5_n_0 ),
        .\reg_out_reg[1] (\reg_out[1]_i_2_n_0 ),
        .\reg_out_reg[1]_0 (\reg_out[1]_i_3_n_0 ),
        .\reg_out_reg[20] (\reg_out[20]_i_2_n_0 ),
        .\reg_out_reg[20]_0 (\reg_out[20]_i_3_n_0 ),
        .\reg_out_reg[20]_1 (\reg_out[20]_i_5_n_0 ),
        .\reg_out_reg[21] (\reg_out[21]_i_2_n_0 ),
        .\reg_out_reg[21]_0 (\reg_out[21]_i_4_n_0 ),
        .\reg_out_reg[21]_1 (\reg_out[21]_i_5_n_0 ),
        .\reg_out_reg[22] (\reg_out[22]_i_2_n_0 ),
        .\reg_out_reg[22]_0 (\reg_out[22]_i_4_n_0 ),
        .\reg_out_reg[22]_1 (\reg_out[22]_i_5_n_0 ),
        .\reg_out_reg[23] (\reg_out[23]_i_2_n_0 ),
        .\reg_out_reg[23]_0 (\reg_out[23]_i_4_n_0 ),
        .\reg_out_reg[23]_1 (\reg_out[23]_i_5_n_0 ),
        .\reg_out_reg[24] (\reg_out[24]_i_2_n_0 ),
        .\reg_out_reg[24]_0 (\reg_out[24]_i_4_n_0 ),
        .\reg_out_reg[24]_1 (\reg_out[24]_i_5_n_0 ),
        .\reg_out_reg[25] (\reg_out[25]_i_2_n_0 ),
        .\reg_out_reg[25]_0 (\reg_out[25]_i_4_n_0 ),
        .\reg_out_reg[25]_1 (\reg_out[25]_i_5_n_0 ),
        .\reg_out_reg[26] (\reg_out[26]_i_2_n_0 ),
        .\reg_out_reg[26]_0 (\reg_out[26]_i_4_n_0 ),
        .\reg_out_reg[26]_1 (\reg_out[26]_i_5_n_0 ),
        .\reg_out_reg[27] (\reg_out[27]_i_2_n_0 ),
        .\reg_out_reg[27]_0 (\reg_out[27]_i_4_n_0 ),
        .\reg_out_reg[27]_1 (\reg_out[27]_i_5_n_0 ),
        .\reg_out_reg[28] (\reg_out[28]_i_2_n_0 ),
        .\reg_out_reg[28]_0 (\reg_out[28]_i_4_n_0 ),
        .\reg_out_reg[28]_1 (\reg_out[28]_i_5_n_0 ),
        .\reg_out_reg[29] (\reg_out[29]_i_2_n_0 ),
        .\reg_out_reg[29]_0 (\reg_out[29]_i_4_n_0 ),
        .\reg_out_reg[29]_1 (\reg_out[29]_i_5_n_0 ),
        .\reg_out_reg[2] (\reg_out[2]_i_2_n_0 ),
        .\reg_out_reg[2]_0 (\reg_out[2]_i_3_n_0 ),
        .\reg_out_reg[30] (\reg_out[30]_i_2_n_0 ),
        .\reg_out_reg[30]_0 (\reg_out[30]_i_4_n_0 ),
        .\reg_out_reg[30]_1 (\reg_out[30]_i_5_n_0 ),
        .\reg_out_reg[31] (\cpu_state_reg[5]_1 ),
        .\reg_out_reg[31]_0 (\reg_out[31]_i_2_n_0 ),
        .\reg_out_reg[31]_1 (\reg_out[31]_i_4_n_0 ),
        .\reg_out_reg[31]_2 (\reg_out[31]_i_5_n_0 ),
        .\reg_out_reg[3] (\reg_out[3]_i_2_n_0 ),
        .\reg_out_reg[3]_0 (\reg_out[3]_i_3_n_0 ),
        .\reg_out_reg[4] (\reg_out[4]_i_2_n_0 ),
        .\reg_out_reg[4]_0 (\reg_out[4]_i_3_n_0 ),
        .\reg_out_reg[5] (\reg_out[5]_i_2_n_0 ),
        .\reg_out_reg[5]_0 (\reg_out[5]_i_3_n_0 ),
        .\reg_out_reg[6] (\reg_out[6]_i_2_n_0 ),
        .\reg_out_reg[6]_0 (\reg_out[6]_i_3_n_0 ),
        .\reg_out_reg[7] (\reg_out[7]_i_2_n_0 ),
        .\reg_out_reg[7]_0 (\reg_out[7]_i_3_n_0 ),
        .\reg_out_reg[8] (\reg_out[8]_i_2_n_0 ),
        .\reg_out_reg[8]_0 (\reg_out[8]_i_4_n_0 ),
        .\reg_out_reg[8]_1 (\reg_out[8]_i_5_n_0 ),
        .\reg_out_reg[9] (\reg_out[9]_i_2_n_0 ),
        .\reg_out_reg[9]_0 (\reg_out[9]_i_4_n_0 ),
        .\reg_out_reg[9]_1 (\reg_out[9]_i_5_n_0 ),
        .reg_sh1(reg_sh1[16:0]),
        .\reg_sh_reg[0] ({\reg_sh_reg_n_0_[4] ,\reg_sh_reg_n_0_[3] ,\reg_sh_reg_n_0_[2] ,\reg_sh_reg_n_0_[1] ,\reg_sh_reg_n_0_[0] }),
        .\reg_sh_reg[4] (pcpi_mul_n_82),
        .resetn(resetn),
        .resetn_0(pcpi_mul_n_24),
        .resetn_1(pcpi_mul_n_27),
        .resetn_2(pcpi_mul_n_28),
        .resetn_3(cpu_state0_out[7:6]),
        .resetn_4(pcpi_mul_n_87));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \pcpi_timeout_counter[0]_i_1 
       (.I0(pcpi_timeout_counter_reg[0]),
        .O(pcpi_timeout_counter0[0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \pcpi_timeout_counter[1]_i_1 
       (.I0(pcpi_timeout_counter_reg[0]),
        .I1(pcpi_timeout_counter_reg[1]),
        .O(\pcpi_timeout_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \pcpi_timeout_counter[2]_i_1 
       (.I0(pcpi_timeout_counter_reg[2]),
        .I1(pcpi_timeout_counter_reg[1]),
        .I2(pcpi_timeout_counter_reg[0]),
        .O(pcpi_timeout_counter0[2]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pcpi_timeout_counter[3]_i_2 
       (.I0(pcpi_timeout_counter_reg[3]),
        .I1(pcpi_timeout_counter_reg[1]),
        .I2(pcpi_timeout_counter_reg[0]),
        .I3(pcpi_timeout_counter_reg[2]),
        .O(\pcpi_timeout_counter[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \pcpi_timeout_counter[3]_i_3 
       (.I0(pcpi_timeout_counter_reg[3]),
        .I1(pcpi_timeout_counter_reg[2]),
        .I2(pcpi_timeout_counter_reg[0]),
        .I3(pcpi_timeout_counter_reg[1]),
        .O(pcpi_timeout_counter0[3]));
  FDSE \pcpi_timeout_counter_reg[0] 
       (.C(clk),
        .CE(\pcpi_timeout_counter[3]_i_2_n_0 ),
        .D(pcpi_timeout_counter0[0]),
        .Q(pcpi_timeout_counter_reg[0]),
        .S(SS));
  FDSE \pcpi_timeout_counter_reg[1] 
       (.C(clk),
        .CE(\pcpi_timeout_counter[3]_i_2_n_0 ),
        .D(\pcpi_timeout_counter[1]_i_1_n_0 ),
        .Q(pcpi_timeout_counter_reg[1]),
        .S(SS));
  FDSE \pcpi_timeout_counter_reg[2] 
       (.C(clk),
        .CE(\pcpi_timeout_counter[3]_i_2_n_0 ),
        .D(pcpi_timeout_counter0[2]),
        .Q(pcpi_timeout_counter_reg[2]),
        .S(SS));
  FDSE \pcpi_timeout_counter_reg[3] 
       (.C(clk),
        .CE(\pcpi_timeout_counter[3]_i_2_n_0 ),
        .D(pcpi_timeout_counter0[3]),
        .Q(pcpi_timeout_counter_reg[3]),
        .S(SS));
  LUT4 #(
    .INIT(16'h0001)) 
    pcpi_timeout_i_1
       (.I0(pcpi_timeout_counter_reg[2]),
        .I1(pcpi_timeout_counter_reg[0]),
        .I2(pcpi_timeout_counter_reg[1]),
        .I3(pcpi_timeout_counter_reg[3]),
        .O(pcpi_timeout_i_1_n_0));
  FDRE pcpi_timeout_reg
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_timeout_i_1_n_0),
        .Q(pcpi_timeout),
        .R(pcpi_mul_n_24));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'hB)) 
    pcpi_valid_i_2
       (.I0(pcpi_mul_n_22),
        .I1(\cpu_state_reg_n_0_[5] ),
        .O(\cpu_state_reg[5]_1 ));
  FDRE pcpi_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_valid_reg_0),
        .Q(pcpi_valid),
        .R(pcpi_mul_n_24));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \reg_next_pc[12]_i_2 
       (.I0(current_pc[12]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_jal),
        .I3(decoded_imm_uj[12]),
        .O(\reg_next_pc[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \reg_next_pc[12]_i_3 
       (.I0(current_pc[11]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_jal),
        .I3(decoded_rs2__0[0]),
        .O(\reg_next_pc[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \reg_next_pc[12]_i_4 
       (.I0(current_pc[10]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_jal),
        .I3(decoded_imm_uj[10]),
        .O(\reg_next_pc[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \reg_next_pc[12]_i_5 
       (.I0(current_pc[9]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_jal),
        .I3(decoded_imm_uj[9]),
        .O(\reg_next_pc[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \reg_next_pc[16]_i_2 
       (.I0(current_pc[16]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_jal),
        .I3(decoded_rs1[1]),
        .O(\reg_next_pc[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \reg_next_pc[16]_i_3 
       (.I0(current_pc[15]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_jal),
        .I3(decoded_rs1[0]),
        .O(\reg_next_pc[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \reg_next_pc[16]_i_4 
       (.I0(current_pc[14]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_jal),
        .I3(decoded_imm_uj[14]),
        .O(\reg_next_pc[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \reg_next_pc[16]_i_5 
       (.I0(current_pc[13]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_jal),
        .I3(decoded_imm_uj[13]),
        .O(\reg_next_pc[16]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \reg_next_pc[1]_i_1 
       (.I0(current_pc[1]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_jal),
        .I3(decoded_rs2__0[1]),
        .O(reg_next_pc1_in[1]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \reg_next_pc[20]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[20] ),
        .I1(\mem_addr[31]_i_5_n_0 ),
        .I2(\reg_out_reg_n_0_[20] ),
        .I3(latched_stalu_reg_0),
        .I4(alu_out_q[20]),
        .I5(\reg_next_pc[31]_i_2_n_0 ),
        .O(\reg_next_pc[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \reg_next_pc[20]_i_3 
       (.I0(current_pc[19]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_jal),
        .I3(decoded_rs1[4]),
        .O(\reg_next_pc[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \reg_next_pc[20]_i_4 
       (.I0(current_pc[18]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_jal),
        .I3(decoded_rs1[3]),
        .O(\reg_next_pc[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \reg_next_pc[20]_i_5 
       (.I0(current_pc[17]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_jal),
        .I3(decoded_rs1[2]),
        .O(\reg_next_pc[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \reg_next_pc[24]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[24] ),
        .I1(\mem_addr[31]_i_5_n_0 ),
        .I2(\reg_out_reg_n_0_[24] ),
        .I3(latched_stalu_reg_0),
        .I4(alu_out_q[24]),
        .I5(\reg_next_pc[31]_i_2_n_0 ),
        .O(\reg_next_pc[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \reg_next_pc[24]_i_3 
       (.I0(\reg_next_pc_reg_n_0_[23] ),
        .I1(\mem_addr[31]_i_5_n_0 ),
        .I2(\reg_out_reg_n_0_[23] ),
        .I3(latched_stalu_reg_0),
        .I4(alu_out_q[23]),
        .I5(\reg_next_pc[31]_i_2_n_0 ),
        .O(\reg_next_pc[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \reg_next_pc[24]_i_4 
       (.I0(\reg_next_pc_reg_n_0_[22] ),
        .I1(\mem_addr[31]_i_5_n_0 ),
        .I2(\reg_out_reg_n_0_[22] ),
        .I3(latched_stalu_reg_0),
        .I4(alu_out_q[22]),
        .I5(\reg_next_pc[31]_i_2_n_0 ),
        .O(\reg_next_pc[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \reg_next_pc[24]_i_5 
       (.I0(\reg_next_pc_reg_n_0_[21] ),
        .I1(\mem_addr[31]_i_5_n_0 ),
        .I2(\reg_out_reg_n_0_[21] ),
        .I3(latched_stalu_reg_0),
        .I4(alu_out_q[21]),
        .I5(\reg_next_pc[31]_i_2_n_0 ),
        .O(\reg_next_pc[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \reg_next_pc[28]_i_2 
       (.I0(\reg_next_pc_reg_n_0_[28] ),
        .I1(\mem_addr[31]_i_5_n_0 ),
        .I2(\reg_out_reg_n_0_[28] ),
        .I3(latched_stalu_reg_0),
        .I4(alu_out_q[28]),
        .I5(\reg_next_pc[31]_i_2_n_0 ),
        .O(\reg_next_pc[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \reg_next_pc[28]_i_3 
       (.I0(\reg_next_pc_reg_n_0_[27] ),
        .I1(\mem_addr[31]_i_5_n_0 ),
        .I2(\reg_out_reg_n_0_[27] ),
        .I3(latched_stalu_reg_0),
        .I4(alu_out_q[27]),
        .I5(\reg_next_pc[31]_i_2_n_0 ),
        .O(\reg_next_pc[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \reg_next_pc[28]_i_4 
       (.I0(\reg_next_pc_reg_n_0_[26] ),
        .I1(\mem_addr[31]_i_5_n_0 ),
        .I2(\reg_out_reg_n_0_[26] ),
        .I3(latched_stalu_reg_0),
        .I4(alu_out_q[26]),
        .I5(\reg_next_pc[31]_i_2_n_0 ),
        .O(\reg_next_pc[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \reg_next_pc[28]_i_5 
       (.I0(\reg_next_pc_reg_n_0_[25] ),
        .I1(\mem_addr[31]_i_5_n_0 ),
        .I2(\reg_out_reg_n_0_[25] ),
        .I3(latched_stalu_reg_0),
        .I4(alu_out_q[25]),
        .I5(\reg_next_pc[31]_i_2_n_0 ),
        .O(\reg_next_pc[28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \reg_next_pc[31]_i_2 
       (.I0(decoded_imm_uj[31]),
        .I1(instr_jal),
        .I2(decoder_trigger_reg_n_0),
        .O(\reg_next_pc[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \reg_next_pc[31]_i_3 
       (.I0(\reg_next_pc[31]_i_2_n_0 ),
        .I1(\reg_next_pc_reg_n_0_[31] ),
        .I2(\mem_addr[31]_i_5_n_0 ),
        .I3(\reg_out_reg_n_0_[31] ),
        .I4(latched_stalu_reg_0),
        .I5(alu_out_q[31]),
        .O(\reg_next_pc[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \reg_next_pc[31]_i_4 
       (.I0(\reg_next_pc_reg_n_0_[30] ),
        .I1(\mem_addr[31]_i_5_n_0 ),
        .I2(\reg_out_reg_n_0_[30] ),
        .I3(latched_stalu_reg_0),
        .I4(alu_out_q[30]),
        .I5(\reg_next_pc[31]_i_2_n_0 ),
        .O(\reg_next_pc[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \reg_next_pc[31]_i_5 
       (.I0(\reg_next_pc_reg_n_0_[29] ),
        .I1(\mem_addr[31]_i_5_n_0 ),
        .I2(\reg_out_reg_n_0_[29] ),
        .I3(latched_stalu_reg_0),
        .I4(alu_out_q[29]),
        .I5(\reg_next_pc[31]_i_2_n_0 ),
        .O(\reg_next_pc[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \reg_next_pc[4]_i_2 
       (.I0(current_pc[4]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_jal),
        .I3(decoded_rs2__0[4]),
        .O(\reg_next_pc[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \reg_next_pc[4]_i_3 
       (.I0(current_pc[3]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_jal),
        .I3(decoded_rs2__0[3]),
        .O(\reg_next_pc[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h59AA)) 
    \reg_next_pc[4]_i_4 
       (.I0(current_pc[2]),
        .I1(instr_jal),
        .I2(decoded_rs2__0[2]),
        .I3(decoder_trigger_reg_n_0),
        .O(\reg_next_pc[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \reg_next_pc[4]_i_5 
       (.I0(current_pc[1]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_jal),
        .I3(decoded_rs2__0[1]),
        .O(\reg_next_pc[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \reg_next_pc[8]_i_2 
       (.I0(current_pc[8]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_jal),
        .I3(decoded_imm_uj[8]),
        .O(\reg_next_pc[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \reg_next_pc[8]_i_3 
       (.I0(current_pc[7]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_jal),
        .I3(decoded_imm_uj[7]),
        .O(\reg_next_pc[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \reg_next_pc[8]_i_4 
       (.I0(current_pc[6]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_jal),
        .I3(decoded_imm_uj[6]),
        .O(\reg_next_pc[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \reg_next_pc[8]_i_5 
       (.I0(current_pc[5]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_jal),
        .I3(decoded_imm_uj[5]),
        .O(\reg_next_pc[8]_i_5_n_0 ));
  FDRE \reg_next_pc_reg[10] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[10]),
        .Q(\reg_next_pc_reg_n_0_[10] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_next_pc_reg[11] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[11]),
        .Q(\reg_next_pc_reg_n_0_[11] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_next_pc_reg[12] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[12]),
        .Q(\reg_next_pc_reg_n_0_[12] ),
        .R(pcpi_mul_n_24));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_next_pc_reg[12]_i_1 
       (.CI(\reg_next_pc_reg[8]_i_1_n_0 ),
        .CO({\reg_next_pc_reg[12]_i_1_n_0 ,\reg_next_pc_reg[12]_i_1_n_1 ,\reg_next_pc_reg[12]_i_1_n_2 ,\reg_next_pc_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(current_pc[12:9]),
        .O(reg_next_pc1_in[12:9]),
        .S({\reg_next_pc[12]_i_2_n_0 ,\reg_next_pc[12]_i_3_n_0 ,\reg_next_pc[12]_i_4_n_0 ,\reg_next_pc[12]_i_5_n_0 }));
  FDRE \reg_next_pc_reg[13] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[13]),
        .Q(\reg_next_pc_reg_n_0_[13] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_next_pc_reg[14] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[14]),
        .Q(\reg_next_pc_reg_n_0_[14] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_next_pc_reg[15] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[15]),
        .Q(\reg_next_pc_reg_n_0_[15] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_next_pc_reg[16] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[16]),
        .Q(\reg_next_pc_reg_n_0_[16] ),
        .R(pcpi_mul_n_24));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_next_pc_reg[16]_i_1 
       (.CI(\reg_next_pc_reg[12]_i_1_n_0 ),
        .CO({\reg_next_pc_reg[16]_i_1_n_0 ,\reg_next_pc_reg[16]_i_1_n_1 ,\reg_next_pc_reg[16]_i_1_n_2 ,\reg_next_pc_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(current_pc[16:13]),
        .O(reg_next_pc1_in[16:13]),
        .S({\reg_next_pc[16]_i_2_n_0 ,\reg_next_pc[16]_i_3_n_0 ,\reg_next_pc[16]_i_4_n_0 ,\reg_next_pc[16]_i_5_n_0 }));
  FDRE \reg_next_pc_reg[17] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[17]),
        .Q(\reg_next_pc_reg_n_0_[17] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_next_pc_reg[18] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[18]),
        .Q(\reg_next_pc_reg_n_0_[18] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_next_pc_reg[19] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[19]),
        .Q(\reg_next_pc_reg_n_0_[19] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_next_pc_reg[1] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[1]),
        .Q(\reg_next_pc_reg_n_0_[1] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_next_pc_reg[20] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[20]),
        .Q(\reg_next_pc_reg_n_0_[20] ),
        .R(pcpi_mul_n_24));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_next_pc_reg[20]_i_1 
       (.CI(\reg_next_pc_reg[16]_i_1_n_0 ),
        .CO({\reg_next_pc_reg[20]_i_1_n_0 ,\reg_next_pc_reg[20]_i_1_n_1 ,\reg_next_pc_reg[20]_i_1_n_2 ,\reg_next_pc_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_next_pc[31]_i_2_n_0 ,current_pc[19:17]}),
        .O(reg_next_pc1_in[20:17]),
        .S({\reg_next_pc[20]_i_2_n_0 ,\reg_next_pc[20]_i_3_n_0 ,\reg_next_pc[20]_i_4_n_0 ,\reg_next_pc[20]_i_5_n_0 }));
  FDRE \reg_next_pc_reg[21] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[21]),
        .Q(\reg_next_pc_reg_n_0_[21] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_next_pc_reg[22] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[22]),
        .Q(\reg_next_pc_reg_n_0_[22] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_next_pc_reg[23] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[23]),
        .Q(\reg_next_pc_reg_n_0_[23] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_next_pc_reg[24] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[24]),
        .Q(\reg_next_pc_reg_n_0_[24] ),
        .R(pcpi_mul_n_24));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_next_pc_reg[24]_i_1 
       (.CI(\reg_next_pc_reg[20]_i_1_n_0 ),
        .CO({\reg_next_pc_reg[24]_i_1_n_0 ,\reg_next_pc_reg[24]_i_1_n_1 ,\reg_next_pc_reg[24]_i_1_n_2 ,\reg_next_pc_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_next_pc[31]_i_2_n_0 ,\reg_next_pc[31]_i_2_n_0 ,\reg_next_pc[31]_i_2_n_0 ,\reg_next_pc[31]_i_2_n_0 }),
        .O(reg_next_pc1_in[24:21]),
        .S({\reg_next_pc[24]_i_2_n_0 ,\reg_next_pc[24]_i_3_n_0 ,\reg_next_pc[24]_i_4_n_0 ,\reg_next_pc[24]_i_5_n_0 }));
  FDRE \reg_next_pc_reg[25] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[25]),
        .Q(\reg_next_pc_reg_n_0_[25] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_next_pc_reg[26] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[26]),
        .Q(\reg_next_pc_reg_n_0_[26] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_next_pc_reg[27] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[27]),
        .Q(\reg_next_pc_reg_n_0_[27] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_next_pc_reg[28] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[28]),
        .Q(\reg_next_pc_reg_n_0_[28] ),
        .R(pcpi_mul_n_24));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_next_pc_reg[28]_i_1 
       (.CI(\reg_next_pc_reg[24]_i_1_n_0 ),
        .CO({\reg_next_pc_reg[28]_i_1_n_0 ,\reg_next_pc_reg[28]_i_1_n_1 ,\reg_next_pc_reg[28]_i_1_n_2 ,\reg_next_pc_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_next_pc[31]_i_2_n_0 ,\reg_next_pc[31]_i_2_n_0 ,\reg_next_pc[31]_i_2_n_0 ,\reg_next_pc[31]_i_2_n_0 }),
        .O(reg_next_pc1_in[28:25]),
        .S({\reg_next_pc[28]_i_2_n_0 ,\reg_next_pc[28]_i_3_n_0 ,\reg_next_pc[28]_i_4_n_0 ,\reg_next_pc[28]_i_5_n_0 }));
  FDRE \reg_next_pc_reg[29] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[29]),
        .Q(\reg_next_pc_reg_n_0_[29] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_next_pc_reg[2] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[2]),
        .Q(\reg_next_pc_reg_n_0_[2] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_next_pc_reg[30] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[30]),
        .Q(\reg_next_pc_reg_n_0_[30] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_next_pc_reg[31] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[31]),
        .Q(\reg_next_pc_reg_n_0_[31] ),
        .R(pcpi_mul_n_24));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_next_pc_reg[31]_i_1 
       (.CI(\reg_next_pc_reg[28]_i_1_n_0 ),
        .CO({\NLW_reg_next_pc_reg[31]_i_1_CO_UNCONNECTED [3:2],\reg_next_pc_reg[31]_i_1_n_2 ,\reg_next_pc_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\reg_next_pc[31]_i_2_n_0 ,\reg_next_pc[31]_i_2_n_0 }),
        .O({\NLW_reg_next_pc_reg[31]_i_1_O_UNCONNECTED [3],reg_next_pc1_in[31:29]}),
        .S({1'b0,\reg_next_pc[31]_i_3_n_0 ,\reg_next_pc[31]_i_4_n_0 ,\reg_next_pc[31]_i_5_n_0 }));
  FDRE \reg_next_pc_reg[3] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[3]),
        .Q(\reg_next_pc_reg_n_0_[3] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_next_pc_reg[4] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[4]),
        .Q(\reg_next_pc_reg_n_0_[4] ),
        .R(pcpi_mul_n_24));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_next_pc_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\reg_next_pc_reg[4]_i_1_n_0 ,\reg_next_pc_reg[4]_i_1_n_1 ,\reg_next_pc_reg[4]_i_1_n_2 ,\reg_next_pc_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(current_pc[4:1]),
        .O({reg_next_pc1_in[4:2],\NLW_reg_next_pc_reg[4]_i_1_O_UNCONNECTED [0]}),
        .S({\reg_next_pc[4]_i_2_n_0 ,\reg_next_pc[4]_i_3_n_0 ,\reg_next_pc[4]_i_4_n_0 ,\reg_next_pc[4]_i_5_n_0 }));
  FDRE \reg_next_pc_reg[5] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[5]),
        .Q(\reg_next_pc_reg_n_0_[5] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_next_pc_reg[6] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[6]),
        .Q(\reg_next_pc_reg_n_0_[6] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_next_pc_reg[7] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[7]),
        .Q(\reg_next_pc_reg_n_0_[7] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_next_pc_reg[8] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[8]),
        .Q(\reg_next_pc_reg_n_0_[8] ),
        .R(pcpi_mul_n_24));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \reg_next_pc_reg[8]_i_1 
       (.CI(\reg_next_pc_reg[4]_i_1_n_0 ),
        .CO({\reg_next_pc_reg[8]_i_1_n_0 ,\reg_next_pc_reg[8]_i_1_n_1 ,\reg_next_pc_reg[8]_i_1_n_2 ,\reg_next_pc_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(current_pc[8:5]),
        .O(reg_next_pc1_in[8:5]),
        .S({\reg_next_pc[8]_i_2_n_0 ,\reg_next_pc[8]_i_3_n_0 ,\reg_next_pc[8]_i_4_n_0 ,\reg_next_pc[8]_i_5_n_0 }));
  FDRE \reg_next_pc_reg[9] 
       (.C(clk),
        .CE(Q[2]),
        .D(reg_next_pc1_in[9]),
        .Q(\reg_next_pc_reg_n_0_[9] ),
        .R(pcpi_mul_n_24));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[17]_i_1 
       (.I0(instr_lui),
        .I1(\reg_pc_reg_n_0_[17] ),
        .I2(\reg_op1[17]_i_2_n_0 ),
        .I3(pcpi_mul_n_81),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_op1[17]_i_3_n_0 ),
        .O(\reg_op1[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[17]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[17]),
        .O(\reg_op1[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[17]_i_3 
       (.I0(\reg_op1[17]_i_4_n_0 ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(pcpi_mul_n_100),
        .O(\reg_op1[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[17]_i_4 
       (.I0(\reg_op1[20]_i_5_n_0 ),
        .I1(\reg_op1_reg[31]_0 [13]),
        .I2(pcpi_mul_n_82),
        .I3(pcpi_mul_n_90),
        .I4(\reg_op1_reg[31]_0 [16]),
        .I5(pcpi_mul_n_93),
        .O(\reg_op1[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[18]_i_1 
       (.I0(instr_lui),
        .I1(\reg_pc_reg_n_0_[18] ),
        .I2(\reg_op1[18]_i_2_n_0 ),
        .I3(pcpi_mul_n_81),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_op1[18]_i_3_n_0 ),
        .O(\reg_op1[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[18]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[18]),
        .O(\reg_op1[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[18]_i_3 
       (.I0(\reg_op1[18]_i_4_n_0 ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(pcpi_mul_n_99),
        .O(\reg_op1[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[18]_i_4 
       (.I0(\reg_op1[21]_i_5_n_0 ),
        .I1(\reg_op1_reg[31]_0 [14]),
        .I2(pcpi_mul_n_82),
        .I3(pcpi_mul_n_90),
        .I4(\reg_op1_reg[31]_0 [17]),
        .I5(pcpi_mul_n_91),
        .O(\reg_op1[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[19]_i_1 
       (.I0(instr_lui),
        .I1(\reg_pc_reg_n_0_[19] ),
        .I2(\reg_op1[19]_i_2_n_0 ),
        .I3(pcpi_mul_n_81),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_op1[19]_i_3_n_0 ),
        .O(\reg_op1[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[19]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[19]),
        .O(\reg_op1[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[19]_i_3 
       (.I0(\reg_op1[19]_i_4_n_0 ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(pcpi_mul_n_98),
        .O(\reg_op1[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[19]_i_4 
       (.I0(\reg_op1[22]_i_5_n_0 ),
        .I1(\reg_op1_reg[31]_0 [15]),
        .I2(pcpi_mul_n_82),
        .I3(pcpi_mul_n_90),
        .I4(\reg_op1_reg[31]_0 [18]),
        .I5(pcpi_mul_n_89),
        .O(\reg_op1[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[20]_i_1 
       (.I0(instr_lui),
        .I1(\reg_pc_reg_n_0_[20] ),
        .I2(\reg_op1[20]_i_2_n_0 ),
        .I3(pcpi_mul_n_81),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_op1[20]_i_3_n_0 ),
        .O(\reg_op1[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[20]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[20]),
        .O(\reg_op1[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[20]_i_3 
       (.I0(\reg_op1[20]_i_4_n_0 ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\reg_op1_reg[23]_i_5_n_7 ),
        .O(\reg_op1[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[20]_i_4 
       (.I0(\reg_op1[23]_i_6_n_0 ),
        .I1(\reg_op1_reg[31]_0 [16]),
        .I2(pcpi_mul_n_82),
        .I3(pcpi_mul_n_90),
        .I4(\reg_op1_reg[31]_0 [19]),
        .I5(\reg_op1[20]_i_5_n_0 ),
        .O(\reg_op1[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[20]_i_5 
       (.I0(\reg_op1_reg[31]_0 [21]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[21]_i_1 
       (.I0(instr_lui),
        .I1(\reg_pc_reg_n_0_[21] ),
        .I2(\reg_op1[21]_i_2_n_0 ),
        .I3(pcpi_mul_n_81),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_op1[21]_i_3_n_0 ),
        .O(\reg_op1[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[21]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[21]),
        .O(\reg_op1[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[21]_i_3 
       (.I0(\reg_op1[21]_i_4_n_0 ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\reg_op1_reg[23]_i_5_n_6 ),
        .O(\reg_op1[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[21]_i_4 
       (.I0(\reg_op1[24]_i_5_n_0 ),
        .I1(\reg_op1_reg[31]_0 [17]),
        .I2(pcpi_mul_n_82),
        .I3(pcpi_mul_n_90),
        .I4(\reg_op1_reg[31]_0 [20]),
        .I5(\reg_op1[21]_i_5_n_0 ),
        .O(\reg_op1[21]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[21]_i_5 
       (.I0(\reg_op1_reg[31]_0 [22]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[22]_i_1 
       (.I0(instr_lui),
        .I1(\reg_pc_reg_n_0_[22] ),
        .I2(\reg_op1[22]_i_2_n_0 ),
        .I3(pcpi_mul_n_81),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_op1[22]_i_3_n_0 ),
        .O(\reg_op1[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[22]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[22]),
        .O(\reg_op1[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[22]_i_3 
       (.I0(\reg_op1[22]_i_4_n_0 ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\reg_op1_reg[23]_i_5_n_5 ),
        .O(\reg_op1[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[22]_i_4 
       (.I0(\reg_op1[25]_i_6_n_0 ),
        .I1(\reg_op1_reg[31]_0 [18]),
        .I2(pcpi_mul_n_82),
        .I3(pcpi_mul_n_90),
        .I4(\reg_op1_reg[31]_0 [21]),
        .I5(\reg_op1[22]_i_5_n_0 ),
        .O(\reg_op1[22]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[22]_i_5 
       (.I0(\reg_op1_reg[31]_0 [23]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[23]_i_1 
       (.I0(instr_lui),
        .I1(\reg_pc_reg_n_0_[23] ),
        .I2(\reg_op1[23]_i_2_n_0 ),
        .I3(pcpi_mul_n_81),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_op1[23]_i_3_n_0 ),
        .O(\reg_op1[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[23]_i_10 
       (.I0(\reg_op1_reg[31]_0 [20]),
        .I1(\decoded_imm_reg_n_0_[20] ),
        .O(\reg_op1[23]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[23]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[23]),
        .O(\reg_op1[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[23]_i_3 
       (.I0(\reg_op1[23]_i_4_n_0 ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\reg_op1_reg[23]_i_5_n_4 ),
        .O(\reg_op1[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[23]_i_4 
       (.I0(\reg_op1[26]_i_6_n_0 ),
        .I1(\reg_op1_reg[31]_0 [19]),
        .I2(pcpi_mul_n_82),
        .I3(pcpi_mul_n_90),
        .I4(\reg_op1_reg[31]_0 [22]),
        .I5(\reg_op1[23]_i_6_n_0 ),
        .O(\reg_op1[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[23]_i_6 
       (.I0(\reg_op1_reg[31]_0 [24]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[23]_i_7 
       (.I0(\reg_op1_reg[31]_0 [23]),
        .I1(\decoded_imm_reg_n_0_[23] ),
        .O(\reg_op1[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[23]_i_8 
       (.I0(\reg_op1_reg[31]_0 [22]),
        .I1(\decoded_imm_reg_n_0_[22] ),
        .O(\reg_op1[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[23]_i_9 
       (.I0(\reg_op1_reg[31]_0 [21]),
        .I1(\decoded_imm_reg_n_0_[21] ),
        .O(\reg_op1[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[24]_i_1 
       (.I0(instr_lui),
        .I1(\reg_pc_reg_n_0_[24] ),
        .I2(\reg_op1[24]_i_2_n_0 ),
        .I3(pcpi_mul_n_81),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_op1[24]_i_3_n_0 ),
        .O(\reg_op1[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[24]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[24]),
        .O(\reg_op1[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[24]_i_3 
       (.I0(\reg_op1[24]_i_4_n_0 ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\reg_op1_reg[31]_i_11_n_7 ),
        .O(\reg_op1[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[24]_i_4 
       (.I0(\reg_op1[27]_i_7_n_0 ),
        .I1(\reg_op1_reg[31]_0 [20]),
        .I2(pcpi_mul_n_82),
        .I3(pcpi_mul_n_90),
        .I4(\reg_op1_reg[31]_0 [23]),
        .I5(\reg_op1[24]_i_5_n_0 ),
        .O(\reg_op1[24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[24]_i_5 
       (.I0(\reg_op1_reg[31]_0 [25]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[25]_i_1 
       (.I0(instr_lui),
        .I1(\reg_pc_reg_n_0_[25] ),
        .I2(\reg_op1[25]_i_2_n_0 ),
        .I3(pcpi_mul_n_81),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_op1[25]_i_3_n_0 ),
        .O(\reg_op1[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[25]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[25]),
        .O(\reg_op1[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[25]_i_3 
       (.I0(\reg_op1[25]_i_4_n_0 ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\reg_op1_reg[31]_i_11_n_6 ),
        .O(\reg_op1[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[25]_i_4 
       (.I0(\reg_op1[25]_i_5_n_0 ),
        .I1(\reg_op1_reg[31]_0 [21]),
        .I2(pcpi_mul_n_82),
        .I3(pcpi_mul_n_90),
        .I4(\reg_op1_reg[31]_0 [24]),
        .I5(\reg_op1[25]_i_6_n_0 ),
        .O(\reg_op1[25]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[25]_i_5 
       (.I0(\reg_op1_reg[31]_0 [29]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[25]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[25]_i_6 
       (.I0(\reg_op1_reg[31]_0 [26]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[26]_i_1 
       (.I0(instr_lui),
        .I1(\reg_pc_reg_n_0_[26] ),
        .I2(\reg_op1[26]_i_2_n_0 ),
        .I3(pcpi_mul_n_81),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_op1[26]_i_3_n_0 ),
        .O(\reg_op1[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[26]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[26]),
        .O(\reg_op1[26]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[26]_i_3 
       (.I0(\reg_op1[26]_i_4_n_0 ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\reg_op1_reg[31]_i_11_n_5 ),
        .O(\reg_op1[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[26]_i_4 
       (.I0(\reg_op1[26]_i_5_n_0 ),
        .I1(\reg_op1_reg[31]_0 [22]),
        .I2(pcpi_mul_n_82),
        .I3(pcpi_mul_n_90),
        .I4(\reg_op1_reg[31]_0 [25]),
        .I5(\reg_op1[26]_i_6_n_0 ),
        .O(\reg_op1[26]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[26]_i_5 
       (.I0(\reg_op1_reg[31]_0 [30]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[26]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[26]_i_6 
       (.I0(\reg_op1_reg[31]_0 [27]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[27]_i_1 
       (.I0(instr_lui),
        .I1(\reg_pc_reg_n_0_[27] ),
        .I2(\reg_op1[27]_i_2_n_0 ),
        .I3(pcpi_mul_n_81),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_op1[27]_i_3_n_0 ),
        .O(\reg_op1[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[27]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[27]),
        .O(\reg_op1[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[27]_i_3 
       (.I0(\reg_op1[27]_i_4_n_0 ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\reg_op1_reg[31]_i_11_n_4 ),
        .O(\reg_op1[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[27]_i_4 
       (.I0(\reg_op1[27]_i_5_n_0 ),
        .I1(\reg_op1_reg[31]_0 [23]),
        .I2(pcpi_mul_n_82),
        .I3(pcpi_mul_n_90),
        .I4(\reg_op1_reg[31]_0 [26]),
        .I5(\reg_op1[27]_i_7_n_0 ),
        .O(\reg_op1[27]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[27]_i_5 
       (.I0(\reg_op1_reg[31]_0 [31]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[27]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[27]_i_7 
       (.I0(\reg_op1_reg[31]_0 [28]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[28]_i_1 
       (.I0(instr_lui),
        .I1(\reg_pc_reg_n_0_[28] ),
        .I2(\reg_op1[28]_i_2_n_0 ),
        .I3(pcpi_mul_n_81),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_op1[28]_i_3_n_0 ),
        .O(\reg_op1[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[28]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[28]),
        .O(\reg_op1[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5455FFFF54550000)) 
    \reg_op1[28]_i_3 
       (.I0(\reg_op1[28]_i_4_n_0 ),
        .I1(\reg_op1[28]_i_5_n_0 ),
        .I2(\reg_op1[31]_i_10_n_0 ),
        .I3(pcpi_mul_n_82),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[31]_i_8_n_7 ),
        .O(\reg_op1[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0057000000570057)) 
    \reg_op1[28]_i_4 
       (.I0(\reg_op1_reg[31]_0 [27]),
        .I1(instr_slli),
        .I2(instr_sll),
        .I3(pcpi_mul_n_82),
        .I4(pcpi_mul_n_92),
        .I5(\reg_op1_reg[31]_0 [29]),
        .O(\reg_op1[28]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \reg_op1[28]_i_5 
       (.I0(\reg_op1_reg[31]_0 [24]),
        .I1(instr_slli),
        .I2(instr_sll),
        .O(\reg_op1[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[29]_i_1 
       (.I0(instr_lui),
        .I1(\reg_pc_reg_n_0_[29] ),
        .I2(\reg_op1[29]_i_2_n_0 ),
        .I3(pcpi_mul_n_81),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_op1[29]_i_3_n_0 ),
        .O(\reg_op1[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[29]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[29]),
        .O(\reg_op1[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5455FFFF54550000)) 
    \reg_op1[29]_i_3 
       (.I0(\reg_op1[29]_i_4_n_0 ),
        .I1(\reg_op1[29]_i_5_n_0 ),
        .I2(\reg_op1[31]_i_10_n_0 ),
        .I3(pcpi_mul_n_82),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[31]_i_8_n_6 ),
        .O(\reg_op1[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0057000000570057)) 
    \reg_op1[29]_i_4 
       (.I0(\reg_op1_reg[31]_0 [28]),
        .I1(instr_slli),
        .I2(instr_sll),
        .I3(pcpi_mul_n_82),
        .I4(pcpi_mul_n_92),
        .I5(\reg_op1_reg[31]_0 [30]),
        .O(\reg_op1[29]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \reg_op1[29]_i_5 
       (.I0(\reg_op1_reg[31]_0 [25]),
        .I1(instr_slli),
        .I2(instr_sll),
        .O(\reg_op1[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0040FF40)) 
    \reg_op1[30]_i_1 
       (.I0(instr_lui),
        .I1(\cpu_state_reg_n_0_[5] ),
        .I2(\reg_pc_reg_n_0_[30] ),
        .I3(pcpi_mul_n_81),
        .I4(\reg_op1[30]_i_3_n_0 ),
        .I5(\reg_op1[30]_i_4_n_0 ),
        .O(\reg_op1[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \reg_op1[30]_i_3 
       (.I0(\cpu_state_reg_n_0_[5] ),
        .I1(\reg_op1[31]_i_9_n_0 ),
        .I2(reg_out1[30]),
        .O(\reg_op1[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h004500FF00450000)) 
    \reg_op1[30]_i_4 
       (.I0(\reg_op1[30]_i_5_n_0 ),
        .I1(\reg_op1[30]_i_6_n_0 ),
        .I2(pcpi_mul_n_82),
        .I3(\cpu_state_reg_n_0_[5] ),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg[31]_i_8_n_5 ),
        .O(\reg_op1[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0057000000570057)) 
    \reg_op1[30]_i_5 
       (.I0(\reg_op1_reg[31]_0 [29]),
        .I1(instr_slli),
        .I2(instr_sll),
        .I3(pcpi_mul_n_82),
        .I4(pcpi_mul_n_92),
        .I5(\reg_op1_reg[31]_0 [31]),
        .O(\reg_op1[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE0E0E0E0E0)) 
    \reg_op1[30]_i_6 
       (.I0(instr_sra),
        .I1(instr_srai),
        .I2(\reg_op1_reg[31]_0 [31]),
        .I3(instr_sll),
        .I4(instr_slli),
        .I5(\reg_op1_reg[31]_0 [26]),
        .O(\reg_op1[30]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \reg_op1[31]_i_10 
       (.I0(\reg_op1_reg[31]_0 [31]),
        .I1(instr_srai),
        .I2(instr_sra),
        .O(\reg_op1[31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[31]_i_12 
       (.I0(\decoded_imm_reg_n_0_[31] ),
        .I1(\reg_op1_reg[31]_0 [31]),
        .O(\reg_op1[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[31]_i_13 
       (.I0(\reg_op1_reg[31]_0 [30]),
        .I1(\decoded_imm_reg_n_0_[30] ),
        .O(\reg_op1[31]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[31]_i_14 
       (.I0(\reg_op1_reg[31]_0 [29]),
        .I1(\decoded_imm_reg_n_0_[29] ),
        .O(\reg_op1[31]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[31]_i_15 
       (.I0(\reg_op1_reg[31]_0 [28]),
        .I1(\decoded_imm_reg_n_0_[28] ),
        .O(\reg_op1[31]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[31]_i_16 
       (.I0(\reg_op1_reg[31]_0 [27]),
        .I1(\decoded_imm_reg_n_0_[27] ),
        .O(\reg_op1[31]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[31]_i_17 
       (.I0(\reg_op1_reg[31]_0 [26]),
        .I1(\decoded_imm_reg_n_0_[26] ),
        .O(\reg_op1[31]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[31]_i_18 
       (.I0(\reg_op1_reg[31]_0 [25]),
        .I1(\decoded_imm_reg_n_0_[25] ),
        .O(\reg_op1[31]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[31]_i_19 
       (.I0(\reg_op1_reg[31]_0 [24]),
        .I1(\decoded_imm_reg_n_0_[24] ),
        .O(\reg_op1[31]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \reg_op1[31]_i_2 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(\cpu_state_reg_n_0_[5] ),
        .I2(\reg_op1[31]_i_7_n_0 ),
        .I3(\cpu_state_reg_n_0_[2] ),
        .I4(\reg_op1_reg[31]_i_8_n_4 ),
        .O(\reg_op1[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h02220222F2220222)) 
    \reg_op1[31]_i_6 
       (.I0(reg_out1[31]),
        .I1(\reg_op1[31]_i_9_n_0 ),
        .I2(is_lui_auipc_jal),
        .I3(pcpi_mul_n_22),
        .I4(\reg_pc_reg_n_0_[31] ),
        .I5(instr_lui),
        .O(\reg_op1[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBB08880)) 
    \reg_op1[31]_i_7 
       (.I0(\reg_op1_reg[31]_0 [27]),
        .I1(pcpi_mul_n_82),
        .I2(instr_sll),
        .I3(instr_slli),
        .I4(\reg_op1_reg[31]_0 [30]),
        .I5(\reg_op1[31]_i_10_n_0 ),
        .O(\reg_op1[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \reg_op1[31]_i_9 
       (.I0(decoded_rs1[3]),
        .I1(decoded_rs1[0]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[4]),
        .I4(decoded_rs1[1]),
        .O(\reg_op1[31]_i_9_n_0 ));
  FDRE \reg_op1_reg[0] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(pcpi_mul_n_80),
        .Q(\reg_op1_reg[31]_0 [0]),
        .R(1'b0));
  FDRE \reg_op1_reg[10] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(pcpi_mul_n_70),
        .Q(\reg_op1_reg[31]_0 [10]),
        .R(1'b0));
  FDRE \reg_op1_reg[11] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(pcpi_mul_n_69),
        .Q(\reg_op1_reg[31]_0 [11]),
        .R(1'b0));
  FDRE \reg_op1_reg[12] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(pcpi_mul_n_68),
        .Q(\reg_op1_reg[31]_0 [12]),
        .R(1'b0));
  FDRE \reg_op1_reg[13] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(pcpi_mul_n_67),
        .Q(\reg_op1_reg[31]_0 [13]),
        .R(1'b0));
  FDRE \reg_op1_reg[14] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(pcpi_mul_n_66),
        .Q(\reg_op1_reg[31]_0 [14]),
        .R(1'b0));
  FDRE \reg_op1_reg[15] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(pcpi_mul_n_65),
        .Q(\reg_op1_reg[31]_0 [15]),
        .R(1'b0));
  FDRE \reg_op1_reg[16] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(pcpi_mul_n_64),
        .Q(\reg_op1_reg[31]_0 [16]),
        .R(1'b0));
  FDRE \reg_op1_reg[17] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(\reg_op1[17]_i_1_n_0 ),
        .Q(\reg_op1_reg[31]_0 [17]),
        .R(1'b0));
  FDRE \reg_op1_reg[18] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(\reg_op1[18]_i_1_n_0 ),
        .Q(\reg_op1_reg[31]_0 [18]),
        .R(1'b0));
  FDRE \reg_op1_reg[19] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(\reg_op1[19]_i_1_n_0 ),
        .Q(\reg_op1_reg[31]_0 [19]),
        .R(1'b0));
  FDRE \reg_op1_reg[1] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(pcpi_mul_n_79),
        .Q(\reg_op1_reg[31]_0 [1]),
        .R(1'b0));
  FDRE \reg_op1_reg[20] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(\reg_op1[20]_i_1_n_0 ),
        .Q(\reg_op1_reg[31]_0 [20]),
        .R(1'b0));
  FDRE \reg_op1_reg[21] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(\reg_op1[21]_i_1_n_0 ),
        .Q(\reg_op1_reg[31]_0 [21]),
        .R(1'b0));
  FDRE \reg_op1_reg[22] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(\reg_op1[22]_i_1_n_0 ),
        .Q(\reg_op1_reg[31]_0 [22]),
        .R(1'b0));
  FDRE \reg_op1_reg[23] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(\reg_op1[23]_i_1_n_0 ),
        .Q(\reg_op1_reg[31]_0 [23]),
        .R(1'b0));
  CARRY4 \reg_op1_reg[23]_i_5 
       (.CI(pcpi_mul_n_97),
        .CO({\reg_op1_reg[23]_i_5_n_0 ,\reg_op1_reg[23]_i_5_n_1 ,\reg_op1_reg[23]_i_5_n_2 ,\reg_op1_reg[23]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(\reg_op1_reg[31]_0 [23:20]),
        .O({\reg_op1_reg[23]_i_5_n_4 ,\reg_op1_reg[23]_i_5_n_5 ,\reg_op1_reg[23]_i_5_n_6 ,\reg_op1_reg[23]_i_5_n_7 }),
        .S({\reg_op1[23]_i_7_n_0 ,\reg_op1[23]_i_8_n_0 ,\reg_op1[23]_i_9_n_0 ,\reg_op1[23]_i_10_n_0 }));
  FDRE \reg_op1_reg[24] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(\reg_op1[24]_i_1_n_0 ),
        .Q(\reg_op1_reg[31]_0 [24]),
        .R(1'b0));
  FDRE \reg_op1_reg[25] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(\reg_op1[25]_i_1_n_0 ),
        .Q(\reg_op1_reg[31]_0 [25]),
        .R(1'b0));
  FDRE \reg_op1_reg[26] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(\reg_op1[26]_i_1_n_0 ),
        .Q(\reg_op1_reg[31]_0 [26]),
        .R(1'b0));
  FDRE \reg_op1_reg[27] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(\reg_op1[27]_i_1_n_0 ),
        .Q(\reg_op1_reg[31]_0 [27]),
        .R(1'b0));
  FDRE \reg_op1_reg[28] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(\reg_op1[28]_i_1_n_0 ),
        .Q(\reg_op1_reg[31]_0 [28]),
        .R(1'b0));
  FDRE \reg_op1_reg[29] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(\reg_op1[29]_i_1_n_0 ),
        .Q(\reg_op1_reg[31]_0 [29]),
        .R(1'b0));
  FDRE \reg_op1_reg[2] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(pcpi_mul_n_78),
        .Q(\reg_op1_reg[31]_0 [2]),
        .R(1'b0));
  FDRE \reg_op1_reg[30] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(\reg_op1[30]_i_1_n_0 ),
        .Q(\reg_op1_reg[31]_0 [30]),
        .R(1'b0));
  FDRE \reg_op1_reg[31] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(\reg_op1[31]_i_2_n_0 ),
        .Q(\reg_op1_reg[31]_0 [31]),
        .R(1'b0));
  CARRY4 \reg_op1_reg[31]_i_11 
       (.CI(\reg_op1_reg[23]_i_5_n_0 ),
        .CO({\reg_op1_reg[31]_i_11_n_0 ,\reg_op1_reg[31]_i_11_n_1 ,\reg_op1_reg[31]_i_11_n_2 ,\reg_op1_reg[31]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI(\reg_op1_reg[31]_0 [27:24]),
        .O({\reg_op1_reg[31]_i_11_n_4 ,\reg_op1_reg[31]_i_11_n_5 ,\reg_op1_reg[31]_i_11_n_6 ,\reg_op1_reg[31]_i_11_n_7 }),
        .S({\reg_op1[31]_i_16_n_0 ,\reg_op1[31]_i_17_n_0 ,\reg_op1[31]_i_18_n_0 ,\reg_op1[31]_i_19_n_0 }));
  CARRY4 \reg_op1_reg[31]_i_8 
       (.CI(\reg_op1_reg[31]_i_11_n_0 ),
        .CO({\NLW_reg_op1_reg[31]_i_8_CO_UNCONNECTED [3],\reg_op1_reg[31]_i_8_n_1 ,\reg_op1_reg[31]_i_8_n_2 ,\reg_op1_reg[31]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\reg_op1_reg[31]_0 [30:28]}),
        .O({\reg_op1_reg[31]_i_8_n_4 ,\reg_op1_reg[31]_i_8_n_5 ,\reg_op1_reg[31]_i_8_n_6 ,\reg_op1_reg[31]_i_8_n_7 }),
        .S({\reg_op1[31]_i_12_n_0 ,\reg_op1[31]_i_13_n_0 ,\reg_op1[31]_i_14_n_0 ,\reg_op1[31]_i_15_n_0 }));
  FDRE \reg_op1_reg[3] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(pcpi_mul_n_77),
        .Q(\reg_op1_reg[31]_0 [3]),
        .R(1'b0));
  FDRE \reg_op1_reg[4] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(pcpi_mul_n_76),
        .Q(\reg_op1_reg[31]_0 [4]),
        .R(1'b0));
  FDRE \reg_op1_reg[5] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(pcpi_mul_n_75),
        .Q(\reg_op1_reg[31]_0 [5]),
        .R(1'b0));
  FDRE \reg_op1_reg[6] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(pcpi_mul_n_74),
        .Q(\reg_op1_reg[31]_0 [6]),
        .R(1'b0));
  FDRE \reg_op1_reg[7] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(pcpi_mul_n_73),
        .Q(\reg_op1_reg[31]_0 [7]),
        .R(1'b0));
  FDRE \reg_op1_reg[8] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(pcpi_mul_n_72),
        .Q(\reg_op1_reg[31]_0 [8]),
        .R(1'b0));
  FDRE \reg_op1_reg[9] 
       (.C(clk),
        .CE(pcpi_mul_n_28),
        .D(pcpi_mul_n_71),
        .Q(\reg_op1_reg[31]_0 [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[17]_i_1 
       (.I0(pcpi_mul_n_22),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(\decoded_imm_reg_n_0_[17] ),
        .I4(reg_sh1[17]),
        .I5(pcpi_mul_n_23),
        .O(reg_op2[17]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[18]_i_1 
       (.I0(pcpi_mul_n_22),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(\decoded_imm_reg_n_0_[18] ),
        .I4(reg_sh1[18]),
        .I5(pcpi_mul_n_23),
        .O(reg_op2[18]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[19]_i_1 
       (.I0(pcpi_mul_n_22),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(\decoded_imm_reg_n_0_[19] ),
        .I4(reg_sh1[19]),
        .I5(pcpi_mul_n_23),
        .O(reg_op2[19]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[20]_i_1 
       (.I0(pcpi_mul_n_22),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(\decoded_imm_reg_n_0_[20] ),
        .I4(reg_sh1[20]),
        .I5(pcpi_mul_n_23),
        .O(reg_op2[20]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[21]_i_1 
       (.I0(pcpi_mul_n_22),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(\decoded_imm_reg_n_0_[21] ),
        .I4(reg_sh1[21]),
        .I5(pcpi_mul_n_23),
        .O(reg_op2[21]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[22]_i_1 
       (.I0(pcpi_mul_n_22),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(\decoded_imm_reg_n_0_[22] ),
        .I4(reg_sh1[22]),
        .I5(pcpi_mul_n_23),
        .O(reg_op2[22]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[23]_i_1 
       (.I0(pcpi_mul_n_22),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(\decoded_imm_reg_n_0_[23] ),
        .I4(reg_sh1[23]),
        .I5(pcpi_mul_n_23),
        .O(reg_op2[23]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[24]_i_1 
       (.I0(pcpi_mul_n_22),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(\decoded_imm_reg_n_0_[24] ),
        .I4(reg_sh1[24]),
        .I5(pcpi_mul_n_23),
        .O(reg_op2[24]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[25]_i_1 
       (.I0(pcpi_mul_n_22),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(\decoded_imm_reg_n_0_[25] ),
        .I4(reg_sh1[25]),
        .I5(pcpi_mul_n_23),
        .O(reg_op2[25]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[26]_i_1 
       (.I0(pcpi_mul_n_22),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(\decoded_imm_reg_n_0_[26] ),
        .I4(reg_sh1[26]),
        .I5(pcpi_mul_n_23),
        .O(reg_op2[26]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[27]_i_1 
       (.I0(pcpi_mul_n_22),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(\decoded_imm_reg_n_0_[27] ),
        .I4(reg_sh1[27]),
        .I5(pcpi_mul_n_23),
        .O(reg_op2[27]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[28]_i_1 
       (.I0(pcpi_mul_n_22),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(\decoded_imm_reg_n_0_[28] ),
        .I4(reg_sh1[28]),
        .I5(pcpi_mul_n_23),
        .O(reg_op2[28]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[29]_i_1 
       (.I0(pcpi_mul_n_22),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(\decoded_imm_reg_n_0_[29] ),
        .I4(reg_sh1[29]),
        .I5(pcpi_mul_n_23),
        .O(reg_op2[29]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[30]_i_1 
       (.I0(pcpi_mul_n_22),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(\decoded_imm_reg_n_0_[30] ),
        .I4(reg_sh1[30]),
        .I5(pcpi_mul_n_23),
        .O(reg_op2[30]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[31]_i_2 
       (.I0(pcpi_mul_n_22),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(\decoded_imm_reg_n_0_[31] ),
        .I4(reg_sh1[31]),
        .I5(pcpi_mul_n_23),
        .O(reg_op2[31]));
  FDRE \reg_op2_reg[0] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[0]),
        .Q(\reg_op2_reg[31]_0 [0]),
        .R(1'b0));
  FDRE \reg_op2_reg[10] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[10]),
        .Q(\reg_op2_reg[31]_0 [10]),
        .R(1'b0));
  FDRE \reg_op2_reg[11] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[11]),
        .Q(\reg_op2_reg[31]_0 [11]),
        .R(1'b0));
  FDRE \reg_op2_reg[12] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[12]),
        .Q(\reg_op2_reg[31]_0 [12]),
        .R(1'b0));
  FDRE \reg_op2_reg[13] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[13]),
        .Q(\reg_op2_reg[31]_0 [13]),
        .R(1'b0));
  FDRE \reg_op2_reg[14] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[14]),
        .Q(\reg_op2_reg[31]_0 [14]),
        .R(1'b0));
  FDRE \reg_op2_reg[15] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[15]),
        .Q(\reg_op2_reg[31]_0 [15]),
        .R(1'b0));
  FDRE \reg_op2_reg[16] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[16]),
        .Q(\reg_op2_reg[31]_0 [16]),
        .R(1'b0));
  FDRE \reg_op2_reg[17] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[17]),
        .Q(\reg_op2_reg[31]_0 [17]),
        .R(1'b0));
  FDRE \reg_op2_reg[18] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[18]),
        .Q(\reg_op2_reg[31]_0 [18]),
        .R(1'b0));
  FDRE \reg_op2_reg[19] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[19]),
        .Q(\reg_op2_reg[31]_0 [19]),
        .R(1'b0));
  FDRE \reg_op2_reg[1] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[1]),
        .Q(\reg_op2_reg[31]_0 [1]),
        .R(1'b0));
  FDRE \reg_op2_reg[20] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[20]),
        .Q(\reg_op2_reg[31]_0 [20]),
        .R(1'b0));
  FDRE \reg_op2_reg[21] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[21]),
        .Q(\reg_op2_reg[31]_0 [21]),
        .R(1'b0));
  FDRE \reg_op2_reg[22] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[22]),
        .Q(\reg_op2_reg[31]_0 [22]),
        .R(1'b0));
  FDRE \reg_op2_reg[23] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[23]),
        .Q(\reg_op2_reg[31]_0 [23]),
        .R(1'b0));
  FDRE \reg_op2_reg[24] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[24]),
        .Q(\reg_op2_reg[31]_0 [24]),
        .R(1'b0));
  FDRE \reg_op2_reg[25] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[25]),
        .Q(\reg_op2_reg[31]_0 [25]),
        .R(1'b0));
  FDRE \reg_op2_reg[26] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[26]),
        .Q(\reg_op2_reg[31]_0 [26]),
        .R(1'b0));
  FDRE \reg_op2_reg[27] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[27]),
        .Q(\reg_op2_reg[31]_0 [27]),
        .R(1'b0));
  FDRE \reg_op2_reg[28] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[28]),
        .Q(\reg_op2_reg[31]_0 [28]),
        .R(1'b0));
  FDRE \reg_op2_reg[29] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[29]),
        .Q(\reg_op2_reg[31]_0 [29]),
        .R(1'b0));
  FDRE \reg_op2_reg[2] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[2]),
        .Q(\reg_op2_reg[31]_0 [2]),
        .R(1'b0));
  FDRE \reg_op2_reg[30] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[30]),
        .Q(\reg_op2_reg[31]_0 [30]),
        .R(1'b0));
  FDRE \reg_op2_reg[31] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[31]),
        .Q(\reg_op2_reg[31]_0 [31]),
        .R(1'b0));
  FDRE \reg_op2_reg[3] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[3]),
        .Q(\reg_op2_reg[31]_0 [3]),
        .R(1'b0));
  FDRE \reg_op2_reg[4] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[4]),
        .Q(\reg_op2_reg[31]_0 [4]),
        .R(1'b0));
  FDRE \reg_op2_reg[5] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[5]),
        .Q(\reg_op2_reg[31]_0 [5]),
        .R(1'b0));
  FDRE \reg_op2_reg[6] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[6]),
        .Q(\reg_op2_reg[31]_0 [6]),
        .R(1'b0));
  FDRE \reg_op2_reg[7] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[7]),
        .Q(\reg_op2_reg[31]_0 [7]),
        .R(1'b0));
  FDRE \reg_op2_reg[8] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[8]),
        .Q(\reg_op2_reg[31]_0 [8]),
        .R(1'b0));
  FDRE \reg_op2_reg[9] 
       (.C(clk),
        .CE(pcpi_mul_n_87),
        .D(reg_op2[9]),
        .Q(\reg_op2_reg[31]_0 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hA202)) 
    \reg_out[0]_i_2 
       (.I0(\cpu_state_reg_n_0_[5] ),
        .I1(\reg_out[0]_i_4_n_0 ),
        .I2(instr_rdcycle),
        .I3(count_cycle_reg[0]),
        .O(\reg_out[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[0]_i_3 
       (.I0(\reg_out[0]_i_5_n_0 ),
        .I1(\reg_op1_reg[31]_0 [0]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(\decoded_imm_reg_n_0_[0] ),
        .O(\reg_out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0055003FFF55FF3F)) 
    \reg_out[0]_i_4 
       (.I0(\count_instr_reg_n_0_[0] ),
        .I1(data3[0]),
        .I2(instr_rdinstrh),
        .I3(instr_rdcycleh),
        .I4(instr_rdinstr),
        .I5(count_cycle_reg[32]),
        .O(\reg_out[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \reg_out[0]_i_5 
       (.I0(\reg_out[0]_i_6_n_0 ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(mem_axi_rdata[16]),
        .I3(\reg_out[15]_i_6_n_0 ),
        .I4(mem_axi_rdata[0]),
        .I5(\reg_out[7]_i_6_n_0 ),
        .O(\reg_out[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    \reg_out[0]_i_6 
       (.I0(mem_axi_rdata[8]),
        .I1(mem_axi_rdata[0]),
        .I2(mem_axi_rdata[16]),
        .I3(\reg_op1_reg[31]_0 [1]),
        .I4(\reg_op1_reg[31]_0 [0]),
        .I5(mem_axi_rdata[24]),
        .O(\reg_out[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h888A8A8AAA8A8A8A)) 
    \reg_out[10]_i_2 
       (.I0(\reg_out[31]_i_7_n_0 ),
        .I1(\reg_out[14]_i_6_n_0 ),
        .I2(mem_axi_rdata[10]),
        .I3(\reg_op1_reg[31]_0 [1]),
        .I4(\mem_wordsize_reg_n_0_[0] ),
        .I5(mem_axi_rdata[26]),
        .O(\reg_out[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[10]_i_4 
       (.I0(\reg_out_reg[12]_i_6_n_6 ),
        .I1(Q[1]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg[31]_0 [10]),
        .O(\reg_out[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[10]_i_5 
       (.I0(\reg_out[10]_i_6_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[10]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF880088)) 
    \reg_out[10]_i_6 
       (.I0(data3[10]),
        .I1(instr_rdinstrh),
        .I2(count_cycle_reg[42]),
        .I3(instr_rdinstr),
        .I4(\count_instr_reg_n_0_[10] ),
        .I5(instr_rdcycleh),
        .O(\reg_out[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h888A8A8AAA8A8A8A)) 
    \reg_out[11]_i_2 
       (.I0(\reg_out[31]_i_7_n_0 ),
        .I1(\reg_out[14]_i_6_n_0 ),
        .I2(mem_axi_rdata[11]),
        .I3(\reg_op1_reg[31]_0 [1]),
        .I4(\mem_wordsize_reg_n_0_[0] ),
        .I5(mem_axi_rdata[27]),
        .O(\reg_out[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[11]_i_4 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(\reg_op1_reg[31]_0 [11]),
        .I2(\reg_out_reg[12]_i_6_n_5 ),
        .I3(Q[1]),
        .O(\reg_out[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[11]_i_5 
       (.I0(\reg_out[11]_i_7_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[11]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF880088)) 
    \reg_out[11]_i_7 
       (.I0(data3[11]),
        .I1(instr_rdinstrh),
        .I2(count_cycle_reg[43]),
        .I3(instr_rdinstr),
        .I4(\count_instr_reg_n_0_[11] ),
        .I5(instr_rdcycleh),
        .O(\reg_out[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[12]_i_10 
       (.I0(\reg_pc_reg_n_0_[10] ),
        .I1(\decoded_imm_reg_n_0_[10] ),
        .O(\reg_out[12]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[12]_i_11 
       (.I0(\reg_pc_reg_n_0_[9] ),
        .I1(\decoded_imm_reg_n_0_[9] ),
        .O(\reg_out[12]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h888A8A8AAA8A8A8A)) 
    \reg_out[12]_i_2 
       (.I0(\reg_out[31]_i_7_n_0 ),
        .I1(\reg_out[14]_i_6_n_0 ),
        .I2(mem_axi_rdata[12]),
        .I3(\reg_op1_reg[31]_0 [1]),
        .I4(\mem_wordsize_reg_n_0_[0] ),
        .I5(mem_axi_rdata[28]),
        .O(\reg_out[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[12]_i_4 
       (.I0(\reg_out_reg[12]_i_6_n_4 ),
        .I1(Q[1]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg[31]_0 [12]),
        .O(\reg_out[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[12]_i_5 
       (.I0(\reg_out[12]_i_7_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[12]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF880088)) 
    \reg_out[12]_i_7 
       (.I0(data3[12]),
        .I1(instr_rdinstrh),
        .I2(count_cycle_reg[44]),
        .I3(instr_rdinstr),
        .I4(\count_instr_reg_n_0_[12] ),
        .I5(instr_rdcycleh),
        .O(\reg_out[12]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[12]_i_8 
       (.I0(\reg_pc_reg_n_0_[12] ),
        .I1(\decoded_imm_reg_n_0_[12] ),
        .O(\reg_out[12]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[12]_i_9 
       (.I0(\reg_pc_reg_n_0_[11] ),
        .I1(\decoded_imm_reg_n_0_[11] ),
        .O(\reg_out[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h888A8A8AAA8A8A8A)) 
    \reg_out[13]_i_2 
       (.I0(\reg_out[31]_i_7_n_0 ),
        .I1(\reg_out[14]_i_6_n_0 ),
        .I2(mem_axi_rdata[13]),
        .I3(\reg_op1_reg[31]_0 [1]),
        .I4(\mem_wordsize_reg_n_0_[0] ),
        .I5(mem_axi_rdata[29]),
        .O(\reg_out[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[13]_i_4 
       (.I0(\reg_out_reg[16]_i_6_n_7 ),
        .I1(Q[1]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg[31]_0 [13]),
        .O(\reg_out[13]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[13]_i_5 
       (.I0(\reg_out[13]_i_6_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[13]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF880088)) 
    \reg_out[13]_i_6 
       (.I0(data3[13]),
        .I1(instr_rdinstrh),
        .I2(count_cycle_reg[45]),
        .I3(instr_rdinstr),
        .I4(\count_instr_reg_n_0_[13] ),
        .I5(instr_rdcycleh),
        .O(\reg_out[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h888A8A8AAA8A8A8A)) 
    \reg_out[14]_i_2 
       (.I0(\reg_out[31]_i_7_n_0 ),
        .I1(\reg_out[14]_i_6_n_0 ),
        .I2(mem_axi_rdata[14]),
        .I3(\reg_op1_reg[31]_0 [1]),
        .I4(\mem_wordsize_reg_n_0_[0] ),
        .I5(mem_axi_rdata[30]),
        .O(\reg_out[14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[14]_i_4 
       (.I0(\reg_out_reg[16]_i_6_n_6 ),
        .I1(Q[1]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg[31]_0 [14]),
        .O(\reg_out[14]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[14]_i_5 
       (.I0(\reg_out[14]_i_7_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[14]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[14]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \reg_out[14]_i_6 
       (.I0(\mem_wordsize_reg_n_0_[1] ),
        .I1(latched_is_lu_reg_0),
        .I2(latched_is_lh_reg_0),
        .O(\reg_out[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF880088)) 
    \reg_out[14]_i_7 
       (.I0(data3[14]),
        .I1(instr_rdinstrh),
        .I2(count_cycle_reg[46]),
        .I3(instr_rdinstr),
        .I4(\count_instr_reg_n_0_[14] ),
        .I5(instr_rdcycleh),
        .O(\reg_out[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA220AAAAAAAAA)) 
    \reg_out[15]_i_2 
       (.I0(\reg_out[31]_i_7_n_0 ),
        .I1(mem_axi_rdata[15]),
        .I2(mem_axi_rdata[31]),
        .I3(\reg_out[15]_i_6_n_0 ),
        .I4(\mem_wordsize_reg_n_0_[1] ),
        .I5(\reg_out[15]_i_7_n_0 ),
        .O(\reg_out[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[15]_i_4 
       (.I0(\reg_out_reg[16]_i_6_n_5 ),
        .I1(Q[1]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg[31]_0 [15]),
        .O(\reg_out[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[15]_i_5 
       (.I0(\reg_out[15]_i_9_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[15]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \reg_out[15]_i_6 
       (.I0(\reg_op1_reg[31]_0 [1]),
        .I1(\mem_wordsize_reg_n_0_[0] ),
        .O(\reg_out[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \reg_out[15]_i_7 
       (.I0(latched_is_lh_reg_0),
        .I1(latched_is_lu_reg_0),
        .O(\reg_out[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF880088)) 
    \reg_out[15]_i_9 
       (.I0(data3[15]),
        .I1(instr_rdinstrh),
        .I2(count_cycle_reg[47]),
        .I3(instr_rdinstr),
        .I4(\count_instr_reg_n_0_[15] ),
        .I5(instr_rdcycleh),
        .O(\reg_out[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[16]_i_10 
       (.I0(\reg_pc_reg_n_0_[14] ),
        .I1(\decoded_imm_reg_n_0_[14] ),
        .O(\reg_out[16]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[16]_i_11 
       (.I0(\reg_pc_reg_n_0_[13] ),
        .I1(\decoded_imm_reg_n_0_[13] ),
        .O(\reg_out[16]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h08AAAAAA08AA08AA)) 
    \reg_out[16]_i_2 
       (.I0(\cpu_state_reg_n_0_[0] ),
        .I1(mem_axi_rdata[16]),
        .I2(\reg_out[31]_i_6_n_0 ),
        .I3(\reg_out[31]_i_7_n_0 ),
        .I4(\reg_out[31]_i_8_n_0 ),
        .I5(latched_is_lh_reg_0),
        .O(\reg_out[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[16]_i_4 
       (.I0(\reg_out_reg[16]_i_6_n_4 ),
        .I1(Q[1]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg[31]_0 [16]),
        .O(\reg_out[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[16]_i_5 
       (.I0(\reg_out[16]_i_7_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[16]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF880088)) 
    \reg_out[16]_i_7 
       (.I0(data3[16]),
        .I1(instr_rdinstrh),
        .I2(count_cycle_reg[48]),
        .I3(instr_rdinstr),
        .I4(\count_instr_reg_n_0_[16] ),
        .I5(instr_rdcycleh),
        .O(\reg_out[16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[16]_i_8 
       (.I0(\reg_pc_reg_n_0_[16] ),
        .I1(\decoded_imm_reg_n_0_[16] ),
        .O(\reg_out[16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[16]_i_9 
       (.I0(\reg_pc_reg_n_0_[15] ),
        .I1(\decoded_imm_reg_n_0_[15] ),
        .O(\reg_out[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h08AAAAAA08AA08AA)) 
    \reg_out[17]_i_2 
       (.I0(\cpu_state_reg_n_0_[0] ),
        .I1(mem_axi_rdata[17]),
        .I2(\reg_out[31]_i_6_n_0 ),
        .I3(\reg_out[31]_i_7_n_0 ),
        .I4(\reg_out[31]_i_8_n_0 ),
        .I5(latched_is_lh_reg_0),
        .O(\reg_out[17]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[17]_i_4 
       (.I0(\reg_out_reg[20]_i_6_n_7 ),
        .I1(Q[1]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg[31]_0 [17]),
        .O(\reg_out[17]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[17]_i_5 
       (.I0(\reg_out[17]_i_6_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[17]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000B888B888)) 
    \reg_out[17]_i_6 
       (.I0(\count_instr_reg_n_0_[17] ),
        .I1(instr_rdinstr),
        .I2(data3[17]),
        .I3(instr_rdinstrh),
        .I4(count_cycle_reg[49]),
        .I5(instr_rdcycleh),
        .O(\reg_out[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h08AAAAAA08AA08AA)) 
    \reg_out[18]_i_2 
       (.I0(\cpu_state_reg_n_0_[0] ),
        .I1(mem_axi_rdata[18]),
        .I2(\reg_out[31]_i_6_n_0 ),
        .I3(\reg_out[31]_i_7_n_0 ),
        .I4(\reg_out[31]_i_8_n_0 ),
        .I5(latched_is_lh_reg_0),
        .O(\reg_out[18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[18]_i_4 
       (.I0(\reg_out_reg[20]_i_6_n_6 ),
        .I1(Q[1]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg[31]_0 [18]),
        .O(\reg_out[18]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[18]_i_5 
       (.I0(\reg_out[18]_i_6_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[18]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF880088)) 
    \reg_out[18]_i_6 
       (.I0(data3[18]),
        .I1(instr_rdinstrh),
        .I2(count_cycle_reg[50]),
        .I3(instr_rdinstr),
        .I4(\count_instr_reg_n_0_[18] ),
        .I5(instr_rdcycleh),
        .O(\reg_out[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h08AAAAAA08AA08AA)) 
    \reg_out[19]_i_2 
       (.I0(\cpu_state_reg_n_0_[0] ),
        .I1(mem_axi_rdata[19]),
        .I2(\reg_out[31]_i_6_n_0 ),
        .I3(\reg_out[31]_i_7_n_0 ),
        .I4(\reg_out[31]_i_8_n_0 ),
        .I5(latched_is_lh_reg_0),
        .O(\reg_out[19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[19]_i_4 
       (.I0(\reg_out_reg[20]_i_6_n_5 ),
        .I1(Q[1]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg[31]_0 [19]),
        .O(\reg_out[19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[19]_i_5 
       (.I0(\reg_out[19]_i_8_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[19]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF880088)) 
    \reg_out[19]_i_8 
       (.I0(data3[19]),
        .I1(instr_rdinstrh),
        .I2(count_cycle_reg[51]),
        .I3(instr_rdinstr),
        .I4(\count_instr_reg_n_0_[19] ),
        .I5(instr_rdcycleh),
        .O(\reg_out[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E0000000E000)) 
    \reg_out[1]_i_2 
       (.I0(pcpi_mul_n_96),
        .I1(instr_rdinstrh),
        .I2(\cpu_state_reg_n_0_[5] ),
        .I3(\reg_out[1]_i_4_n_0 ),
        .I4(instr_rdcycle),
        .I5(count_cycle_reg[1]),
        .O(\reg_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAFFEAFFEAEAEA)) 
    \reg_out[1]_i_3 
       (.I0(\reg_out[1]_i_5_n_0 ),
        .I1(\reg_op1_reg[31]_0 [1]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(\decoded_imm_reg_n_0_[1] ),
        .I5(\reg_pc_reg_n_0_[1] ),
        .O(\reg_out[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000B888B888)) 
    \reg_out[1]_i_4 
       (.I0(\count_instr_reg_n_0_[1] ),
        .I1(instr_rdinstr),
        .I2(data3[1]),
        .I3(instr_rdinstrh),
        .I4(count_cycle_reg[33]),
        .I5(instr_rdcycleh),
        .O(\reg_out[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \reg_out[1]_i_5 
       (.I0(\reg_out[1]_i_6_n_0 ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(mem_axi_rdata[17]),
        .I3(\reg_out[15]_i_6_n_0 ),
        .I4(mem_axi_rdata[1]),
        .I5(\reg_out[7]_i_6_n_0 ),
        .O(\reg_out[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \reg_out[1]_i_6 
       (.I0(mem_axi_rdata[1]),
        .I1(mem_axi_rdata[9]),
        .I2(mem_axi_rdata[17]),
        .I3(\reg_op1_reg[31]_0 [1]),
        .I4(\reg_op1_reg[31]_0 [0]),
        .I5(mem_axi_rdata[25]),
        .O(\reg_out[1]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[20]_i_10 
       (.I0(\reg_pc_reg_n_0_[19] ),
        .I1(\decoded_imm_reg_n_0_[19] ),
        .O(\reg_out[20]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[20]_i_11 
       (.I0(\reg_pc_reg_n_0_[18] ),
        .I1(\decoded_imm_reg_n_0_[18] ),
        .O(\reg_out[20]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[20]_i_12 
       (.I0(\reg_pc_reg_n_0_[17] ),
        .I1(\decoded_imm_reg_n_0_[17] ),
        .O(\reg_out[20]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h08AAAAAA08AA08AA)) 
    \reg_out[20]_i_2 
       (.I0(\cpu_state_reg_n_0_[0] ),
        .I1(mem_axi_rdata[20]),
        .I2(\reg_out[31]_i_6_n_0 ),
        .I3(\reg_out[31]_i_7_n_0 ),
        .I4(\reg_out[31]_i_8_n_0 ),
        .I5(latched_is_lh_reg_0),
        .O(\reg_out[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[20]_i_3 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(\reg_op1_reg[31]_0 [20]),
        .I2(\reg_out_reg[20]_i_6_n_4 ),
        .I3(Q[1]),
        .O(\reg_out[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0E0000000E000)) 
    \reg_out[20]_i_5 
       (.I0(pcpi_mul_n_96),
        .I1(instr_rdinstrh),
        .I2(\cpu_state_reg_n_0_[5] ),
        .I3(\reg_out[20]_i_8_n_0 ),
        .I4(instr_rdcycle),
        .I5(count_cycle_reg[20]),
        .O(\reg_out[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000B888B888)) 
    \reg_out[20]_i_8 
       (.I0(\count_instr_reg_n_0_[20] ),
        .I1(instr_rdinstr),
        .I2(data3[20]),
        .I3(instr_rdinstrh),
        .I4(count_cycle_reg[52]),
        .I5(instr_rdcycleh),
        .O(\reg_out[20]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[20]_i_9 
       (.I0(\reg_pc_reg_n_0_[20] ),
        .I1(\decoded_imm_reg_n_0_[20] ),
        .O(\reg_out[20]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h08AAAAAA08AA08AA)) 
    \reg_out[21]_i_2 
       (.I0(\cpu_state_reg_n_0_[0] ),
        .I1(mem_axi_rdata[21]),
        .I2(\reg_out[31]_i_6_n_0 ),
        .I3(\reg_out[31]_i_7_n_0 ),
        .I4(\reg_out[31]_i_8_n_0 ),
        .I5(latched_is_lh_reg_0),
        .O(\reg_out[21]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[21]_i_4 
       (.I0(\reg_out_reg[24]_i_6_n_7 ),
        .I1(Q[1]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg[31]_0 [21]),
        .O(\reg_out[21]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[21]_i_5 
       (.I0(\reg_out[21]_i_6_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[21]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF880088)) 
    \reg_out[21]_i_6 
       (.I0(data3[21]),
        .I1(instr_rdinstrh),
        .I2(count_cycle_reg[53]),
        .I3(instr_rdinstr),
        .I4(\count_instr_reg_n_0_[21] ),
        .I5(instr_rdcycleh),
        .O(\reg_out[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h08AAAAAA08AA08AA)) 
    \reg_out[22]_i_2 
       (.I0(\cpu_state_reg_n_0_[0] ),
        .I1(mem_axi_rdata[22]),
        .I2(\reg_out[31]_i_6_n_0 ),
        .I3(\reg_out[31]_i_7_n_0 ),
        .I4(\reg_out[31]_i_8_n_0 ),
        .I5(latched_is_lh_reg_0),
        .O(\reg_out[22]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[22]_i_4 
       (.I0(\reg_out_reg[24]_i_6_n_6 ),
        .I1(Q[1]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg[31]_0 [22]),
        .O(\reg_out[22]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[22]_i_5 
       (.I0(\reg_out[22]_i_6_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[22]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF880088)) 
    \reg_out[22]_i_6 
       (.I0(data3[22]),
        .I1(instr_rdinstrh),
        .I2(count_cycle_reg[54]),
        .I3(instr_rdinstr),
        .I4(\count_instr_reg_n_0_[22] ),
        .I5(instr_rdcycleh),
        .O(\reg_out[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h08AAAAAA08AA08AA)) 
    \reg_out[23]_i_2 
       (.I0(\cpu_state_reg_n_0_[0] ),
        .I1(mem_axi_rdata[23]),
        .I2(\reg_out[31]_i_6_n_0 ),
        .I3(\reg_out[31]_i_7_n_0 ),
        .I4(\reg_out[31]_i_8_n_0 ),
        .I5(latched_is_lh_reg_0),
        .O(\reg_out[23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[23]_i_4 
       (.I0(\reg_out_reg[24]_i_6_n_5 ),
        .I1(Q[1]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg[31]_0 [23]),
        .O(\reg_out[23]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[23]_i_5 
       (.I0(\reg_out[23]_i_8_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[23]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF880088)) 
    \reg_out[23]_i_8 
       (.I0(data3[23]),
        .I1(instr_rdinstrh),
        .I2(count_cycle_reg[55]),
        .I3(instr_rdinstr),
        .I4(\count_instr_reg_n_0_[23] ),
        .I5(instr_rdcycleh),
        .O(\reg_out[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[24]_i_10 
       (.I0(\reg_pc_reg_n_0_[22] ),
        .I1(\decoded_imm_reg_n_0_[22] ),
        .O(\reg_out[24]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[24]_i_11 
       (.I0(\reg_pc_reg_n_0_[21] ),
        .I1(\decoded_imm_reg_n_0_[21] ),
        .O(\reg_out[24]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h08AAAAAA08AA08AA)) 
    \reg_out[24]_i_2 
       (.I0(\cpu_state_reg_n_0_[0] ),
        .I1(mem_axi_rdata[24]),
        .I2(\reg_out[31]_i_6_n_0 ),
        .I3(\reg_out[31]_i_7_n_0 ),
        .I4(\reg_out[31]_i_8_n_0 ),
        .I5(latched_is_lh_reg_0),
        .O(\reg_out[24]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[24]_i_4 
       (.I0(\reg_out_reg[24]_i_6_n_4 ),
        .I1(Q[1]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg[31]_0 [24]),
        .O(\reg_out[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[24]_i_5 
       (.I0(\reg_out[24]_i_7_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[24]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF880088)) 
    \reg_out[24]_i_7 
       (.I0(data3[24]),
        .I1(instr_rdinstrh),
        .I2(count_cycle_reg[56]),
        .I3(instr_rdinstr),
        .I4(\count_instr_reg_n_0_[24] ),
        .I5(instr_rdcycleh),
        .O(\reg_out[24]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[24]_i_8 
       (.I0(\reg_pc_reg_n_0_[24] ),
        .I1(\decoded_imm_reg_n_0_[24] ),
        .O(\reg_out[24]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[24]_i_9 
       (.I0(\reg_pc_reg_n_0_[23] ),
        .I1(\decoded_imm_reg_n_0_[23] ),
        .O(\reg_out[24]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h08AAAAAA08AA08AA)) 
    \reg_out[25]_i_2 
       (.I0(\cpu_state_reg_n_0_[0] ),
        .I1(mem_axi_rdata[25]),
        .I2(\reg_out[31]_i_6_n_0 ),
        .I3(\reg_out[31]_i_7_n_0 ),
        .I4(\reg_out[31]_i_8_n_0 ),
        .I5(latched_is_lh_reg_0),
        .O(\reg_out[25]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[25]_i_4 
       (.I0(\reg_out_reg[28]_i_6_n_7 ),
        .I1(Q[1]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg[31]_0 [25]),
        .O(\reg_out[25]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[25]_i_5 
       (.I0(\reg_out[25]_i_6_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[25]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF880088)) 
    \reg_out[25]_i_6 
       (.I0(data3[25]),
        .I1(instr_rdinstrh),
        .I2(count_cycle_reg[57]),
        .I3(instr_rdinstr),
        .I4(\count_instr_reg_n_0_[25] ),
        .I5(instr_rdcycleh),
        .O(\reg_out[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h08AAAAAA08AA08AA)) 
    \reg_out[26]_i_2 
       (.I0(\cpu_state_reg_n_0_[0] ),
        .I1(mem_axi_rdata[26]),
        .I2(\reg_out[31]_i_6_n_0 ),
        .I3(\reg_out[31]_i_7_n_0 ),
        .I4(\reg_out[31]_i_8_n_0 ),
        .I5(latched_is_lh_reg_0),
        .O(\reg_out[26]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[26]_i_4 
       (.I0(\reg_out_reg[28]_i_6_n_6 ),
        .I1(Q[1]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg[31]_0 [26]),
        .O(\reg_out[26]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[26]_i_5 
       (.I0(\reg_out[26]_i_6_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[26]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000B888B888)) 
    \reg_out[26]_i_6 
       (.I0(\count_instr_reg_n_0_[26] ),
        .I1(instr_rdinstr),
        .I2(data3[26]),
        .I3(instr_rdinstrh),
        .I4(count_cycle_reg[58]),
        .I5(instr_rdcycleh),
        .O(\reg_out[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h08AAAAAA08AA08AA)) 
    \reg_out[27]_i_2 
       (.I0(\cpu_state_reg_n_0_[0] ),
        .I1(mem_axi_rdata[27]),
        .I2(\reg_out[31]_i_6_n_0 ),
        .I3(\reg_out[31]_i_7_n_0 ),
        .I4(\reg_out[31]_i_8_n_0 ),
        .I5(latched_is_lh_reg_0),
        .O(\reg_out[27]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[27]_i_4 
       (.I0(\reg_out_reg[28]_i_6_n_5 ),
        .I1(Q[1]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg[31]_0 [27]),
        .O(\reg_out[27]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[27]_i_5 
       (.I0(\reg_out[27]_i_8_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[27]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \reg_out[27]_i_8 
       (.I0(count_cycle_reg[59]),
        .I1(instr_rdcycleh),
        .I2(\count_instr_reg_n_0_[27] ),
        .I3(instr_rdinstr),
        .I4(data3[27]),
        .I5(instr_rdinstrh),
        .O(\reg_out[27]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[28]_i_10 
       (.I0(\reg_pc_reg_n_0_[26] ),
        .I1(\decoded_imm_reg_n_0_[26] ),
        .O(\reg_out[28]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[28]_i_11 
       (.I0(\reg_pc_reg_n_0_[25] ),
        .I1(\decoded_imm_reg_n_0_[25] ),
        .O(\reg_out[28]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h08AAAAAA08AA08AA)) 
    \reg_out[28]_i_2 
       (.I0(\cpu_state_reg_n_0_[0] ),
        .I1(mem_axi_rdata[28]),
        .I2(\reg_out[31]_i_6_n_0 ),
        .I3(\reg_out[31]_i_7_n_0 ),
        .I4(\reg_out[31]_i_8_n_0 ),
        .I5(latched_is_lh_reg_0),
        .O(\reg_out[28]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[28]_i_4 
       (.I0(\reg_out_reg[28]_i_6_n_4 ),
        .I1(Q[1]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg[31]_0 [28]),
        .O(\reg_out[28]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[28]_i_5 
       (.I0(\reg_out[28]_i_7_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[28]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \reg_out[28]_i_7 
       (.I0(count_cycle_reg[60]),
        .I1(instr_rdcycleh),
        .I2(\count_instr_reg_n_0_[28] ),
        .I3(instr_rdinstr),
        .I4(data3[28]),
        .I5(instr_rdinstrh),
        .O(\reg_out[28]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[28]_i_8 
       (.I0(\reg_pc_reg_n_0_[28] ),
        .I1(\decoded_imm_reg_n_0_[28] ),
        .O(\reg_out[28]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[28]_i_9 
       (.I0(\reg_pc_reg_n_0_[27] ),
        .I1(\decoded_imm_reg_n_0_[27] ),
        .O(\reg_out[28]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h08AAAAAA08AA08AA)) 
    \reg_out[29]_i_2 
       (.I0(\cpu_state_reg_n_0_[0] ),
        .I1(mem_axi_rdata[29]),
        .I2(\reg_out[31]_i_6_n_0 ),
        .I3(\reg_out[31]_i_7_n_0 ),
        .I4(\reg_out[31]_i_8_n_0 ),
        .I5(latched_is_lh_reg_0),
        .O(\reg_out[29]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[29]_i_4 
       (.I0(\reg_out_reg[31]_i_11_n_7 ),
        .I1(Q[1]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg[31]_0 [29]),
        .O(\reg_out[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7077707077777777)) 
    \reg_out[29]_i_5 
       (.I0(count_cycle_reg[29]),
        .I1(instr_rdcycle),
        .I2(\reg_out[31]_i_12_n_0 ),
        .I3(count_cycle_reg[61]),
        .I4(instr_rdcycleh),
        .I5(\reg_out[29]_i_6_n_0 ),
        .O(\reg_out[29]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \reg_out[29]_i_6 
       (.I0(instr_rdcycleh),
        .I1(data3[29]),
        .I2(instr_rdinstrh),
        .I3(instr_rdinstr),
        .I4(\count_instr_reg_n_0_[29] ),
        .O(\reg_out[29]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[2]_i_2 
       (.I0(\reg_out[2]_i_4_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[2]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[2]_i_3 
       (.I0(\reg_out[2]_i_5_n_0 ),
        .I1(\reg_op1_reg[31]_0 [2]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(\reg_out_reg[4]_i_6_n_6 ),
        .O(\reg_out[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000B888B888)) 
    \reg_out[2]_i_4 
       (.I0(\count_instr_reg_n_0_[2] ),
        .I1(instr_rdinstr),
        .I2(data3[2]),
        .I3(instr_rdinstrh),
        .I4(count_cycle_reg[34]),
        .I5(instr_rdcycleh),
        .O(\reg_out[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \reg_out[2]_i_5 
       (.I0(\reg_out[2]_i_6_n_0 ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(mem_axi_rdata[18]),
        .I3(\reg_out[15]_i_6_n_0 ),
        .I4(mem_axi_rdata[2]),
        .I5(\reg_out[7]_i_6_n_0 ),
        .O(\reg_out[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \reg_out[2]_i_6 
       (.I0(mem_axi_rdata[2]),
        .I1(mem_axi_rdata[10]),
        .I2(mem_axi_rdata[18]),
        .I3(\reg_op1_reg[31]_0 [1]),
        .I4(\reg_op1_reg[31]_0 [0]),
        .I5(mem_axi_rdata[26]),
        .O(\reg_out[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h08AAAAAA08AA08AA)) 
    \reg_out[30]_i_2 
       (.I0(\cpu_state_reg_n_0_[0] ),
        .I1(mem_axi_rdata[30]),
        .I2(\reg_out[31]_i_6_n_0 ),
        .I3(\reg_out[31]_i_7_n_0 ),
        .I4(\reg_out[31]_i_8_n_0 ),
        .I5(latched_is_lh_reg_0),
        .O(\reg_out[30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[30]_i_4 
       (.I0(\reg_out_reg[31]_i_11_n_6 ),
        .I1(Q[1]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg[31]_0 [30]),
        .O(\reg_out[30]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[30]_i_5 
       (.I0(\reg_out[30]_i_6_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[30]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \reg_out[30]_i_6 
       (.I0(count_cycle_reg[62]),
        .I1(instr_rdcycleh),
        .I2(\count_instr_reg_n_0_[30] ),
        .I3(instr_rdinstr),
        .I4(data3[30]),
        .I5(instr_rdinstrh),
        .O(\reg_out[30]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hAAAB)) 
    \reg_out[31]_i_12 
       (.I0(instr_rdcycle),
        .I1(instr_rdinstr),
        .I2(instr_rdcycleh),
        .I3(instr_rdinstrh),
        .O(\reg_out[31]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAAEA)) 
    \reg_out[31]_i_13 
       (.I0(instr_rdcycleh),
        .I1(data3[31]),
        .I2(instr_rdinstrh),
        .I3(instr_rdinstr),
        .I4(\count_instr_reg_n_0_[31] ),
        .O(\reg_out[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h08AAAAAA08AA08AA)) 
    \reg_out[31]_i_2 
       (.I0(\cpu_state_reg_n_0_[0] ),
        .I1(mem_axi_rdata[31]),
        .I2(\reg_out[31]_i_6_n_0 ),
        .I3(\reg_out[31]_i_7_n_0 ),
        .I4(\reg_out[31]_i_8_n_0 ),
        .I5(latched_is_lh_reg_0),
        .O(\reg_out[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[31]_i_22 
       (.I0(\decoded_imm_reg_n_0_[31] ),
        .I1(\reg_pc_reg_n_0_[31] ),
        .O(\reg_out[31]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[31]_i_23 
       (.I0(\reg_pc_reg_n_0_[30] ),
        .I1(\decoded_imm_reg_n_0_[30] ),
        .O(\reg_out[31]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[31]_i_24 
       (.I0(\reg_pc_reg_n_0_[29] ),
        .I1(\decoded_imm_reg_n_0_[29] ),
        .O(\reg_out[31]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[31]_i_4 
       (.I0(\reg_out_reg[31]_i_11_n_5 ),
        .I1(Q[1]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg[31]_0 [31]),
        .O(\reg_out[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7077707077777777)) 
    \reg_out[31]_i_5 
       (.I0(count_cycle_reg[31]),
        .I1(instr_rdcycle),
        .I2(\reg_out[31]_i_12_n_0 ),
        .I3(count_cycle_reg[63]),
        .I4(instr_rdcycleh),
        .I5(\reg_out[31]_i_13_n_0 ),
        .O(\reg_out[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \reg_out[31]_i_6 
       (.I0(latched_is_lu_reg_0),
        .I1(\mem_wordsize_reg_n_0_[0] ),
        .I2(\mem_wordsize_reg_n_0_[1] ),
        .O(\reg_out[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \reg_out[31]_i_7 
       (.I0(\reg_out[7]_i_7_n_0 ),
        .I1(latched_is_lb_reg_0),
        .O(\reg_out[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFFFF3555)) 
    \reg_out[31]_i_8 
       (.I0(mem_axi_rdata[15]),
        .I1(mem_axi_rdata[31]),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\reg_op1_reg[31]_0 [1]),
        .I4(\mem_wordsize_reg_n_0_[1] ),
        .O(\reg_out[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \reg_out[3]_i_11 
       (.I0(mem_axi_rdata[3]),
        .I1(mem_axi_rdata[11]),
        .I2(mem_axi_rdata[19]),
        .I3(\reg_op1_reg[31]_0 [1]),
        .I4(\reg_op1_reg[31]_0 [0]),
        .I5(mem_axi_rdata[27]),
        .O(\reg_out[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[3]_i_2 
       (.I0(\reg_out[3]_i_5_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[3]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[3]_i_3 
       (.I0(\reg_out[3]_i_6_n_0 ),
        .I1(\reg_op1_reg[31]_0 [3]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(\reg_out_reg[4]_i_6_n_5 ),
        .O(\reg_out[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF880088)) 
    \reg_out[3]_i_5 
       (.I0(data3[3]),
        .I1(instr_rdinstrh),
        .I2(count_cycle_reg[35]),
        .I3(instr_rdinstr),
        .I4(\count_instr_reg_n_0_[3] ),
        .I5(instr_rdcycleh),
        .O(\reg_out[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \reg_out[3]_i_6 
       (.I0(\reg_out[3]_i_11_n_0 ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(mem_axi_rdata[19]),
        .I3(\reg_out[15]_i_6_n_0 ),
        .I4(mem_axi_rdata[3]),
        .I5(\reg_out[7]_i_6_n_0 ),
        .O(\reg_out[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[4]_i_10 
       (.I0(\reg_pc_reg_n_0_[2] ),
        .I1(\decoded_imm_reg_n_0_[2] ),
        .O(\reg_out[4]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[4]_i_11 
       (.I0(\reg_pc_reg_n_0_[1] ),
        .I1(\decoded_imm_reg_n_0_[1] ),
        .O(\reg_out[4]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[4]_i_2 
       (.I0(\reg_out[4]_i_4_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[4]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[4]_i_3 
       (.I0(\reg_out[4]_i_5_n_0 ),
        .I1(\reg_op1_reg[31]_0 [4]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(\reg_out_reg[4]_i_6_n_4 ),
        .O(\reg_out[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF880088)) 
    \reg_out[4]_i_4 
       (.I0(data3[4]),
        .I1(instr_rdinstrh),
        .I2(count_cycle_reg[36]),
        .I3(instr_rdinstr),
        .I4(\count_instr_reg_n_0_[4] ),
        .I5(instr_rdcycleh),
        .O(\reg_out[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \reg_out[4]_i_5 
       (.I0(\reg_out[4]_i_7_n_0 ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(mem_axi_rdata[20]),
        .I3(\reg_out[15]_i_6_n_0 ),
        .I4(mem_axi_rdata[4]),
        .I5(\reg_out[7]_i_6_n_0 ),
        .O(\reg_out[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \reg_out[4]_i_7 
       (.I0(mem_axi_rdata[4]),
        .I1(mem_axi_rdata[12]),
        .I2(mem_axi_rdata[20]),
        .I3(\reg_op1_reg[31]_0 [1]),
        .I4(\reg_op1_reg[31]_0 [0]),
        .I5(mem_axi_rdata[28]),
        .O(\reg_out[4]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[4]_i_8 
       (.I0(\reg_pc_reg_n_0_[4] ),
        .I1(\decoded_imm_reg_n_0_[4] ),
        .O(\reg_out[4]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[4]_i_9 
       (.I0(\reg_pc_reg_n_0_[3] ),
        .I1(\decoded_imm_reg_n_0_[3] ),
        .O(\reg_out[4]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[5]_i_2 
       (.I0(\reg_out[5]_i_4_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[5]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[5]_i_3 
       (.I0(\reg_out[5]_i_5_n_0 ),
        .I1(\reg_op1_reg[31]_0 [5]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(\reg_out_reg[8]_i_6_n_7 ),
        .O(\reg_out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF880088)) 
    \reg_out[5]_i_4 
       (.I0(data3[5]),
        .I1(instr_rdinstrh),
        .I2(count_cycle_reg[37]),
        .I3(instr_rdinstr),
        .I4(\count_instr_reg_n_0_[5] ),
        .I5(instr_rdcycleh),
        .O(\reg_out[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \reg_out[5]_i_5 
       (.I0(\reg_out[5]_i_6_n_0 ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(mem_axi_rdata[21]),
        .I3(\reg_out[15]_i_6_n_0 ),
        .I4(mem_axi_rdata[5]),
        .I5(\reg_out[7]_i_6_n_0 ),
        .O(\reg_out[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \reg_out[5]_i_6 
       (.I0(mem_axi_rdata[5]),
        .I1(mem_axi_rdata[13]),
        .I2(mem_axi_rdata[21]),
        .I3(\reg_op1_reg[31]_0 [1]),
        .I4(\reg_op1_reg[31]_0 [0]),
        .I5(mem_axi_rdata[29]),
        .O(\reg_out[5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[6]_i_2 
       (.I0(\reg_out[6]_i_4_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[6]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \reg_out[6]_i_3 
       (.I0(\reg_out[6]_i_5_n_0 ),
        .I1(\reg_op1_reg[31]_0 [6]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(\reg_out_reg[8]_i_6_n_6 ),
        .O(\reg_out[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000B888B888)) 
    \reg_out[6]_i_4 
       (.I0(\count_instr_reg_n_0_[6] ),
        .I1(instr_rdinstr),
        .I2(data3[6]),
        .I3(instr_rdinstrh),
        .I4(count_cycle_reg[38]),
        .I5(instr_rdcycleh),
        .O(\reg_out[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \reg_out[6]_i_5 
       (.I0(\reg_out[6]_i_6_n_0 ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(mem_axi_rdata[22]),
        .I3(\reg_out[15]_i_6_n_0 ),
        .I4(mem_axi_rdata[6]),
        .I5(\reg_out[7]_i_6_n_0 ),
        .O(\reg_out[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \reg_out[6]_i_6 
       (.I0(mem_axi_rdata[6]),
        .I1(mem_axi_rdata[14]),
        .I2(mem_axi_rdata[22]),
        .I3(\reg_op1_reg[31]_0 [1]),
        .I4(\reg_op1_reg[31]_0 [0]),
        .I5(mem_axi_rdata[30]),
        .O(\reg_out[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3300550F33FF550F)) 
    \reg_out[7]_i_12 
       (.I0(mem_axi_rdata[23]),
        .I1(mem_axi_rdata[31]),
        .I2(mem_axi_rdata[7]),
        .I3(\reg_op1_reg[31]_0 [1]),
        .I4(\reg_op1_reg[31]_0 [0]),
        .I5(mem_axi_rdata[15]),
        .O(\reg_out[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[7]_i_2 
       (.I0(\reg_out[7]_i_5_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[7]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF111F111F111)) 
    \reg_out[7]_i_3 
       (.I0(\reg_out[7]_i_6_n_0 ),
        .I1(\reg_out[7]_i_7_n_0 ),
        .I2(\reg_op1_reg[31]_0 [7]),
        .I3(\cpu_state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(\reg_out_reg[8]_i_6_n_5 ),
        .O(\reg_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF880088)) 
    \reg_out[7]_i_5 
       (.I0(data3[7]),
        .I1(instr_rdinstrh),
        .I2(count_cycle_reg[39]),
        .I3(instr_rdinstr),
        .I4(\count_instr_reg_n_0_[7] ),
        .I5(instr_rdcycleh),
        .O(\reg_out[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \reg_out[7]_i_6 
       (.I0(latched_is_lh_reg_0),
        .I1(latched_is_lu_reg_0),
        .I2(latched_is_lb_reg_0),
        .I3(\cpu_state_reg_n_0_[0] ),
        .O(\reg_out[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h888B8B8BBB8B8B8B)) 
    \reg_out[7]_i_7 
       (.I0(\reg_out[7]_i_12_n_0 ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(mem_axi_rdata[7]),
        .I3(\reg_op1_reg[31]_0 [1]),
        .I4(\mem_wordsize_reg_n_0_[0] ),
        .I5(mem_axi_rdata[23]),
        .O(\reg_out[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[8]_i_10 
       (.I0(\reg_pc_reg_n_0_[6] ),
        .I1(\decoded_imm_reg_n_0_[6] ),
        .O(\reg_out[8]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[8]_i_11 
       (.I0(\reg_pc_reg_n_0_[5] ),
        .I1(\decoded_imm_reg_n_0_[5] ),
        .O(\reg_out[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h888A8A8AAA8A8A8A)) 
    \reg_out[8]_i_2 
       (.I0(\reg_out[31]_i_7_n_0 ),
        .I1(\reg_out[14]_i_6_n_0 ),
        .I2(mem_axi_rdata[8]),
        .I3(\reg_op1_reg[31]_0 [1]),
        .I4(\mem_wordsize_reg_n_0_[0] ),
        .I5(mem_axi_rdata[24]),
        .O(\reg_out[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[8]_i_4 
       (.I0(\reg_out_reg[8]_i_6_n_4 ),
        .I1(Q[1]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg[31]_0 [8]),
        .O(\reg_out[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[8]_i_5 
       (.I0(\reg_out[8]_i_7_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[8]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FF880088)) 
    \reg_out[8]_i_7 
       (.I0(data3[8]),
        .I1(instr_rdinstrh),
        .I2(count_cycle_reg[40]),
        .I3(instr_rdinstr),
        .I4(\count_instr_reg_n_0_[8] ),
        .I5(instr_rdcycleh),
        .O(\reg_out[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[8]_i_8 
       (.I0(\reg_pc_reg_n_0_[8] ),
        .I1(\decoded_imm_reg_n_0_[8] ),
        .O(\reg_out[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[8]_i_9 
       (.I0(\reg_pc_reg_n_0_[7] ),
        .I1(\decoded_imm_reg_n_0_[7] ),
        .O(\reg_out[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h888A8A8AAA8A8A8A)) 
    \reg_out[9]_i_2 
       (.I0(\reg_out[31]_i_7_n_0 ),
        .I1(\reg_out[14]_i_6_n_0 ),
        .I2(mem_axi_rdata[9]),
        .I3(\reg_op1_reg[31]_0 [1]),
        .I4(\mem_wordsize_reg_n_0_[0] ),
        .I5(mem_axi_rdata[25]),
        .O(\reg_out[9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \reg_out[9]_i_4 
       (.I0(\reg_out_reg[12]_i_6_n_7 ),
        .I1(Q[1]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg[31]_0 [9]),
        .O(\reg_out[9]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \reg_out[9]_i_5 
       (.I0(\reg_out[9]_i_6_n_0 ),
        .I1(instr_rdcycle),
        .I2(count_cycle_reg[9]),
        .I3(\cpu_state_reg_n_0_[5] ),
        .O(\reg_out[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000B888B888)) 
    \reg_out[9]_i_6 
       (.I0(\count_instr_reg_n_0_[9] ),
        .I1(instr_rdinstr),
        .I2(data3[9]),
        .I3(instr_rdinstrh),
        .I4(count_cycle_reg[41]),
        .I5(instr_rdcycleh),
        .O(\reg_out[9]_i_6_n_0 ));
  FDRE \reg_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_63),
        .Q(\reg_out_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \reg_out_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_53),
        .Q(\reg_out_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \reg_out_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_52),
        .Q(\reg_out_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \reg_out_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_51),
        .Q(\reg_out_reg_n_0_[12] ),
        .R(1'b0));
  CARRY4 \reg_out_reg[12]_i_6 
       (.CI(\reg_out_reg[8]_i_6_n_0 ),
        .CO({\reg_out_reg[12]_i_6_n_0 ,\reg_out_reg[12]_i_6_n_1 ,\reg_out_reg[12]_i_6_n_2 ,\reg_out_reg[12]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_pc_reg_n_0_[12] ,\reg_pc_reg_n_0_[11] ,\reg_pc_reg_n_0_[10] ,\reg_pc_reg_n_0_[9] }),
        .O({\reg_out_reg[12]_i_6_n_4 ,\reg_out_reg[12]_i_6_n_5 ,\reg_out_reg[12]_i_6_n_6 ,\reg_out_reg[12]_i_6_n_7 }),
        .S({\reg_out[12]_i_8_n_0 ,\reg_out[12]_i_9_n_0 ,\reg_out[12]_i_10_n_0 ,\reg_out[12]_i_11_n_0 }));
  FDRE \reg_out_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_50),
        .Q(\reg_out_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \reg_out_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_49),
        .Q(\reg_out_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \reg_out_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_48),
        .Q(\reg_out_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \reg_out_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_47),
        .Q(\reg_out_reg_n_0_[16] ),
        .R(1'b0));
  CARRY4 \reg_out_reg[16]_i_6 
       (.CI(\reg_out_reg[12]_i_6_n_0 ),
        .CO({\reg_out_reg[16]_i_6_n_0 ,\reg_out_reg[16]_i_6_n_1 ,\reg_out_reg[16]_i_6_n_2 ,\reg_out_reg[16]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_pc_reg_n_0_[16] ,\reg_pc_reg_n_0_[15] ,\reg_pc_reg_n_0_[14] ,\reg_pc_reg_n_0_[13] }),
        .O({\reg_out_reg[16]_i_6_n_4 ,\reg_out_reg[16]_i_6_n_5 ,\reg_out_reg[16]_i_6_n_6 ,\reg_out_reg[16]_i_6_n_7 }),
        .S({\reg_out[16]_i_8_n_0 ,\reg_out[16]_i_9_n_0 ,\reg_out[16]_i_10_n_0 ,\reg_out[16]_i_11_n_0 }));
  FDRE \reg_out_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_46),
        .Q(\reg_out_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \reg_out_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_45),
        .Q(\reg_out_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \reg_out_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_44),
        .Q(\reg_out_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \reg_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_62),
        .Q(\reg_out_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \reg_out_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_43),
        .Q(\reg_out_reg_n_0_[20] ),
        .R(1'b0));
  CARRY4 \reg_out_reg[20]_i_6 
       (.CI(\reg_out_reg[16]_i_6_n_0 ),
        .CO({\reg_out_reg[20]_i_6_n_0 ,\reg_out_reg[20]_i_6_n_1 ,\reg_out_reg[20]_i_6_n_2 ,\reg_out_reg[20]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_pc_reg_n_0_[20] ,\reg_pc_reg_n_0_[19] ,\reg_pc_reg_n_0_[18] ,\reg_pc_reg_n_0_[17] }),
        .O({\reg_out_reg[20]_i_6_n_4 ,\reg_out_reg[20]_i_6_n_5 ,\reg_out_reg[20]_i_6_n_6 ,\reg_out_reg[20]_i_6_n_7 }),
        .S({\reg_out[20]_i_9_n_0 ,\reg_out[20]_i_10_n_0 ,\reg_out[20]_i_11_n_0 ,\reg_out[20]_i_12_n_0 }));
  FDRE \reg_out_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_42),
        .Q(\reg_out_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \reg_out_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_41),
        .Q(\reg_out_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \reg_out_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_40),
        .Q(\reg_out_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \reg_out_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_39),
        .Q(\reg_out_reg_n_0_[24] ),
        .R(1'b0));
  CARRY4 \reg_out_reg[24]_i_6 
       (.CI(\reg_out_reg[20]_i_6_n_0 ),
        .CO({\reg_out_reg[24]_i_6_n_0 ,\reg_out_reg[24]_i_6_n_1 ,\reg_out_reg[24]_i_6_n_2 ,\reg_out_reg[24]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_pc_reg_n_0_[24] ,\reg_pc_reg_n_0_[23] ,\reg_pc_reg_n_0_[22] ,\reg_pc_reg_n_0_[21] }),
        .O({\reg_out_reg[24]_i_6_n_4 ,\reg_out_reg[24]_i_6_n_5 ,\reg_out_reg[24]_i_6_n_6 ,\reg_out_reg[24]_i_6_n_7 }),
        .S({\reg_out[24]_i_8_n_0 ,\reg_out[24]_i_9_n_0 ,\reg_out[24]_i_10_n_0 ,\reg_out[24]_i_11_n_0 }));
  FDRE \reg_out_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_38),
        .Q(\reg_out_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \reg_out_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_37),
        .Q(\reg_out_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \reg_out_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_36),
        .Q(\reg_out_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \reg_out_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_35),
        .Q(\reg_out_reg_n_0_[28] ),
        .R(1'b0));
  CARRY4 \reg_out_reg[28]_i_6 
       (.CI(\reg_out_reg[24]_i_6_n_0 ),
        .CO({\reg_out_reg[28]_i_6_n_0 ,\reg_out_reg[28]_i_6_n_1 ,\reg_out_reg[28]_i_6_n_2 ,\reg_out_reg[28]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_pc_reg_n_0_[28] ,\reg_pc_reg_n_0_[27] ,\reg_pc_reg_n_0_[26] ,\reg_pc_reg_n_0_[25] }),
        .O({\reg_out_reg[28]_i_6_n_4 ,\reg_out_reg[28]_i_6_n_5 ,\reg_out_reg[28]_i_6_n_6 ,\reg_out_reg[28]_i_6_n_7 }),
        .S({\reg_out[28]_i_8_n_0 ,\reg_out[28]_i_9_n_0 ,\reg_out[28]_i_10_n_0 ,\reg_out[28]_i_11_n_0 }));
  FDRE \reg_out_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_34),
        .Q(\reg_out_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \reg_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_61),
        .Q(\reg_out_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \reg_out_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_33),
        .Q(\reg_out_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \reg_out_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_32),
        .Q(\reg_out_reg_n_0_[31] ),
        .R(1'b0));
  CARRY4 \reg_out_reg[31]_i_11 
       (.CI(\reg_out_reg[28]_i_6_n_0 ),
        .CO({\NLW_reg_out_reg[31]_i_11_CO_UNCONNECTED [3:2],\reg_out_reg[31]_i_11_n_2 ,\reg_out_reg[31]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\reg_pc_reg_n_0_[30] ,\reg_pc_reg_n_0_[29] }),
        .O({\NLW_reg_out_reg[31]_i_11_O_UNCONNECTED [3],\reg_out_reg[31]_i_11_n_5 ,\reg_out_reg[31]_i_11_n_6 ,\reg_out_reg[31]_i_11_n_7 }),
        .S({1'b0,\reg_out[31]_i_22_n_0 ,\reg_out[31]_i_23_n_0 ,\reg_out[31]_i_24_n_0 }));
  FDRE \reg_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_60),
        .Q(\reg_out_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \reg_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_59),
        .Q(\reg_out_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \reg_out_reg[4]_i_6 
       (.CI(1'b0),
        .CO({\reg_out_reg[4]_i_6_n_0 ,\reg_out_reg[4]_i_6_n_1 ,\reg_out_reg[4]_i_6_n_2 ,\reg_out_reg[4]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_pc_reg_n_0_[4] ,\reg_pc_reg_n_0_[3] ,\reg_pc_reg_n_0_[2] ,\reg_pc_reg_n_0_[1] }),
        .O({\reg_out_reg[4]_i_6_n_4 ,\reg_out_reg[4]_i_6_n_5 ,\reg_out_reg[4]_i_6_n_6 ,\NLW_reg_out_reg[4]_i_6_O_UNCONNECTED [0]}),
        .S({\reg_out[4]_i_8_n_0 ,\reg_out[4]_i_9_n_0 ,\reg_out[4]_i_10_n_0 ,\reg_out[4]_i_11_n_0 }));
  FDRE \reg_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_58),
        .Q(\reg_out_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \reg_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_57),
        .Q(\reg_out_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \reg_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_56),
        .Q(\reg_out_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \reg_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_55),
        .Q(\reg_out_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \reg_out_reg[8]_i_6 
       (.CI(\reg_out_reg[4]_i_6_n_0 ),
        .CO({\reg_out_reg[8]_i_6_n_0 ,\reg_out_reg[8]_i_6_n_1 ,\reg_out_reg[8]_i_6_n_2 ,\reg_out_reg[8]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_pc_reg_n_0_[8] ,\reg_pc_reg_n_0_[7] ,\reg_pc_reg_n_0_[6] ,\reg_pc_reg_n_0_[5] }),
        .O({\reg_out_reg[8]_i_6_n_4 ,\reg_out_reg[8]_i_6_n_5 ,\reg_out_reg[8]_i_6_n_6 ,\reg_out_reg[8]_i_6_n_7 }),
        .S({\reg_out[8]_i_8_n_0 ,\reg_out[8]_i_9_n_0 ,\reg_out[8]_i_10_n_0 ,\reg_out[8]_i_11_n_0 }));
  FDRE \reg_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(pcpi_mul_n_54),
        .Q(\reg_out_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[10]_i_1 
       (.I0(alu_out_q[10]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[10] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[10] ),
        .O(current_pc[10]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[11]_i_1 
       (.I0(alu_out_q[11]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[11] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[11] ),
        .O(current_pc[11]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[12]_i_1 
       (.I0(alu_out_q[12]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[12] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[12] ),
        .O(current_pc[12]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[13]_i_1 
       (.I0(alu_out_q[13]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[13] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[13] ),
        .O(current_pc[13]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[14]_i_1 
       (.I0(alu_out_q[14]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[14] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[14] ),
        .O(current_pc[14]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[15]_i_1 
       (.I0(alu_out_q[15]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[15] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[15] ),
        .O(current_pc[15]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[16]_i_1 
       (.I0(alu_out_q[16]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[16] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[16] ),
        .O(current_pc[16]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[17]_i_1 
       (.I0(alu_out_q[17]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[17] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[17] ),
        .O(current_pc[17]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[18]_i_1 
       (.I0(alu_out_q[18]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[18] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[18] ),
        .O(current_pc[18]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[19]_i_1 
       (.I0(alu_out_q[19]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[19] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[19] ),
        .O(current_pc[19]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[1]_i_1 
       (.I0(alu_out_q[1]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[1] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[1] ),
        .O(current_pc[1]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[20]_i_1 
       (.I0(alu_out_q[20]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[20] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[20] ),
        .O(current_pc[20]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[21]_i_1 
       (.I0(alu_out_q[21]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[21] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[21] ),
        .O(current_pc[21]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[22]_i_1 
       (.I0(alu_out_q[22]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[22] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[22] ),
        .O(current_pc[22]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[23]_i_1 
       (.I0(alu_out_q[23]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[23] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[23] ),
        .O(current_pc[23]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[24]_i_1 
       (.I0(alu_out_q[24]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[24] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[24] ),
        .O(current_pc[24]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[25]_i_1 
       (.I0(alu_out_q[25]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[25] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[25] ),
        .O(current_pc[25]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[26]_i_1 
       (.I0(alu_out_q[26]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[26] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[26] ),
        .O(current_pc[26]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[27]_i_1 
       (.I0(alu_out_q[27]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[27] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[27] ),
        .O(current_pc[27]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[28]_i_1 
       (.I0(alu_out_q[28]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[28] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[28] ),
        .O(current_pc[28]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[29]_i_1 
       (.I0(alu_out_q[29]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[29] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[29] ),
        .O(current_pc[29]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[2]_i_1 
       (.I0(alu_out_q[2]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[2] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[2] ),
        .O(current_pc[2]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[30]_i_1 
       (.I0(alu_out_q[30]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[30] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[30] ),
        .O(current_pc[30]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[31]_i_1 
       (.I0(alu_out_q[31]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[31] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[31] ),
        .O(current_pc[31]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[3]_i_1 
       (.I0(alu_out_q[3]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[3] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[3] ),
        .O(current_pc[3]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[4]_i_1 
       (.I0(alu_out_q[4]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[4] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[4] ),
        .O(current_pc[4]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[5]_i_1 
       (.I0(alu_out_q[5]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[5] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[5] ),
        .O(current_pc[5]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[6]_i_1 
       (.I0(alu_out_q[6]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[6] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[6] ),
        .O(current_pc[6]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[7]_i_1 
       (.I0(alu_out_q[7]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[7] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[7] ),
        .O(current_pc[7]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[8]_i_1 
       (.I0(alu_out_q[8]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[8] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[8] ),
        .O(current_pc[8]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \reg_pc[9]_i_1 
       (.I0(alu_out_q[9]),
        .I1(latched_stalu_reg_0),
        .I2(\reg_out_reg_n_0_[9] ),
        .I3(latched_branch_reg_0),
        .I4(latched_store_reg_0),
        .I5(\reg_next_pc_reg_n_0_[9] ),
        .O(current_pc[9]));
  FDRE \reg_pc_reg[10] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[10]),
        .Q(\reg_pc_reg_n_0_[10] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[11] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[11]),
        .Q(\reg_pc_reg_n_0_[11] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[12] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[12]),
        .Q(\reg_pc_reg_n_0_[12] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[13] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[13]),
        .Q(\reg_pc_reg_n_0_[13] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[14] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[14]),
        .Q(\reg_pc_reg_n_0_[14] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[15] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[15]),
        .Q(\reg_pc_reg_n_0_[15] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[16] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[16]),
        .Q(\reg_pc_reg_n_0_[16] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[17] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[17]),
        .Q(\reg_pc_reg_n_0_[17] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[18] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[18]),
        .Q(\reg_pc_reg_n_0_[18] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[19] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[19]),
        .Q(\reg_pc_reg_n_0_[19] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[1] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[1]),
        .Q(\reg_pc_reg_n_0_[1] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[20] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[20]),
        .Q(\reg_pc_reg_n_0_[20] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[21] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[21]),
        .Q(\reg_pc_reg_n_0_[21] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[22] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[22]),
        .Q(\reg_pc_reg_n_0_[22] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[23] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[23]),
        .Q(\reg_pc_reg_n_0_[23] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[24] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[24]),
        .Q(\reg_pc_reg_n_0_[24] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[25] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[25]),
        .Q(\reg_pc_reg_n_0_[25] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[26] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[26]),
        .Q(\reg_pc_reg_n_0_[26] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[27] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[27]),
        .Q(\reg_pc_reg_n_0_[27] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[28] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[28]),
        .Q(\reg_pc_reg_n_0_[28] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[29] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[29]),
        .Q(\reg_pc_reg_n_0_[29] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[2] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[2]),
        .Q(\reg_pc_reg_n_0_[2] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[30] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[30]),
        .Q(\reg_pc_reg_n_0_[30] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[31] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[31]),
        .Q(\reg_pc_reg_n_0_[31] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[3] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[3]),
        .Q(\reg_pc_reg_n_0_[3] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[4] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[4]),
        .Q(\reg_pc_reg_n_0_[4] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[5] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[5]),
        .Q(\reg_pc_reg_n_0_[5] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[6] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[6]),
        .Q(\reg_pc_reg_n_0_[6] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[7] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[7]),
        .Q(\reg_pc_reg_n_0_[7] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[8] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[8]),
        .Q(\reg_pc_reg_n_0_[8] ),
        .R(pcpi_mul_n_24));
  FDRE \reg_pc_reg[9] 
       (.C(clk),
        .CE(Q[2]),
        .D(current_pc[9]),
        .Q(\reg_pc_reg_n_0_[9] ),
        .R(pcpi_mul_n_24));
  LUT6 #(
    .INIT(64'h9F909F9F9F909090)) 
    \reg_sh[0]_i_1 
       (.I0(\reg_sh_reg_n_0_[0] ),
        .I1(pcpi_mul_n_82),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(decoded_rs2__0[0]),
        .I4(\reg_sh[4]_i_3_n_0 ),
        .I5(\reg_sh[0]_i_3_n_0 ),
        .O(\reg_sh[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \reg_sh[0]_i_3 
       (.I0(reg_sh1[0]),
        .I1(decoded_rs2__0[0]),
        .I2(decoded_rs2__0[1]),
        .I3(decoded_rs2__0[2]),
        .I4(decoded_rs2__0[3]),
        .I5(decoded_rs2__0[4]),
        .O(\reg_sh[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9F909F9F9F909090)) 
    \reg_sh[1]_i_1 
       (.I0(\reg_sh[1]_i_2_n_0 ),
        .I1(\reg_sh_reg_n_0_[1] ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(decoded_rs2__0[1]),
        .I4(\reg_sh[4]_i_3_n_0 ),
        .I5(\reg_sh[1]_i_3_n_0 ),
        .O(\reg_sh[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \reg_sh[1]_i_2 
       (.I0(\reg_sh_reg_n_0_[0] ),
        .I1(\reg_sh_reg_n_0_[3] ),
        .I2(\reg_sh_reg_n_0_[2] ),
        .I3(\reg_sh_reg_n_0_[4] ),
        .O(\reg_sh[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \reg_sh[1]_i_3 
       (.I0(reg_sh1[1]),
        .I1(decoded_rs2__0[0]),
        .I2(decoded_rs2__0[1]),
        .I3(decoded_rs2__0[2]),
        .I4(decoded_rs2__0[3]),
        .I5(decoded_rs2__0[4]),
        .O(\reg_sh[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \reg_sh[2]_i_1 
       (.I0(\reg_sh[2]_i_2_n_0 ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(decoded_rs2__0[2]),
        .I3(\reg_sh[4]_i_3_n_0 ),
        .I4(reg_sh1[2]),
        .I5(pcpi_mul_n_23),
        .O(\reg_sh[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h0F0C0F0D)) 
    \reg_sh[2]_i_2 
       (.I0(\reg_sh_reg_n_0_[0] ),
        .I1(\reg_sh_reg_n_0_[3] ),
        .I2(\reg_sh_reg_n_0_[2] ),
        .I3(\reg_sh_reg_n_0_[4] ),
        .I4(\reg_sh_reg_n_0_[1] ),
        .O(\reg_sh[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \reg_sh[3]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(decoded_rs2__0[3]),
        .I3(\reg_sh[4]_i_3_n_0 ),
        .I4(reg_sh1[3]),
        .I5(pcpi_mul_n_23),
        .O(\reg_sh[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFF0000F1)) 
    \reg_sh[3]_i_2 
       (.I0(\reg_sh_reg_n_0_[0] ),
        .I1(\reg_sh_reg_n_0_[1] ),
        .I2(\reg_sh_reg_n_0_[4] ),
        .I3(\reg_sh_reg_n_0_[2] ),
        .I4(\reg_sh_reg_n_0_[3] ),
        .O(\reg_sh[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \reg_sh[4]_i_1 
       (.I0(\reg_sh[4]_i_2_n_0 ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(decoded_rs2__0[4]),
        .I3(\reg_sh[4]_i_3_n_0 ),
        .I4(reg_sh1[4]),
        .I5(pcpi_mul_n_23),
        .O(\reg_sh[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFF00001)) 
    \reg_sh[4]_i_2 
       (.I0(\reg_sh_reg_n_0_[0] ),
        .I1(\reg_sh_reg_n_0_[1] ),
        .I2(\reg_sh_reg_n_0_[3] ),
        .I3(\reg_sh_reg_n_0_[2] ),
        .I4(\reg_sh_reg_n_0_[4] ),
        .O(\reg_sh[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg_sh[4]_i_3 
       (.I0(pcpi_mul_n_22),
        .I1(is_slli_srli_srai),
        .O(\reg_sh[4]_i_3_n_0 ));
  FDRE \reg_sh_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_sh[0]_i_1_n_0 ),
        .Q(\reg_sh_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \reg_sh_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_sh[1]_i_1_n_0 ),
        .Q(\reg_sh_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \reg_sh_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_sh[2]_i_1_n_0 ),
        .Q(\reg_sh_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \reg_sh_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_sh[3]_i_1_n_0 ),
        .Q(\reg_sh_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \reg_sh_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_sh[4]_i_1_n_0 ),
        .Q(\reg_sh_reg_n_0_[4] ),
        .R(1'b0));
  FDRE trap_reg
       (.C(clk),
        .CE(1'b1),
        .D(\cpu_state_reg_n_0_[7] ),
        .Q(trap_reg_0),
        .R(pcpi_mul_n_24));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hE0FFE000)) 
    xfer_done_i_1
       (.I0(mem_axi_bvalid),
        .I1(mem_axi_rvalid),
        .I2(mem_valid),
        .I3(resetn),
        .I4(xfer_done),
        .O(mem_axi_bvalid_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32_axi
   (mem_axi_rready,
    \mem_wstrb_reg[2] ,
    \mem_wstrb_reg[3] ,
    \mem_wstrb_reg[0] ,
    \mem_wstrb_reg[1] ,
    pcpi_rs1,
    pcpi_insn,
    pcpi_rs2,
    trap,
    mem_axi_bready,
    mem_axi_awvalid,
    mem_axi_wvalid,
    mem_axi_arvalid,
    mem_axi_awaddr,
    mem_axi_wdata,
    mem_axi_arprot,
    pcpi_valid,
    mem_axi_rdata,
    mem_axi_bvalid,
    mem_axi_rvalid,
    resetn,
    mem_axi_awready,
    mem_axi_arready,
    mem_axi_wready,
    clk);
  output mem_axi_rready;
  output \mem_wstrb_reg[2] ;
  output \mem_wstrb_reg[3] ;
  output \mem_wstrb_reg[0] ;
  output \mem_wstrb_reg[1] ;
  output [31:0]pcpi_rs1;
  output [31:0]pcpi_insn;
  output [31:0]pcpi_rs2;
  output trap;
  output mem_axi_bready;
  output mem_axi_awvalid;
  output mem_axi_wvalid;
  output mem_axi_arvalid;
  output [29:0]mem_axi_awaddr;
  output [31:0]mem_axi_wdata;
  output [0:0]mem_axi_arprot;
  output pcpi_valid;
  input [31:0]mem_axi_rdata;
  input mem_axi_bvalid;
  input mem_axi_rvalid;
  input resetn;
  input mem_axi_awready;
  input mem_axi_arready;
  input mem_axi_wready;
  input clk;

  wire ack_awvalid;
  wire axi_adapter_n_2;
  wire axi_adapter_n_3;
  wire clk;
  wire instr_add;
  wire instr_addi;
  wire instr_ecall_ebreak;
  wire instr_jalr;
  wire instr_lb;
  wire instr_lh;
  wire instr_sub;
  wire is_beq_bne_blt_bge_bltu_bgeu;
  wire is_lbu_lhu_lw;
  wire is_lui_auipc_jal_jalr_addi_add_sub0;
  wire is_lui_auipc_jal_jalr_addi_add_sub_i_1_n_0;
  wire latched_branch_i_1_n_0;
  wire latched_is_lb_i_1_n_0;
  wire latched_is_lh_i_1_n_0;
  wire latched_is_lu;
  wire latched_is_lu_i_1_n_0;
  wire latched_stalu_i_1_n_0;
  wire latched_store_i_1_n_0;
  wire [0:0]mem_axi_arprot;
  wire mem_axi_arready;
  wire mem_axi_arvalid;
  wire [29:0]mem_axi_awaddr;
  wire mem_axi_awready;
  wire mem_axi_awvalid;
  wire mem_axi_bready;
  wire mem_axi_bvalid;
  wire [31:0]mem_axi_rdata;
  wire mem_axi_rready;
  wire mem_axi_rvalid;
  wire [31:0]mem_axi_wdata;
  wire mem_axi_wready;
  wire mem_axi_wvalid;
  wire mem_do_rdata;
  wire mem_do_rdata_i_1_n_0;
  wire mem_do_wdata;
  wire mem_do_wdata_i_1_n_0;
  wire mem_valid;
  wire \mem_wstrb_reg[0] ;
  wire \mem_wstrb_reg[1] ;
  wire \mem_wstrb_reg[2] ;
  wire \mem_wstrb_reg[3] ;
  wire [31:0]pcpi_insn;
  wire pcpi_mul_ready;
  wire [31:0]pcpi_rs1;
  wire [31:0]pcpi_rs2;
  wire pcpi_timeout;
  wire \pcpi_timeout_counter[3]_i_1_n_0 ;
  wire pcpi_valid;
  wire pcpi_valid_i_1_n_0;
  wire picorv32_core_n_1;
  wire picorv32_core_n_137;
  wire picorv32_core_n_17;
  wire picorv32_core_n_18;
  wire picorv32_core_n_19;
  wire picorv32_core_n_20;
  wire picorv32_core_n_201;
  wire picorv32_core_n_202;
  wire picorv32_core_n_203;
  wire picorv32_core_n_204;
  wire picorv32_core_n_205;
  wire picorv32_core_n_206;
  wire picorv32_core_n_21;
  wire picorv32_core_n_22;
  wire picorv32_core_n_23;
  wire picorv32_core_n_30;
  wire picorv32_core_n_32;
  wire picorv32_core_n_33;
  wire picorv32_core_n_34;
  wire picorv32_core_n_35;
  wire reg_next_pc;
  wire resetn;
  wire trap;
  wire xfer_done;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32_axi_adapter axi_adapter
       (.ack_arvalid_reg_0(axi_adapter_n_3),
        .ack_awvalid(ack_awvalid),
        .ack_wvalid_reg_0(axi_adapter_n_2),
        .clk(clk),
        .mem_axi_arready(mem_axi_arready),
        .mem_axi_arvalid(mem_axi_arvalid),
        .mem_axi_awready(mem_axi_awready),
        .mem_axi_bready(mem_axi_bready),
        .mem_axi_wready(mem_axi_wready),
        .mem_valid(mem_valid),
        .resetn(resetn),
        .xfer_done(xfer_done),
        .xfer_done_reg_0(picorv32_core_n_137));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    is_lui_auipc_jal_jalr_addi_add_sub_i_1
       (.I0(instr_add),
        .I1(instr_addi),
        .I2(instr_sub),
        .I3(instr_jalr),
        .I4(picorv32_core_n_1),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub0),
        .O(is_lui_auipc_jal_jalr_addi_add_sub_i_1_n_0));
  LUT6 #(
    .INIT(64'h0202F202FEFEFEFE)) 
    latched_branch_i_1
       (.I0(picorv32_core_n_17),
        .I1(reg_next_pc),
        .I2(picorv32_core_n_32),
        .I3(is_beq_bne_blt_bge_bltu_bgeu),
        .I4(picorv32_core_n_204),
        .I5(picorv32_core_n_205),
        .O(latched_branch_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F20)) 
    latched_is_lb_i_1
       (.I0(instr_lb),
        .I1(reg_next_pc),
        .I2(latched_is_lu),
        .I3(picorv32_core_n_19),
        .O(latched_is_lb_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F20)) 
    latched_is_lh_i_1
       (.I0(instr_lh),
        .I1(reg_next_pc),
        .I2(latched_is_lu),
        .I3(picorv32_core_n_20),
        .O(latched_is_lh_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F20)) 
    latched_is_lu_i_1
       (.I0(is_lbu_lhu_lw),
        .I1(reg_next_pc),
        .I2(latched_is_lu),
        .I3(picorv32_core_n_21),
        .O(latched_is_lu_i_1_n_0));
  LUT4 #(
    .INIT(16'h5510)) 
    latched_stalu_i_1
       (.I0(reg_next_pc),
        .I1(is_beq_bne_blt_bge_bltu_bgeu),
        .I2(picorv32_core_n_32),
        .I3(picorv32_core_n_18),
        .O(latched_stalu_i_1_n_0));
  LUT6 #(
    .INIT(64'h7777FFF777770007)) 
    latched_store_i_1
       (.I0(picorv32_core_n_34),
        .I1(picorv32_core_n_203),
        .I2(picorv32_core_n_206),
        .I3(picorv32_core_n_33),
        .I4(picorv32_core_n_202),
        .I5(picorv32_core_n_22),
        .O(latched_store_i_1_n_0));
  LUT5 #(
    .INIT(32'h808084C4)) 
    mem_do_rdata_i_1
       (.I0(mem_do_rdata),
        .I1(resetn),
        .I2(picorv32_core_n_201),
        .I3(picorv32_core_n_23),
        .I4(picorv32_core_n_30),
        .O(mem_do_rdata_i_1_n_0));
  LUT5 #(
    .INIT(32'hAE440000)) 
    mem_do_wdata_i_1
       (.I0(mem_do_wdata),
        .I1(picorv32_core_n_33),
        .I2(picorv32_core_n_23),
        .I3(picorv32_core_n_201),
        .I4(resetn),
        .O(mem_do_wdata_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    \pcpi_timeout_counter[3]_i_1 
       (.I0(resetn),
        .I1(pcpi_valid),
        .O(\pcpi_timeout_counter[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8888888B)) 
    pcpi_valid_i_1
       (.I0(pcpi_valid),
        .I1(picorv32_core_n_35),
        .I2(pcpi_timeout),
        .I3(instr_ecall_ebreak),
        .I4(pcpi_mul_ready),
        .O(pcpi_valid_i_1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32 picorv32_core
       (.Q({reg_next_pc,picorv32_core_n_32,picorv32_core_n_33}),
        .SS(\pcpi_timeout_counter[3]_i_1_n_0 ),
        .ack_awvalid(ack_awvalid),
        .\active_reg[1] (pcpi_mul_ready),
        .\active_reg[1]_0 (picorv32_core_n_203),
        .clk(clk),
        .\cpu_state_reg[3]_0 (picorv32_core_n_206),
        .\cpu_state_reg[5]_0 (picorv32_core_n_30),
        .\cpu_state_reg[5]_1 (picorv32_core_n_35),
        .\cpu_state_reg[7]_0 (picorv32_core_n_202),
        .decoder_trigger_reg_0(picorv32_core_n_205),
        .instr_add(instr_add),
        .instr_addi(instr_addi),
        .instr_beq_reg_0(picorv32_core_n_34),
        .instr_bge_reg_0(picorv32_core_n_204),
        .instr_ecall_ebreak(instr_ecall_ebreak),
        .instr_jal_reg_0(picorv32_core_n_1),
        .instr_jalr(instr_jalr),
        .instr_lb(instr_lb),
        .instr_lh(instr_lh),
        .instr_sub(instr_sub),
        .is_beq_bne_blt_bge_bltu_bgeu(is_beq_bne_blt_bge_bltu_bgeu),
        .is_lbu_lhu_lw(is_lbu_lhu_lw),
        .is_lui_auipc_jal_jalr_addi_add_sub0(is_lui_auipc_jal_jalr_addi_add_sub0),
        .is_lui_auipc_jal_jalr_addi_add_sub_reg_0(is_lui_auipc_jal_jalr_addi_add_sub_i_1_n_0),
        .latched_branch_reg_0(picorv32_core_n_17),
        .latched_branch_reg_1(latched_branch_i_1_n_0),
        .latched_is_lb_reg_0(picorv32_core_n_19),
        .latched_is_lb_reg_1(latched_is_lb_i_1_n_0),
        .latched_is_lh_reg_0(picorv32_core_n_20),
        .latched_is_lh_reg_1(latched_is_lh_i_1_n_0),
        .latched_is_lu(latched_is_lu),
        .latched_is_lu_reg_0(picorv32_core_n_21),
        .latched_is_lu_reg_1(latched_is_lu_i_1_n_0),
        .latched_stalu_reg_0(picorv32_core_n_18),
        .latched_stalu_reg_1(latched_stalu_i_1_n_0),
        .latched_store_reg_0(picorv32_core_n_22),
        .latched_store_reg_1(latched_store_i_1_n_0),
        .mem_axi_arprot(mem_axi_arprot),
        .mem_axi_arvalid(mem_axi_arvalid),
        .mem_axi_arvalid_0(axi_adapter_n_3),
        .mem_axi_awaddr(mem_axi_awaddr),
        .mem_axi_awvalid(mem_axi_awvalid),
        .mem_axi_bready(mem_axi_bready),
        .mem_axi_bvalid(mem_axi_bvalid),
        .mem_axi_bvalid_0(picorv32_core_n_137),
        .mem_axi_rdata(mem_axi_rdata),
        .mem_axi_rready(mem_axi_rready),
        .mem_axi_rvalid(mem_axi_rvalid),
        .mem_axi_wdata(mem_axi_wdata),
        .mem_axi_wvalid(mem_axi_wvalid),
        .mem_axi_wvalid_0(axi_adapter_n_2),
        .mem_do_prefetch_reg_0(picorv32_core_n_23),
        .mem_do_rdata(mem_do_rdata),
        .mem_do_rdata_reg_0(mem_do_rdata_i_1_n_0),
        .mem_do_wdata(mem_do_wdata),
        .mem_do_wdata_reg_0(mem_do_wdata_i_1_n_0),
        .\mem_state_reg[0]_0 (picorv32_core_n_201),
        .mem_valid(mem_valid),
        .\mem_wstrb_reg[0]_0 (\mem_wstrb_reg[0] ),
        .\mem_wstrb_reg[1]_0 (\mem_wstrb_reg[1] ),
        .\mem_wstrb_reg[2]_0 (\mem_wstrb_reg[2] ),
        .\mem_wstrb_reg[3]_0 (\mem_wstrb_reg[3] ),
        .\pcpi_insn_reg[31]_0 (pcpi_insn),
        .pcpi_timeout(pcpi_timeout),
        .pcpi_valid(pcpi_valid),
        .pcpi_valid_reg_0(pcpi_valid_i_1_n_0),
        .\reg_op1_reg[31]_0 (pcpi_rs1),
        .\reg_op2_reg[31]_0 (pcpi_rs2),
        .resetn(resetn),
        .trap_reg_0(trap),
        .xfer_done(xfer_done));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32_axi_adapter
   (xfer_done,
    ack_awvalid,
    ack_wvalid_reg_0,
    ack_arvalid_reg_0,
    xfer_done_reg_0,
    clk,
    mem_axi_awready,
    mem_axi_bready,
    resetn,
    mem_valid,
    mem_axi_arvalid,
    mem_axi_arready,
    mem_axi_wready);
  output xfer_done;
  output ack_awvalid;
  output ack_wvalid_reg_0;
  output ack_arvalid_reg_0;
  input xfer_done_reg_0;
  input clk;
  input mem_axi_awready;
  input mem_axi_bready;
  input resetn;
  input mem_valid;
  input mem_axi_arvalid;
  input mem_axi_arready;
  input mem_axi_wready;

  wire ack_arvalid_i_1_n_0;
  wire ack_arvalid_reg_0;
  wire ack_awvalid;
  wire ack_awvalid_i_1_n_0;
  wire ack_wvalid_i_1_n_0;
  wire ack_wvalid_reg_0;
  wire clk;
  wire mem_axi_arready;
  wire mem_axi_arvalid;
  wire mem_axi_awready;
  wire mem_axi_bready;
  wire mem_axi_wready;
  wire mem_valid;
  wire resetn;
  wire xfer_done;
  wire xfer_done_reg_0;

  LUT6 #(
    .INIT(64'h00EA0000AAAAAAAA)) 
    ack_arvalid_i_1
       (.I0(ack_arvalid_reg_0),
        .I1(mem_axi_arvalid),
        .I2(mem_axi_arready),
        .I3(xfer_done),
        .I4(mem_valid),
        .I5(resetn),
        .O(ack_arvalid_i_1_n_0));
  FDRE ack_arvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(ack_arvalid_i_1_n_0),
        .Q(ack_arvalid_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000EA0000000000)) 
    ack_awvalid_i_1
       (.I0(ack_awvalid),
        .I1(mem_axi_awready),
        .I2(mem_axi_bready),
        .I3(resetn),
        .I4(xfer_done),
        .I5(mem_valid),
        .O(ack_awvalid_i_1_n_0));
  FDRE ack_awvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(ack_awvalid_i_1_n_0),
        .Q(ack_awvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00EA0000AAAAAAAA)) 
    ack_wvalid_i_1
       (.I0(ack_wvalid_reg_0),
        .I1(mem_axi_bready),
        .I2(mem_axi_wready),
        .I3(xfer_done),
        .I4(mem_valid),
        .I5(resetn),
        .O(ack_wvalid_i_1_n_0));
  FDRE ack_wvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(ack_wvalid_i_1_n_0),
        .Q(ack_wvalid_reg_0),
        .R(1'b0));
  FDRE xfer_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(xfer_done_reg_0),
        .Q(xfer_done),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32_pcpi_fast_mul
   (instr_slti_reg,
    instr_lb_reg,
    instr_srai_reg,
    instr_sra_reg,
    pcpi_ready,
    pcpi_rs2,
    instr_jalr_reg,
    \decoded_rs2_reg[4] ,
    resetn_0,
    mem_do_rinst_reg,
    E,
    resetn_1,
    resetn_2,
    mem_do_prefetch_reg,
    \mem_state_reg[0] ,
    mem_valid_reg,
    D,
    pcpi_rs1,
    is_lui_auipc_jal_reg,
    \reg_sh_reg[4] ,
    \cpu_state_reg[7] ,
    \active_reg[1]_0 ,
    resetn_3,
    resetn_4,
    instr_jal_reg,
    \reg_op1_reg[20] ,
    instr_sll_reg,
    \reg_op1_reg[19] ,
    instr_srli_reg,
    \reg_op1_reg[18] ,
    instr_or_reg,
    instr_xor_reg,
    instr_rdinstr_reg,
    CO,
    O,
    mem_do_rinst_i_2_0,
    decoded_rs1,
    Q,
    rd_reg__0_0,
    rd_reg_0,
    rd_reg__0_1,
    is_jalr_addi_slti_sltiu_xori_ori_andi,
    is_lui_auipc_jal,
    rd0_0,
    reg_sh1,
    rd0_1,
    rd0_2,
    rd0_3,
    rd0_4,
    rd0_5,
    resetn,
    mem_do_rinst_reg_0,
    mem_do_rinst0,
    mem_do_rinst_reg_1,
    mem_do_rinst_reg_2,
    \cpu_state_reg[0] ,
    \cpu_state_reg[0]_0 ,
    \cpu_state_reg[0]_1 ,
    mem_do_rdata_reg,
    rd0__0_0,
    mem_do_rdata_reg_0,
    mem_do_rdata_reg_1,
    mem_do_rdata_reg_2,
    instr_jal_reg_0,
    mem_axi_rvalid,
    mem_axi_bvalid,
    \reg_out_reg[0] ,
    \reg_out_reg[0]_0 ,
    \reg_out_reg[31] ,
    \reg_out_reg[1] ,
    \reg_out_reg[1]_0 ,
    \reg_out_reg[2] ,
    \reg_out_reg[2]_0 ,
    \reg_out_reg[3] ,
    \reg_out_reg[3]_0 ,
    \reg_out_reg[4] ,
    \reg_out_reg[4]_0 ,
    \reg_out_reg[5] ,
    \reg_out_reg[5]_0 ,
    \reg_out_reg[6] ,
    \reg_out_reg[6]_0 ,
    \reg_out_reg[7] ,
    \reg_out_reg[7]_0 ,
    \reg_out_reg[8] ,
    \reg_out_reg[8]_0 ,
    \reg_out_reg[8]_1 ,
    \reg_out_reg[9] ,
    \reg_out_reg[9]_0 ,
    \reg_out_reg[9]_1 ,
    \reg_out_reg[10] ,
    \reg_out_reg[10]_0 ,
    \reg_out_reg[10]_1 ,
    \reg_out_reg[11] ,
    \reg_out_reg[11]_0 ,
    \reg_out_reg[11]_1 ,
    \reg_out_reg[12] ,
    \reg_out_reg[12]_0 ,
    \reg_out_reg[12]_1 ,
    \reg_out_reg[13] ,
    \reg_out_reg[13]_0 ,
    \reg_out_reg[13]_1 ,
    \reg_out_reg[14] ,
    \reg_out_reg[14]_0 ,
    \reg_out_reg[14]_1 ,
    \reg_out_reg[15] ,
    \reg_out_reg[15]_0 ,
    \reg_out_reg[15]_1 ,
    \reg_out_reg[16] ,
    \reg_out_reg[16]_0 ,
    \reg_out_reg[16]_1 ,
    \reg_out_reg[17] ,
    \reg_out_reg[17]_0 ,
    \reg_out_reg[17]_1 ,
    \reg_out_reg[18] ,
    \reg_out_reg[18]_0 ,
    \reg_out_reg[18]_1 ,
    \reg_out_reg[19] ,
    \reg_out_reg[19]_0 ,
    \reg_out_reg[19]_1 ,
    \reg_out_reg[20] ,
    \reg_out_reg[20]_0 ,
    \reg_out_reg[20]_1 ,
    \reg_out_reg[21] ,
    \reg_out_reg[21]_0 ,
    \reg_out_reg[21]_1 ,
    \reg_out_reg[22] ,
    \reg_out_reg[22]_0 ,
    \reg_out_reg[22]_1 ,
    \reg_out_reg[23] ,
    \reg_out_reg[23]_0 ,
    \reg_out_reg[23]_1 ,
    \reg_out_reg[24] ,
    \reg_out_reg[24]_0 ,
    \reg_out_reg[24]_1 ,
    \reg_out_reg[25] ,
    \reg_out_reg[25]_0 ,
    \reg_out_reg[25]_1 ,
    \reg_out_reg[26] ,
    \reg_out_reg[26]_0 ,
    \reg_out_reg[26]_1 ,
    \reg_out_reg[27] ,
    \reg_out_reg[27]_0 ,
    \reg_out_reg[27]_1 ,
    \reg_out_reg[28] ,
    \reg_out_reg[28]_0 ,
    \reg_out_reg[28]_1 ,
    \reg_out_reg[29] ,
    \reg_out_reg[29]_0 ,
    \reg_out_reg[29]_1 ,
    \reg_out_reg[30] ,
    \reg_out_reg[30]_0 ,
    \reg_out_reg[30]_1 ,
    \reg_out_reg[31]_0 ,
    \reg_out_reg[31]_1 ,
    \reg_out_reg[31]_2 ,
    reg_out1,
    \reg_sh_reg[0] ,
    latched_store_reg,
    latched_store_reg_0,
    latched_store_reg_1,
    mem_do_rinst_reg_3,
    mem_do_rinst_reg_4,
    mem_do_rinst_reg_5,
    mem_do_rinst_reg_6,
    \cpu_state_reg[6] ,
    instr_rdinstrh,
    instr_rdcycle,
    instr_rdinstr,
    instr_rdcycleh,
    mem_do_rinst_reg_7,
    mem_do_rinst_reg_8,
    mem_do_rinst_reg_9,
    instr_lui,
    rd0__0_1,
    instr_ecall_ebreak,
    pcpi_timeout,
    \cpu_state_reg[0]_2 ,
    \cpu_state_reg[7]_0 ,
    instr_slti,
    instr_sw,
    instr_bgeu,
    instr_beq,
    instr_bne,
    instr_bge,
    instr_lhu,
    instr_lbu,
    instr_lw,
    instr_slli,
    instr_sll,
    instr_sh,
    instr_lh,
    instr_add,
    instr_bltu,
    instr_sra,
    instr_srl,
    instr_srai,
    instr_srli,
    instr_or,
    instr_ori,
    instr_jal,
    instr_auipc,
    instr_lb,
    DI,
    instr_andi,
    instr_sb,
    instr_blt,
    instr_and,
    instr_sltiu,
    instr_addi,
    instr_slt,
    instr_sltu,
    instr_xor,
    instr_xori,
    decoded_rs2__0,
    \reg_op1_reg[19]_i_5_0 ,
    \reg_op1_reg[19]_i_5_1 ,
    \reg_op1_reg[19]_i_5_2 ,
    clk,
    SS);
  output instr_slti_reg;
  output instr_lb_reg;
  output instr_srai_reg;
  output instr_sra_reg;
  output pcpi_ready;
  output [16:0]pcpi_rs2;
  output instr_jalr_reg;
  output \decoded_rs2_reg[4] ;
  output resetn_0;
  output mem_do_rinst_reg;
  output [0:0]E;
  output resetn_1;
  output [0:0]resetn_2;
  output mem_do_prefetch_reg;
  output \mem_state_reg[0] ;
  output mem_valid_reg;
  output [31:0]D;
  output [16:0]pcpi_rs1;
  output is_lui_auipc_jal_reg;
  output \reg_sh_reg[4] ;
  output \cpu_state_reg[7] ;
  output \active_reg[1]_0 ;
  output [1:0]resetn_3;
  output resetn_4;
  output instr_jal_reg;
  output \reg_op1_reg[20] ;
  output instr_sll_reg;
  output \reg_op1_reg[19] ;
  output instr_srli_reg;
  output \reg_op1_reg[18] ;
  output instr_or_reg;
  output instr_xor_reg;
  output instr_rdinstr_reg;
  output [0:0]CO;
  output [2:0]O;
  input mem_do_rinst_i_2_0;
  input [4:0]decoded_rs1;
  input [6:0]Q;
  input [16:0]rd_reg__0_0;
  input [31:0]rd_reg_0;
  input [14:0]rd_reg__0_1;
  input is_jalr_addi_slti_sltiu_xori_ori_andi;
  input is_lui_auipc_jal;
  input rd0_0;
  input [16:0]reg_sh1;
  input rd0_1;
  input rd0_2;
  input rd0_3;
  input rd0_4;
  input [11:0]rd0_5;
  input resetn;
  input mem_do_rinst_reg_0;
  input mem_do_rinst0;
  input mem_do_rinst_reg_1;
  input mem_do_rinst_reg_2;
  input \cpu_state_reg[0] ;
  input \cpu_state_reg[0]_0 ;
  input \cpu_state_reg[0]_1 ;
  input mem_do_rdata_reg;
  input rd0__0_0;
  input mem_do_rdata_reg_0;
  input mem_do_rdata_reg_1;
  input mem_do_rdata_reg_2;
  input instr_jal_reg_0;
  input mem_axi_rvalid;
  input mem_axi_bvalid;
  input \reg_out_reg[0] ;
  input \reg_out_reg[0]_0 ;
  input \reg_out_reg[31] ;
  input \reg_out_reg[1] ;
  input \reg_out_reg[1]_0 ;
  input \reg_out_reg[2] ;
  input \reg_out_reg[2]_0 ;
  input \reg_out_reg[3] ;
  input \reg_out_reg[3]_0 ;
  input \reg_out_reg[4] ;
  input \reg_out_reg[4]_0 ;
  input \reg_out_reg[5] ;
  input \reg_out_reg[5]_0 ;
  input \reg_out_reg[6] ;
  input \reg_out_reg[6]_0 ;
  input \reg_out_reg[7] ;
  input \reg_out_reg[7]_0 ;
  input \reg_out_reg[8] ;
  input \reg_out_reg[8]_0 ;
  input \reg_out_reg[8]_1 ;
  input \reg_out_reg[9] ;
  input \reg_out_reg[9]_0 ;
  input \reg_out_reg[9]_1 ;
  input \reg_out_reg[10] ;
  input \reg_out_reg[10]_0 ;
  input \reg_out_reg[10]_1 ;
  input \reg_out_reg[11] ;
  input \reg_out_reg[11]_0 ;
  input \reg_out_reg[11]_1 ;
  input \reg_out_reg[12] ;
  input \reg_out_reg[12]_0 ;
  input \reg_out_reg[12]_1 ;
  input \reg_out_reg[13] ;
  input \reg_out_reg[13]_0 ;
  input \reg_out_reg[13]_1 ;
  input \reg_out_reg[14] ;
  input \reg_out_reg[14]_0 ;
  input \reg_out_reg[14]_1 ;
  input \reg_out_reg[15] ;
  input \reg_out_reg[15]_0 ;
  input \reg_out_reg[15]_1 ;
  input \reg_out_reg[16] ;
  input \reg_out_reg[16]_0 ;
  input \reg_out_reg[16]_1 ;
  input \reg_out_reg[17] ;
  input \reg_out_reg[17]_0 ;
  input \reg_out_reg[17]_1 ;
  input \reg_out_reg[18] ;
  input \reg_out_reg[18]_0 ;
  input \reg_out_reg[18]_1 ;
  input \reg_out_reg[19] ;
  input \reg_out_reg[19]_0 ;
  input \reg_out_reg[19]_1 ;
  input \reg_out_reg[20] ;
  input \reg_out_reg[20]_0 ;
  input \reg_out_reg[20]_1 ;
  input \reg_out_reg[21] ;
  input \reg_out_reg[21]_0 ;
  input \reg_out_reg[21]_1 ;
  input \reg_out_reg[22] ;
  input \reg_out_reg[22]_0 ;
  input \reg_out_reg[22]_1 ;
  input \reg_out_reg[23] ;
  input \reg_out_reg[23]_0 ;
  input \reg_out_reg[23]_1 ;
  input \reg_out_reg[24] ;
  input \reg_out_reg[24]_0 ;
  input \reg_out_reg[24]_1 ;
  input \reg_out_reg[25] ;
  input \reg_out_reg[25]_0 ;
  input \reg_out_reg[25]_1 ;
  input \reg_out_reg[26] ;
  input \reg_out_reg[26]_0 ;
  input \reg_out_reg[26]_1 ;
  input \reg_out_reg[27] ;
  input \reg_out_reg[27]_0 ;
  input \reg_out_reg[27]_1 ;
  input \reg_out_reg[28] ;
  input \reg_out_reg[28]_0 ;
  input \reg_out_reg[28]_1 ;
  input \reg_out_reg[29] ;
  input \reg_out_reg[29]_0 ;
  input \reg_out_reg[29]_1 ;
  input \reg_out_reg[30] ;
  input \reg_out_reg[30]_0 ;
  input \reg_out_reg[30]_1 ;
  input \reg_out_reg[31]_0 ;
  input \reg_out_reg[31]_1 ;
  input \reg_out_reg[31]_2 ;
  input [16:0]reg_out1;
  input [4:0]\reg_sh_reg[0] ;
  input latched_store_reg;
  input latched_store_reg_0;
  input latched_store_reg_1;
  input mem_do_rinst_reg_3;
  input mem_do_rinst_reg_4;
  input mem_do_rinst_reg_5;
  input mem_do_rinst_reg_6;
  input \cpu_state_reg[6] ;
  input instr_rdinstrh;
  input instr_rdcycle;
  input instr_rdinstr;
  input instr_rdcycleh;
  input mem_do_rinst_reg_7;
  input mem_do_rinst_reg_8;
  input mem_do_rinst_reg_9;
  input instr_lui;
  input [15:0]rd0__0_1;
  input instr_ecall_ebreak;
  input pcpi_timeout;
  input \cpu_state_reg[0]_2 ;
  input \cpu_state_reg[7]_0 ;
  input instr_slti;
  input instr_sw;
  input instr_bgeu;
  input instr_beq;
  input instr_bne;
  input instr_bge;
  input instr_lhu;
  input instr_lbu;
  input instr_lw;
  input instr_slli;
  input instr_sll;
  input instr_sh;
  input instr_lh;
  input instr_add;
  input instr_bltu;
  input instr_sra;
  input instr_srl;
  input instr_srai;
  input instr_srli;
  input instr_or;
  input instr_ori;
  input instr_jal;
  input instr_auipc;
  input instr_lb;
  input [0:0]DI;
  input instr_andi;
  input instr_sb;
  input instr_blt;
  input instr_and;
  input instr_sltiu;
  input instr_addi;
  input instr_slt;
  input instr_sltu;
  input instr_xor;
  input instr_xori;
  input [4:0]decoded_rs2__0;
  input \reg_op1_reg[19]_i_5_0 ;
  input \reg_op1_reg[19]_i_5_1 ;
  input \reg_op1_reg[19]_i_5_2 ;
  input clk;
  input [0:0]SS;

  wire [0:0]CO;
  wire [31:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [2:0]O;
  wire [6:0]Q;
  wire [0:0]SS;
  wire [0:0]active;
  wire \active[0]_i_4_n_0 ;
  wire \active[0]_i_5_n_0 ;
  wire \active_reg[1]_0 ;
  wire clk;
  wire \cpu_state[6]_i_2_n_0 ;
  wire \cpu_state[7]_i_5_n_0 ;
  wire \cpu_state_reg[0] ;
  wire \cpu_state_reg[0]_0 ;
  wire \cpu_state_reg[0]_1 ;
  wire \cpu_state_reg[0]_2 ;
  wire \cpu_state_reg[6] ;
  wire \cpu_state_reg[7] ;
  wire \cpu_state_reg[7]_0 ;
  wire [4:0]decoded_rs1;
  wire [4:0]decoded_rs2__0;
  wire \decoded_rs2_reg[4] ;
  wire instr_add;
  wire instr_addi;
  wire instr_and;
  wire instr_andi;
  wire instr_any_mulh;
  wire instr_auipc;
  wire instr_beq;
  wire instr_bge;
  wire instr_bgeu;
  wire instr_blt;
  wire instr_bltu;
  wire instr_bne;
  wire instr_ecall_ebreak;
  wire instr_jal;
  wire instr_jal_reg;
  wire instr_jal_reg_0;
  wire instr_jalr_reg;
  wire instr_lb;
  wire instr_lb_reg;
  wire instr_lbu;
  wire instr_lh;
  wire instr_lhu;
  wire instr_lui;
  wire instr_lw;
  wire instr_mulh1;
  wire instr_or;
  wire instr_or_reg;
  wire instr_ori;
  wire instr_rdcycle;
  wire instr_rdcycleh;
  wire instr_rdinstr;
  wire instr_rdinstr_reg;
  wire instr_rdinstrh;
  wire instr_sb;
  wire instr_sh;
  wire instr_sll;
  wire instr_sll_reg;
  wire instr_slli;
  wire instr_slt;
  wire instr_slti;
  wire instr_slti_reg;
  wire instr_sltiu;
  wire instr_sltu;
  wire instr_sra;
  wire instr_sra_reg;
  wire instr_srai;
  wire instr_srai_reg;
  wire instr_srl;
  wire instr_srli;
  wire instr_srli_reg;
  wire instr_sw;
  wire instr_xor;
  wire instr_xor_reg;
  wire instr_xori;
  wire is_jalr_addi_slti_sltiu_xori_ori_andi;
  wire is_lui_auipc_jal;
  wire is_lui_auipc_jal_reg;
  wire latched_store_reg;
  wire latched_store_reg_0;
  wire latched_store_reg_1;
  wire mem_axi_bvalid;
  wire mem_axi_rvalid;
  wire mem_do_prefetch_reg;
  wire mem_do_rdata_reg;
  wire mem_do_rdata_reg_0;
  wire mem_do_rdata_reg_1;
  wire mem_do_rdata_reg_2;
  wire mem_do_rinst0;
  wire mem_do_rinst5_out;
  wire mem_do_rinst_i_2_0;
  wire mem_do_rinst_i_3_n_0;
  wire mem_do_rinst_i_9_n_0;
  wire mem_do_rinst_reg;
  wire mem_do_rinst_reg_0;
  wire mem_do_rinst_reg_1;
  wire mem_do_rinst_reg_2;
  wire mem_do_rinst_reg_3;
  wire mem_do_rinst_reg_4;
  wire mem_do_rinst_reg_5;
  wire mem_do_rinst_reg_6;
  wire mem_do_rinst_reg_7;
  wire mem_do_rinst_reg_8;
  wire mem_do_rinst_reg_9;
  wire \mem_state_reg[0] ;
  wire mem_valid_reg;
  wire pcpi_insn_valid1;
  wire [31:8]pcpi_int_rd;
  wire pcpi_ready;
  wire [16:0]pcpi_rs1;
  wire [16:0]pcpi_rs2;
  wire pcpi_timeout;
  wire rd0_0;
  wire rd0_1;
  wire rd0_2;
  wire rd0_3;
  wire rd0_4;
  wire [11:0]rd0_5;
  wire rd0__0_0;
  wire [15:0]rd0__0_1;
  wire rd0__0_n_100;
  wire rd0__0_n_101;
  wire rd0__0_n_102;
  wire rd0__0_n_103;
  wire rd0__0_n_104;
  wire rd0__0_n_105;
  wire rd0__0_n_106;
  wire rd0__0_n_107;
  wire rd0__0_n_108;
  wire rd0__0_n_109;
  wire rd0__0_n_110;
  wire rd0__0_n_111;
  wire rd0__0_n_112;
  wire rd0__0_n_113;
  wire rd0__0_n_114;
  wire rd0__0_n_115;
  wire rd0__0_n_116;
  wire rd0__0_n_117;
  wire rd0__0_n_118;
  wire rd0__0_n_119;
  wire rd0__0_n_120;
  wire rd0__0_n_121;
  wire rd0__0_n_122;
  wire rd0__0_n_123;
  wire rd0__0_n_124;
  wire rd0__0_n_125;
  wire rd0__0_n_126;
  wire rd0__0_n_127;
  wire rd0__0_n_128;
  wire rd0__0_n_129;
  wire rd0__0_n_130;
  wire rd0__0_n_131;
  wire rd0__0_n_132;
  wire rd0__0_n_133;
  wire rd0__0_n_134;
  wire rd0__0_n_135;
  wire rd0__0_n_136;
  wire rd0__0_n_137;
  wire rd0__0_n_138;
  wire rd0__0_n_139;
  wire rd0__0_n_140;
  wire rd0__0_n_141;
  wire rd0__0_n_142;
  wire rd0__0_n_143;
  wire rd0__0_n_144;
  wire rd0__0_n_145;
  wire rd0__0_n_146;
  wire rd0__0_n_147;
  wire rd0__0_n_148;
  wire rd0__0_n_149;
  wire rd0__0_n_150;
  wire rd0__0_n_151;
  wire rd0__0_n_152;
  wire rd0__0_n_153;
  wire rd0__0_n_58;
  wire rd0__0_n_59;
  wire rd0__0_n_60;
  wire rd0__0_n_61;
  wire rd0__0_n_62;
  wire rd0__0_n_63;
  wire rd0__0_n_64;
  wire rd0__0_n_65;
  wire rd0__0_n_66;
  wire rd0__0_n_67;
  wire rd0__0_n_68;
  wire rd0__0_n_69;
  wire rd0__0_n_70;
  wire rd0__0_n_71;
  wire rd0__0_n_72;
  wire rd0__0_n_73;
  wire rd0__0_n_74;
  wire rd0__0_n_75;
  wire rd0__0_n_76;
  wire rd0__0_n_77;
  wire rd0__0_n_78;
  wire rd0__0_n_79;
  wire rd0__0_n_80;
  wire rd0__0_n_81;
  wire rd0__0_n_82;
  wire rd0__0_n_83;
  wire rd0__0_n_84;
  wire rd0__0_n_85;
  wire rd0__0_n_86;
  wire rd0__0_n_87;
  wire rd0__0_n_88;
  wire rd0__0_n_89;
  wire rd0__0_n_90;
  wire rd0__0_n_91;
  wire rd0__0_n_92;
  wire rd0__0_n_93;
  wire rd0__0_n_94;
  wire rd0__0_n_95;
  wire rd0__0_n_96;
  wire rd0__0_n_97;
  wire rd0__0_n_98;
  wire rd0__0_n_99;
  wire rd0_i_1_n_0;
  wire rd0_n_100;
  wire rd0_n_101;
  wire rd0_n_102;
  wire rd0_n_103;
  wire rd0_n_104;
  wire rd0_n_105;
  wire rd0_n_106;
  wire rd0_n_107;
  wire rd0_n_108;
  wire rd0_n_109;
  wire rd0_n_110;
  wire rd0_n_111;
  wire rd0_n_112;
  wire rd0_n_113;
  wire rd0_n_114;
  wire rd0_n_115;
  wire rd0_n_116;
  wire rd0_n_117;
  wire rd0_n_118;
  wire rd0_n_119;
  wire rd0_n_120;
  wire rd0_n_121;
  wire rd0_n_122;
  wire rd0_n_123;
  wire rd0_n_124;
  wire rd0_n_125;
  wire rd0_n_126;
  wire rd0_n_127;
  wire rd0_n_128;
  wire rd0_n_129;
  wire rd0_n_130;
  wire rd0_n_131;
  wire rd0_n_132;
  wire rd0_n_133;
  wire rd0_n_134;
  wire rd0_n_135;
  wire rd0_n_136;
  wire rd0_n_137;
  wire rd0_n_138;
  wire rd0_n_139;
  wire rd0_n_140;
  wire rd0_n_141;
  wire rd0_n_142;
  wire rd0_n_143;
  wire rd0_n_144;
  wire rd0_n_145;
  wire rd0_n_146;
  wire rd0_n_147;
  wire rd0_n_148;
  wire rd0_n_149;
  wire rd0_n_150;
  wire rd0_n_151;
  wire rd0_n_152;
  wire rd0_n_153;
  wire rd0_n_58;
  wire rd0_n_59;
  wire rd0_n_60;
  wire rd0_n_61;
  wire rd0_n_62;
  wire rd0_n_63;
  wire rd0_n_64;
  wire rd0_n_65;
  wire rd0_n_66;
  wire rd0_n_67;
  wire rd0_n_68;
  wire rd0_n_69;
  wire rd0_n_70;
  wire rd0_n_71;
  wire rd0_n_72;
  wire rd0_n_73;
  wire rd0_n_74;
  wire rd0_n_75;
  wire rd0_n_76;
  wire rd0_n_77;
  wire rd0_n_78;
  wire rd0_n_79;
  wire rd0_n_80;
  wire rd0_n_81;
  wire rd0_n_82;
  wire rd0_n_83;
  wire rd0_n_84;
  wire rd0_n_85;
  wire rd0_n_86;
  wire rd0_n_87;
  wire rd0_n_88;
  wire rd0_n_89;
  wire rd0_n_90;
  wire rd0_n_91;
  wire rd0_n_92;
  wire rd0_n_93;
  wire rd0_n_94;
  wire rd0_n_95;
  wire rd0_n_96;
  wire rd0_n_97;
  wire rd0_n_98;
  wire rd0_n_99;
  wire \rd_reg[0]__0_n_0 ;
  wire \rd_reg[10]__0_n_0 ;
  wire \rd_reg[11]__0_n_0 ;
  wire \rd_reg[12]__0_n_0 ;
  wire \rd_reg[13]__0_n_0 ;
  wire \rd_reg[14]__0_n_0 ;
  wire \rd_reg[15]__0_n_0 ;
  wire \rd_reg[16]__0_n_0 ;
  wire \rd_reg[1]__0_n_0 ;
  wire \rd_reg[2]__0_n_0 ;
  wire \rd_reg[3]__0_n_0 ;
  wire \rd_reg[4]__0_n_0 ;
  wire \rd_reg[5]__0_n_0 ;
  wire \rd_reg[6]__0_n_0 ;
  wire \rd_reg[7]__0_n_0 ;
  wire \rd_reg[8]__0_n_0 ;
  wire \rd_reg[9]__0_n_0 ;
  wire [31:0]rd_reg_0;
  wire [16:0]rd_reg__0_0;
  wire [14:0]rd_reg__0_1;
  wire rd_reg__0_n_100;
  wire rd_reg__0_n_101;
  wire rd_reg__0_n_102;
  wire rd_reg__0_n_103;
  wire rd_reg__0_n_104;
  wire rd_reg__0_n_105;
  wire rd_reg__0_n_58;
  wire rd_reg__0_n_59;
  wire rd_reg__0_n_60;
  wire rd_reg__0_n_61;
  wire rd_reg__0_n_62;
  wire rd_reg__0_n_63;
  wire rd_reg__0_n_64;
  wire rd_reg__0_n_65;
  wire rd_reg__0_n_66;
  wire rd_reg__0_n_67;
  wire rd_reg__0_n_68;
  wire rd_reg__0_n_69;
  wire rd_reg__0_n_70;
  wire rd_reg__0_n_71;
  wire rd_reg__0_n_72;
  wire rd_reg__0_n_73;
  wire rd_reg__0_n_74;
  wire rd_reg__0_n_75;
  wire rd_reg__0_n_76;
  wire rd_reg__0_n_77;
  wire rd_reg__0_n_78;
  wire rd_reg__0_n_79;
  wire rd_reg__0_n_80;
  wire rd_reg__0_n_81;
  wire rd_reg__0_n_82;
  wire rd_reg__0_n_83;
  wire rd_reg__0_n_84;
  wire rd_reg__0_n_85;
  wire rd_reg__0_n_86;
  wire rd_reg__0_n_87;
  wire rd_reg__0_n_88;
  wire rd_reg__0_n_89;
  wire rd_reg__0_n_90;
  wire rd_reg__0_n_91;
  wire rd_reg__0_n_92;
  wire rd_reg__0_n_93;
  wire rd_reg__0_n_94;
  wire rd_reg__0_n_95;
  wire rd_reg__0_n_96;
  wire rd_reg__0_n_97;
  wire rd_reg__0_n_98;
  wire rd_reg__0_n_99;
  wire [63:16]rd_reg__1;
  wire rd_reg_i_1_n_0;
  wire \rd_reg_n_0_[0] ;
  wire \rd_reg_n_0_[10] ;
  wire \rd_reg_n_0_[11] ;
  wire \rd_reg_n_0_[12] ;
  wire \rd_reg_n_0_[13] ;
  wire \rd_reg_n_0_[14] ;
  wire \rd_reg_n_0_[15] ;
  wire \rd_reg_n_0_[16] ;
  wire \rd_reg_n_0_[1] ;
  wire \rd_reg_n_0_[2] ;
  wire \rd_reg_n_0_[3] ;
  wire \rd_reg_n_0_[4] ;
  wire \rd_reg_n_0_[5] ;
  wire \rd_reg_n_0_[6] ;
  wire \rd_reg_n_0_[7] ;
  wire \rd_reg_n_0_[8] ;
  wire \rd_reg_n_0_[9] ;
  wire rd_reg_n_100;
  wire rd_reg_n_101;
  wire rd_reg_n_102;
  wire rd_reg_n_103;
  wire rd_reg_n_104;
  wire rd_reg_n_105;
  wire rd_reg_n_58;
  wire rd_reg_n_59;
  wire rd_reg_n_60;
  wire rd_reg_n_61;
  wire rd_reg_n_62;
  wire rd_reg_n_63;
  wire rd_reg_n_64;
  wire rd_reg_n_65;
  wire rd_reg_n_66;
  wire rd_reg_n_67;
  wire rd_reg_n_68;
  wire rd_reg_n_69;
  wire rd_reg_n_70;
  wire rd_reg_n_71;
  wire rd_reg_n_72;
  wire rd_reg_n_73;
  wire rd_reg_n_74;
  wire rd_reg_n_75;
  wire rd_reg_n_76;
  wire rd_reg_n_77;
  wire rd_reg_n_78;
  wire rd_reg_n_79;
  wire rd_reg_n_80;
  wire rd_reg_n_81;
  wire rd_reg_n_82;
  wire rd_reg_n_83;
  wire rd_reg_n_84;
  wire rd_reg_n_85;
  wire rd_reg_n_86;
  wire rd_reg_n_87;
  wire rd_reg_n_88;
  wire rd_reg_n_89;
  wire rd_reg_n_90;
  wire rd_reg_n_91;
  wire rd_reg_n_92;
  wire rd_reg_n_93;
  wire rd_reg_n_94;
  wire rd_reg_n_95;
  wire rd_reg_n_96;
  wire rd_reg_n_97;
  wire rd_reg_n_98;
  wire rd_reg_n_99;
  wire \reg_op1[0]_i_2_n_0 ;
  wire \reg_op1[0]_i_3_n_0 ;
  wire \reg_op1[0]_i_5_n_0 ;
  wire \reg_op1[0]_i_6_n_0 ;
  wire \reg_op1[0]_i_7_n_0 ;
  wire \reg_op1[0]_i_8_n_0 ;
  wire \reg_op1[0]_i_9_n_0 ;
  wire \reg_op1[10]_i_2_n_0 ;
  wire \reg_op1[10]_i_3_n_0 ;
  wire \reg_op1[10]_i_4_n_0 ;
  wire \reg_op1[10]_i_5_n_0 ;
  wire \reg_op1[11]_i_10_n_0 ;
  wire \reg_op1[11]_i_2_n_0 ;
  wire \reg_op1[11]_i_3_n_0 ;
  wire \reg_op1[11]_i_4_n_0 ;
  wire \reg_op1[11]_i_6_n_0 ;
  wire \reg_op1[11]_i_7_n_0 ;
  wire \reg_op1[11]_i_8_n_0 ;
  wire \reg_op1[11]_i_9_n_0 ;
  wire \reg_op1[12]_i_2_n_0 ;
  wire \reg_op1[12]_i_3_n_0 ;
  wire \reg_op1[12]_i_4_n_0 ;
  wire \reg_op1[12]_i_5_n_0 ;
  wire \reg_op1[13]_i_2_n_0 ;
  wire \reg_op1[13]_i_3_n_0 ;
  wire \reg_op1[13]_i_4_n_0 ;
  wire \reg_op1[13]_i_5_n_0 ;
  wire \reg_op1[14]_i_2_n_0 ;
  wire \reg_op1[14]_i_3_n_0 ;
  wire \reg_op1[14]_i_4_n_0 ;
  wire \reg_op1[14]_i_5_n_0 ;
  wire \reg_op1[15]_i_10_n_0 ;
  wire \reg_op1[15]_i_2_n_0 ;
  wire \reg_op1[15]_i_3_n_0 ;
  wire \reg_op1[15]_i_4_n_0 ;
  wire \reg_op1[15]_i_6_n_0 ;
  wire \reg_op1[15]_i_7_n_0 ;
  wire \reg_op1[15]_i_8_n_0 ;
  wire \reg_op1[15]_i_9_n_0 ;
  wire \reg_op1[16]_i_2_n_0 ;
  wire \reg_op1[16]_i_3_n_0 ;
  wire \reg_op1[16]_i_4_n_0 ;
  wire \reg_op1[16]_i_5_n_0 ;
  wire \reg_op1[19]_i_10_n_0 ;
  wire \reg_op1[19]_i_7_n_0 ;
  wire \reg_op1[19]_i_8_n_0 ;
  wire \reg_op1[19]_i_9_n_0 ;
  wire \reg_op1[1]_i_2_n_0 ;
  wire \reg_op1[1]_i_3_n_0 ;
  wire \reg_op1[1]_i_4_n_0 ;
  wire \reg_op1[2]_i_2_n_0 ;
  wire \reg_op1[2]_i_3_n_0 ;
  wire \reg_op1[2]_i_4_n_0 ;
  wire \reg_op1[31]_i_4_n_0 ;
  wire \reg_op1[31]_i_5_n_0 ;
  wire \reg_op1[3]_i_2_n_0 ;
  wire \reg_op1[3]_i_3_n_0 ;
  wire \reg_op1[3]_i_4_n_0 ;
  wire \reg_op1[4]_i_2_n_0 ;
  wire \reg_op1[4]_i_3_n_0 ;
  wire \reg_op1[4]_i_4_n_0 ;
  wire \reg_op1[4]_i_5_n_0 ;
  wire \reg_op1[5]_i_2_n_0 ;
  wire \reg_op1[5]_i_3_n_0 ;
  wire \reg_op1[5]_i_4_n_0 ;
  wire \reg_op1[5]_i_5_n_0 ;
  wire \reg_op1[6]_i_2_n_0 ;
  wire \reg_op1[6]_i_3_n_0 ;
  wire \reg_op1[6]_i_4_n_0 ;
  wire \reg_op1[6]_i_5_n_0 ;
  wire \reg_op1[7]_i_10_n_0 ;
  wire \reg_op1[7]_i_2_n_0 ;
  wire \reg_op1[7]_i_3_n_0 ;
  wire \reg_op1[7]_i_4_n_0 ;
  wire \reg_op1[7]_i_6_n_0 ;
  wire \reg_op1[7]_i_7_n_0 ;
  wire \reg_op1[7]_i_8_n_0 ;
  wire \reg_op1[7]_i_9_n_0 ;
  wire \reg_op1[8]_i_2_n_0 ;
  wire \reg_op1[8]_i_3_n_0 ;
  wire \reg_op1[8]_i_4_n_0 ;
  wire \reg_op1[8]_i_5_n_0 ;
  wire \reg_op1[9]_i_2_n_0 ;
  wire \reg_op1[9]_i_3_n_0 ;
  wire \reg_op1[9]_i_4_n_0 ;
  wire \reg_op1[9]_i_5_n_0 ;
  wire \reg_op1_reg[0]_i_4_n_0 ;
  wire \reg_op1_reg[0]_i_4_n_1 ;
  wire \reg_op1_reg[0]_i_4_n_2 ;
  wire \reg_op1_reg[0]_i_4_n_3 ;
  wire \reg_op1_reg[0]_i_4_n_4 ;
  wire \reg_op1_reg[0]_i_4_n_5 ;
  wire \reg_op1_reg[0]_i_4_n_6 ;
  wire \reg_op1_reg[0]_i_4_n_7 ;
  wire \reg_op1_reg[11]_i_5_n_0 ;
  wire \reg_op1_reg[11]_i_5_n_1 ;
  wire \reg_op1_reg[11]_i_5_n_2 ;
  wire \reg_op1_reg[11]_i_5_n_3 ;
  wire \reg_op1_reg[11]_i_5_n_4 ;
  wire \reg_op1_reg[11]_i_5_n_5 ;
  wire \reg_op1_reg[11]_i_5_n_6 ;
  wire \reg_op1_reg[11]_i_5_n_7 ;
  wire \reg_op1_reg[15]_i_5_n_0 ;
  wire \reg_op1_reg[15]_i_5_n_1 ;
  wire \reg_op1_reg[15]_i_5_n_2 ;
  wire \reg_op1_reg[15]_i_5_n_3 ;
  wire \reg_op1_reg[15]_i_5_n_4 ;
  wire \reg_op1_reg[15]_i_5_n_5 ;
  wire \reg_op1_reg[15]_i_5_n_6 ;
  wire \reg_op1_reg[15]_i_5_n_7 ;
  wire \reg_op1_reg[18] ;
  wire \reg_op1_reg[19] ;
  wire \reg_op1_reg[19]_i_5_0 ;
  wire \reg_op1_reg[19]_i_5_1 ;
  wire \reg_op1_reg[19]_i_5_2 ;
  wire \reg_op1_reg[19]_i_5_n_1 ;
  wire \reg_op1_reg[19]_i_5_n_2 ;
  wire \reg_op1_reg[19]_i_5_n_3 ;
  wire \reg_op1_reg[19]_i_5_n_7 ;
  wire \reg_op1_reg[20] ;
  wire \reg_op1_reg[7]_i_5_n_0 ;
  wire \reg_op1_reg[7]_i_5_n_1 ;
  wire \reg_op1_reg[7]_i_5_n_2 ;
  wire \reg_op1_reg[7]_i_5_n_3 ;
  wire \reg_op1_reg[7]_i_5_n_4 ;
  wire \reg_op1_reg[7]_i_5_n_5 ;
  wire \reg_op1_reg[7]_i_5_n_6 ;
  wire \reg_op1_reg[7]_i_5_n_7 ;
  wire \reg_op2[31]_i_11_n_0 ;
  wire \reg_op2[31]_i_12_n_0 ;
  wire \reg_op2[31]_i_13_n_0 ;
  wire [16:0]reg_out1;
  wire \reg_out[11]_i_10_n_0 ;
  wire \reg_out[11]_i_11_n_0 ;
  wire \reg_out[11]_i_8_n_0 ;
  wire \reg_out[11]_i_9_n_0 ;
  wire \reg_out[15]_i_10_n_0 ;
  wire \reg_out[15]_i_11_n_0 ;
  wire \reg_out[15]_i_12_n_0 ;
  wire \reg_out[15]_i_13_n_0 ;
  wire \reg_out[19]_i_10_n_0 ;
  wire \reg_out[19]_i_11_n_0 ;
  wire \reg_out[19]_i_12_n_0 ;
  wire \reg_out[19]_i_13_n_0 ;
  wire \reg_out[19]_i_14_n_0 ;
  wire \reg_out[19]_i_15_n_0 ;
  wire \reg_out[19]_i_9_n_0 ;
  wire \reg_out[23]_i_10_n_0 ;
  wire \reg_out[23]_i_11_n_0 ;
  wire \reg_out[23]_i_12_n_0 ;
  wire \reg_out[23]_i_13_n_0 ;
  wire \reg_out[23]_i_14_n_0 ;
  wire \reg_out[23]_i_15_n_0 ;
  wire \reg_out[23]_i_16_n_0 ;
  wire \reg_out[23]_i_9_n_0 ;
  wire \reg_out[27]_i_10_n_0 ;
  wire \reg_out[27]_i_11_n_0 ;
  wire \reg_out[27]_i_12_n_0 ;
  wire \reg_out[27]_i_13_n_0 ;
  wire \reg_out[27]_i_14_n_0 ;
  wire \reg_out[27]_i_15_n_0 ;
  wire \reg_out[27]_i_16_n_0 ;
  wire \reg_out[27]_i_9_n_0 ;
  wire \reg_out[31]_i_14_n_0 ;
  wire \reg_out[31]_i_15_n_0 ;
  wire \reg_out[31]_i_16_n_0 ;
  wire \reg_out[31]_i_17_n_0 ;
  wire \reg_out[31]_i_18_n_0 ;
  wire \reg_out[31]_i_19_n_0 ;
  wire \reg_out[31]_i_20_n_0 ;
  wire \reg_out[31]_i_21_n_0 ;
  wire \reg_out[3]_i_10_n_0 ;
  wire \reg_out[3]_i_7_n_0 ;
  wire \reg_out[3]_i_8_n_0 ;
  wire \reg_out[3]_i_9_n_0 ;
  wire \reg_out[7]_i_10_n_0 ;
  wire \reg_out[7]_i_11_n_0 ;
  wire \reg_out[7]_i_8_n_0 ;
  wire \reg_out[7]_i_9_n_0 ;
  wire \reg_out_reg[0] ;
  wire \reg_out_reg[0]_0 ;
  wire \reg_out_reg[10] ;
  wire \reg_out_reg[10]_0 ;
  wire \reg_out_reg[10]_1 ;
  wire \reg_out_reg[11] ;
  wire \reg_out_reg[11]_0 ;
  wire \reg_out_reg[11]_1 ;
  wire \reg_out_reg[11]_i_6_n_0 ;
  wire \reg_out_reg[11]_i_6_n_1 ;
  wire \reg_out_reg[11]_i_6_n_2 ;
  wire \reg_out_reg[11]_i_6_n_3 ;
  wire \reg_out_reg[12] ;
  wire \reg_out_reg[12]_0 ;
  wire \reg_out_reg[12]_1 ;
  wire \reg_out_reg[13] ;
  wire \reg_out_reg[13]_0 ;
  wire \reg_out_reg[13]_1 ;
  wire \reg_out_reg[14] ;
  wire \reg_out_reg[14]_0 ;
  wire \reg_out_reg[14]_1 ;
  wire \reg_out_reg[15] ;
  wire \reg_out_reg[15]_0 ;
  wire \reg_out_reg[15]_1 ;
  wire \reg_out_reg[15]_i_8_n_0 ;
  wire \reg_out_reg[15]_i_8_n_1 ;
  wire \reg_out_reg[15]_i_8_n_2 ;
  wire \reg_out_reg[15]_i_8_n_3 ;
  wire \reg_out_reg[16] ;
  wire \reg_out_reg[16]_0 ;
  wire \reg_out_reg[16]_1 ;
  wire \reg_out_reg[17] ;
  wire \reg_out_reg[17]_0 ;
  wire \reg_out_reg[17]_1 ;
  wire \reg_out_reg[18] ;
  wire \reg_out_reg[18]_0 ;
  wire \reg_out_reg[18]_1 ;
  wire \reg_out_reg[19] ;
  wire \reg_out_reg[19]_0 ;
  wire \reg_out_reg[19]_1 ;
  wire \reg_out_reg[19]_i_6_n_0 ;
  wire \reg_out_reg[19]_i_6_n_1 ;
  wire \reg_out_reg[19]_i_6_n_2 ;
  wire \reg_out_reg[19]_i_6_n_3 ;
  wire \reg_out_reg[19]_i_7_n_0 ;
  wire \reg_out_reg[19]_i_7_n_1 ;
  wire \reg_out_reg[19]_i_7_n_2 ;
  wire \reg_out_reg[19]_i_7_n_3 ;
  wire \reg_out_reg[1] ;
  wire \reg_out_reg[1]_0 ;
  wire \reg_out_reg[20] ;
  wire \reg_out_reg[20]_0 ;
  wire \reg_out_reg[20]_1 ;
  wire \reg_out_reg[21] ;
  wire \reg_out_reg[21]_0 ;
  wire \reg_out_reg[21]_1 ;
  wire \reg_out_reg[22] ;
  wire \reg_out_reg[22]_0 ;
  wire \reg_out_reg[22]_1 ;
  wire \reg_out_reg[23] ;
  wire \reg_out_reg[23]_0 ;
  wire \reg_out_reg[23]_1 ;
  wire \reg_out_reg[23]_i_6_n_0 ;
  wire \reg_out_reg[23]_i_6_n_1 ;
  wire \reg_out_reg[23]_i_6_n_2 ;
  wire \reg_out_reg[23]_i_6_n_3 ;
  wire \reg_out_reg[23]_i_7_n_0 ;
  wire \reg_out_reg[23]_i_7_n_1 ;
  wire \reg_out_reg[23]_i_7_n_2 ;
  wire \reg_out_reg[23]_i_7_n_3 ;
  wire \reg_out_reg[24] ;
  wire \reg_out_reg[24]_0 ;
  wire \reg_out_reg[24]_1 ;
  wire \reg_out_reg[25] ;
  wire \reg_out_reg[25]_0 ;
  wire \reg_out_reg[25]_1 ;
  wire \reg_out_reg[26] ;
  wire \reg_out_reg[26]_0 ;
  wire \reg_out_reg[26]_1 ;
  wire \reg_out_reg[27] ;
  wire \reg_out_reg[27]_0 ;
  wire \reg_out_reg[27]_1 ;
  wire \reg_out_reg[27]_i_6_n_0 ;
  wire \reg_out_reg[27]_i_6_n_1 ;
  wire \reg_out_reg[27]_i_6_n_2 ;
  wire \reg_out_reg[27]_i_6_n_3 ;
  wire \reg_out_reg[27]_i_7_n_0 ;
  wire \reg_out_reg[27]_i_7_n_1 ;
  wire \reg_out_reg[27]_i_7_n_2 ;
  wire \reg_out_reg[27]_i_7_n_3 ;
  wire \reg_out_reg[28] ;
  wire \reg_out_reg[28]_0 ;
  wire \reg_out_reg[28]_1 ;
  wire \reg_out_reg[29] ;
  wire \reg_out_reg[29]_0 ;
  wire \reg_out_reg[29]_1 ;
  wire \reg_out_reg[2] ;
  wire \reg_out_reg[2]_0 ;
  wire \reg_out_reg[30] ;
  wire \reg_out_reg[30]_0 ;
  wire \reg_out_reg[30]_1 ;
  wire \reg_out_reg[31] ;
  wire \reg_out_reg[31]_0 ;
  wire \reg_out_reg[31]_1 ;
  wire \reg_out_reg[31]_2 ;
  wire \reg_out_reg[31]_i_10_n_0 ;
  wire \reg_out_reg[31]_i_10_n_1 ;
  wire \reg_out_reg[31]_i_10_n_2 ;
  wire \reg_out_reg[31]_i_10_n_3 ;
  wire \reg_out_reg[31]_i_9_n_1 ;
  wire \reg_out_reg[31]_i_9_n_2 ;
  wire \reg_out_reg[31]_i_9_n_3 ;
  wire \reg_out_reg[3] ;
  wire \reg_out_reg[3]_0 ;
  wire \reg_out_reg[3]_i_4_n_0 ;
  wire \reg_out_reg[3]_i_4_n_1 ;
  wire \reg_out_reg[3]_i_4_n_2 ;
  wire \reg_out_reg[3]_i_4_n_3 ;
  wire \reg_out_reg[4] ;
  wire \reg_out_reg[4]_0 ;
  wire \reg_out_reg[5] ;
  wire \reg_out_reg[5]_0 ;
  wire \reg_out_reg[6] ;
  wire \reg_out_reg[6]_0 ;
  wire \reg_out_reg[7] ;
  wire \reg_out_reg[7]_0 ;
  wire \reg_out_reg[7]_i_4_n_0 ;
  wire \reg_out_reg[7]_i_4_n_1 ;
  wire \reg_out_reg[7]_i_4_n_2 ;
  wire \reg_out_reg[7]_i_4_n_3 ;
  wire \reg_out_reg[8] ;
  wire \reg_out_reg[8]_0 ;
  wire \reg_out_reg[8]_1 ;
  wire \reg_out_reg[9] ;
  wire \reg_out_reg[9]_0 ;
  wire \reg_out_reg[9]_1 ;
  wire [16:0]reg_sh1;
  wire [4:0]\reg_sh_reg[0] ;
  wire \reg_sh_reg[4] ;
  wire resetn;
  wire resetn_0;
  wire resetn_1;
  wire [0:0]resetn_2;
  wire [1:0]resetn_3;
  wire resetn_4;
  wire rs10;
  wire shift_out;
  wire NLW_rd0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_rd0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_rd0_OVERFLOW_UNCONNECTED;
  wire NLW_rd0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_rd0_PATTERNDETECT_UNCONNECTED;
  wire NLW_rd0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_rd0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_rd0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_rd0_CARRYOUT_UNCONNECTED;
  wire NLW_rd0__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_rd0__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_rd0__0_OVERFLOW_UNCONNECTED;
  wire NLW_rd0__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_rd0__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_rd0__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_rd0__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_rd0__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_rd0__0_CARRYOUT_UNCONNECTED;
  wire NLW_rd_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_rd_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_rd_reg_OVERFLOW_UNCONNECTED;
  wire NLW_rd_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_rd_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_rd_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_rd_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_rd_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_rd_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_rd_reg_PCOUT_UNCONNECTED;
  wire NLW_rd_reg__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_rd_reg__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_rd_reg__0_OVERFLOW_UNCONNECTED;
  wire NLW_rd_reg__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_rd_reg__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_rd_reg__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_rd_reg__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_rd_reg__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_rd_reg__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_rd_reg__0_PCOUT_UNCONNECTED;
  wire [3:3]\NLW_reg_out_reg[31]_i_9_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h0004)) 
    \active[0]_i_1 
       (.I0(rd_reg__0_0[9]),
        .I1(instr_mulh1),
        .I2(pcpi_ready),
        .I3(active),
        .O(rs10));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \active[0]_i_2 
       (.I0(SS),
        .I1(pcpi_insn_valid1),
        .I2(rd_reg__0_0[15]),
        .I3(rd_reg__0_0[16]),
        .I4(rd_reg__0_0[10]),
        .I5(\active[0]_i_4_n_0 ),
        .O(instr_mulh1));
  LUT4 #(
    .INIT(16'h0001)) 
    \active[0]_i_3 
       (.I0(rd_reg__0_0[6]),
        .I1(rd_reg__0_0[2]),
        .I2(rd_reg__0_0[3]),
        .I3(\active[0]_i_5_n_0 ),
        .O(pcpi_insn_valid1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \active[0]_i_4 
       (.I0(rd_reg__0_0[13]),
        .I1(rd_reg__0_0[14]),
        .I2(rd_reg__0_0[11]),
        .I3(rd_reg__0_0[12]),
        .O(\active[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \active[0]_i_5 
       (.I0(rd_reg__0_0[4]),
        .I1(rd_reg__0_0[5]),
        .I2(rd_reg__0_0[0]),
        .I3(rd_reg__0_0[1]),
        .O(\active[0]_i_5_n_0 ));
  FDRE \active_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(rs10),
        .Q(active),
        .R(resetn_0));
  FDRE \active_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(active),
        .Q(pcpi_ready),
        .R(resetn_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF1F)) 
    \cpu_state[6]_i_1 
       (.I0(\cpu_state[6]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(resetn),
        .I3(\cpu_state_reg[6] ),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(resetn_3[0]));
  LUT6 #(
    .INIT(64'h0001000100000001)) 
    \cpu_state[6]_i_2 
       (.I0(instr_rdinstrh),
        .I1(instr_rdcycle),
        .I2(instr_rdinstr),
        .I3(instr_rdcycleh),
        .I4(pcpi_ready),
        .I5(instr_jalr_reg),
        .O(\cpu_state[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBAA)) 
    \cpu_state[7]_i_2 
       (.I0(\cpu_state[7]_i_5_n_0 ),
        .I1(\cpu_state_reg[0] ),
        .I2(resetn_1),
        .I3(Q[3]),
        .I4(\cpu_state_reg[0]_0 ),
        .I5(\cpu_state_reg[0]_1 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \cpu_state[7]_i_3 
       (.I0(instr_jalr_reg),
        .I1(resetn),
        .I2(Q[4]),
        .I3(pcpi_ready),
        .O(resetn_3[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA8AAAA)) 
    \cpu_state[7]_i_5 
       (.I0(Q[4]),
        .I1(pcpi_ready),
        .I2(instr_ecall_ebreak),
        .I3(pcpi_timeout),
        .I4(\cpu_state_reg[0]_2 ),
        .I5(instr_jalr_reg),
        .O(\cpu_state[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    instr_jal_i_3
       (.I0(resetn),
        .I1(\mem_state_reg[0] ),
        .O(resetn_1));
  LUT3 #(
    .INIT(8'h57)) 
    instr_jal_i_5
       (.I0(instr_jal_reg_0),
        .I1(mem_axi_rvalid),
        .I2(mem_axi_bvalid),
        .O(mem_valid_reg));
  LUT3 #(
    .INIT(8'hFE)) 
    is_lui_auipc_jal_i_1
       (.I0(instr_jal),
        .I1(instr_auipc),
        .I2(instr_lui),
        .O(instr_jal_reg));
  LUT6 #(
    .INIT(64'h000000000000002F)) 
    latched_store_i_3
       (.I0(latched_store_reg),
        .I1(pcpi_ready),
        .I2(latched_store_reg_0),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(latched_store_reg_1),
        .O(\active_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0111011111110111)) 
    latched_store_i_5
       (.I0(Q[6]),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(latched_store_reg),
        .I4(pcpi_ready),
        .I5(instr_jalr_reg),
        .O(\cpu_state_reg[7] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF32323202)) 
    mem_do_rinst_i_1
       (.I0(mem_do_rinst_reg_0),
        .I1(mem_do_rinst0),
        .I2(mem_do_rinst5_out),
        .I3(mem_do_rinst_i_3_n_0),
        .I4(mem_do_rinst_reg_1),
        .I5(mem_do_rinst_reg_2),
        .O(mem_do_rinst_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFF5454FF54)) 
    mem_do_rinst_i_2
       (.I0(mem_do_rinst_reg_3),
        .I1(mem_do_rinst_reg_4),
        .I2(mem_do_rinst_reg_5),
        .I3(resetn_4),
        .I4(mem_do_rinst_i_9_n_0),
        .I5(mem_do_rinst_reg_6),
        .O(mem_do_rinst5_out));
  LUT6 #(
    .INIT(64'h000000A8AAAAAAAA)) 
    mem_do_rinst_i_3
       (.I0(Q[4]),
        .I1(mem_do_rinst_reg_7),
        .I2(mem_do_rinst_reg_4),
        .I3(mem_do_rinst_reg_8),
        .I4(mem_do_rinst_reg_9),
        .I5(mem_do_rinst_i_9_n_0),
        .O(mem_do_rinst_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    mem_do_rinst_i_9
       (.I0(instr_slti_reg),
        .I1(instr_lb_reg),
        .I2(instr_srai_reg),
        .I3(instr_sra_reg),
        .I4(mem_do_rinst_i_2_0),
        .I5(pcpi_ready),
        .O(mem_do_rinst_i_9_n_0));
  LUT6 #(
    .INIT(64'h71717171F1F1F1FF)) 
    mem_do_wdata_i_2
       (.I0(mem_do_rdata_reg_1),
        .I1(mem_do_rdata_reg_2),
        .I2(mem_valid_reg),
        .I3(mem_do_rdata_reg_0),
        .I4(mem_do_rdata_reg),
        .I5(mem_do_rinst_reg_0),
        .O(\mem_state_reg[0] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    rd0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,pcpi_rs2}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_rd0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({rd0_i_1_n_0,rd0_i_1_n_0,rd0_i_1_n_0,rd_reg_0[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_rd0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_rd0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_rd0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(resetn_4),
        .CEA2(rs10),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(rs10),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_rd0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_rd0_OVERFLOW_UNCONNECTED),
        .P({rd0_n_58,rd0_n_59,rd0_n_60,rd0_n_61,rd0_n_62,rd0_n_63,rd0_n_64,rd0_n_65,rd0_n_66,rd0_n_67,rd0_n_68,rd0_n_69,rd0_n_70,rd0_n_71,rd0_n_72,rd0_n_73,rd0_n_74,rd0_n_75,rd0_n_76,rd0_n_77,rd0_n_78,rd0_n_79,rd0_n_80,rd0_n_81,rd0_n_82,rd0_n_83,rd0_n_84,rd0_n_85,rd0_n_86,rd0_n_87,rd0_n_88,rd0_n_89,rd0_n_90,rd0_n_91,rd0_n_92,rd0_n_93,rd0_n_94,rd0_n_95,rd0_n_96,rd0_n_97,rd0_n_98,rd0_n_99,rd0_n_100,rd0_n_101,rd0_n_102,rd0_n_103,rd0_n_104,rd0_n_105}),
        .PATTERNBDETECT(NLW_rd0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_rd0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({rd0_n_106,rd0_n_107,rd0_n_108,rd0_n_109,rd0_n_110,rd0_n_111,rd0_n_112,rd0_n_113,rd0_n_114,rd0_n_115,rd0_n_116,rd0_n_117,rd0_n_118,rd0_n_119,rd0_n_120,rd0_n_121,rd0_n_122,rd0_n_123,rd0_n_124,rd0_n_125,rd0_n_126,rd0_n_127,rd0_n_128,rd0_n_129,rd0_n_130,rd0_n_131,rd0_n_132,rd0_n_133,rd0_n_134,rd0_n_135,rd0_n_136,rd0_n_137,rd0_n_138,rd0_n_139,rd0_n_140,rd0_n_141,rd0_n_142,rd0_n_143,rd0_n_144,rd0_n_145,rd0_n_146,rd0_n_147,rd0_n_148,rd0_n_149,rd0_n_150,rd0_n_151,rd0_n_152,rd0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_rd0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    rd0__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,pcpi_rs1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_rd0__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,pcpi_rs2}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_rd0__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_rd0__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_rd0__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(resetn_2),
        .CEA2(rs10),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(resetn_4),
        .CEB2(rs10),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_rd0__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_rd0__0_OVERFLOW_UNCONNECTED),
        .P({rd0__0_n_58,rd0__0_n_59,rd0__0_n_60,rd0__0_n_61,rd0__0_n_62,rd0__0_n_63,rd0__0_n_64,rd0__0_n_65,rd0__0_n_66,rd0__0_n_67,rd0__0_n_68,rd0__0_n_69,rd0__0_n_70,rd0__0_n_71,rd0__0_n_72,rd0__0_n_73,rd0__0_n_74,rd0__0_n_75,rd0__0_n_76,rd0__0_n_77,rd0__0_n_78,rd0__0_n_79,rd0__0_n_80,rd0__0_n_81,rd0__0_n_82,rd0__0_n_83,rd0__0_n_84,rd0__0_n_85,rd0__0_n_86,rd0__0_n_87,rd0__0_n_88,rd0__0_n_89,rd0__0_n_90,rd0__0_n_91,rd0__0_n_92,rd0__0_n_93,rd0__0_n_94,rd0__0_n_95,rd0__0_n_96,rd0__0_n_97,rd0__0_n_98,rd0__0_n_99,rd0__0_n_100,rd0__0_n_101,rd0__0_n_102,rd0__0_n_103,rd0__0_n_104,rd0__0_n_105}),
        .PATTERNBDETECT(NLW_rd0__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_rd0__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({rd0__0_n_106,rd0__0_n_107,rd0__0_n_108,rd0__0_n_109,rd0__0_n_110,rd0__0_n_111,rd0__0_n_112,rd0__0_n_113,rd0__0_n_114,rd0__0_n_115,rd0__0_n_116,rd0__0_n_117,rd0__0_n_118,rd0__0_n_119,rd0__0_n_120,rd0__0_n_121,rd0__0_n_122,rd0__0_n_123,rd0__0_n_124,rd0__0_n_125,rd0__0_n_126,rd0__0_n_127,rd0__0_n_128,rd0__0_n_129,rd0__0_n_130,rd0__0_n_131,rd0__0_n_132,rd0__0_n_133,rd0__0_n_134,rd0__0_n_135,rd0__0_n_136,rd0__0_n_137,rd0__0_n_138,rd0__0_n_139,rd0__0_n_140,rd0__0_n_141,rd0__0_n_142,rd0__0_n_143,rd0__0_n_144,rd0__0_n_145,rd0__0_n_146,rd0__0_n_147,rd0__0_n_148,rd0__0_n_149,rd0__0_n_150,rd0__0_n_151,rd0__0_n_152,rd0__0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_rd0__0_UNDERFLOW_UNCONNECTED));
  LUT5 #(
    .INIT(32'h06000000)) 
    rd0_i_1
       (.I0(rd_reg__0_0[8]),
        .I1(rd_reg__0_0[7]),
        .I2(rd_reg__0_0[9]),
        .I3(instr_mulh1),
        .I4(rd_reg_0[31]),
        .O(rd0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x16 4}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    rd_reg
       (.A({rd0_i_1_n_0,rd0_i_1_n_0,rd0_i_1_n_0,rd0_i_1_n_0,rd0_i_1_n_0,rd0_i_1_n_0,rd0_i_1_n_0,rd0_i_1_n_0,rd0_i_1_n_0,rd0_i_1_n_0,rd0_i_1_n_0,rd0_i_1_n_0,rd0_i_1_n_0,rd0_i_1_n_0,rd0_i_1_n_0,rd_reg_0[31:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_rd_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({rd_reg_i_1_n_0,rd_reg_i_1_n_0,rd_reg_i_1_n_0,rd_reg__0_1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_rd_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_rd_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_rd_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(rs10),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(rs10),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_rd_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_rd_reg_OVERFLOW_UNCONNECTED),
        .P({rd_reg_n_58,rd_reg_n_59,rd_reg_n_60,rd_reg_n_61,rd_reg_n_62,rd_reg_n_63,rd_reg_n_64,rd_reg_n_65,rd_reg_n_66,rd_reg_n_67,rd_reg_n_68,rd_reg_n_69,rd_reg_n_70,rd_reg_n_71,rd_reg_n_72,rd_reg_n_73,rd_reg_n_74,rd_reg_n_75,rd_reg_n_76,rd_reg_n_77,rd_reg_n_78,rd_reg_n_79,rd_reg_n_80,rd_reg_n_81,rd_reg_n_82,rd_reg_n_83,rd_reg_n_84,rd_reg_n_85,rd_reg_n_86,rd_reg_n_87,rd_reg_n_88,rd_reg_n_89,rd_reg_n_90,rd_reg_n_91,rd_reg_n_92,rd_reg_n_93,rd_reg_n_94,rd_reg_n_95,rd_reg_n_96,rd_reg_n_97,rd_reg_n_98,rd_reg_n_99,rd_reg_n_100,rd_reg_n_101,rd_reg_n_102,rd_reg_n_103,rd_reg_n_104,rd_reg_n_105}),
        .PATTERNBDETECT(NLW_rd_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_rd_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({rd0_n_106,rd0_n_107,rd0_n_108,rd0_n_109,rd0_n_110,rd0_n_111,rd0_n_112,rd0_n_113,rd0_n_114,rd0_n_115,rd0_n_116,rd0_n_117,rd0_n_118,rd0_n_119,rd0_n_120,rd0_n_121,rd0_n_122,rd0_n_123,rd0_n_124,rd0_n_125,rd0_n_126,rd0_n_127,rd0_n_128,rd0_n_129,rd0_n_130,rd0_n_131,rd0_n_132,rd0_n_133,rd0_n_134,rd0_n_135,rd0_n_136,rd0_n_137,rd0_n_138,rd0_n_139,rd0_n_140,rd0_n_141,rd0_n_142,rd0_n_143,rd0_n_144,rd0_n_145,rd0_n_146,rd0_n_147,rd0_n_148,rd0_n_149,rd0_n_150,rd0_n_151,rd0_n_152,rd0_n_153}),
        .PCOUT(NLW_rd_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_rd_reg_UNDERFLOW_UNCONNECTED));
  FDRE \rd_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(rd0_n_105),
        .Q(\rd_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rd_reg[0]__0 
       (.C(clk),
        .CE(1'b1),
        .D(rd0__0_n_105),
        .Q(\rd_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \rd_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(rd0_n_95),
        .Q(\rd_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \rd_reg[10]__0 
       (.C(clk),
        .CE(1'b1),
        .D(rd0__0_n_95),
        .Q(\rd_reg[10]__0_n_0 ),
        .R(1'b0));
  FDRE \rd_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(rd0_n_94),
        .Q(\rd_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \rd_reg[11]__0 
       (.C(clk),
        .CE(1'b1),
        .D(rd0__0_n_94),
        .Q(\rd_reg[11]__0_n_0 ),
        .R(1'b0));
  FDRE \rd_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(rd0_n_93),
        .Q(\rd_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \rd_reg[12]__0 
       (.C(clk),
        .CE(1'b1),
        .D(rd0__0_n_93),
        .Q(\rd_reg[12]__0_n_0 ),
        .R(1'b0));
  FDRE \rd_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(rd0_n_92),
        .Q(\rd_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \rd_reg[13]__0 
       (.C(clk),
        .CE(1'b1),
        .D(rd0__0_n_92),
        .Q(\rd_reg[13]__0_n_0 ),
        .R(1'b0));
  FDRE \rd_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(rd0_n_91),
        .Q(\rd_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \rd_reg[14]__0 
       (.C(clk),
        .CE(1'b1),
        .D(rd0__0_n_91),
        .Q(\rd_reg[14]__0_n_0 ),
        .R(1'b0));
  FDRE \rd_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(rd0_n_90),
        .Q(\rd_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \rd_reg[15]__0 
       (.C(clk),
        .CE(1'b1),
        .D(rd0__0_n_90),
        .Q(\rd_reg[15]__0_n_0 ),
        .R(1'b0));
  FDRE \rd_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(rd0_n_89),
        .Q(\rd_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \rd_reg[16]__0 
       (.C(clk),
        .CE(1'b1),
        .D(rd0__0_n_89),
        .Q(\rd_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \rd_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(rd0_n_104),
        .Q(\rd_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rd_reg[1]__0 
       (.C(clk),
        .CE(1'b1),
        .D(rd0__0_n_104),
        .Q(\rd_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \rd_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(rd0_n_103),
        .Q(\rd_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \rd_reg[2]__0 
       (.C(clk),
        .CE(1'b1),
        .D(rd0__0_n_103),
        .Q(\rd_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE \rd_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(rd0_n_102),
        .Q(\rd_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \rd_reg[3]__0 
       (.C(clk),
        .CE(1'b1),
        .D(rd0__0_n_102),
        .Q(\rd_reg[3]__0_n_0 ),
        .R(1'b0));
  FDRE \rd_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(rd0_n_101),
        .Q(\rd_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \rd_reg[4]__0 
       (.C(clk),
        .CE(1'b1),
        .D(rd0__0_n_101),
        .Q(\rd_reg[4]__0_n_0 ),
        .R(1'b0));
  FDRE \rd_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(rd0_n_100),
        .Q(\rd_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \rd_reg[5]__0 
       (.C(clk),
        .CE(1'b1),
        .D(rd0__0_n_100),
        .Q(\rd_reg[5]__0_n_0 ),
        .R(1'b0));
  FDRE \rd_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(rd0_n_99),
        .Q(\rd_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \rd_reg[6]__0 
       (.C(clk),
        .CE(1'b1),
        .D(rd0__0_n_99),
        .Q(\rd_reg[6]__0_n_0 ),
        .R(1'b0));
  FDRE \rd_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(rd0_n_98),
        .Q(\rd_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \rd_reg[7]__0 
       (.C(clk),
        .CE(1'b1),
        .D(rd0__0_n_98),
        .Q(\rd_reg[7]__0_n_0 ),
        .R(1'b0));
  FDRE \rd_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(rd0_n_97),
        .Q(\rd_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \rd_reg[8]__0 
       (.C(clk),
        .CE(1'b1),
        .D(rd0__0_n_97),
        .Q(\rd_reg[8]__0_n_0 ),
        .R(1'b0));
  FDRE \rd_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(rd0_n_96),
        .Q(\rd_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \rd_reg[9]__0 
       (.C(clk),
        .CE(1'b1),
        .D(rd0__0_n_96),
        .Q(\rd_reg[9]__0_n_0 ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x16 4}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    rd_reg__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,pcpi_rs1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_rd_reg__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({rd_reg_i_1_n_0,rd_reg_i_1_n_0,rd_reg_i_1_n_0,rd_reg__0_1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_rd_reg__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_rd_reg__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_rd_reg__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(resetn_2),
        .CEA2(rs10),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(rs10),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_rd_reg__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_rd_reg__0_OVERFLOW_UNCONNECTED),
        .P({rd_reg__0_n_58,rd_reg__0_n_59,rd_reg__0_n_60,rd_reg__0_n_61,rd_reg__0_n_62,rd_reg__0_n_63,rd_reg__0_n_64,rd_reg__0_n_65,rd_reg__0_n_66,rd_reg__0_n_67,rd_reg__0_n_68,rd_reg__0_n_69,rd_reg__0_n_70,rd_reg__0_n_71,rd_reg__0_n_72,rd_reg__0_n_73,rd_reg__0_n_74,rd_reg__0_n_75,rd_reg__0_n_76,rd_reg__0_n_77,rd_reg__0_n_78,rd_reg__0_n_79,rd_reg__0_n_80,rd_reg__0_n_81,rd_reg__0_n_82,rd_reg__0_n_83,rd_reg__0_n_84,rd_reg__0_n_85,rd_reg__0_n_86,rd_reg__0_n_87,rd_reg__0_n_88,rd_reg__0_n_89,rd_reg__0_n_90,rd_reg__0_n_91,rd_reg__0_n_92,rd_reg__0_n_93,rd_reg__0_n_94,rd_reg__0_n_95,rd_reg__0_n_96,rd_reg__0_n_97,rd_reg__0_n_98,rd_reg__0_n_99,rd_reg__0_n_100,rd_reg__0_n_101,rd_reg__0_n_102,rd_reg__0_n_103,rd_reg__0_n_104,rd_reg__0_n_105}),
        .PATTERNBDETECT(NLW_rd_reg__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_rd_reg__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({rd0__0_n_106,rd0__0_n_107,rd0__0_n_108,rd0__0_n_109,rd0__0_n_110,rd0__0_n_111,rd0__0_n_112,rd0__0_n_113,rd0__0_n_114,rd0__0_n_115,rd0__0_n_116,rd0__0_n_117,rd0__0_n_118,rd0__0_n_119,rd0__0_n_120,rd0__0_n_121,rd0__0_n_122,rd0__0_n_123,rd0__0_n_124,rd0__0_n_125,rd0__0_n_126,rd0__0_n_127,rd0__0_n_128,rd0__0_n_129,rd0__0_n_130,rd0__0_n_131,rd0__0_n_132,rd0__0_n_133,rd0__0_n_134,rd0__0_n_135,rd0__0_n_136,rd0__0_n_137,rd0__0_n_138,rd0__0_n_139,rd0__0_n_140,rd0__0_n_141,rd0__0_n_142,rd0__0_n_143,rd0__0_n_144,rd0__0_n_145,rd0__0_n_146,rd0__0_n_147,rd0__0_n_148,rd0__0_n_149,rd0__0_n_150,rd0__0_n_151,rd0__0_n_152,rd0__0_n_153}),
        .PCOUT(NLW_rd_reg__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_rd_reg__0_UNDERFLOW_UNCONNECTED));
  LUT5 #(
    .INIT(32'h00200000)) 
    rd_reg_i_1
       (.I0(instr_mulh1),
        .I1(rd_reg__0_0[9]),
        .I2(rd_reg__0_0[7]),
        .I3(rd_reg__0_0[8]),
        .I4(rd_reg__0_1[14]),
        .O(rd_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF40FF40FF40)) 
    \reg_op1[0]_i_1 
       (.I0(\reg_op1[0]_i_2_n_0 ),
        .I1(reg_out1[0]),
        .I2(is_lui_auipc_jal_reg),
        .I3(\reg_op1[0]_i_3_n_0 ),
        .I4(\reg_op1_reg[0]_i_4_n_7 ),
        .I5(\reg_op1[0]_i_5_n_0 ),
        .O(pcpi_rs1[0]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[0]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(Q[4]),
        .O(\reg_op1[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000C000800000008)) 
    \reg_op1[0]_i_3 
       (.I0(rd_reg_0[1]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(instr_srli_reg),
        .I4(\reg_sh_reg[4] ),
        .I5(rd_reg_0[4]),
        .O(\reg_op1[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \reg_op1[0]_i_5 
       (.I0(Q[4]),
        .I1(Q[2]),
        .O(\reg_op1[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[0]_i_6 
       (.I0(rd_reg_0[3]),
        .I1(rd0_5[3]),
        .O(\reg_op1[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[0]_i_7 
       (.I0(rd_reg_0[2]),
        .I1(rd0_5[2]),
        .O(\reg_op1[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[0]_i_8 
       (.I0(rd_reg_0[1]),
        .I1(rd0_5[1]),
        .O(\reg_op1[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[0]_i_9 
       (.I0(rd_reg_0[0]),
        .I1(rd0_5[0]),
        .O(\reg_op1[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[10]_i_1 
       (.I0(instr_lui),
        .I1(rd0__0_1[9]),
        .I2(\reg_op1[10]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_reg),
        .I4(Q[4]),
        .I5(\reg_op1[10]_i_3_n_0 ),
        .O(pcpi_rs1[10]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[10]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[10]),
        .O(\reg_op1[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[10]_i_3 
       (.I0(\reg_op1[10]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(\reg_op1_reg[11]_i_5_n_5 ),
        .O(\reg_op1[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[10]_i_4 
       (.I0(\reg_op1[13]_i_5_n_0 ),
        .I1(rd_reg_0[6]),
        .I2(\reg_sh_reg[4] ),
        .I3(instr_sll_reg),
        .I4(rd_reg_0[9]),
        .I5(\reg_op1[10]_i_5_n_0 ),
        .O(\reg_op1[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[10]_i_5 
       (.I0(rd_reg_0[11]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[11]_i_1 
       (.I0(instr_lui),
        .I1(rd0__0_1[10]),
        .I2(\reg_op1[11]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_reg),
        .I4(Q[4]),
        .I5(\reg_op1[11]_i_3_n_0 ),
        .O(pcpi_rs1[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[11]_i_10 
       (.I0(rd_reg_0[8]),
        .I1(rd0_5[8]),
        .O(\reg_op1[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[11]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[11]),
        .O(\reg_op1[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[11]_i_3 
       (.I0(\reg_op1[11]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(\reg_op1_reg[11]_i_5_n_4 ),
        .O(\reg_op1[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[11]_i_4 
       (.I0(\reg_op1[14]_i_5_n_0 ),
        .I1(rd_reg_0[7]),
        .I2(\reg_sh_reg[4] ),
        .I3(instr_sll_reg),
        .I4(rd_reg_0[10]),
        .I5(\reg_op1[11]_i_6_n_0 ),
        .O(\reg_op1[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[11]_i_6 
       (.I0(rd_reg_0[12]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[11]_i_7 
       (.I0(rd_reg_0[11]),
        .I1(rd0_5[11]),
        .O(\reg_op1[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[11]_i_8 
       (.I0(rd_reg_0[10]),
        .I1(rd0_5[10]),
        .O(\reg_op1[11]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[11]_i_9 
       (.I0(rd_reg_0[9]),
        .I1(rd0_5[9]),
        .O(\reg_op1[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[12]_i_1 
       (.I0(instr_lui),
        .I1(rd0__0_1[11]),
        .I2(\reg_op1[12]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_reg),
        .I4(Q[4]),
        .I5(\reg_op1[12]_i_3_n_0 ),
        .O(pcpi_rs1[12]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[12]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[12]),
        .O(\reg_op1[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[12]_i_3 
       (.I0(\reg_op1[12]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(\reg_op1_reg[15]_i_5_n_7 ),
        .O(\reg_op1[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[12]_i_4 
       (.I0(\reg_op1[15]_i_6_n_0 ),
        .I1(rd_reg_0[8]),
        .I2(\reg_sh_reg[4] ),
        .I3(instr_sll_reg),
        .I4(rd_reg_0[11]),
        .I5(\reg_op1[12]_i_5_n_0 ),
        .O(\reg_op1[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[12]_i_5 
       (.I0(rd_reg_0[13]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[13]_i_1 
       (.I0(instr_lui),
        .I1(rd0__0_1[12]),
        .I2(\reg_op1[13]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_reg),
        .I4(Q[4]),
        .I5(\reg_op1[13]_i_3_n_0 ),
        .O(pcpi_rs1[13]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[13]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[13]),
        .O(\reg_op1[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[13]_i_3 
       (.I0(\reg_op1[13]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(\reg_op1_reg[15]_i_5_n_6 ),
        .O(\reg_op1[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[13]_i_4 
       (.I0(\reg_op1[16]_i_5_n_0 ),
        .I1(rd_reg_0[9]),
        .I2(\reg_sh_reg[4] ),
        .I3(instr_sll_reg),
        .I4(rd_reg_0[12]),
        .I5(\reg_op1[13]_i_5_n_0 ),
        .O(\reg_op1[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[13]_i_5 
       (.I0(rd_reg_0[14]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[14]_i_1 
       (.I0(instr_lui),
        .I1(rd0__0_1[13]),
        .I2(\reg_op1[14]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_reg),
        .I4(Q[4]),
        .I5(\reg_op1[14]_i_3_n_0 ),
        .O(pcpi_rs1[14]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[14]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[14]),
        .O(\reg_op1[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[14]_i_3 
       (.I0(\reg_op1[14]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(\reg_op1_reg[15]_i_5_n_5 ),
        .O(\reg_op1[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[14]_i_4 
       (.I0(\reg_op1_reg[18] ),
        .I1(rd_reg_0[10]),
        .I2(\reg_sh_reg[4] ),
        .I3(instr_sll_reg),
        .I4(rd_reg_0[13]),
        .I5(\reg_op1[14]_i_5_n_0 ),
        .O(\reg_op1[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[14]_i_5 
       (.I0(rd_reg_0[15]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[15]_i_1 
       (.I0(instr_lui),
        .I1(rd0__0_1[14]),
        .I2(\reg_op1[15]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_reg),
        .I4(Q[4]),
        .I5(\reg_op1[15]_i_3_n_0 ),
        .O(pcpi_rs1[15]));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[15]_i_10 
       (.I0(rd_reg_0[12]),
        .I1(rd0_4),
        .O(\reg_op1[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[15]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[15]),
        .O(\reg_op1[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[15]_i_3 
       (.I0(\reg_op1[15]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(\reg_op1_reg[15]_i_5_n_4 ),
        .O(\reg_op1[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[15]_i_4 
       (.I0(\reg_op1_reg[19] ),
        .I1(rd_reg_0[11]),
        .I2(\reg_sh_reg[4] ),
        .I3(instr_sll_reg),
        .I4(rd_reg_0[14]),
        .I5(\reg_op1[15]_i_6_n_0 ),
        .O(\reg_op1[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[15]_i_6 
       (.I0(rd_reg_0[16]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[15]_i_7 
       (.I0(rd_reg_0[15]),
        .I1(rd0_1),
        .O(\reg_op1[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[15]_i_8 
       (.I0(rd_reg_0[14]),
        .I1(rd0_2),
        .O(\reg_op1[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[15]_i_9 
       (.I0(rd_reg_0[13]),
        .I1(rd0_3),
        .O(\reg_op1[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[16]_i_1 
       (.I0(instr_lui),
        .I1(rd0__0_1[15]),
        .I2(\reg_op1[16]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_reg),
        .I4(Q[4]),
        .I5(\reg_op1[16]_i_3_n_0 ),
        .O(pcpi_rs1[16]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[16]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[16]),
        .O(\reg_op1[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[16]_i_3 
       (.I0(\reg_op1[16]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(\reg_op1_reg[19]_i_5_n_7 ),
        .O(\reg_op1[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[16]_i_4 
       (.I0(\reg_op1_reg[20] ),
        .I1(rd_reg_0[12]),
        .I2(\reg_sh_reg[4] ),
        .I3(instr_sll_reg),
        .I4(rd_reg_0[15]),
        .I5(\reg_op1[16]_i_5_n_0 ),
        .O(\reg_op1[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[16]_i_5 
       (.I0(rd_reg_0[17]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[17]_i_5 
       (.I0(rd_reg_0[18]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1_reg[18] ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[18]_i_5 
       (.I0(rd_reg_0[19]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1_reg[19] ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[19]_i_10 
       (.I0(rd_reg_0[16]),
        .I1(rd0_0),
        .O(\reg_op1[19]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[19]_i_6 
       (.I0(rd_reg_0[20]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1_reg[20] ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[19]_i_7 
       (.I0(rd_reg_0[19]),
        .I1(\reg_op1_reg[19]_i_5_2 ),
        .O(\reg_op1[19]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[19]_i_8 
       (.I0(rd_reg_0[18]),
        .I1(\reg_op1_reg[19]_i_5_1 ),
        .O(\reg_op1[19]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[19]_i_9 
       (.I0(rd_reg_0[17]),
        .I1(\reg_op1_reg[19]_i_5_0 ),
        .O(\reg_op1[19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[1]_i_1 
       (.I0(instr_lui),
        .I1(rd0__0_1[0]),
        .I2(\reg_op1[1]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_reg),
        .I4(Q[4]),
        .I5(\reg_op1[1]_i_3_n_0 ),
        .O(pcpi_rs1[1]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[1]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[1]),
        .O(\reg_op1[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1055FFFF10550000)) 
    \reg_op1[1]_i_3 
       (.I0(\reg_op1[1]_i_4_n_0 ),
        .I1(instr_srli_reg),
        .I2(rd_reg_0[5]),
        .I3(\reg_sh_reg[4] ),
        .I4(Q[2]),
        .I5(\reg_op1_reg[0]_i_4_n_6 ),
        .O(\reg_op1[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000D0D0DDD)) 
    \reg_op1[1]_i_4 
       (.I0(rd_reg_0[2]),
        .I1(instr_srli_reg),
        .I2(rd_reg_0[0]),
        .I3(instr_slli),
        .I4(instr_sll),
        .I5(\reg_sh_reg[4] ),
        .O(\reg_op1[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \reg_op1[27]_i_6 
       (.I0(instr_sll),
        .I1(instr_slli),
        .O(instr_sll_reg));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[2]_i_1 
       (.I0(instr_lui),
        .I1(rd0__0_1[1]),
        .I2(\reg_op1[2]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_reg),
        .I4(Q[4]),
        .I5(\reg_op1[2]_i_3_n_0 ),
        .O(pcpi_rs1[2]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[2]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[2]),
        .O(\reg_op1[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1055FFFF10550000)) 
    \reg_op1[2]_i_3 
       (.I0(\reg_op1[2]_i_4_n_0 ),
        .I1(instr_srli_reg),
        .I2(rd_reg_0[6]),
        .I3(\reg_sh_reg[4] ),
        .I4(Q[2]),
        .I5(\reg_op1_reg[0]_i_4_n_5 ),
        .O(\reg_op1[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000D0D0DDD)) 
    \reg_op1[2]_i_4 
       (.I0(rd_reg_0[3]),
        .I1(instr_srli_reg),
        .I2(rd_reg_0[1]),
        .I3(instr_slli),
        .I4(instr_sll),
        .I5(\reg_sh_reg[4] ),
        .O(\reg_op1[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \reg_op1[30]_i_2 
       (.I0(is_lui_auipc_jal),
        .I1(instr_jalr_reg),
        .O(is_lui_auipc_jal_reg));
  LUT5 #(
    .INIT(32'h008AAA8A)) 
    \reg_op1[31]_i_1 
       (.I0(resetn),
        .I1(mem_do_prefetch_reg),
        .I2(\reg_op1[31]_i_4_n_0 ),
        .I3(Q[0]),
        .I4(\reg_op1[31]_i_5_n_0 ),
        .O(resetn_2));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    \reg_op1[31]_i_3 
       (.I0(resetn_1),
        .I1(rd0__0_0),
        .I2(Q[1]),
        .I3(mem_do_rdata_reg_0),
        .O(mem_do_prefetch_reg));
  LUT6 #(
    .INIT(64'hAAAAAAAEBBBBBBBF)) 
    \reg_op1[31]_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\reg_sh_reg[0] [0]),
        .I3(\reg_sh_reg[4] ),
        .I4(\reg_sh_reg[0] [1]),
        .I5(Q[4]),
        .O(\reg_op1[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \reg_op1[31]_i_5 
       (.I0(mem_do_rdata_reg),
        .I1(resetn_1),
        .I2(rd0__0_0),
        .O(\reg_op1[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[3]_i_1 
       (.I0(instr_lui),
        .I1(rd0__0_1[2]),
        .I2(\reg_op1[3]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_reg),
        .I4(Q[4]),
        .I5(\reg_op1[3]_i_3_n_0 ),
        .O(pcpi_rs1[3]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[3]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[3]),
        .O(\reg_op1[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1055FFFF10550000)) 
    \reg_op1[3]_i_3 
       (.I0(\reg_op1[3]_i_4_n_0 ),
        .I1(instr_srli_reg),
        .I2(rd_reg_0[7]),
        .I3(\reg_sh_reg[4] ),
        .I4(Q[2]),
        .I5(\reg_op1_reg[0]_i_4_n_4 ),
        .O(\reg_op1[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000D0D0DDD)) 
    \reg_op1[3]_i_4 
       (.I0(rd_reg_0[4]),
        .I1(instr_srli_reg),
        .I2(rd_reg_0[2]),
        .I3(instr_slli),
        .I4(instr_sll),
        .I5(\reg_sh_reg[4] ),
        .O(\reg_op1[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \reg_op1[3]_i_5 
       (.I0(instr_srli),
        .I1(instr_srai),
        .I2(instr_srl),
        .I3(instr_sra),
        .O(instr_srli_reg));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[4]_i_1 
       (.I0(instr_lui),
        .I1(rd0__0_1[3]),
        .I2(\reg_op1[4]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_reg),
        .I4(Q[4]),
        .I5(\reg_op1[4]_i_3_n_0 ),
        .O(pcpi_rs1[4]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[4]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[4]),
        .O(\reg_op1[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[4]_i_3 
       (.I0(\reg_op1[4]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(\reg_op1_reg[7]_i_5_n_7 ),
        .O(\reg_op1[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[4]_i_4 
       (.I0(\reg_op1[7]_i_6_n_0 ),
        .I1(rd_reg_0[0]),
        .I2(\reg_sh_reg[4] ),
        .I3(instr_sll_reg),
        .I4(rd_reg_0[3]),
        .I5(\reg_op1[4]_i_5_n_0 ),
        .O(\reg_op1[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[4]_i_5 
       (.I0(rd_reg_0[5]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[5]_i_1 
       (.I0(instr_lui),
        .I1(rd0__0_1[4]),
        .I2(\reg_op1[5]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_reg),
        .I4(Q[4]),
        .I5(\reg_op1[5]_i_3_n_0 ),
        .O(pcpi_rs1[5]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[5]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[5]),
        .O(\reg_op1[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[5]_i_3 
       (.I0(\reg_op1[5]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(\reg_op1_reg[7]_i_5_n_6 ),
        .O(\reg_op1[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[5]_i_4 
       (.I0(\reg_op1[8]_i_5_n_0 ),
        .I1(rd_reg_0[1]),
        .I2(\reg_sh_reg[4] ),
        .I3(instr_sll_reg),
        .I4(rd_reg_0[4]),
        .I5(\reg_op1[5]_i_5_n_0 ),
        .O(\reg_op1[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[5]_i_5 
       (.I0(rd_reg_0[6]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[6]_i_1 
       (.I0(instr_lui),
        .I1(rd0__0_1[5]),
        .I2(\reg_op1[6]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_reg),
        .I4(Q[4]),
        .I5(\reg_op1[6]_i_3_n_0 ),
        .O(pcpi_rs1[6]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[6]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[6]),
        .O(\reg_op1[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[6]_i_3 
       (.I0(\reg_op1[6]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(\reg_op1_reg[7]_i_5_n_5 ),
        .O(\reg_op1[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[6]_i_4 
       (.I0(\reg_op1[9]_i_5_n_0 ),
        .I1(rd_reg_0[2]),
        .I2(\reg_sh_reg[4] ),
        .I3(instr_sll_reg),
        .I4(rd_reg_0[5]),
        .I5(\reg_op1[6]_i_5_n_0 ),
        .O(\reg_op1[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[6]_i_5 
       (.I0(rd_reg_0[7]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[7]_i_1 
       (.I0(instr_lui),
        .I1(rd0__0_1[6]),
        .I2(\reg_op1[7]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_reg),
        .I4(Q[4]),
        .I5(\reg_op1[7]_i_3_n_0 ),
        .O(pcpi_rs1[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[7]_i_10 
       (.I0(rd_reg_0[4]),
        .I1(rd0_5[4]),
        .O(\reg_op1[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[7]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[7]),
        .O(\reg_op1[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[7]_i_3 
       (.I0(\reg_op1[7]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(\reg_op1_reg[7]_i_5_n_4 ),
        .O(\reg_op1[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[7]_i_4 
       (.I0(\reg_op1[10]_i_5_n_0 ),
        .I1(rd_reg_0[3]),
        .I2(\reg_sh_reg[4] ),
        .I3(instr_sll_reg),
        .I4(rd_reg_0[6]),
        .I5(\reg_op1[7]_i_6_n_0 ),
        .O(\reg_op1[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[7]_i_6 
       (.I0(rd_reg_0[8]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[7]_i_7 
       (.I0(rd_reg_0[7]),
        .I1(rd0_5[7]),
        .O(\reg_op1[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[7]_i_8 
       (.I0(rd_reg_0[6]),
        .I1(rd0_5[6]),
        .O(\reg_op1[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_op1[7]_i_9 
       (.I0(rd_reg_0[5]),
        .I1(rd0_5[5]),
        .O(\reg_op1[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[8]_i_1 
       (.I0(instr_lui),
        .I1(rd0__0_1[7]),
        .I2(\reg_op1[8]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_reg),
        .I4(Q[4]),
        .I5(\reg_op1[8]_i_3_n_0 ),
        .O(pcpi_rs1[8]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[8]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[8]),
        .O(\reg_op1[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[8]_i_3 
       (.I0(\reg_op1[8]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(\reg_op1_reg[11]_i_5_n_7 ),
        .O(\reg_op1[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[8]_i_4 
       (.I0(\reg_op1[11]_i_6_n_0 ),
        .I1(rd_reg_0[4]),
        .I2(\reg_sh_reg[4] ),
        .I3(instr_sll_reg),
        .I4(rd_reg_0[7]),
        .I5(\reg_op1[8]_i_5_n_0 ),
        .O(\reg_op1[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[8]_i_5 
       (.I0(rd_reg_0[9]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F44FFFF0F440000)) 
    \reg_op1[9]_i_1 
       (.I0(instr_lui),
        .I1(rd0__0_1[8]),
        .I2(\reg_op1[9]_i_2_n_0 ),
        .I3(is_lui_auipc_jal_reg),
        .I4(Q[4]),
        .I5(\reg_op1[9]_i_3_n_0 ),
        .O(pcpi_rs1[9]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op1[9]_i_2 
       (.I0(decoded_rs1[1]),
        .I1(decoded_rs1[4]),
        .I2(decoded_rs1[2]),
        .I3(decoded_rs1[0]),
        .I4(decoded_rs1[3]),
        .I5(reg_out1[9]),
        .O(\reg_op1[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_op1[9]_i_3 
       (.I0(\reg_op1[9]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(\reg_op1_reg[11]_i_5_n_6 ),
        .O(\reg_op1[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFEFAFEFA0EFA0E0)) 
    \reg_op1[9]_i_4 
       (.I0(\reg_op1[12]_i_5_n_0 ),
        .I1(rd_reg_0[5]),
        .I2(\reg_sh_reg[4] ),
        .I3(instr_sll_reg),
        .I4(rd_reg_0[8]),
        .I5(\reg_op1[9]_i_5_n_0 ),
        .O(\reg_op1[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \reg_op1[9]_i_5 
       (.I0(rd_reg_0[10]),
        .I1(instr_sra),
        .I2(instr_srl),
        .I3(instr_srai),
        .I4(instr_srli),
        .O(\reg_op1[9]_i_5_n_0 ));
  CARRY4 \reg_op1_reg[0]_i_4 
       (.CI(1'b0),
        .CO({\reg_op1_reg[0]_i_4_n_0 ,\reg_op1_reg[0]_i_4_n_1 ,\reg_op1_reg[0]_i_4_n_2 ,\reg_op1_reg[0]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(rd_reg_0[3:0]),
        .O({\reg_op1_reg[0]_i_4_n_4 ,\reg_op1_reg[0]_i_4_n_5 ,\reg_op1_reg[0]_i_4_n_6 ,\reg_op1_reg[0]_i_4_n_7 }),
        .S({\reg_op1[0]_i_6_n_0 ,\reg_op1[0]_i_7_n_0 ,\reg_op1[0]_i_8_n_0 ,\reg_op1[0]_i_9_n_0 }));
  CARRY4 \reg_op1_reg[11]_i_5 
       (.CI(\reg_op1_reg[7]_i_5_n_0 ),
        .CO({\reg_op1_reg[11]_i_5_n_0 ,\reg_op1_reg[11]_i_5_n_1 ,\reg_op1_reg[11]_i_5_n_2 ,\reg_op1_reg[11]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(rd_reg_0[11:8]),
        .O({\reg_op1_reg[11]_i_5_n_4 ,\reg_op1_reg[11]_i_5_n_5 ,\reg_op1_reg[11]_i_5_n_6 ,\reg_op1_reg[11]_i_5_n_7 }),
        .S({\reg_op1[11]_i_7_n_0 ,\reg_op1[11]_i_8_n_0 ,\reg_op1[11]_i_9_n_0 ,\reg_op1[11]_i_10_n_0 }));
  CARRY4 \reg_op1_reg[15]_i_5 
       (.CI(\reg_op1_reg[11]_i_5_n_0 ),
        .CO({\reg_op1_reg[15]_i_5_n_0 ,\reg_op1_reg[15]_i_5_n_1 ,\reg_op1_reg[15]_i_5_n_2 ,\reg_op1_reg[15]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(rd_reg_0[15:12]),
        .O({\reg_op1_reg[15]_i_5_n_4 ,\reg_op1_reg[15]_i_5_n_5 ,\reg_op1_reg[15]_i_5_n_6 ,\reg_op1_reg[15]_i_5_n_7 }),
        .S({\reg_op1[15]_i_7_n_0 ,\reg_op1[15]_i_8_n_0 ,\reg_op1[15]_i_9_n_0 ,\reg_op1[15]_i_10_n_0 }));
  CARRY4 \reg_op1_reg[19]_i_5 
       (.CI(\reg_op1_reg[15]_i_5_n_0 ),
        .CO({CO,\reg_op1_reg[19]_i_5_n_1 ,\reg_op1_reg[19]_i_5_n_2 ,\reg_op1_reg[19]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(rd_reg_0[19:16]),
        .O({O,\reg_op1_reg[19]_i_5_n_7 }),
        .S({\reg_op1[19]_i_7_n_0 ,\reg_op1[19]_i_8_n_0 ,\reg_op1[19]_i_9_n_0 ,\reg_op1[19]_i_10_n_0 }));
  CARRY4 \reg_op1_reg[7]_i_5 
       (.CI(\reg_op1_reg[0]_i_4_n_0 ),
        .CO({\reg_op1_reg[7]_i_5_n_0 ,\reg_op1_reg[7]_i_5_n_1 ,\reg_op1_reg[7]_i_5_n_2 ,\reg_op1_reg[7]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(rd_reg_0[7:4]),
        .O({\reg_op1_reg[7]_i_5_n_4 ,\reg_op1_reg[7]_i_5_n_5 ,\reg_op1_reg[7]_i_5_n_6 ,\reg_op1_reg[7]_i_5_n_7 }),
        .S({\reg_op1[7]_i_7_n_0 ,\reg_op1[7]_i_8_n_0 ,\reg_op1[7]_i_9_n_0 ,\reg_op1[7]_i_10_n_0 }));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[0]_i_1 
       (.I0(instr_jalr_reg),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(rd0_5[0]),
        .I4(reg_sh1[0]),
        .I5(\decoded_rs2_reg[4] ),
        .O(pcpi_rs2[0]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[10]_i_1 
       (.I0(instr_jalr_reg),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(rd0_5[10]),
        .I4(reg_sh1[10]),
        .I5(\decoded_rs2_reg[4] ),
        .O(pcpi_rs2[10]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[11]_i_1 
       (.I0(instr_jalr_reg),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(rd0_5[11]),
        .I4(reg_sh1[11]),
        .I5(\decoded_rs2_reg[4] ),
        .O(pcpi_rs2[11]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[12]_i_1 
       (.I0(instr_jalr_reg),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(rd0_4),
        .I4(reg_sh1[12]),
        .I5(\decoded_rs2_reg[4] ),
        .O(pcpi_rs2[12]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[13]_i_1 
       (.I0(instr_jalr_reg),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(rd0_3),
        .I4(reg_sh1[13]),
        .I5(\decoded_rs2_reg[4] ),
        .O(pcpi_rs2[13]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[14]_i_1 
       (.I0(instr_jalr_reg),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(rd0_2),
        .I4(reg_sh1[14]),
        .I5(\decoded_rs2_reg[4] ),
        .O(pcpi_rs2[14]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[15]_i_1 
       (.I0(instr_jalr_reg),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(rd0_1),
        .I4(reg_sh1[15]),
        .I5(\decoded_rs2_reg[4] ),
        .O(pcpi_rs2[15]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[16]_i_1 
       (.I0(instr_jalr_reg),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(rd0_0),
        .I4(reg_sh1[16]),
        .I5(\decoded_rs2_reg[4] ),
        .O(pcpi_rs2[16]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[1]_i_1 
       (.I0(instr_jalr_reg),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(rd0_5[1]),
        .I4(reg_sh1[1]),
        .I5(\decoded_rs2_reg[4] ),
        .O(pcpi_rs2[1]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[2]_i_1 
       (.I0(instr_jalr_reg),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(rd0_5[2]),
        .I4(reg_sh1[2]),
        .I5(\decoded_rs2_reg[4] ),
        .O(pcpi_rs2[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \reg_op2[31]_i_1 
       (.I0(resetn),
        .I1(Q[4]),
        .O(resetn_4));
  LUT2 #(
    .INIT(4'hE)) 
    \reg_op2[31]_i_10 
       (.I0(instr_xor),
        .I1(instr_xori),
        .O(instr_xor_reg));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \reg_op2[31]_i_11 
       (.I0(instr_blt),
        .I1(instr_and),
        .I2(instr_sltiu),
        .I3(instr_addi),
        .O(\reg_op2[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \reg_op2[31]_i_12 
       (.I0(instr_sh),
        .I1(instr_lh),
        .I2(instr_add),
        .I3(instr_bltu),
        .O(\reg_op2[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \reg_op2[31]_i_13 
       (.I0(instr_beq),
        .I1(instr_bne),
        .I2(instr_bge),
        .I3(instr_lhu),
        .I4(instr_lbu),
        .I5(instr_lw),
        .O(\reg_op2[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \reg_op2[31]_i_3 
       (.I0(instr_jal_reg),
        .I1(\cpu_state_reg[7]_0 ),
        .I2(instr_sra_reg),
        .I3(instr_srai_reg),
        .I4(instr_lb_reg),
        .I5(instr_slti_reg),
        .O(instr_jalr_reg));
  LUT5 #(
    .INIT(32'h00000001)) 
    \reg_op2[31]_i_4 
       (.I0(decoded_rs2__0[4]),
        .I1(decoded_rs2__0[3]),
        .I2(decoded_rs2__0[2]),
        .I3(decoded_rs2__0[1]),
        .I4(decoded_rs2__0[0]),
        .O(\decoded_rs2_reg[4] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \reg_op2[31]_i_5 
       (.I0(instr_sra),
        .I1(instr_srl),
        .I2(instr_or_reg),
        .I3(instr_sll_reg),
        .I4(instr_rdinstrh),
        .I5(instr_rdcycle),
        .O(instr_sra_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \reg_op2[31]_i_6 
       (.I0(instr_xor_reg),
        .I1(instr_srai),
        .I2(instr_srli),
        .I3(instr_slt),
        .I4(instr_sltu),
        .I5(instr_rdinstr_reg),
        .O(instr_srai_reg));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \reg_op2[31]_i_7 
       (.I0(instr_lb),
        .I1(DI),
        .I2(instr_andi),
        .I3(instr_sb),
        .I4(\reg_op2[31]_i_11_n_0 ),
        .O(instr_lb_reg));
  LUT5 #(
    .INIT(32'h00000001)) 
    \reg_op2[31]_i_8 
       (.I0(\reg_op2[31]_i_12_n_0 ),
        .I1(instr_slti),
        .I2(instr_sw),
        .I3(instr_bgeu),
        .I4(\reg_op2[31]_i_13_n_0 ),
        .O(instr_slti_reg));
  LUT2 #(
    .INIT(4'hE)) 
    \reg_op2[31]_i_9 
       (.I0(instr_or),
        .I1(instr_ori),
        .O(instr_or_reg));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[3]_i_1 
       (.I0(instr_jalr_reg),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(rd0_5[3]),
        .I4(reg_sh1[3]),
        .I5(\decoded_rs2_reg[4] ),
        .O(pcpi_rs2[3]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[4]_i_1 
       (.I0(instr_jalr_reg),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(rd0_5[4]),
        .I4(reg_sh1[4]),
        .I5(\decoded_rs2_reg[4] ),
        .O(pcpi_rs2[4]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[5]_i_1 
       (.I0(instr_jalr_reg),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(rd0_5[5]),
        .I4(reg_sh1[5]),
        .I5(\decoded_rs2_reg[4] ),
        .O(pcpi_rs2[5]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[6]_i_1 
       (.I0(instr_jalr_reg),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(rd0_5[6]),
        .I4(reg_sh1[6]),
        .I5(\decoded_rs2_reg[4] ),
        .O(pcpi_rs2[6]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[7]_i_1 
       (.I0(instr_jalr_reg),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(rd0_5[7]),
        .I4(reg_sh1[7]),
        .I5(\decoded_rs2_reg[4] ),
        .O(pcpi_rs2[7]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[8]_i_1 
       (.I0(instr_jalr_reg),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(rd0_5[8]),
        .I4(reg_sh1[8]),
        .I5(\decoded_rs2_reg[4] ),
        .O(pcpi_rs2[8]));
  LUT6 #(
    .INIT(64'hA800A800FF57A800)) 
    \reg_op2[9]_i_1 
       (.I0(instr_jalr_reg),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_lui_auipc_jal),
        .I3(rd0_5[9]),
        .I4(reg_sh1[9]),
        .I5(\decoded_rs2_reg[4] ),
        .O(pcpi_rs2[9]));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFEEEFE)) 
    \reg_out[0]_i_1 
       (.I0(\reg_out_reg[0] ),
        .I1(\reg_out_reg[0]_0 ),
        .I2(\rd_reg[0]__0_n_0 ),
        .I3(shift_out),
        .I4(rd_reg__1[32]),
        .I5(\reg_out_reg[31] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \reg_out[10]_i_1 
       (.I0(\reg_out_reg[10] ),
        .I1(Q[0]),
        .I2(\reg_out_reg[31] ),
        .I3(pcpi_int_rd[10]),
        .I4(\reg_out_reg[10]_0 ),
        .I5(\reg_out_reg[10]_1 ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[10]_i_3 
       (.I0(rd_reg__1[42]),
        .I1(shift_out),
        .I2(\rd_reg[10]__0_n_0 ),
        .O(pcpi_int_rd[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \reg_out[11]_i_1 
       (.I0(\reg_out_reg[11] ),
        .I1(Q[0]),
        .I2(\reg_out_reg[31] ),
        .I3(pcpi_int_rd[11]),
        .I4(\reg_out_reg[11]_0 ),
        .I5(\reg_out_reg[11]_1 ),
        .O(D[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[11]_i_10 
       (.I0(rd_reg__0_n_81),
        .I1(rd_reg_n_98),
        .O(\reg_out[11]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[11]_i_11 
       (.I0(rd_reg__0_n_82),
        .I1(rd_reg_n_99),
        .O(\reg_out[11]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[11]_i_3 
       (.I0(rd_reg__1[43]),
        .I1(shift_out),
        .I2(\rd_reg[11]__0_n_0 ),
        .O(pcpi_int_rd[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[11]_i_8 
       (.I0(rd_reg__0_n_79),
        .I1(rd_reg_n_96),
        .O(\reg_out[11]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[11]_i_9 
       (.I0(rd_reg__0_n_80),
        .I1(rd_reg_n_97),
        .O(\reg_out[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \reg_out[12]_i_1 
       (.I0(\reg_out_reg[12] ),
        .I1(Q[0]),
        .I2(\reg_out_reg[31] ),
        .I3(pcpi_int_rd[12]),
        .I4(\reg_out_reg[12]_0 ),
        .I5(\reg_out_reg[12]_1 ),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[12]_i_3 
       (.I0(rd_reg__1[44]),
        .I1(shift_out),
        .I2(\rd_reg[12]__0_n_0 ),
        .O(pcpi_int_rd[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \reg_out[13]_i_1 
       (.I0(\reg_out_reg[13] ),
        .I1(Q[0]),
        .I2(\reg_out_reg[31] ),
        .I3(pcpi_int_rd[13]),
        .I4(\reg_out_reg[13]_0 ),
        .I5(\reg_out_reg[13]_1 ),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[13]_i_3 
       (.I0(rd_reg__1[45]),
        .I1(shift_out),
        .I2(\rd_reg[13]__0_n_0 ),
        .O(pcpi_int_rd[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \reg_out[14]_i_1 
       (.I0(\reg_out_reg[14] ),
        .I1(Q[0]),
        .I2(\reg_out_reg[31] ),
        .I3(pcpi_int_rd[14]),
        .I4(\reg_out_reg[14]_0 ),
        .I5(\reg_out_reg[14]_1 ),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[14]_i_3 
       (.I0(rd_reg__1[46]),
        .I1(shift_out),
        .I2(\rd_reg[14]__0_n_0 ),
        .O(pcpi_int_rd[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \reg_out[15]_i_1 
       (.I0(\reg_out_reg[15] ),
        .I1(Q[0]),
        .I2(\reg_out_reg[31] ),
        .I3(pcpi_int_rd[15]),
        .I4(\reg_out_reg[15]_0 ),
        .I5(\reg_out_reg[15]_1 ),
        .O(D[15]));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[15]_i_10 
       (.I0(rd_reg__0_n_75),
        .I1(rd_reg_n_92),
        .O(\reg_out[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[15]_i_11 
       (.I0(rd_reg__0_n_76),
        .I1(rd_reg_n_93),
        .O(\reg_out[15]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[15]_i_12 
       (.I0(rd_reg__0_n_77),
        .I1(rd_reg_n_94),
        .O(\reg_out[15]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[15]_i_13 
       (.I0(rd_reg__0_n_78),
        .I1(rd_reg_n_95),
        .O(\reg_out[15]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[15]_i_3 
       (.I0(rd_reg__1[47]),
        .I1(shift_out),
        .I2(\rd_reg[15]__0_n_0 ),
        .O(pcpi_int_rd[15]));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \reg_out[16]_i_1 
       (.I0(\reg_out_reg[16] ),
        .I1(\reg_out_reg[31] ),
        .I2(pcpi_int_rd[16]),
        .I3(\reg_out_reg[16]_0 ),
        .I4(\reg_out_reg[16]_1 ),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[16]_i_3 
       (.I0(rd_reg__1[48]),
        .I1(shift_out),
        .I2(rd_reg__1[16]),
        .O(pcpi_int_rd[16]));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \reg_out[17]_i_1 
       (.I0(\reg_out_reg[17] ),
        .I1(\reg_out_reg[31] ),
        .I2(pcpi_int_rd[17]),
        .I3(\reg_out_reg[17]_0 ),
        .I4(\reg_out_reg[17]_1 ),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[17]_i_3 
       (.I0(rd_reg__1[49]),
        .I1(shift_out),
        .I2(rd_reg__1[17]),
        .O(pcpi_int_rd[17]));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \reg_out[18]_i_1 
       (.I0(\reg_out_reg[18] ),
        .I1(\reg_out_reg[31] ),
        .I2(pcpi_int_rd[18]),
        .I3(\reg_out_reg[18]_0 ),
        .I4(\reg_out_reg[18]_1 ),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[18]_i_3 
       (.I0(rd_reg__1[50]),
        .I1(shift_out),
        .I2(rd_reg__1[18]),
        .O(pcpi_int_rd[18]));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \reg_out[19]_i_1 
       (.I0(\reg_out_reg[19] ),
        .I1(\reg_out_reg[31] ),
        .I2(pcpi_int_rd[19]),
        .I3(\reg_out_reg[19]_0 ),
        .I4(\reg_out_reg[19]_1 ),
        .O(D[19]));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[19]_i_10 
       (.I0(rd_reg__0_n_72),
        .I1(rd_reg_n_89),
        .O(\reg_out[19]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[19]_i_11 
       (.I0(rd_reg__0_n_73),
        .I1(rd_reg_n_90),
        .O(\reg_out[19]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[19]_i_12 
       (.I0(rd_reg__0_n_74),
        .I1(rd_reg_n_91),
        .O(\reg_out[19]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[19]_i_13 
       (.I0(rd_reg__0_n_103),
        .I1(\rd_reg_n_0_[2] ),
        .O(\reg_out[19]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[19]_i_14 
       (.I0(rd_reg__0_n_104),
        .I1(\rd_reg_n_0_[1] ),
        .O(\reg_out[19]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[19]_i_15 
       (.I0(rd_reg__0_n_105),
        .I1(\rd_reg_n_0_[0] ),
        .O(\reg_out[19]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[19]_i_3 
       (.I0(rd_reg__1[51]),
        .I1(shift_out),
        .I2(rd_reg__1[19]),
        .O(pcpi_int_rd[19]));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[19]_i_9 
       (.I0(rd_reg__0_n_71),
        .I1(rd_reg_n_88),
        .O(\reg_out[19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAFEAE)) 
    \reg_out[1]_i_1 
       (.I0(\reg_out_reg[1] ),
        .I1(\rd_reg[1]__0_n_0 ),
        .I2(shift_out),
        .I3(rd_reg__1[33]),
        .I4(\reg_out_reg[31] ),
        .I5(\reg_out_reg[1]_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFFFEFEE)) 
    \reg_out[20]_i_1 
       (.I0(\reg_out_reg[20] ),
        .I1(\reg_out_reg[20]_0 ),
        .I2(\reg_out_reg[31] ),
        .I3(pcpi_int_rd[20]),
        .I4(\reg_out_reg[20]_1 ),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[20]_i_4 
       (.I0(rd_reg__1[52]),
        .I1(shift_out),
        .I2(rd_reg__1[20]),
        .O(pcpi_int_rd[20]));
  LUT2 #(
    .INIT(4'hE)) 
    \reg_out[20]_i_7 
       (.I0(instr_rdinstr),
        .I1(instr_rdcycleh),
        .O(instr_rdinstr_reg));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \reg_out[21]_i_1 
       (.I0(\reg_out_reg[21] ),
        .I1(\reg_out_reg[31] ),
        .I2(pcpi_int_rd[21]),
        .I3(\reg_out_reg[21]_0 ),
        .I4(\reg_out_reg[21]_1 ),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[21]_i_3 
       (.I0(rd_reg__1[53]),
        .I1(shift_out),
        .I2(rd_reg__1[21]),
        .O(pcpi_int_rd[21]));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \reg_out[22]_i_1 
       (.I0(\reg_out_reg[22] ),
        .I1(\reg_out_reg[31] ),
        .I2(pcpi_int_rd[22]),
        .I3(\reg_out_reg[22]_0 ),
        .I4(\reg_out_reg[22]_1 ),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[22]_i_3 
       (.I0(rd_reg__1[54]),
        .I1(shift_out),
        .I2(rd_reg__1[22]),
        .O(pcpi_int_rd[22]));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \reg_out[23]_i_1 
       (.I0(\reg_out_reg[23] ),
        .I1(\reg_out_reg[31] ),
        .I2(pcpi_int_rd[23]),
        .I3(\reg_out_reg[23]_0 ),
        .I4(\reg_out_reg[23]_1 ),
        .O(D[23]));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[23]_i_10 
       (.I0(rd_reg__0_n_68),
        .I1(rd_reg_n_85),
        .O(\reg_out[23]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[23]_i_11 
       (.I0(rd_reg__0_n_69),
        .I1(rd_reg_n_86),
        .O(\reg_out[23]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[23]_i_12 
       (.I0(rd_reg__0_n_70),
        .I1(rd_reg_n_87),
        .O(\reg_out[23]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[23]_i_13 
       (.I0(rd_reg__0_n_99),
        .I1(\rd_reg_n_0_[6] ),
        .O(\reg_out[23]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[23]_i_14 
       (.I0(rd_reg__0_n_100),
        .I1(\rd_reg_n_0_[5] ),
        .O(\reg_out[23]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[23]_i_15 
       (.I0(rd_reg__0_n_101),
        .I1(\rd_reg_n_0_[4] ),
        .O(\reg_out[23]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[23]_i_16 
       (.I0(rd_reg__0_n_102),
        .I1(\rd_reg_n_0_[3] ),
        .O(\reg_out[23]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[23]_i_3 
       (.I0(rd_reg__1[55]),
        .I1(shift_out),
        .I2(rd_reg__1[23]),
        .O(pcpi_int_rd[23]));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[23]_i_9 
       (.I0(rd_reg__0_n_67),
        .I1(rd_reg_n_84),
        .O(\reg_out[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \reg_out[24]_i_1 
       (.I0(\reg_out_reg[24] ),
        .I1(\reg_out_reg[31] ),
        .I2(pcpi_int_rd[24]),
        .I3(\reg_out_reg[24]_0 ),
        .I4(\reg_out_reg[24]_1 ),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[24]_i_3 
       (.I0(rd_reg__1[56]),
        .I1(shift_out),
        .I2(rd_reg__1[24]),
        .O(pcpi_int_rd[24]));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \reg_out[25]_i_1 
       (.I0(\reg_out_reg[25] ),
        .I1(\reg_out_reg[31] ),
        .I2(pcpi_int_rd[25]),
        .I3(\reg_out_reg[25]_0 ),
        .I4(\reg_out_reg[25]_1 ),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[25]_i_3 
       (.I0(rd_reg__1[57]),
        .I1(shift_out),
        .I2(rd_reg__1[25]),
        .O(pcpi_int_rd[25]));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \reg_out[26]_i_1 
       (.I0(\reg_out_reg[26] ),
        .I1(\reg_out_reg[31] ),
        .I2(pcpi_int_rd[26]),
        .I3(\reg_out_reg[26]_0 ),
        .I4(\reg_out_reg[26]_1 ),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[26]_i_3 
       (.I0(rd_reg__1[58]),
        .I1(shift_out),
        .I2(rd_reg__1[26]),
        .O(pcpi_int_rd[26]));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \reg_out[27]_i_1 
       (.I0(\reg_out_reg[27] ),
        .I1(\reg_out_reg[31] ),
        .I2(pcpi_int_rd[27]),
        .I3(\reg_out_reg[27]_0 ),
        .I4(\reg_out_reg[27]_1 ),
        .O(D[27]));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[27]_i_10 
       (.I0(rd_reg__0_n_64),
        .I1(rd_reg_n_81),
        .O(\reg_out[27]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[27]_i_11 
       (.I0(rd_reg__0_n_65),
        .I1(rd_reg_n_82),
        .O(\reg_out[27]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[27]_i_12 
       (.I0(rd_reg__0_n_66),
        .I1(rd_reg_n_83),
        .O(\reg_out[27]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[27]_i_13 
       (.I0(rd_reg__0_n_95),
        .I1(\rd_reg_n_0_[10] ),
        .O(\reg_out[27]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[27]_i_14 
       (.I0(rd_reg__0_n_96),
        .I1(\rd_reg_n_0_[9] ),
        .O(\reg_out[27]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[27]_i_15 
       (.I0(rd_reg__0_n_97),
        .I1(\rd_reg_n_0_[8] ),
        .O(\reg_out[27]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[27]_i_16 
       (.I0(rd_reg__0_n_98),
        .I1(\rd_reg_n_0_[7] ),
        .O(\reg_out[27]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[27]_i_3 
       (.I0(rd_reg__1[59]),
        .I1(shift_out),
        .I2(rd_reg__1[27]),
        .O(pcpi_int_rd[27]));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[27]_i_9 
       (.I0(rd_reg__0_n_63),
        .I1(rd_reg_n_80),
        .O(\reg_out[27]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \reg_out[28]_i_1 
       (.I0(\reg_out_reg[28] ),
        .I1(\reg_out_reg[31] ),
        .I2(pcpi_int_rd[28]),
        .I3(\reg_out_reg[28]_0 ),
        .I4(\reg_out_reg[28]_1 ),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[28]_i_3 
       (.I0(rd_reg__1[60]),
        .I1(shift_out),
        .I2(rd_reg__1[28]),
        .O(pcpi_int_rd[28]));
  LUT6 #(
    .INIT(64'hFFBAFFBAFFFFFFBA)) 
    \reg_out[29]_i_1 
       (.I0(\reg_out_reg[29] ),
        .I1(\reg_out_reg[31] ),
        .I2(pcpi_int_rd[29]),
        .I3(\reg_out_reg[29]_0 ),
        .I4(Q[4]),
        .I5(\reg_out_reg[29]_1 ),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[29]_i_3 
       (.I0(rd_reg__1[61]),
        .I1(shift_out),
        .I2(rd_reg__1[29]),
        .O(pcpi_int_rd[29]));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFEEEFE)) 
    \reg_out[2]_i_1 
       (.I0(\reg_out_reg[2] ),
        .I1(\reg_out_reg[2]_0 ),
        .I2(\rd_reg[2]__0_n_0 ),
        .I3(shift_out),
        .I4(rd_reg__1[34]),
        .I5(\reg_out_reg[31] ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFFFFFFBA)) 
    \reg_out[30]_i_1 
       (.I0(\reg_out_reg[30] ),
        .I1(\reg_out_reg[31] ),
        .I2(pcpi_int_rd[30]),
        .I3(\reg_out_reg[30]_0 ),
        .I4(\reg_out_reg[30]_1 ),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[30]_i_3 
       (.I0(rd_reg__1[62]),
        .I1(shift_out),
        .I2(rd_reg__1[30]),
        .O(pcpi_int_rd[30]));
  LUT6 #(
    .INIT(64'hFFBAFFBAFFFFFFBA)) 
    \reg_out[31]_i_1 
       (.I0(\reg_out_reg[31]_0 ),
        .I1(\reg_out_reg[31] ),
        .I2(pcpi_int_rd[31]),
        .I3(\reg_out_reg[31]_1 ),
        .I4(Q[4]),
        .I5(\reg_out_reg[31]_2 ),
        .O(D[31]));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[31]_i_14 
       (.I0(rd_reg__0_n_59),
        .I1(rd_reg_n_76),
        .O(\reg_out[31]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[31]_i_15 
       (.I0(rd_reg__0_n_60),
        .I1(rd_reg_n_77),
        .O(\reg_out[31]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[31]_i_16 
       (.I0(rd_reg__0_n_61),
        .I1(rd_reg_n_78),
        .O(\reg_out[31]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[31]_i_17 
       (.I0(rd_reg__0_n_62),
        .I1(rd_reg_n_79),
        .O(\reg_out[31]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[31]_i_18 
       (.I0(rd_reg__0_n_91),
        .I1(\rd_reg_n_0_[14] ),
        .O(\reg_out[31]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[31]_i_19 
       (.I0(rd_reg__0_n_92),
        .I1(\rd_reg_n_0_[13] ),
        .O(\reg_out[31]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[31]_i_20 
       (.I0(rd_reg__0_n_93),
        .I1(\rd_reg_n_0_[12] ),
        .O(\reg_out[31]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[31]_i_21 
       (.I0(rd_reg__0_n_94),
        .I1(\rd_reg_n_0_[11] ),
        .O(\reg_out[31]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[31]_i_3 
       (.I0(rd_reg__1[63]),
        .I1(shift_out),
        .I2(rd_reg__1[31]),
        .O(pcpi_int_rd[31]));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFEEEFE)) 
    \reg_out[3]_i_1 
       (.I0(\reg_out_reg[3] ),
        .I1(\reg_out_reg[3]_0 ),
        .I2(\rd_reg[3]__0_n_0 ),
        .I3(shift_out),
        .I4(rd_reg__1[35]),
        .I5(\reg_out_reg[31] ),
        .O(D[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[3]_i_10 
       (.I0(rd_reg__0_n_90),
        .I1(\rd_reg_n_0_[15] ),
        .O(\reg_out[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[3]_i_7 
       (.I0(rd_reg__0_n_87),
        .I1(rd_reg_n_104),
        .O(\reg_out[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[3]_i_8 
       (.I0(rd_reg__0_n_88),
        .I1(rd_reg_n_105),
        .O(\reg_out[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[3]_i_9 
       (.I0(rd_reg__0_n_89),
        .I1(\rd_reg_n_0_[16] ),
        .O(\reg_out[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFEEEFE)) 
    \reg_out[4]_i_1 
       (.I0(\reg_out_reg[4] ),
        .I1(\reg_out_reg[4]_0 ),
        .I2(\rd_reg[4]__0_n_0 ),
        .I3(shift_out),
        .I4(rd_reg__1[36]),
        .I5(\reg_out_reg[31] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFEEEFE)) 
    \reg_out[5]_i_1 
       (.I0(\reg_out_reg[5] ),
        .I1(\reg_out_reg[5]_0 ),
        .I2(\rd_reg[5]__0_n_0 ),
        .I3(shift_out),
        .I4(rd_reg__1[37]),
        .I5(\reg_out_reg[31] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFEEEFE)) 
    \reg_out[6]_i_1 
       (.I0(\reg_out_reg[6] ),
        .I1(\reg_out_reg[6]_0 ),
        .I2(\rd_reg[6]__0_n_0 ),
        .I3(shift_out),
        .I4(rd_reg__1[38]),
        .I5(\reg_out_reg[31] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hEEEEEEEEFFFEEEFE)) 
    \reg_out[7]_i_1 
       (.I0(\reg_out_reg[7] ),
        .I1(\reg_out_reg[7]_0 ),
        .I2(\rd_reg[7]__0_n_0 ),
        .I3(shift_out),
        .I4(rd_reg__1[39]),
        .I5(\reg_out_reg[31] ),
        .O(D[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[7]_i_10 
       (.I0(rd_reg__0_n_85),
        .I1(rd_reg_n_102),
        .O(\reg_out[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[7]_i_11 
       (.I0(rd_reg__0_n_86),
        .I1(rd_reg_n_103),
        .O(\reg_out[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[7]_i_8 
       (.I0(rd_reg__0_n_83),
        .I1(rd_reg_n_100),
        .O(\reg_out[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[7]_i_9 
       (.I0(rd_reg__0_n_84),
        .I1(rd_reg_n_101),
        .O(\reg_out[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \reg_out[8]_i_1 
       (.I0(\reg_out_reg[8] ),
        .I1(Q[0]),
        .I2(\reg_out_reg[31] ),
        .I3(pcpi_int_rd[8]),
        .I4(\reg_out_reg[8]_0 ),
        .I5(\reg_out_reg[8]_1 ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[8]_i_3 
       (.I0(rd_reg__1[40]),
        .I1(shift_out),
        .I2(\rd_reg[8]__0_n_0 ),
        .O(pcpi_int_rd[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \reg_out[9]_i_1 
       (.I0(\reg_out_reg[9] ),
        .I1(Q[0]),
        .I2(\reg_out_reg[31] ),
        .I3(pcpi_int_rd[9]),
        .I4(\reg_out_reg[9]_0 ),
        .I5(\reg_out_reg[9]_1 ),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_out[9]_i_3 
       (.I0(rd_reg__1[41]),
        .I1(shift_out),
        .I2(\rd_reg[9]__0_n_0 ),
        .O(pcpi_int_rd[9]));
  CARRY4 \reg_out_reg[11]_i_6 
       (.CI(\reg_out_reg[7]_i_4_n_0 ),
        .CO({\reg_out_reg[11]_i_6_n_0 ,\reg_out_reg[11]_i_6_n_1 ,\reg_out_reg[11]_i_6_n_2 ,\reg_out_reg[11]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({rd_reg__0_n_79,rd_reg__0_n_80,rd_reg__0_n_81,rd_reg__0_n_82}),
        .O(rd_reg__1[43:40]),
        .S({\reg_out[11]_i_8_n_0 ,\reg_out[11]_i_9_n_0 ,\reg_out[11]_i_10_n_0 ,\reg_out[11]_i_11_n_0 }));
  CARRY4 \reg_out_reg[15]_i_8 
       (.CI(\reg_out_reg[11]_i_6_n_0 ),
        .CO({\reg_out_reg[15]_i_8_n_0 ,\reg_out_reg[15]_i_8_n_1 ,\reg_out_reg[15]_i_8_n_2 ,\reg_out_reg[15]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({rd_reg__0_n_75,rd_reg__0_n_76,rd_reg__0_n_77,rd_reg__0_n_78}),
        .O(rd_reg__1[47:44]),
        .S({\reg_out[15]_i_10_n_0 ,\reg_out[15]_i_11_n_0 ,\reg_out[15]_i_12_n_0 ,\reg_out[15]_i_13_n_0 }));
  CARRY4 \reg_out_reg[19]_i_6 
       (.CI(\reg_out_reg[15]_i_8_n_0 ),
        .CO({\reg_out_reg[19]_i_6_n_0 ,\reg_out_reg[19]_i_6_n_1 ,\reg_out_reg[19]_i_6_n_2 ,\reg_out_reg[19]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({rd_reg__0_n_71,rd_reg__0_n_72,rd_reg__0_n_73,rd_reg__0_n_74}),
        .O(rd_reg__1[51:48]),
        .S({\reg_out[19]_i_9_n_0 ,\reg_out[19]_i_10_n_0 ,\reg_out[19]_i_11_n_0 ,\reg_out[19]_i_12_n_0 }));
  CARRY4 \reg_out_reg[19]_i_7 
       (.CI(1'b0),
        .CO({\reg_out_reg[19]_i_7_n_0 ,\reg_out_reg[19]_i_7_n_1 ,\reg_out_reg[19]_i_7_n_2 ,\reg_out_reg[19]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({rd_reg__0_n_103,rd_reg__0_n_104,rd_reg__0_n_105,1'b0}),
        .O(rd_reg__1[19:16]),
        .S({\reg_out[19]_i_13_n_0 ,\reg_out[19]_i_14_n_0 ,\reg_out[19]_i_15_n_0 ,\rd_reg[16]__0_n_0 }));
  CARRY4 \reg_out_reg[23]_i_6 
       (.CI(\reg_out_reg[19]_i_6_n_0 ),
        .CO({\reg_out_reg[23]_i_6_n_0 ,\reg_out_reg[23]_i_6_n_1 ,\reg_out_reg[23]_i_6_n_2 ,\reg_out_reg[23]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({rd_reg__0_n_67,rd_reg__0_n_68,rd_reg__0_n_69,rd_reg__0_n_70}),
        .O(rd_reg__1[55:52]),
        .S({\reg_out[23]_i_9_n_0 ,\reg_out[23]_i_10_n_0 ,\reg_out[23]_i_11_n_0 ,\reg_out[23]_i_12_n_0 }));
  CARRY4 \reg_out_reg[23]_i_7 
       (.CI(\reg_out_reg[19]_i_7_n_0 ),
        .CO({\reg_out_reg[23]_i_7_n_0 ,\reg_out_reg[23]_i_7_n_1 ,\reg_out_reg[23]_i_7_n_2 ,\reg_out_reg[23]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({rd_reg__0_n_99,rd_reg__0_n_100,rd_reg__0_n_101,rd_reg__0_n_102}),
        .O(rd_reg__1[23:20]),
        .S({\reg_out[23]_i_13_n_0 ,\reg_out[23]_i_14_n_0 ,\reg_out[23]_i_15_n_0 ,\reg_out[23]_i_16_n_0 }));
  CARRY4 \reg_out_reg[27]_i_6 
       (.CI(\reg_out_reg[23]_i_6_n_0 ),
        .CO({\reg_out_reg[27]_i_6_n_0 ,\reg_out_reg[27]_i_6_n_1 ,\reg_out_reg[27]_i_6_n_2 ,\reg_out_reg[27]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({rd_reg__0_n_63,rd_reg__0_n_64,rd_reg__0_n_65,rd_reg__0_n_66}),
        .O(rd_reg__1[59:56]),
        .S({\reg_out[27]_i_9_n_0 ,\reg_out[27]_i_10_n_0 ,\reg_out[27]_i_11_n_0 ,\reg_out[27]_i_12_n_0 }));
  CARRY4 \reg_out_reg[27]_i_7 
       (.CI(\reg_out_reg[23]_i_7_n_0 ),
        .CO({\reg_out_reg[27]_i_7_n_0 ,\reg_out_reg[27]_i_7_n_1 ,\reg_out_reg[27]_i_7_n_2 ,\reg_out_reg[27]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({rd_reg__0_n_95,rd_reg__0_n_96,rd_reg__0_n_97,rd_reg__0_n_98}),
        .O(rd_reg__1[27:24]),
        .S({\reg_out[27]_i_13_n_0 ,\reg_out[27]_i_14_n_0 ,\reg_out[27]_i_15_n_0 ,\reg_out[27]_i_16_n_0 }));
  CARRY4 \reg_out_reg[31]_i_10 
       (.CI(\reg_out_reg[27]_i_7_n_0 ),
        .CO({\reg_out_reg[31]_i_10_n_0 ,\reg_out_reg[31]_i_10_n_1 ,\reg_out_reg[31]_i_10_n_2 ,\reg_out_reg[31]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({rd_reg__0_n_91,rd_reg__0_n_92,rd_reg__0_n_93,rd_reg__0_n_94}),
        .O(rd_reg__1[31:28]),
        .S({\reg_out[31]_i_18_n_0 ,\reg_out[31]_i_19_n_0 ,\reg_out[31]_i_20_n_0 ,\reg_out[31]_i_21_n_0 }));
  CARRY4 \reg_out_reg[31]_i_9 
       (.CI(\reg_out_reg[27]_i_6_n_0 ),
        .CO({\NLW_reg_out_reg[31]_i_9_CO_UNCONNECTED [3],\reg_out_reg[31]_i_9_n_1 ,\reg_out_reg[31]_i_9_n_2 ,\reg_out_reg[31]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,rd_reg__0_n_60,rd_reg__0_n_61,rd_reg__0_n_62}),
        .O(rd_reg__1[63:60]),
        .S({\reg_out[31]_i_14_n_0 ,\reg_out[31]_i_15_n_0 ,\reg_out[31]_i_16_n_0 ,\reg_out[31]_i_17_n_0 }));
  CARRY4 \reg_out_reg[3]_i_4 
       (.CI(\reg_out_reg[31]_i_10_n_0 ),
        .CO({\reg_out_reg[3]_i_4_n_0 ,\reg_out_reg[3]_i_4_n_1 ,\reg_out_reg[3]_i_4_n_2 ,\reg_out_reg[3]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({rd_reg__0_n_87,rd_reg__0_n_88,rd_reg__0_n_89,rd_reg__0_n_90}),
        .O(rd_reg__1[35:32]),
        .S({\reg_out[3]_i_7_n_0 ,\reg_out[3]_i_8_n_0 ,\reg_out[3]_i_9_n_0 ,\reg_out[3]_i_10_n_0 }));
  CARRY4 \reg_out_reg[7]_i_4 
       (.CI(\reg_out_reg[3]_i_4_n_0 ),
        .CO({\reg_out_reg[7]_i_4_n_0 ,\reg_out_reg[7]_i_4_n_1 ,\reg_out_reg[7]_i_4_n_2 ,\reg_out_reg[7]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({rd_reg__0_n_83,rd_reg__0_n_84,rd_reg__0_n_85,rd_reg__0_n_86}),
        .O(rd_reg__1[39:36]),
        .S({\reg_out[7]_i_8_n_0 ,\reg_out[7]_i_9_n_0 ,\reg_out[7]_i_10_n_0 ,\reg_out[7]_i_11_n_0 }));
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_sh[0]_i_2 
       (.I0(\reg_sh_reg[0] [4]),
        .I1(\reg_sh_reg[0] [2]),
        .I2(\reg_sh_reg[0] [3]),
        .O(\reg_sh_reg[4] ));
  LUT4 #(
    .INIT(16'h2220)) 
    shift_out_i_1
       (.I0(instr_mulh1),
        .I1(rd_reg__0_0[9]),
        .I2(rd_reg__0_0[7]),
        .I3(rd_reg__0_0[8]),
        .O(instr_any_mulh));
  FDRE shift_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(instr_any_mulh),
        .Q(shift_out),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    trap_i_1
       (.I0(resetn),
        .O(resetn_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
