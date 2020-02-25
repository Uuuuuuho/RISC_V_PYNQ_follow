// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Tue Feb 18 18:11:42 2020
// Host        : hulk running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_picorv32_tut_0_0_stub.v
// Design      : design_1_picorv32_tut_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "picorv32_axi,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, resetn, trap, mem_axi_awvalid, 
  mem_axi_awready, mem_axi_awaddr, mem_axi_awprot, mem_axi_wvalid, mem_axi_wready, 
  mem_axi_wdata, mem_axi_wstrb, mem_axi_bvalid, mem_axi_bready, mem_axi_arvalid, 
  mem_axi_arready, mem_axi_araddr, mem_axi_arprot, mem_axi_rvalid, mem_axi_rready, 
  mem_axi_rdata, pcpi_valid, pcpi_insn, pcpi_rs1, pcpi_rs2, pcpi_wr, pcpi_rd, pcpi_wait, 
  pcpi_ready, irq, eoi, trace_valid, trace_data)
/* synthesis syn_black_box black_box_pad_pin="clk,resetn,trap,mem_axi_awvalid,mem_axi_awready,mem_axi_awaddr[31:0],mem_axi_awprot[2:0],mem_axi_wvalid,mem_axi_wready,mem_axi_wdata[31:0],mem_axi_wstrb[3:0],mem_axi_bvalid,mem_axi_bready,mem_axi_arvalid,mem_axi_arready,mem_axi_araddr[31:0],mem_axi_arprot[2:0],mem_axi_rvalid,mem_axi_rready,mem_axi_rdata[31:0],pcpi_valid,pcpi_insn[31:0],pcpi_rs1[31:0],pcpi_rs2[31:0],pcpi_wr,pcpi_rd[31:0],pcpi_wait,pcpi_ready,irq[31:0],eoi[31:0],trace_valid,trace_data[35:0]" */;
  input clk;
  input resetn;
  output trap;
  output mem_axi_awvalid;
  input mem_axi_awready;
  output [31:0]mem_axi_awaddr;
  output [2:0]mem_axi_awprot;
  output mem_axi_wvalid;
  input mem_axi_wready;
  output [31:0]mem_axi_wdata;
  output [3:0]mem_axi_wstrb;
  input mem_axi_bvalid;
  output mem_axi_bready;
  output mem_axi_arvalid;
  input mem_axi_arready;
  output [31:0]mem_axi_araddr;
  output [2:0]mem_axi_arprot;
  input mem_axi_rvalid;
  output mem_axi_rready;
  input [31:0]mem_axi_rdata;
  output pcpi_valid;
  output [31:0]pcpi_insn;
  output [31:0]pcpi_rs1;
  output [31:0]pcpi_rs2;
  input pcpi_wr;
  input [31:0]pcpi_rd;
  input pcpi_wait;
  input pcpi_ready;
  input [31:0]irq;
  output [31:0]eoi;
  output trace_valid;
  output [35:0]trace_data;
endmodule
