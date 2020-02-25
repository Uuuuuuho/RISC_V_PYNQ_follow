-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Tue Feb 18 18:11:42 2020
-- Host        : hulk running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_picorv32_tut_0_0_sim_netlist.vhdl
-- Design      : design_1_picorv32_tut_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32_axi_adapter is
  port (
    xfer_done : out STD_LOGIC;
    ack_awvalid : out STD_LOGIC;
    ack_wvalid_reg_0 : out STD_LOGIC;
    ack_arvalid_reg_0 : out STD_LOGIC;
    xfer_done_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    mem_axi_awready : in STD_LOGIC;
    mem_axi_bready : in STD_LOGIC;
    resetn : in STD_LOGIC;
    mem_valid : in STD_LOGIC;
    mem_axi_arvalid : in STD_LOGIC;
    mem_axi_arready : in STD_LOGIC;
    mem_axi_wready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32_axi_adapter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32_axi_adapter is
  signal ack_arvalid_i_1_n_0 : STD_LOGIC;
  signal \^ack_arvalid_reg_0\ : STD_LOGIC;
  signal \^ack_awvalid\ : STD_LOGIC;
  signal ack_awvalid_i_1_n_0 : STD_LOGIC;
  signal ack_wvalid_i_1_n_0 : STD_LOGIC;
  signal \^ack_wvalid_reg_0\ : STD_LOGIC;
  signal \^xfer_done\ : STD_LOGIC;
begin
  ack_arvalid_reg_0 <= \^ack_arvalid_reg_0\;
  ack_awvalid <= \^ack_awvalid\;
  ack_wvalid_reg_0 <= \^ack_wvalid_reg_0\;
  xfer_done <= \^xfer_done\;
ack_arvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EA0000AAAAAAAA"
    )
        port map (
      I0 => \^ack_arvalid_reg_0\,
      I1 => mem_axi_arvalid,
      I2 => mem_axi_arready,
      I3 => \^xfer_done\,
      I4 => mem_valid,
      I5 => resetn,
      O => ack_arvalid_i_1_n_0
    );
ack_arvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ack_arvalid_i_1_n_0,
      Q => \^ack_arvalid_reg_0\,
      R => '0'
    );
ack_awvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EA0000000000"
    )
        port map (
      I0 => \^ack_awvalid\,
      I1 => mem_axi_awready,
      I2 => mem_axi_bready,
      I3 => resetn,
      I4 => \^xfer_done\,
      I5 => mem_valid,
      O => ack_awvalid_i_1_n_0
    );
ack_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ack_awvalid_i_1_n_0,
      Q => \^ack_awvalid\,
      R => '0'
    );
ack_wvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EA0000AAAAAAAA"
    )
        port map (
      I0 => \^ack_wvalid_reg_0\,
      I1 => mem_axi_bready,
      I2 => mem_axi_wready,
      I3 => \^xfer_done\,
      I4 => mem_valid,
      I5 => resetn,
      O => ack_wvalid_i_1_n_0
    );
ack_wvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ack_wvalid_i_1_n_0,
      Q => \^ack_wvalid_reg_0\,
      R => '0'
    );
xfer_done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => xfer_done_reg_0,
      Q => \^xfer_done\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32_pcpi_fast_mul is
  port (
    instr_slti_reg : out STD_LOGIC;
    instr_lb_reg : out STD_LOGIC;
    instr_srai_reg : out STD_LOGIC;
    instr_sra_reg : out STD_LOGIC;
    pcpi_ready : out STD_LOGIC;
    pcpi_rs2 : out STD_LOGIC_VECTOR ( 16 downto 0 );
    instr_jalr_reg : out STD_LOGIC;
    \decoded_rs2_reg[4]\ : out STD_LOGIC;
    resetn_0 : out STD_LOGIC;
    mem_do_rinst_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    resetn_1 : out STD_LOGIC;
    resetn_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_do_prefetch_reg : out STD_LOGIC;
    \mem_state_reg[0]\ : out STD_LOGIC;
    mem_valid_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pcpi_rs1 : out STD_LOGIC_VECTOR ( 16 downto 0 );
    is_lui_auipc_jal_reg : out STD_LOGIC;
    \reg_sh_reg[4]\ : out STD_LOGIC;
    \cpu_state_reg[7]\ : out STD_LOGIC;
    \active_reg[1]_0\ : out STD_LOGIC;
    resetn_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    resetn_4 : out STD_LOGIC;
    instr_jal_reg : out STD_LOGIC;
    \reg_op1_reg[20]\ : out STD_LOGIC;
    instr_sll_reg : out STD_LOGIC;
    \reg_op1_reg[19]\ : out STD_LOGIC;
    instr_srli_reg : out STD_LOGIC;
    \reg_op1_reg[18]\ : out STD_LOGIC;
    instr_or_reg : out STD_LOGIC;
    instr_xor_reg : out STD_LOGIC;
    instr_rdinstr_reg : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    O : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mem_do_rinst_i_2_0 : in STD_LOGIC;
    decoded_rs1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \rd_reg__0_0\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    rd_reg_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \rd_reg__0_1\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    is_jalr_addi_slti_sltiu_xori_ori_andi : in STD_LOGIC;
    is_lui_auipc_jal : in STD_LOGIC;
    rd0_0 : in STD_LOGIC;
    reg_sh1 : in STD_LOGIC_VECTOR ( 16 downto 0 );
    rd0_1 : in STD_LOGIC;
    rd0_2 : in STD_LOGIC;
    rd0_3 : in STD_LOGIC;
    rd0_4 : in STD_LOGIC;
    rd0_5 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    resetn : in STD_LOGIC;
    mem_do_rinst_reg_0 : in STD_LOGIC;
    mem_do_rinst0 : in STD_LOGIC;
    mem_do_rinst_reg_1 : in STD_LOGIC;
    mem_do_rinst_reg_2 : in STD_LOGIC;
    \cpu_state_reg[0]\ : in STD_LOGIC;
    \cpu_state_reg[0]_0\ : in STD_LOGIC;
    \cpu_state_reg[0]_1\ : in STD_LOGIC;
    mem_do_rdata_reg : in STD_LOGIC;
    \rd0__0_0\ : in STD_LOGIC;
    mem_do_rdata_reg_0 : in STD_LOGIC;
    mem_do_rdata_reg_1 : in STD_LOGIC;
    mem_do_rdata_reg_2 : in STD_LOGIC;
    instr_jal_reg_0 : in STD_LOGIC;
    mem_axi_rvalid : in STD_LOGIC;
    mem_axi_bvalid : in STD_LOGIC;
    \reg_out_reg[0]\ : in STD_LOGIC;
    \reg_out_reg[0]_0\ : in STD_LOGIC;
    \reg_out_reg[31]\ : in STD_LOGIC;
    \reg_out_reg[1]\ : in STD_LOGIC;
    \reg_out_reg[1]_0\ : in STD_LOGIC;
    \reg_out_reg[2]\ : in STD_LOGIC;
    \reg_out_reg[2]_0\ : in STD_LOGIC;
    \reg_out_reg[3]\ : in STD_LOGIC;
    \reg_out_reg[3]_0\ : in STD_LOGIC;
    \reg_out_reg[4]\ : in STD_LOGIC;
    \reg_out_reg[4]_0\ : in STD_LOGIC;
    \reg_out_reg[5]\ : in STD_LOGIC;
    \reg_out_reg[5]_0\ : in STD_LOGIC;
    \reg_out_reg[6]\ : in STD_LOGIC;
    \reg_out_reg[6]_0\ : in STD_LOGIC;
    \reg_out_reg[7]\ : in STD_LOGIC;
    \reg_out_reg[7]_0\ : in STD_LOGIC;
    \reg_out_reg[8]\ : in STD_LOGIC;
    \reg_out_reg[8]_0\ : in STD_LOGIC;
    \reg_out_reg[8]_1\ : in STD_LOGIC;
    \reg_out_reg[9]\ : in STD_LOGIC;
    \reg_out_reg[9]_0\ : in STD_LOGIC;
    \reg_out_reg[9]_1\ : in STD_LOGIC;
    \reg_out_reg[10]\ : in STD_LOGIC;
    \reg_out_reg[10]_0\ : in STD_LOGIC;
    \reg_out_reg[10]_1\ : in STD_LOGIC;
    \reg_out_reg[11]\ : in STD_LOGIC;
    \reg_out_reg[11]_0\ : in STD_LOGIC;
    \reg_out_reg[11]_1\ : in STD_LOGIC;
    \reg_out_reg[12]\ : in STD_LOGIC;
    \reg_out_reg[12]_0\ : in STD_LOGIC;
    \reg_out_reg[12]_1\ : in STD_LOGIC;
    \reg_out_reg[13]\ : in STD_LOGIC;
    \reg_out_reg[13]_0\ : in STD_LOGIC;
    \reg_out_reg[13]_1\ : in STD_LOGIC;
    \reg_out_reg[14]\ : in STD_LOGIC;
    \reg_out_reg[14]_0\ : in STD_LOGIC;
    \reg_out_reg[14]_1\ : in STD_LOGIC;
    \reg_out_reg[15]\ : in STD_LOGIC;
    \reg_out_reg[15]_0\ : in STD_LOGIC;
    \reg_out_reg[15]_1\ : in STD_LOGIC;
    \reg_out_reg[16]\ : in STD_LOGIC;
    \reg_out_reg[16]_0\ : in STD_LOGIC;
    \reg_out_reg[16]_1\ : in STD_LOGIC;
    \reg_out_reg[17]\ : in STD_LOGIC;
    \reg_out_reg[17]_0\ : in STD_LOGIC;
    \reg_out_reg[17]_1\ : in STD_LOGIC;
    \reg_out_reg[18]\ : in STD_LOGIC;
    \reg_out_reg[18]_0\ : in STD_LOGIC;
    \reg_out_reg[18]_1\ : in STD_LOGIC;
    \reg_out_reg[19]\ : in STD_LOGIC;
    \reg_out_reg[19]_0\ : in STD_LOGIC;
    \reg_out_reg[19]_1\ : in STD_LOGIC;
    \reg_out_reg[20]\ : in STD_LOGIC;
    \reg_out_reg[20]_0\ : in STD_LOGIC;
    \reg_out_reg[20]_1\ : in STD_LOGIC;
    \reg_out_reg[21]\ : in STD_LOGIC;
    \reg_out_reg[21]_0\ : in STD_LOGIC;
    \reg_out_reg[21]_1\ : in STD_LOGIC;
    \reg_out_reg[22]\ : in STD_LOGIC;
    \reg_out_reg[22]_0\ : in STD_LOGIC;
    \reg_out_reg[22]_1\ : in STD_LOGIC;
    \reg_out_reg[23]\ : in STD_LOGIC;
    \reg_out_reg[23]_0\ : in STD_LOGIC;
    \reg_out_reg[23]_1\ : in STD_LOGIC;
    \reg_out_reg[24]\ : in STD_LOGIC;
    \reg_out_reg[24]_0\ : in STD_LOGIC;
    \reg_out_reg[24]_1\ : in STD_LOGIC;
    \reg_out_reg[25]\ : in STD_LOGIC;
    \reg_out_reg[25]_0\ : in STD_LOGIC;
    \reg_out_reg[25]_1\ : in STD_LOGIC;
    \reg_out_reg[26]\ : in STD_LOGIC;
    \reg_out_reg[26]_0\ : in STD_LOGIC;
    \reg_out_reg[26]_1\ : in STD_LOGIC;
    \reg_out_reg[27]\ : in STD_LOGIC;
    \reg_out_reg[27]_0\ : in STD_LOGIC;
    \reg_out_reg[27]_1\ : in STD_LOGIC;
    \reg_out_reg[28]\ : in STD_LOGIC;
    \reg_out_reg[28]_0\ : in STD_LOGIC;
    \reg_out_reg[28]_1\ : in STD_LOGIC;
    \reg_out_reg[29]\ : in STD_LOGIC;
    \reg_out_reg[29]_0\ : in STD_LOGIC;
    \reg_out_reg[29]_1\ : in STD_LOGIC;
    \reg_out_reg[30]\ : in STD_LOGIC;
    \reg_out_reg[30]_0\ : in STD_LOGIC;
    \reg_out_reg[30]_1\ : in STD_LOGIC;
    \reg_out_reg[31]_0\ : in STD_LOGIC;
    \reg_out_reg[31]_1\ : in STD_LOGIC;
    \reg_out_reg[31]_2\ : in STD_LOGIC;
    reg_out1 : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \reg_sh_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    latched_store_reg : in STD_LOGIC;
    latched_store_reg_0 : in STD_LOGIC;
    latched_store_reg_1 : in STD_LOGIC;
    mem_do_rinst_reg_3 : in STD_LOGIC;
    mem_do_rinst_reg_4 : in STD_LOGIC;
    mem_do_rinst_reg_5 : in STD_LOGIC;
    mem_do_rinst_reg_6 : in STD_LOGIC;
    \cpu_state_reg[6]\ : in STD_LOGIC;
    instr_rdinstrh : in STD_LOGIC;
    instr_rdcycle : in STD_LOGIC;
    instr_rdinstr : in STD_LOGIC;
    instr_rdcycleh : in STD_LOGIC;
    mem_do_rinst_reg_7 : in STD_LOGIC;
    mem_do_rinst_reg_8 : in STD_LOGIC;
    mem_do_rinst_reg_9 : in STD_LOGIC;
    instr_lui : in STD_LOGIC;
    \rd0__0_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    instr_ecall_ebreak : in STD_LOGIC;
    pcpi_timeout : in STD_LOGIC;
    \cpu_state_reg[0]_2\ : in STD_LOGIC;
    \cpu_state_reg[7]_0\ : in STD_LOGIC;
    instr_slti : in STD_LOGIC;
    instr_sw : in STD_LOGIC;
    instr_bgeu : in STD_LOGIC;
    instr_beq : in STD_LOGIC;
    instr_bne : in STD_LOGIC;
    instr_bge : in STD_LOGIC;
    instr_lhu : in STD_LOGIC;
    instr_lbu : in STD_LOGIC;
    instr_lw : in STD_LOGIC;
    instr_slli : in STD_LOGIC;
    instr_sll : in STD_LOGIC;
    instr_sh : in STD_LOGIC;
    instr_lh : in STD_LOGIC;
    instr_add : in STD_LOGIC;
    instr_bltu : in STD_LOGIC;
    instr_sra : in STD_LOGIC;
    instr_srl : in STD_LOGIC;
    instr_srai : in STD_LOGIC;
    instr_srli : in STD_LOGIC;
    instr_or : in STD_LOGIC;
    instr_ori : in STD_LOGIC;
    instr_jal : in STD_LOGIC;
    instr_auipc : in STD_LOGIC;
    instr_lb : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    instr_andi : in STD_LOGIC;
    instr_sb : in STD_LOGIC;
    instr_blt : in STD_LOGIC;
    instr_and : in STD_LOGIC;
    instr_sltiu : in STD_LOGIC;
    instr_addi : in STD_LOGIC;
    instr_slt : in STD_LOGIC;
    instr_sltu : in STD_LOGIC;
    instr_xor : in STD_LOGIC;
    instr_xori : in STD_LOGIC;
    \decoded_rs2__0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \reg_op1_reg[19]_i_5_0\ : in STD_LOGIC;
    \reg_op1_reg[19]_i_5_1\ : in STD_LOGIC;
    \reg_op1_reg[19]_i_5_2\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32_pcpi_fast_mul;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32_pcpi_fast_mul is
  signal active : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \active[0]_i_4_n_0\ : STD_LOGIC;
  signal \active[0]_i_5_n_0\ : STD_LOGIC;
  signal \cpu_state[6]_i_2_n_0\ : STD_LOGIC;
  signal \cpu_state[7]_i_5_n_0\ : STD_LOGIC;
  signal \^decoded_rs2_reg[4]\ : STD_LOGIC;
  signal instr_any_mulh : STD_LOGIC;
  signal \^instr_jal_reg\ : STD_LOGIC;
  signal \^instr_jalr_reg\ : STD_LOGIC;
  signal \^instr_lb_reg\ : STD_LOGIC;
  signal instr_mulh1 : STD_LOGIC;
  signal \^instr_or_reg\ : STD_LOGIC;
  signal \^instr_rdinstr_reg\ : STD_LOGIC;
  signal \^instr_sll_reg\ : STD_LOGIC;
  signal \^instr_slti_reg\ : STD_LOGIC;
  signal \^instr_sra_reg\ : STD_LOGIC;
  signal \^instr_srai_reg\ : STD_LOGIC;
  signal \^instr_srli_reg\ : STD_LOGIC;
  signal \^instr_xor_reg\ : STD_LOGIC;
  signal \^is_lui_auipc_jal_reg\ : STD_LOGIC;
  signal \^mem_do_prefetch_reg\ : STD_LOGIC;
  signal mem_do_rinst5_out : STD_LOGIC;
  signal mem_do_rinst_i_3_n_0 : STD_LOGIC;
  signal mem_do_rinst_i_9_n_0 : STD_LOGIC;
  signal \^mem_state_reg[0]\ : STD_LOGIC;
  signal \^mem_valid_reg\ : STD_LOGIC;
  signal pcpi_insn_valid1 : STD_LOGIC;
  signal pcpi_int_rd : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \^pcpi_ready\ : STD_LOGIC;
  signal \^pcpi_rs1\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \^pcpi_rs2\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \rd0__0_n_100\ : STD_LOGIC;
  signal \rd0__0_n_101\ : STD_LOGIC;
  signal \rd0__0_n_102\ : STD_LOGIC;
  signal \rd0__0_n_103\ : STD_LOGIC;
  signal \rd0__0_n_104\ : STD_LOGIC;
  signal \rd0__0_n_105\ : STD_LOGIC;
  signal \rd0__0_n_106\ : STD_LOGIC;
  signal \rd0__0_n_107\ : STD_LOGIC;
  signal \rd0__0_n_108\ : STD_LOGIC;
  signal \rd0__0_n_109\ : STD_LOGIC;
  signal \rd0__0_n_110\ : STD_LOGIC;
  signal \rd0__0_n_111\ : STD_LOGIC;
  signal \rd0__0_n_112\ : STD_LOGIC;
  signal \rd0__0_n_113\ : STD_LOGIC;
  signal \rd0__0_n_114\ : STD_LOGIC;
  signal \rd0__0_n_115\ : STD_LOGIC;
  signal \rd0__0_n_116\ : STD_LOGIC;
  signal \rd0__0_n_117\ : STD_LOGIC;
  signal \rd0__0_n_118\ : STD_LOGIC;
  signal \rd0__0_n_119\ : STD_LOGIC;
  signal \rd0__0_n_120\ : STD_LOGIC;
  signal \rd0__0_n_121\ : STD_LOGIC;
  signal \rd0__0_n_122\ : STD_LOGIC;
  signal \rd0__0_n_123\ : STD_LOGIC;
  signal \rd0__0_n_124\ : STD_LOGIC;
  signal \rd0__0_n_125\ : STD_LOGIC;
  signal \rd0__0_n_126\ : STD_LOGIC;
  signal \rd0__0_n_127\ : STD_LOGIC;
  signal \rd0__0_n_128\ : STD_LOGIC;
  signal \rd0__0_n_129\ : STD_LOGIC;
  signal \rd0__0_n_130\ : STD_LOGIC;
  signal \rd0__0_n_131\ : STD_LOGIC;
  signal \rd0__0_n_132\ : STD_LOGIC;
  signal \rd0__0_n_133\ : STD_LOGIC;
  signal \rd0__0_n_134\ : STD_LOGIC;
  signal \rd0__0_n_135\ : STD_LOGIC;
  signal \rd0__0_n_136\ : STD_LOGIC;
  signal \rd0__0_n_137\ : STD_LOGIC;
  signal \rd0__0_n_138\ : STD_LOGIC;
  signal \rd0__0_n_139\ : STD_LOGIC;
  signal \rd0__0_n_140\ : STD_LOGIC;
  signal \rd0__0_n_141\ : STD_LOGIC;
  signal \rd0__0_n_142\ : STD_LOGIC;
  signal \rd0__0_n_143\ : STD_LOGIC;
  signal \rd0__0_n_144\ : STD_LOGIC;
  signal \rd0__0_n_145\ : STD_LOGIC;
  signal \rd0__0_n_146\ : STD_LOGIC;
  signal \rd0__0_n_147\ : STD_LOGIC;
  signal \rd0__0_n_148\ : STD_LOGIC;
  signal \rd0__0_n_149\ : STD_LOGIC;
  signal \rd0__0_n_150\ : STD_LOGIC;
  signal \rd0__0_n_151\ : STD_LOGIC;
  signal \rd0__0_n_152\ : STD_LOGIC;
  signal \rd0__0_n_153\ : STD_LOGIC;
  signal \rd0__0_n_58\ : STD_LOGIC;
  signal \rd0__0_n_59\ : STD_LOGIC;
  signal \rd0__0_n_60\ : STD_LOGIC;
  signal \rd0__0_n_61\ : STD_LOGIC;
  signal \rd0__0_n_62\ : STD_LOGIC;
  signal \rd0__0_n_63\ : STD_LOGIC;
  signal \rd0__0_n_64\ : STD_LOGIC;
  signal \rd0__0_n_65\ : STD_LOGIC;
  signal \rd0__0_n_66\ : STD_LOGIC;
  signal \rd0__0_n_67\ : STD_LOGIC;
  signal \rd0__0_n_68\ : STD_LOGIC;
  signal \rd0__0_n_69\ : STD_LOGIC;
  signal \rd0__0_n_70\ : STD_LOGIC;
  signal \rd0__0_n_71\ : STD_LOGIC;
  signal \rd0__0_n_72\ : STD_LOGIC;
  signal \rd0__0_n_73\ : STD_LOGIC;
  signal \rd0__0_n_74\ : STD_LOGIC;
  signal \rd0__0_n_75\ : STD_LOGIC;
  signal \rd0__0_n_76\ : STD_LOGIC;
  signal \rd0__0_n_77\ : STD_LOGIC;
  signal \rd0__0_n_78\ : STD_LOGIC;
  signal \rd0__0_n_79\ : STD_LOGIC;
  signal \rd0__0_n_80\ : STD_LOGIC;
  signal \rd0__0_n_81\ : STD_LOGIC;
  signal \rd0__0_n_82\ : STD_LOGIC;
  signal \rd0__0_n_83\ : STD_LOGIC;
  signal \rd0__0_n_84\ : STD_LOGIC;
  signal \rd0__0_n_85\ : STD_LOGIC;
  signal \rd0__0_n_86\ : STD_LOGIC;
  signal \rd0__0_n_87\ : STD_LOGIC;
  signal \rd0__0_n_88\ : STD_LOGIC;
  signal \rd0__0_n_89\ : STD_LOGIC;
  signal \rd0__0_n_90\ : STD_LOGIC;
  signal \rd0__0_n_91\ : STD_LOGIC;
  signal \rd0__0_n_92\ : STD_LOGIC;
  signal \rd0__0_n_93\ : STD_LOGIC;
  signal \rd0__0_n_94\ : STD_LOGIC;
  signal \rd0__0_n_95\ : STD_LOGIC;
  signal \rd0__0_n_96\ : STD_LOGIC;
  signal \rd0__0_n_97\ : STD_LOGIC;
  signal \rd0__0_n_98\ : STD_LOGIC;
  signal \rd0__0_n_99\ : STD_LOGIC;
  signal rd0_i_1_n_0 : STD_LOGIC;
  signal rd0_n_100 : STD_LOGIC;
  signal rd0_n_101 : STD_LOGIC;
  signal rd0_n_102 : STD_LOGIC;
  signal rd0_n_103 : STD_LOGIC;
  signal rd0_n_104 : STD_LOGIC;
  signal rd0_n_105 : STD_LOGIC;
  signal rd0_n_106 : STD_LOGIC;
  signal rd0_n_107 : STD_LOGIC;
  signal rd0_n_108 : STD_LOGIC;
  signal rd0_n_109 : STD_LOGIC;
  signal rd0_n_110 : STD_LOGIC;
  signal rd0_n_111 : STD_LOGIC;
  signal rd0_n_112 : STD_LOGIC;
  signal rd0_n_113 : STD_LOGIC;
  signal rd0_n_114 : STD_LOGIC;
  signal rd0_n_115 : STD_LOGIC;
  signal rd0_n_116 : STD_LOGIC;
  signal rd0_n_117 : STD_LOGIC;
  signal rd0_n_118 : STD_LOGIC;
  signal rd0_n_119 : STD_LOGIC;
  signal rd0_n_120 : STD_LOGIC;
  signal rd0_n_121 : STD_LOGIC;
  signal rd0_n_122 : STD_LOGIC;
  signal rd0_n_123 : STD_LOGIC;
  signal rd0_n_124 : STD_LOGIC;
  signal rd0_n_125 : STD_LOGIC;
  signal rd0_n_126 : STD_LOGIC;
  signal rd0_n_127 : STD_LOGIC;
  signal rd0_n_128 : STD_LOGIC;
  signal rd0_n_129 : STD_LOGIC;
  signal rd0_n_130 : STD_LOGIC;
  signal rd0_n_131 : STD_LOGIC;
  signal rd0_n_132 : STD_LOGIC;
  signal rd0_n_133 : STD_LOGIC;
  signal rd0_n_134 : STD_LOGIC;
  signal rd0_n_135 : STD_LOGIC;
  signal rd0_n_136 : STD_LOGIC;
  signal rd0_n_137 : STD_LOGIC;
  signal rd0_n_138 : STD_LOGIC;
  signal rd0_n_139 : STD_LOGIC;
  signal rd0_n_140 : STD_LOGIC;
  signal rd0_n_141 : STD_LOGIC;
  signal rd0_n_142 : STD_LOGIC;
  signal rd0_n_143 : STD_LOGIC;
  signal rd0_n_144 : STD_LOGIC;
  signal rd0_n_145 : STD_LOGIC;
  signal rd0_n_146 : STD_LOGIC;
  signal rd0_n_147 : STD_LOGIC;
  signal rd0_n_148 : STD_LOGIC;
  signal rd0_n_149 : STD_LOGIC;
  signal rd0_n_150 : STD_LOGIC;
  signal rd0_n_151 : STD_LOGIC;
  signal rd0_n_152 : STD_LOGIC;
  signal rd0_n_153 : STD_LOGIC;
  signal rd0_n_58 : STD_LOGIC;
  signal rd0_n_59 : STD_LOGIC;
  signal rd0_n_60 : STD_LOGIC;
  signal rd0_n_61 : STD_LOGIC;
  signal rd0_n_62 : STD_LOGIC;
  signal rd0_n_63 : STD_LOGIC;
  signal rd0_n_64 : STD_LOGIC;
  signal rd0_n_65 : STD_LOGIC;
  signal rd0_n_66 : STD_LOGIC;
  signal rd0_n_67 : STD_LOGIC;
  signal rd0_n_68 : STD_LOGIC;
  signal rd0_n_69 : STD_LOGIC;
  signal rd0_n_70 : STD_LOGIC;
  signal rd0_n_71 : STD_LOGIC;
  signal rd0_n_72 : STD_LOGIC;
  signal rd0_n_73 : STD_LOGIC;
  signal rd0_n_74 : STD_LOGIC;
  signal rd0_n_75 : STD_LOGIC;
  signal rd0_n_76 : STD_LOGIC;
  signal rd0_n_77 : STD_LOGIC;
  signal rd0_n_78 : STD_LOGIC;
  signal rd0_n_79 : STD_LOGIC;
  signal rd0_n_80 : STD_LOGIC;
  signal rd0_n_81 : STD_LOGIC;
  signal rd0_n_82 : STD_LOGIC;
  signal rd0_n_83 : STD_LOGIC;
  signal rd0_n_84 : STD_LOGIC;
  signal rd0_n_85 : STD_LOGIC;
  signal rd0_n_86 : STD_LOGIC;
  signal rd0_n_87 : STD_LOGIC;
  signal rd0_n_88 : STD_LOGIC;
  signal rd0_n_89 : STD_LOGIC;
  signal rd0_n_90 : STD_LOGIC;
  signal rd0_n_91 : STD_LOGIC;
  signal rd0_n_92 : STD_LOGIC;
  signal rd0_n_93 : STD_LOGIC;
  signal rd0_n_94 : STD_LOGIC;
  signal rd0_n_95 : STD_LOGIC;
  signal rd0_n_96 : STD_LOGIC;
  signal rd0_n_97 : STD_LOGIC;
  signal rd0_n_98 : STD_LOGIC;
  signal rd0_n_99 : STD_LOGIC;
  signal \rd_reg[0]__0_n_0\ : STD_LOGIC;
  signal \rd_reg[10]__0_n_0\ : STD_LOGIC;
  signal \rd_reg[11]__0_n_0\ : STD_LOGIC;
  signal \rd_reg[12]__0_n_0\ : STD_LOGIC;
  signal \rd_reg[13]__0_n_0\ : STD_LOGIC;
  signal \rd_reg[14]__0_n_0\ : STD_LOGIC;
  signal \rd_reg[15]__0_n_0\ : STD_LOGIC;
  signal \rd_reg[16]__0_n_0\ : STD_LOGIC;
  signal \rd_reg[1]__0_n_0\ : STD_LOGIC;
  signal \rd_reg[2]__0_n_0\ : STD_LOGIC;
  signal \rd_reg[3]__0_n_0\ : STD_LOGIC;
  signal \rd_reg[4]__0_n_0\ : STD_LOGIC;
  signal \rd_reg[5]__0_n_0\ : STD_LOGIC;
  signal \rd_reg[6]__0_n_0\ : STD_LOGIC;
  signal \rd_reg[7]__0_n_0\ : STD_LOGIC;
  signal \rd_reg[8]__0_n_0\ : STD_LOGIC;
  signal \rd_reg[9]__0_n_0\ : STD_LOGIC;
  signal \rd_reg__0_n_100\ : STD_LOGIC;
  signal \rd_reg__0_n_101\ : STD_LOGIC;
  signal \rd_reg__0_n_102\ : STD_LOGIC;
  signal \rd_reg__0_n_103\ : STD_LOGIC;
  signal \rd_reg__0_n_104\ : STD_LOGIC;
  signal \rd_reg__0_n_105\ : STD_LOGIC;
  signal \rd_reg__0_n_58\ : STD_LOGIC;
  signal \rd_reg__0_n_59\ : STD_LOGIC;
  signal \rd_reg__0_n_60\ : STD_LOGIC;
  signal \rd_reg__0_n_61\ : STD_LOGIC;
  signal \rd_reg__0_n_62\ : STD_LOGIC;
  signal \rd_reg__0_n_63\ : STD_LOGIC;
  signal \rd_reg__0_n_64\ : STD_LOGIC;
  signal \rd_reg__0_n_65\ : STD_LOGIC;
  signal \rd_reg__0_n_66\ : STD_LOGIC;
  signal \rd_reg__0_n_67\ : STD_LOGIC;
  signal \rd_reg__0_n_68\ : STD_LOGIC;
  signal \rd_reg__0_n_69\ : STD_LOGIC;
  signal \rd_reg__0_n_70\ : STD_LOGIC;
  signal \rd_reg__0_n_71\ : STD_LOGIC;
  signal \rd_reg__0_n_72\ : STD_LOGIC;
  signal \rd_reg__0_n_73\ : STD_LOGIC;
  signal \rd_reg__0_n_74\ : STD_LOGIC;
  signal \rd_reg__0_n_75\ : STD_LOGIC;
  signal \rd_reg__0_n_76\ : STD_LOGIC;
  signal \rd_reg__0_n_77\ : STD_LOGIC;
  signal \rd_reg__0_n_78\ : STD_LOGIC;
  signal \rd_reg__0_n_79\ : STD_LOGIC;
  signal \rd_reg__0_n_80\ : STD_LOGIC;
  signal \rd_reg__0_n_81\ : STD_LOGIC;
  signal \rd_reg__0_n_82\ : STD_LOGIC;
  signal \rd_reg__0_n_83\ : STD_LOGIC;
  signal \rd_reg__0_n_84\ : STD_LOGIC;
  signal \rd_reg__0_n_85\ : STD_LOGIC;
  signal \rd_reg__0_n_86\ : STD_LOGIC;
  signal \rd_reg__0_n_87\ : STD_LOGIC;
  signal \rd_reg__0_n_88\ : STD_LOGIC;
  signal \rd_reg__0_n_89\ : STD_LOGIC;
  signal \rd_reg__0_n_90\ : STD_LOGIC;
  signal \rd_reg__0_n_91\ : STD_LOGIC;
  signal \rd_reg__0_n_92\ : STD_LOGIC;
  signal \rd_reg__0_n_93\ : STD_LOGIC;
  signal \rd_reg__0_n_94\ : STD_LOGIC;
  signal \rd_reg__0_n_95\ : STD_LOGIC;
  signal \rd_reg__0_n_96\ : STD_LOGIC;
  signal \rd_reg__0_n_97\ : STD_LOGIC;
  signal \rd_reg__0_n_98\ : STD_LOGIC;
  signal \rd_reg__0_n_99\ : STD_LOGIC;
  signal \rd_reg__1\ : STD_LOGIC_VECTOR ( 63 downto 16 );
  signal rd_reg_i_1_n_0 : STD_LOGIC;
  signal \rd_reg_n_0_[0]\ : STD_LOGIC;
  signal \rd_reg_n_0_[10]\ : STD_LOGIC;
  signal \rd_reg_n_0_[11]\ : STD_LOGIC;
  signal \rd_reg_n_0_[12]\ : STD_LOGIC;
  signal \rd_reg_n_0_[13]\ : STD_LOGIC;
  signal \rd_reg_n_0_[14]\ : STD_LOGIC;
  signal \rd_reg_n_0_[15]\ : STD_LOGIC;
  signal \rd_reg_n_0_[16]\ : STD_LOGIC;
  signal \rd_reg_n_0_[1]\ : STD_LOGIC;
  signal \rd_reg_n_0_[2]\ : STD_LOGIC;
  signal \rd_reg_n_0_[3]\ : STD_LOGIC;
  signal \rd_reg_n_0_[4]\ : STD_LOGIC;
  signal \rd_reg_n_0_[5]\ : STD_LOGIC;
  signal \rd_reg_n_0_[6]\ : STD_LOGIC;
  signal \rd_reg_n_0_[7]\ : STD_LOGIC;
  signal \rd_reg_n_0_[8]\ : STD_LOGIC;
  signal \rd_reg_n_0_[9]\ : STD_LOGIC;
  signal rd_reg_n_100 : STD_LOGIC;
  signal rd_reg_n_101 : STD_LOGIC;
  signal rd_reg_n_102 : STD_LOGIC;
  signal rd_reg_n_103 : STD_LOGIC;
  signal rd_reg_n_104 : STD_LOGIC;
  signal rd_reg_n_105 : STD_LOGIC;
  signal rd_reg_n_58 : STD_LOGIC;
  signal rd_reg_n_59 : STD_LOGIC;
  signal rd_reg_n_60 : STD_LOGIC;
  signal rd_reg_n_61 : STD_LOGIC;
  signal rd_reg_n_62 : STD_LOGIC;
  signal rd_reg_n_63 : STD_LOGIC;
  signal rd_reg_n_64 : STD_LOGIC;
  signal rd_reg_n_65 : STD_LOGIC;
  signal rd_reg_n_66 : STD_LOGIC;
  signal rd_reg_n_67 : STD_LOGIC;
  signal rd_reg_n_68 : STD_LOGIC;
  signal rd_reg_n_69 : STD_LOGIC;
  signal rd_reg_n_70 : STD_LOGIC;
  signal rd_reg_n_71 : STD_LOGIC;
  signal rd_reg_n_72 : STD_LOGIC;
  signal rd_reg_n_73 : STD_LOGIC;
  signal rd_reg_n_74 : STD_LOGIC;
  signal rd_reg_n_75 : STD_LOGIC;
  signal rd_reg_n_76 : STD_LOGIC;
  signal rd_reg_n_77 : STD_LOGIC;
  signal rd_reg_n_78 : STD_LOGIC;
  signal rd_reg_n_79 : STD_LOGIC;
  signal rd_reg_n_80 : STD_LOGIC;
  signal rd_reg_n_81 : STD_LOGIC;
  signal rd_reg_n_82 : STD_LOGIC;
  signal rd_reg_n_83 : STD_LOGIC;
  signal rd_reg_n_84 : STD_LOGIC;
  signal rd_reg_n_85 : STD_LOGIC;
  signal rd_reg_n_86 : STD_LOGIC;
  signal rd_reg_n_87 : STD_LOGIC;
  signal rd_reg_n_88 : STD_LOGIC;
  signal rd_reg_n_89 : STD_LOGIC;
  signal rd_reg_n_90 : STD_LOGIC;
  signal rd_reg_n_91 : STD_LOGIC;
  signal rd_reg_n_92 : STD_LOGIC;
  signal rd_reg_n_93 : STD_LOGIC;
  signal rd_reg_n_94 : STD_LOGIC;
  signal rd_reg_n_95 : STD_LOGIC;
  signal rd_reg_n_96 : STD_LOGIC;
  signal rd_reg_n_97 : STD_LOGIC;
  signal rd_reg_n_98 : STD_LOGIC;
  signal rd_reg_n_99 : STD_LOGIC;
  signal \reg_op1[0]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[0]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[0]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1[0]_i_6_n_0\ : STD_LOGIC;
  signal \reg_op1[0]_i_7_n_0\ : STD_LOGIC;
  signal \reg_op1[0]_i_8_n_0\ : STD_LOGIC;
  signal \reg_op1[0]_i_9_n_0\ : STD_LOGIC;
  signal \reg_op1[10]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[10]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[10]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[10]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1[11]_i_10_n_0\ : STD_LOGIC;
  signal \reg_op1[11]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[11]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[11]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[11]_i_6_n_0\ : STD_LOGIC;
  signal \reg_op1[11]_i_7_n_0\ : STD_LOGIC;
  signal \reg_op1[11]_i_8_n_0\ : STD_LOGIC;
  signal \reg_op1[11]_i_9_n_0\ : STD_LOGIC;
  signal \reg_op1[12]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[12]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[12]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[12]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1[13]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[13]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[13]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[13]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1[14]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[14]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[14]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[14]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1[15]_i_10_n_0\ : STD_LOGIC;
  signal \reg_op1[15]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[15]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[15]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[15]_i_6_n_0\ : STD_LOGIC;
  signal \reg_op1[15]_i_7_n_0\ : STD_LOGIC;
  signal \reg_op1[15]_i_8_n_0\ : STD_LOGIC;
  signal \reg_op1[15]_i_9_n_0\ : STD_LOGIC;
  signal \reg_op1[16]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[16]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[16]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[16]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1[19]_i_10_n_0\ : STD_LOGIC;
  signal \reg_op1[19]_i_7_n_0\ : STD_LOGIC;
  signal \reg_op1[19]_i_8_n_0\ : STD_LOGIC;
  signal \reg_op1[19]_i_9_n_0\ : STD_LOGIC;
  signal \reg_op1[1]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[1]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[1]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[2]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[2]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[2]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[31]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[31]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1[3]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[3]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[3]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[4]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[4]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[4]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[4]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1[5]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[5]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[5]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[5]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1[6]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[6]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[6]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[6]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1[7]_i_10_n_0\ : STD_LOGIC;
  signal \reg_op1[7]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[7]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[7]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[7]_i_6_n_0\ : STD_LOGIC;
  signal \reg_op1[7]_i_7_n_0\ : STD_LOGIC;
  signal \reg_op1[7]_i_8_n_0\ : STD_LOGIC;
  signal \reg_op1[7]_i_9_n_0\ : STD_LOGIC;
  signal \reg_op1[8]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[8]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[8]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[8]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1[9]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[9]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[9]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[9]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1_reg[0]_i_4_n_1\ : STD_LOGIC;
  signal \reg_op1_reg[0]_i_4_n_2\ : STD_LOGIC;
  signal \reg_op1_reg[0]_i_4_n_3\ : STD_LOGIC;
  signal \reg_op1_reg[0]_i_4_n_4\ : STD_LOGIC;
  signal \reg_op1_reg[0]_i_4_n_5\ : STD_LOGIC;
  signal \reg_op1_reg[0]_i_4_n_6\ : STD_LOGIC;
  signal \reg_op1_reg[0]_i_4_n_7\ : STD_LOGIC;
  signal \reg_op1_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1_reg[11]_i_5_n_1\ : STD_LOGIC;
  signal \reg_op1_reg[11]_i_5_n_2\ : STD_LOGIC;
  signal \reg_op1_reg[11]_i_5_n_3\ : STD_LOGIC;
  signal \reg_op1_reg[11]_i_5_n_4\ : STD_LOGIC;
  signal \reg_op1_reg[11]_i_5_n_5\ : STD_LOGIC;
  signal \reg_op1_reg[11]_i_5_n_6\ : STD_LOGIC;
  signal \reg_op1_reg[11]_i_5_n_7\ : STD_LOGIC;
  signal \reg_op1_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1_reg[15]_i_5_n_1\ : STD_LOGIC;
  signal \reg_op1_reg[15]_i_5_n_2\ : STD_LOGIC;
  signal \reg_op1_reg[15]_i_5_n_3\ : STD_LOGIC;
  signal \reg_op1_reg[15]_i_5_n_4\ : STD_LOGIC;
  signal \reg_op1_reg[15]_i_5_n_5\ : STD_LOGIC;
  signal \reg_op1_reg[15]_i_5_n_6\ : STD_LOGIC;
  signal \reg_op1_reg[15]_i_5_n_7\ : STD_LOGIC;
  signal \^reg_op1_reg[18]\ : STD_LOGIC;
  signal \^reg_op1_reg[19]\ : STD_LOGIC;
  signal \reg_op1_reg[19]_i_5_n_1\ : STD_LOGIC;
  signal \reg_op1_reg[19]_i_5_n_2\ : STD_LOGIC;
  signal \reg_op1_reg[19]_i_5_n_3\ : STD_LOGIC;
  signal \reg_op1_reg[19]_i_5_n_7\ : STD_LOGIC;
  signal \^reg_op1_reg[20]\ : STD_LOGIC;
  signal \reg_op1_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1_reg[7]_i_5_n_1\ : STD_LOGIC;
  signal \reg_op1_reg[7]_i_5_n_2\ : STD_LOGIC;
  signal \reg_op1_reg[7]_i_5_n_3\ : STD_LOGIC;
  signal \reg_op1_reg[7]_i_5_n_4\ : STD_LOGIC;
  signal \reg_op1_reg[7]_i_5_n_5\ : STD_LOGIC;
  signal \reg_op1_reg[7]_i_5_n_6\ : STD_LOGIC;
  signal \reg_op1_reg[7]_i_5_n_7\ : STD_LOGIC;
  signal \reg_op2[31]_i_11_n_0\ : STD_LOGIC;
  signal \reg_op2[31]_i_12_n_0\ : STD_LOGIC;
  signal \reg_op2[31]_i_13_n_0\ : STD_LOGIC;
  signal \reg_out[11]_i_10_n_0\ : STD_LOGIC;
  signal \reg_out[11]_i_11_n_0\ : STD_LOGIC;
  signal \reg_out[11]_i_8_n_0\ : STD_LOGIC;
  signal \reg_out[11]_i_9_n_0\ : STD_LOGIC;
  signal \reg_out[15]_i_10_n_0\ : STD_LOGIC;
  signal \reg_out[15]_i_11_n_0\ : STD_LOGIC;
  signal \reg_out[15]_i_12_n_0\ : STD_LOGIC;
  signal \reg_out[15]_i_13_n_0\ : STD_LOGIC;
  signal \reg_out[19]_i_10_n_0\ : STD_LOGIC;
  signal \reg_out[19]_i_11_n_0\ : STD_LOGIC;
  signal \reg_out[19]_i_12_n_0\ : STD_LOGIC;
  signal \reg_out[19]_i_13_n_0\ : STD_LOGIC;
  signal \reg_out[19]_i_14_n_0\ : STD_LOGIC;
  signal \reg_out[19]_i_15_n_0\ : STD_LOGIC;
  signal \reg_out[19]_i_9_n_0\ : STD_LOGIC;
  signal \reg_out[23]_i_10_n_0\ : STD_LOGIC;
  signal \reg_out[23]_i_11_n_0\ : STD_LOGIC;
  signal \reg_out[23]_i_12_n_0\ : STD_LOGIC;
  signal \reg_out[23]_i_13_n_0\ : STD_LOGIC;
  signal \reg_out[23]_i_14_n_0\ : STD_LOGIC;
  signal \reg_out[23]_i_15_n_0\ : STD_LOGIC;
  signal \reg_out[23]_i_16_n_0\ : STD_LOGIC;
  signal \reg_out[23]_i_9_n_0\ : STD_LOGIC;
  signal \reg_out[27]_i_10_n_0\ : STD_LOGIC;
  signal \reg_out[27]_i_11_n_0\ : STD_LOGIC;
  signal \reg_out[27]_i_12_n_0\ : STD_LOGIC;
  signal \reg_out[27]_i_13_n_0\ : STD_LOGIC;
  signal \reg_out[27]_i_14_n_0\ : STD_LOGIC;
  signal \reg_out[27]_i_15_n_0\ : STD_LOGIC;
  signal \reg_out[27]_i_16_n_0\ : STD_LOGIC;
  signal \reg_out[27]_i_9_n_0\ : STD_LOGIC;
  signal \reg_out[31]_i_14_n_0\ : STD_LOGIC;
  signal \reg_out[31]_i_15_n_0\ : STD_LOGIC;
  signal \reg_out[31]_i_16_n_0\ : STD_LOGIC;
  signal \reg_out[31]_i_17_n_0\ : STD_LOGIC;
  signal \reg_out[31]_i_18_n_0\ : STD_LOGIC;
  signal \reg_out[31]_i_19_n_0\ : STD_LOGIC;
  signal \reg_out[31]_i_20_n_0\ : STD_LOGIC;
  signal \reg_out[31]_i_21_n_0\ : STD_LOGIC;
  signal \reg_out[3]_i_10_n_0\ : STD_LOGIC;
  signal \reg_out[3]_i_7_n_0\ : STD_LOGIC;
  signal \reg_out[3]_i_8_n_0\ : STD_LOGIC;
  signal \reg_out[3]_i_9_n_0\ : STD_LOGIC;
  signal \reg_out[7]_i_10_n_0\ : STD_LOGIC;
  signal \reg_out[7]_i_11_n_0\ : STD_LOGIC;
  signal \reg_out[7]_i_8_n_0\ : STD_LOGIC;
  signal \reg_out[7]_i_9_n_0\ : STD_LOGIC;
  signal \reg_out_reg[11]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out_reg[11]_i_6_n_1\ : STD_LOGIC;
  signal \reg_out_reg[11]_i_6_n_2\ : STD_LOGIC;
  signal \reg_out_reg[11]_i_6_n_3\ : STD_LOGIC;
  signal \reg_out_reg[15]_i_8_n_0\ : STD_LOGIC;
  signal \reg_out_reg[15]_i_8_n_1\ : STD_LOGIC;
  signal \reg_out_reg[15]_i_8_n_2\ : STD_LOGIC;
  signal \reg_out_reg[15]_i_8_n_3\ : STD_LOGIC;
  signal \reg_out_reg[19]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out_reg[19]_i_6_n_1\ : STD_LOGIC;
  signal \reg_out_reg[19]_i_6_n_2\ : STD_LOGIC;
  signal \reg_out_reg[19]_i_6_n_3\ : STD_LOGIC;
  signal \reg_out_reg[19]_i_7_n_0\ : STD_LOGIC;
  signal \reg_out_reg[19]_i_7_n_1\ : STD_LOGIC;
  signal \reg_out_reg[19]_i_7_n_2\ : STD_LOGIC;
  signal \reg_out_reg[19]_i_7_n_3\ : STD_LOGIC;
  signal \reg_out_reg[23]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out_reg[23]_i_6_n_1\ : STD_LOGIC;
  signal \reg_out_reg[23]_i_6_n_2\ : STD_LOGIC;
  signal \reg_out_reg[23]_i_6_n_3\ : STD_LOGIC;
  signal \reg_out_reg[23]_i_7_n_0\ : STD_LOGIC;
  signal \reg_out_reg[23]_i_7_n_1\ : STD_LOGIC;
  signal \reg_out_reg[23]_i_7_n_2\ : STD_LOGIC;
  signal \reg_out_reg[23]_i_7_n_3\ : STD_LOGIC;
  signal \reg_out_reg[27]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out_reg[27]_i_6_n_1\ : STD_LOGIC;
  signal \reg_out_reg[27]_i_6_n_2\ : STD_LOGIC;
  signal \reg_out_reg[27]_i_6_n_3\ : STD_LOGIC;
  signal \reg_out_reg[27]_i_7_n_0\ : STD_LOGIC;
  signal \reg_out_reg[27]_i_7_n_1\ : STD_LOGIC;
  signal \reg_out_reg[27]_i_7_n_2\ : STD_LOGIC;
  signal \reg_out_reg[27]_i_7_n_3\ : STD_LOGIC;
  signal \reg_out_reg[31]_i_10_n_0\ : STD_LOGIC;
  signal \reg_out_reg[31]_i_10_n_1\ : STD_LOGIC;
  signal \reg_out_reg[31]_i_10_n_2\ : STD_LOGIC;
  signal \reg_out_reg[31]_i_10_n_3\ : STD_LOGIC;
  signal \reg_out_reg[31]_i_9_n_1\ : STD_LOGIC;
  signal \reg_out_reg[31]_i_9_n_2\ : STD_LOGIC;
  signal \reg_out_reg[31]_i_9_n_3\ : STD_LOGIC;
  signal \reg_out_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out_reg[3]_i_4_n_1\ : STD_LOGIC;
  signal \reg_out_reg[3]_i_4_n_2\ : STD_LOGIC;
  signal \reg_out_reg[3]_i_4_n_3\ : STD_LOGIC;
  signal \reg_out_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out_reg[7]_i_4_n_1\ : STD_LOGIC;
  signal \reg_out_reg[7]_i_4_n_2\ : STD_LOGIC;
  signal \reg_out_reg[7]_i_4_n_3\ : STD_LOGIC;
  signal \^reg_sh_reg[4]\ : STD_LOGIC;
  signal \^resetn_0\ : STD_LOGIC;
  signal \^resetn_1\ : STD_LOGIC;
  signal \^resetn_2\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^resetn_4\ : STD_LOGIC;
  signal rs10 : STD_LOGIC;
  signal shift_out : STD_LOGIC;
  signal NLW_rd0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_rd0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_rd0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_rd0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_rd0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_rd0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_rd0_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_rd0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_rd0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rd0__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_rd0__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_rd0__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_rd0__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_rd0__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_rd0__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_rd0__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_rd0__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_rd0__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_rd_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_rd_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_rd_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_rd_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_rd_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_rd_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_rd_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_rd_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_rd_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_rd_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_rd_reg__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_rd_reg__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_rd_reg__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_rd_reg__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_rd_reg__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_rd_reg__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_rd_reg__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_rd_reg__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_rd_reg__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rd_reg__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_reg_out_reg[31]_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cpu_state[7]_i_3\ : label is "soft_lutpair1";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of rd0 : label is "{SYNTH-10 {cell *THIS*} {string 16x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \rd0__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of rd_reg : label is "{SYNTH-10 {cell *THIS*} {string 16x16 4}}";
  attribute METHODOLOGY_DRC_VIOS of \rd_reg__0\ : label is "{SYNTH-10 {cell *THIS*} {string 18x16 4}}";
  attribute SOFT_HLUTNM of \reg_op1[0]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \reg_op1[10]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg_op1[11]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg_op1[12]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reg_op1[13]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \reg_op1[14]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \reg_op1[15]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reg_op1[16]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \reg_op1[30]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \reg_op1[31]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \reg_op1[31]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \reg_op1[3]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \reg_op1[4]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \reg_op1[5]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reg_op1[6]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reg_op1[7]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \reg_op1[8]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \reg_op1[9]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \reg_op1[9]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \reg_out[10]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \reg_out[11]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \reg_out[12]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \reg_out[13]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \reg_out[14]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \reg_out[15]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \reg_out[16]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \reg_out[17]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \reg_out[18]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \reg_out[19]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \reg_out[20]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \reg_out[21]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \reg_out[22]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \reg_out[23]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \reg_out[24]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \reg_out[25]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \reg_out[26]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \reg_out[27]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \reg_out[28]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \reg_out[29]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \reg_out[30]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \reg_out[31]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \reg_out[8]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \reg_out[9]_i_3\ : label is "soft_lutpair10";
begin
  \decoded_rs2_reg[4]\ <= \^decoded_rs2_reg[4]\;
  instr_jal_reg <= \^instr_jal_reg\;
  instr_jalr_reg <= \^instr_jalr_reg\;
  instr_lb_reg <= \^instr_lb_reg\;
  instr_or_reg <= \^instr_or_reg\;
  instr_rdinstr_reg <= \^instr_rdinstr_reg\;
  instr_sll_reg <= \^instr_sll_reg\;
  instr_slti_reg <= \^instr_slti_reg\;
  instr_sra_reg <= \^instr_sra_reg\;
  instr_srai_reg <= \^instr_srai_reg\;
  instr_srli_reg <= \^instr_srli_reg\;
  instr_xor_reg <= \^instr_xor_reg\;
  is_lui_auipc_jal_reg <= \^is_lui_auipc_jal_reg\;
  mem_do_prefetch_reg <= \^mem_do_prefetch_reg\;
  \mem_state_reg[0]\ <= \^mem_state_reg[0]\;
  mem_valid_reg <= \^mem_valid_reg\;
  pcpi_ready <= \^pcpi_ready\;
  pcpi_rs1(16 downto 0) <= \^pcpi_rs1\(16 downto 0);
  pcpi_rs2(16 downto 0) <= \^pcpi_rs2\(16 downto 0);
  \reg_op1_reg[18]\ <= \^reg_op1_reg[18]\;
  \reg_op1_reg[19]\ <= \^reg_op1_reg[19]\;
  \reg_op1_reg[20]\ <= \^reg_op1_reg[20]\;
  \reg_sh_reg[4]\ <= \^reg_sh_reg[4]\;
  resetn_0 <= \^resetn_0\;
  resetn_1 <= \^resetn_1\;
  resetn_2(0) <= \^resetn_2\(0);
  resetn_4 <= \^resetn_4\;
\active[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \rd_reg__0_0\(9),
      I1 => instr_mulh1,
      I2 => \^pcpi_ready\,
      I3 => active(0),
      O => rs10
    );
\active[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => SS(0),
      I1 => pcpi_insn_valid1,
      I2 => \rd_reg__0_0\(15),
      I3 => \rd_reg__0_0\(16),
      I4 => \rd_reg__0_0\(10),
      I5 => \active[0]_i_4_n_0\,
      O => instr_mulh1
    );
\active[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \rd_reg__0_0\(6),
      I1 => \rd_reg__0_0\(2),
      I2 => \rd_reg__0_0\(3),
      I3 => \active[0]_i_5_n_0\,
      O => pcpi_insn_valid1
    );
\active[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rd_reg__0_0\(13),
      I1 => \rd_reg__0_0\(14),
      I2 => \rd_reg__0_0\(11),
      I3 => \rd_reg__0_0\(12),
      O => \active[0]_i_4_n_0\
    );
\active[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \rd_reg__0_0\(4),
      I1 => \rd_reg__0_0\(5),
      I2 => \rd_reg__0_0\(0),
      I3 => \rd_reg__0_0\(1),
      O => \active[0]_i_5_n_0\
    );
\active_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rs10,
      Q => active(0),
      R => \^resetn_0\
    );
\active_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => active(0),
      Q => \^pcpi_ready\,
      R => \^resetn_0\
    );
\cpu_state[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF1F"
    )
        port map (
      I0 => \cpu_state[6]_i_2_n_0\,
      I1 => Q(5),
      I2 => resetn,
      I3 => \cpu_state_reg[6]\,
      I4 => Q(2),
      I5 => Q(3),
      O => resetn_3(0)
    );
\cpu_state[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000100000001"
    )
        port map (
      I0 => instr_rdinstrh,
      I1 => instr_rdcycle,
      I2 => instr_rdinstr,
      I3 => instr_rdcycleh,
      I4 => \^pcpi_ready\,
      I5 => \^instr_jalr_reg\,
      O => \cpu_state[6]_i_2_n_0\
    );
\cpu_state[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBAA"
    )
        port map (
      I0 => \cpu_state[7]_i_5_n_0\,
      I1 => \cpu_state_reg[0]\,
      I2 => \^resetn_1\,
      I3 => Q(3),
      I4 => \cpu_state_reg[0]_0\,
      I5 => \cpu_state_reg[0]_1\,
      O => E(0)
    );
\cpu_state[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^instr_jalr_reg\,
      I1 => resetn,
      I2 => Q(4),
      I3 => \^pcpi_ready\,
      O => resetn_3(1)
    );
\cpu_state[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA8AAAA"
    )
        port map (
      I0 => Q(4),
      I1 => \^pcpi_ready\,
      I2 => instr_ecall_ebreak,
      I3 => pcpi_timeout,
      I4 => \cpu_state_reg[0]_2\,
      I5 => \^instr_jalr_reg\,
      O => \cpu_state[7]_i_5_n_0\
    );
instr_jal_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => resetn,
      I1 => \^mem_state_reg[0]\,
      O => \^resetn_1\
    );
instr_jal_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => instr_jal_reg_0,
      I1 => mem_axi_rvalid,
      I2 => mem_axi_bvalid,
      O => \^mem_valid_reg\
    );
is_lui_auipc_jal_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => instr_jal,
      I1 => instr_auipc,
      I2 => instr_lui,
      O => \^instr_jal_reg\
    );
latched_store_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000002F"
    )
        port map (
      I0 => latched_store_reg,
      I1 => \^pcpi_ready\,
      I2 => latched_store_reg_0,
      I3 => Q(2),
      I4 => Q(0),
      I5 => latched_store_reg_1,
      O => \active_reg[1]_0\
    );
latched_store_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111011111110111"
    )
        port map (
      I0 => Q(6),
      I1 => Q(1),
      I2 => Q(4),
      I3 => latched_store_reg,
      I4 => \^pcpi_ready\,
      I5 => \^instr_jalr_reg\,
      O => \cpu_state_reg[7]\
    );
mem_do_rinst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF32323202"
    )
        port map (
      I0 => mem_do_rinst_reg_0,
      I1 => mem_do_rinst0,
      I2 => mem_do_rinst5_out,
      I3 => mem_do_rinst_i_3_n_0,
      I4 => mem_do_rinst_reg_1,
      I5 => mem_do_rinst_reg_2,
      O => mem_do_rinst_reg
    );
mem_do_rinst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF5454FF54"
    )
        port map (
      I0 => mem_do_rinst_reg_3,
      I1 => mem_do_rinst_reg_4,
      I2 => mem_do_rinst_reg_5,
      I3 => \^resetn_4\,
      I4 => mem_do_rinst_i_9_n_0,
      I5 => mem_do_rinst_reg_6,
      O => mem_do_rinst5_out
    );
mem_do_rinst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A8AAAAAAAA"
    )
        port map (
      I0 => Q(4),
      I1 => mem_do_rinst_reg_7,
      I2 => mem_do_rinst_reg_4,
      I3 => mem_do_rinst_reg_8,
      I4 => mem_do_rinst_reg_9,
      I5 => mem_do_rinst_i_9_n_0,
      O => mem_do_rinst_i_3_n_0
    );
mem_do_rinst_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \^instr_slti_reg\,
      I1 => \^instr_lb_reg\,
      I2 => \^instr_srai_reg\,
      I3 => \^instr_sra_reg\,
      I4 => mem_do_rinst_i_2_0,
      I5 => \^pcpi_ready\,
      O => mem_do_rinst_i_9_n_0
    );
mem_do_wdata_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"71717171F1F1F1FF"
    )
        port map (
      I0 => mem_do_rdata_reg_1,
      I1 => mem_do_rdata_reg_2,
      I2 => \^mem_valid_reg\,
      I3 => mem_do_rdata_reg_0,
      I4 => mem_do_rdata_reg,
      I5 => mem_do_rinst_reg_0,
      O => \^mem_state_reg[0]\
    );
rd0: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => \^pcpi_rs2\(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_rd0_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => rd0_i_1_n_0,
      B(16) => rd0_i_1_n_0,
      B(15) => rd0_i_1_n_0,
      B(14 downto 0) => rd_reg_0(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_rd0_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_rd0_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_rd0_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => \^resetn_4\,
      CEA2 => rs10,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => rs10,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_rd0_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_rd0_OVERFLOW_UNCONNECTED,
      P(47) => rd0_n_58,
      P(46) => rd0_n_59,
      P(45) => rd0_n_60,
      P(44) => rd0_n_61,
      P(43) => rd0_n_62,
      P(42) => rd0_n_63,
      P(41) => rd0_n_64,
      P(40) => rd0_n_65,
      P(39) => rd0_n_66,
      P(38) => rd0_n_67,
      P(37) => rd0_n_68,
      P(36) => rd0_n_69,
      P(35) => rd0_n_70,
      P(34) => rd0_n_71,
      P(33) => rd0_n_72,
      P(32) => rd0_n_73,
      P(31) => rd0_n_74,
      P(30) => rd0_n_75,
      P(29) => rd0_n_76,
      P(28) => rd0_n_77,
      P(27) => rd0_n_78,
      P(26) => rd0_n_79,
      P(25) => rd0_n_80,
      P(24) => rd0_n_81,
      P(23) => rd0_n_82,
      P(22) => rd0_n_83,
      P(21) => rd0_n_84,
      P(20) => rd0_n_85,
      P(19) => rd0_n_86,
      P(18) => rd0_n_87,
      P(17) => rd0_n_88,
      P(16) => rd0_n_89,
      P(15) => rd0_n_90,
      P(14) => rd0_n_91,
      P(13) => rd0_n_92,
      P(12) => rd0_n_93,
      P(11) => rd0_n_94,
      P(10) => rd0_n_95,
      P(9) => rd0_n_96,
      P(8) => rd0_n_97,
      P(7) => rd0_n_98,
      P(6) => rd0_n_99,
      P(5) => rd0_n_100,
      P(4) => rd0_n_101,
      P(3) => rd0_n_102,
      P(2) => rd0_n_103,
      P(1) => rd0_n_104,
      P(0) => rd0_n_105,
      PATTERNBDETECT => NLW_rd0_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_rd0_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => rd0_n_106,
      PCOUT(46) => rd0_n_107,
      PCOUT(45) => rd0_n_108,
      PCOUT(44) => rd0_n_109,
      PCOUT(43) => rd0_n_110,
      PCOUT(42) => rd0_n_111,
      PCOUT(41) => rd0_n_112,
      PCOUT(40) => rd0_n_113,
      PCOUT(39) => rd0_n_114,
      PCOUT(38) => rd0_n_115,
      PCOUT(37) => rd0_n_116,
      PCOUT(36) => rd0_n_117,
      PCOUT(35) => rd0_n_118,
      PCOUT(34) => rd0_n_119,
      PCOUT(33) => rd0_n_120,
      PCOUT(32) => rd0_n_121,
      PCOUT(31) => rd0_n_122,
      PCOUT(30) => rd0_n_123,
      PCOUT(29) => rd0_n_124,
      PCOUT(28) => rd0_n_125,
      PCOUT(27) => rd0_n_126,
      PCOUT(26) => rd0_n_127,
      PCOUT(25) => rd0_n_128,
      PCOUT(24) => rd0_n_129,
      PCOUT(23) => rd0_n_130,
      PCOUT(22) => rd0_n_131,
      PCOUT(21) => rd0_n_132,
      PCOUT(20) => rd0_n_133,
      PCOUT(19) => rd0_n_134,
      PCOUT(18) => rd0_n_135,
      PCOUT(17) => rd0_n_136,
      PCOUT(16) => rd0_n_137,
      PCOUT(15) => rd0_n_138,
      PCOUT(14) => rd0_n_139,
      PCOUT(13) => rd0_n_140,
      PCOUT(12) => rd0_n_141,
      PCOUT(11) => rd0_n_142,
      PCOUT(10) => rd0_n_143,
      PCOUT(9) => rd0_n_144,
      PCOUT(8) => rd0_n_145,
      PCOUT(7) => rd0_n_146,
      PCOUT(6) => rd0_n_147,
      PCOUT(5) => rd0_n_148,
      PCOUT(4) => rd0_n_149,
      PCOUT(3) => rd0_n_150,
      PCOUT(2) => rd0_n_151,
      PCOUT(1) => rd0_n_152,
      PCOUT(0) => rd0_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_rd0_UNDERFLOW_UNCONNECTED
    );
\rd0__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => \^pcpi_rs1\(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_rd0__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => \^pcpi_rs2\(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_rd0__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_rd0__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_rd0__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => \^resetn_2\(0),
      CEA2 => rs10,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => \^resetn_4\,
      CEB2 => rs10,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_rd0__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_rd0__0_OVERFLOW_UNCONNECTED\,
      P(47) => \rd0__0_n_58\,
      P(46) => \rd0__0_n_59\,
      P(45) => \rd0__0_n_60\,
      P(44) => \rd0__0_n_61\,
      P(43) => \rd0__0_n_62\,
      P(42) => \rd0__0_n_63\,
      P(41) => \rd0__0_n_64\,
      P(40) => \rd0__0_n_65\,
      P(39) => \rd0__0_n_66\,
      P(38) => \rd0__0_n_67\,
      P(37) => \rd0__0_n_68\,
      P(36) => \rd0__0_n_69\,
      P(35) => \rd0__0_n_70\,
      P(34) => \rd0__0_n_71\,
      P(33) => \rd0__0_n_72\,
      P(32) => \rd0__0_n_73\,
      P(31) => \rd0__0_n_74\,
      P(30) => \rd0__0_n_75\,
      P(29) => \rd0__0_n_76\,
      P(28) => \rd0__0_n_77\,
      P(27) => \rd0__0_n_78\,
      P(26) => \rd0__0_n_79\,
      P(25) => \rd0__0_n_80\,
      P(24) => \rd0__0_n_81\,
      P(23) => \rd0__0_n_82\,
      P(22) => \rd0__0_n_83\,
      P(21) => \rd0__0_n_84\,
      P(20) => \rd0__0_n_85\,
      P(19) => \rd0__0_n_86\,
      P(18) => \rd0__0_n_87\,
      P(17) => \rd0__0_n_88\,
      P(16) => \rd0__0_n_89\,
      P(15) => \rd0__0_n_90\,
      P(14) => \rd0__0_n_91\,
      P(13) => \rd0__0_n_92\,
      P(12) => \rd0__0_n_93\,
      P(11) => \rd0__0_n_94\,
      P(10) => \rd0__0_n_95\,
      P(9) => \rd0__0_n_96\,
      P(8) => \rd0__0_n_97\,
      P(7) => \rd0__0_n_98\,
      P(6) => \rd0__0_n_99\,
      P(5) => \rd0__0_n_100\,
      P(4) => \rd0__0_n_101\,
      P(3) => \rd0__0_n_102\,
      P(2) => \rd0__0_n_103\,
      P(1) => \rd0__0_n_104\,
      P(0) => \rd0__0_n_105\,
      PATTERNBDETECT => \NLW_rd0__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_rd0__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \rd0__0_n_106\,
      PCOUT(46) => \rd0__0_n_107\,
      PCOUT(45) => \rd0__0_n_108\,
      PCOUT(44) => \rd0__0_n_109\,
      PCOUT(43) => \rd0__0_n_110\,
      PCOUT(42) => \rd0__0_n_111\,
      PCOUT(41) => \rd0__0_n_112\,
      PCOUT(40) => \rd0__0_n_113\,
      PCOUT(39) => \rd0__0_n_114\,
      PCOUT(38) => \rd0__0_n_115\,
      PCOUT(37) => \rd0__0_n_116\,
      PCOUT(36) => \rd0__0_n_117\,
      PCOUT(35) => \rd0__0_n_118\,
      PCOUT(34) => \rd0__0_n_119\,
      PCOUT(33) => \rd0__0_n_120\,
      PCOUT(32) => \rd0__0_n_121\,
      PCOUT(31) => \rd0__0_n_122\,
      PCOUT(30) => \rd0__0_n_123\,
      PCOUT(29) => \rd0__0_n_124\,
      PCOUT(28) => \rd0__0_n_125\,
      PCOUT(27) => \rd0__0_n_126\,
      PCOUT(26) => \rd0__0_n_127\,
      PCOUT(25) => \rd0__0_n_128\,
      PCOUT(24) => \rd0__0_n_129\,
      PCOUT(23) => \rd0__0_n_130\,
      PCOUT(22) => \rd0__0_n_131\,
      PCOUT(21) => \rd0__0_n_132\,
      PCOUT(20) => \rd0__0_n_133\,
      PCOUT(19) => \rd0__0_n_134\,
      PCOUT(18) => \rd0__0_n_135\,
      PCOUT(17) => \rd0__0_n_136\,
      PCOUT(16) => \rd0__0_n_137\,
      PCOUT(15) => \rd0__0_n_138\,
      PCOUT(14) => \rd0__0_n_139\,
      PCOUT(13) => \rd0__0_n_140\,
      PCOUT(12) => \rd0__0_n_141\,
      PCOUT(11) => \rd0__0_n_142\,
      PCOUT(10) => \rd0__0_n_143\,
      PCOUT(9) => \rd0__0_n_144\,
      PCOUT(8) => \rd0__0_n_145\,
      PCOUT(7) => \rd0__0_n_146\,
      PCOUT(6) => \rd0__0_n_147\,
      PCOUT(5) => \rd0__0_n_148\,
      PCOUT(4) => \rd0__0_n_149\,
      PCOUT(3) => \rd0__0_n_150\,
      PCOUT(2) => \rd0__0_n_151\,
      PCOUT(1) => \rd0__0_n_152\,
      PCOUT(0) => \rd0__0_n_153\,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_rd0__0_UNDERFLOW_UNCONNECTED\
    );
rd0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06000000"
    )
        port map (
      I0 => \rd_reg__0_0\(8),
      I1 => \rd_reg__0_0\(7),
      I2 => \rd_reg__0_0\(9),
      I3 => instr_mulh1,
      I4 => rd_reg_0(31),
      O => rd0_i_1_n_0
    );
rd_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => rd0_i_1_n_0,
      A(28) => rd0_i_1_n_0,
      A(27) => rd0_i_1_n_0,
      A(26) => rd0_i_1_n_0,
      A(25) => rd0_i_1_n_0,
      A(24) => rd0_i_1_n_0,
      A(23) => rd0_i_1_n_0,
      A(22) => rd0_i_1_n_0,
      A(21) => rd0_i_1_n_0,
      A(20) => rd0_i_1_n_0,
      A(19) => rd0_i_1_n_0,
      A(18) => rd0_i_1_n_0,
      A(17) => rd0_i_1_n_0,
      A(16) => rd0_i_1_n_0,
      A(15) => rd0_i_1_n_0,
      A(14 downto 0) => rd_reg_0(31 downto 17),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_rd_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => rd_reg_i_1_n_0,
      B(16) => rd_reg_i_1_n_0,
      B(15) => rd_reg_i_1_n_0,
      B(14 downto 0) => \rd_reg__0_1\(14 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_rd_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_rd_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_rd_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => rs10,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => rs10,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_rd_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => NLW_rd_reg_OVERFLOW_UNCONNECTED,
      P(47) => rd_reg_n_58,
      P(46) => rd_reg_n_59,
      P(45) => rd_reg_n_60,
      P(44) => rd_reg_n_61,
      P(43) => rd_reg_n_62,
      P(42) => rd_reg_n_63,
      P(41) => rd_reg_n_64,
      P(40) => rd_reg_n_65,
      P(39) => rd_reg_n_66,
      P(38) => rd_reg_n_67,
      P(37) => rd_reg_n_68,
      P(36) => rd_reg_n_69,
      P(35) => rd_reg_n_70,
      P(34) => rd_reg_n_71,
      P(33) => rd_reg_n_72,
      P(32) => rd_reg_n_73,
      P(31) => rd_reg_n_74,
      P(30) => rd_reg_n_75,
      P(29) => rd_reg_n_76,
      P(28) => rd_reg_n_77,
      P(27) => rd_reg_n_78,
      P(26) => rd_reg_n_79,
      P(25) => rd_reg_n_80,
      P(24) => rd_reg_n_81,
      P(23) => rd_reg_n_82,
      P(22) => rd_reg_n_83,
      P(21) => rd_reg_n_84,
      P(20) => rd_reg_n_85,
      P(19) => rd_reg_n_86,
      P(18) => rd_reg_n_87,
      P(17) => rd_reg_n_88,
      P(16) => rd_reg_n_89,
      P(15) => rd_reg_n_90,
      P(14) => rd_reg_n_91,
      P(13) => rd_reg_n_92,
      P(12) => rd_reg_n_93,
      P(11) => rd_reg_n_94,
      P(10) => rd_reg_n_95,
      P(9) => rd_reg_n_96,
      P(8) => rd_reg_n_97,
      P(7) => rd_reg_n_98,
      P(6) => rd_reg_n_99,
      P(5) => rd_reg_n_100,
      P(4) => rd_reg_n_101,
      P(3) => rd_reg_n_102,
      P(2) => rd_reg_n_103,
      P(1) => rd_reg_n_104,
      P(0) => rd_reg_n_105,
      PATTERNBDETECT => NLW_rd_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_rd_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => rd0_n_106,
      PCIN(46) => rd0_n_107,
      PCIN(45) => rd0_n_108,
      PCIN(44) => rd0_n_109,
      PCIN(43) => rd0_n_110,
      PCIN(42) => rd0_n_111,
      PCIN(41) => rd0_n_112,
      PCIN(40) => rd0_n_113,
      PCIN(39) => rd0_n_114,
      PCIN(38) => rd0_n_115,
      PCIN(37) => rd0_n_116,
      PCIN(36) => rd0_n_117,
      PCIN(35) => rd0_n_118,
      PCIN(34) => rd0_n_119,
      PCIN(33) => rd0_n_120,
      PCIN(32) => rd0_n_121,
      PCIN(31) => rd0_n_122,
      PCIN(30) => rd0_n_123,
      PCIN(29) => rd0_n_124,
      PCIN(28) => rd0_n_125,
      PCIN(27) => rd0_n_126,
      PCIN(26) => rd0_n_127,
      PCIN(25) => rd0_n_128,
      PCIN(24) => rd0_n_129,
      PCIN(23) => rd0_n_130,
      PCIN(22) => rd0_n_131,
      PCIN(21) => rd0_n_132,
      PCIN(20) => rd0_n_133,
      PCIN(19) => rd0_n_134,
      PCIN(18) => rd0_n_135,
      PCIN(17) => rd0_n_136,
      PCIN(16) => rd0_n_137,
      PCIN(15) => rd0_n_138,
      PCIN(14) => rd0_n_139,
      PCIN(13) => rd0_n_140,
      PCIN(12) => rd0_n_141,
      PCIN(11) => rd0_n_142,
      PCIN(10) => rd0_n_143,
      PCIN(9) => rd0_n_144,
      PCIN(8) => rd0_n_145,
      PCIN(7) => rd0_n_146,
      PCIN(6) => rd0_n_147,
      PCIN(5) => rd0_n_148,
      PCIN(4) => rd0_n_149,
      PCIN(3) => rd0_n_150,
      PCIN(2) => rd0_n_151,
      PCIN(1) => rd0_n_152,
      PCIN(0) => rd0_n_153,
      PCOUT(47 downto 0) => NLW_rd_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_rd_reg_UNDERFLOW_UNCONNECTED
    );
\rd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rd0_n_105,
      Q => \rd_reg_n_0_[0]\,
      R => '0'
    );
\rd_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rd0__0_n_105\,
      Q => \rd_reg[0]__0_n_0\,
      R => '0'
    );
\rd_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rd0_n_95,
      Q => \rd_reg_n_0_[10]\,
      R => '0'
    );
\rd_reg[10]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rd0__0_n_95\,
      Q => \rd_reg[10]__0_n_0\,
      R => '0'
    );
\rd_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rd0_n_94,
      Q => \rd_reg_n_0_[11]\,
      R => '0'
    );
\rd_reg[11]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rd0__0_n_94\,
      Q => \rd_reg[11]__0_n_0\,
      R => '0'
    );
\rd_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rd0_n_93,
      Q => \rd_reg_n_0_[12]\,
      R => '0'
    );
\rd_reg[12]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rd0__0_n_93\,
      Q => \rd_reg[12]__0_n_0\,
      R => '0'
    );
\rd_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rd0_n_92,
      Q => \rd_reg_n_0_[13]\,
      R => '0'
    );
\rd_reg[13]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rd0__0_n_92\,
      Q => \rd_reg[13]__0_n_0\,
      R => '0'
    );
\rd_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rd0_n_91,
      Q => \rd_reg_n_0_[14]\,
      R => '0'
    );
\rd_reg[14]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rd0__0_n_91\,
      Q => \rd_reg[14]__0_n_0\,
      R => '0'
    );
\rd_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rd0_n_90,
      Q => \rd_reg_n_0_[15]\,
      R => '0'
    );
\rd_reg[15]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rd0__0_n_90\,
      Q => \rd_reg[15]__0_n_0\,
      R => '0'
    );
\rd_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rd0_n_89,
      Q => \rd_reg_n_0_[16]\,
      R => '0'
    );
\rd_reg[16]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rd0__0_n_89\,
      Q => \rd_reg[16]__0_n_0\,
      R => '0'
    );
\rd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rd0_n_104,
      Q => \rd_reg_n_0_[1]\,
      R => '0'
    );
\rd_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rd0__0_n_104\,
      Q => \rd_reg[1]__0_n_0\,
      R => '0'
    );
\rd_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rd0_n_103,
      Q => \rd_reg_n_0_[2]\,
      R => '0'
    );
\rd_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rd0__0_n_103\,
      Q => \rd_reg[2]__0_n_0\,
      R => '0'
    );
\rd_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rd0_n_102,
      Q => \rd_reg_n_0_[3]\,
      R => '0'
    );
\rd_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rd0__0_n_102\,
      Q => \rd_reg[3]__0_n_0\,
      R => '0'
    );
\rd_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rd0_n_101,
      Q => \rd_reg_n_0_[4]\,
      R => '0'
    );
\rd_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rd0__0_n_101\,
      Q => \rd_reg[4]__0_n_0\,
      R => '0'
    );
\rd_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rd0_n_100,
      Q => \rd_reg_n_0_[5]\,
      R => '0'
    );
\rd_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rd0__0_n_100\,
      Q => \rd_reg[5]__0_n_0\,
      R => '0'
    );
\rd_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rd0_n_99,
      Q => \rd_reg_n_0_[6]\,
      R => '0'
    );
\rd_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rd0__0_n_99\,
      Q => \rd_reg[6]__0_n_0\,
      R => '0'
    );
\rd_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rd0_n_98,
      Q => \rd_reg_n_0_[7]\,
      R => '0'
    );
\rd_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rd0__0_n_98\,
      Q => \rd_reg[7]__0_n_0\,
      R => '0'
    );
\rd_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rd0_n_97,
      Q => \rd_reg_n_0_[8]\,
      R => '0'
    );
\rd_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rd0__0_n_97\,
      Q => \rd_reg[8]__0_n_0\,
      R => '0'
    );
\rd_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rd0_n_96,
      Q => \rd_reg_n_0_[9]\,
      R => '0'
    );
\rd_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rd0__0_n_96\,
      Q => \rd_reg[9]__0_n_0\,
      R => '0'
    );
\rd_reg__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => \^pcpi_rs1\(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_rd_reg__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => rd_reg_i_1_n_0,
      B(16) => rd_reg_i_1_n_0,
      B(15) => rd_reg_i_1_n_0,
      B(14 downto 0) => \rd_reg__0_1\(14 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_rd_reg__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_rd_reg__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_rd_reg__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => \^resetn_2\(0),
      CEA2 => rs10,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => rs10,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_rd_reg__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_rd_reg__0_OVERFLOW_UNCONNECTED\,
      P(47) => \rd_reg__0_n_58\,
      P(46) => \rd_reg__0_n_59\,
      P(45) => \rd_reg__0_n_60\,
      P(44) => \rd_reg__0_n_61\,
      P(43) => \rd_reg__0_n_62\,
      P(42) => \rd_reg__0_n_63\,
      P(41) => \rd_reg__0_n_64\,
      P(40) => \rd_reg__0_n_65\,
      P(39) => \rd_reg__0_n_66\,
      P(38) => \rd_reg__0_n_67\,
      P(37) => \rd_reg__0_n_68\,
      P(36) => \rd_reg__0_n_69\,
      P(35) => \rd_reg__0_n_70\,
      P(34) => \rd_reg__0_n_71\,
      P(33) => \rd_reg__0_n_72\,
      P(32) => \rd_reg__0_n_73\,
      P(31) => \rd_reg__0_n_74\,
      P(30) => \rd_reg__0_n_75\,
      P(29) => \rd_reg__0_n_76\,
      P(28) => \rd_reg__0_n_77\,
      P(27) => \rd_reg__0_n_78\,
      P(26) => \rd_reg__0_n_79\,
      P(25) => \rd_reg__0_n_80\,
      P(24) => \rd_reg__0_n_81\,
      P(23) => \rd_reg__0_n_82\,
      P(22) => \rd_reg__0_n_83\,
      P(21) => \rd_reg__0_n_84\,
      P(20) => \rd_reg__0_n_85\,
      P(19) => \rd_reg__0_n_86\,
      P(18) => \rd_reg__0_n_87\,
      P(17) => \rd_reg__0_n_88\,
      P(16) => \rd_reg__0_n_89\,
      P(15) => \rd_reg__0_n_90\,
      P(14) => \rd_reg__0_n_91\,
      P(13) => \rd_reg__0_n_92\,
      P(12) => \rd_reg__0_n_93\,
      P(11) => \rd_reg__0_n_94\,
      P(10) => \rd_reg__0_n_95\,
      P(9) => \rd_reg__0_n_96\,
      P(8) => \rd_reg__0_n_97\,
      P(7) => \rd_reg__0_n_98\,
      P(6) => \rd_reg__0_n_99\,
      P(5) => \rd_reg__0_n_100\,
      P(4) => \rd_reg__0_n_101\,
      P(3) => \rd_reg__0_n_102\,
      P(2) => \rd_reg__0_n_103\,
      P(1) => \rd_reg__0_n_104\,
      P(0) => \rd_reg__0_n_105\,
      PATTERNBDETECT => \NLW_rd_reg__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_rd_reg__0_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \rd0__0_n_106\,
      PCIN(46) => \rd0__0_n_107\,
      PCIN(45) => \rd0__0_n_108\,
      PCIN(44) => \rd0__0_n_109\,
      PCIN(43) => \rd0__0_n_110\,
      PCIN(42) => \rd0__0_n_111\,
      PCIN(41) => \rd0__0_n_112\,
      PCIN(40) => \rd0__0_n_113\,
      PCIN(39) => \rd0__0_n_114\,
      PCIN(38) => \rd0__0_n_115\,
      PCIN(37) => \rd0__0_n_116\,
      PCIN(36) => \rd0__0_n_117\,
      PCIN(35) => \rd0__0_n_118\,
      PCIN(34) => \rd0__0_n_119\,
      PCIN(33) => \rd0__0_n_120\,
      PCIN(32) => \rd0__0_n_121\,
      PCIN(31) => \rd0__0_n_122\,
      PCIN(30) => \rd0__0_n_123\,
      PCIN(29) => \rd0__0_n_124\,
      PCIN(28) => \rd0__0_n_125\,
      PCIN(27) => \rd0__0_n_126\,
      PCIN(26) => \rd0__0_n_127\,
      PCIN(25) => \rd0__0_n_128\,
      PCIN(24) => \rd0__0_n_129\,
      PCIN(23) => \rd0__0_n_130\,
      PCIN(22) => \rd0__0_n_131\,
      PCIN(21) => \rd0__0_n_132\,
      PCIN(20) => \rd0__0_n_133\,
      PCIN(19) => \rd0__0_n_134\,
      PCIN(18) => \rd0__0_n_135\,
      PCIN(17) => \rd0__0_n_136\,
      PCIN(16) => \rd0__0_n_137\,
      PCIN(15) => \rd0__0_n_138\,
      PCIN(14) => \rd0__0_n_139\,
      PCIN(13) => \rd0__0_n_140\,
      PCIN(12) => \rd0__0_n_141\,
      PCIN(11) => \rd0__0_n_142\,
      PCIN(10) => \rd0__0_n_143\,
      PCIN(9) => \rd0__0_n_144\,
      PCIN(8) => \rd0__0_n_145\,
      PCIN(7) => \rd0__0_n_146\,
      PCIN(6) => \rd0__0_n_147\,
      PCIN(5) => \rd0__0_n_148\,
      PCIN(4) => \rd0__0_n_149\,
      PCIN(3) => \rd0__0_n_150\,
      PCIN(2) => \rd0__0_n_151\,
      PCIN(1) => \rd0__0_n_152\,
      PCIN(0) => \rd0__0_n_153\,
      PCOUT(47 downto 0) => \NLW_rd_reg__0_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_rd_reg__0_UNDERFLOW_UNCONNECTED\
    );
rd_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => instr_mulh1,
      I1 => \rd_reg__0_0\(9),
      I2 => \rd_reg__0_0\(7),
      I3 => \rd_reg__0_0\(8),
      I4 => \rd_reg__0_1\(14),
      O => rd_reg_i_1_n_0
    );
\reg_op1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF40FF40FF40"
    )
        port map (
      I0 => \reg_op1[0]_i_2_n_0\,
      I1 => reg_out1(0),
      I2 => \^is_lui_auipc_jal_reg\,
      I3 => \reg_op1[0]_i_3_n_0\,
      I4 => \reg_op1_reg[0]_i_4_n_7\,
      I5 => \reg_op1[0]_i_5_n_0\,
      O => \^pcpi_rs1\(0)
    );
\reg_op1[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => Q(4),
      O => \reg_op1[0]_i_2_n_0\
    );
\reg_op1[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C000800000008"
    )
        port map (
      I0 => rd_reg_0(1),
      I1 => Q(2),
      I2 => Q(4),
      I3 => \^instr_srli_reg\,
      I4 => \^reg_sh_reg[4]\,
      I5 => rd_reg_0(4),
      O => \reg_op1[0]_i_3_n_0\
    );
\reg_op1[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      O => \reg_op1[0]_i_5_n_0\
    );
\reg_op1[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_reg_0(3),
      I1 => rd0_5(3),
      O => \reg_op1[0]_i_6_n_0\
    );
\reg_op1[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_reg_0(2),
      I1 => rd0_5(2),
      O => \reg_op1[0]_i_7_n_0\
    );
\reg_op1[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_reg_0(1),
      I1 => rd0_5(1),
      O => \reg_op1[0]_i_8_n_0\
    );
\reg_op1[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_reg_0(0),
      I1 => rd0_5(0),
      O => \reg_op1[0]_i_9_n_0\
    );
\reg_op1[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \rd0__0_1\(9),
      I2 => \reg_op1[10]_i_2_n_0\,
      I3 => \^is_lui_auipc_jal_reg\,
      I4 => Q(4),
      I5 => \reg_op1[10]_i_3_n_0\,
      O => \^pcpi_rs1\(10)
    );
\reg_op1[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(10),
      O => \reg_op1[10]_i_2_n_0\
    );
\reg_op1[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[10]_i_4_n_0\,
      I1 => Q(2),
      I2 => \reg_op1_reg[11]_i_5_n_5\,
      O => \reg_op1[10]_i_3_n_0\
    );
\reg_op1[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \reg_op1[13]_i_5_n_0\,
      I1 => rd_reg_0(6),
      I2 => \^reg_sh_reg[4]\,
      I3 => \^instr_sll_reg\,
      I4 => rd_reg_0(9),
      I5 => \reg_op1[10]_i_5_n_0\,
      O => \reg_op1[10]_i_4_n_0\
    );
\reg_op1[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => rd_reg_0(11),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[10]_i_5_n_0\
    );
\reg_op1[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \rd0__0_1\(10),
      I2 => \reg_op1[11]_i_2_n_0\,
      I3 => \^is_lui_auipc_jal_reg\,
      I4 => Q(4),
      I5 => \reg_op1[11]_i_3_n_0\,
      O => \^pcpi_rs1\(11)
    );
\reg_op1[11]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_reg_0(8),
      I1 => rd0_5(8),
      O => \reg_op1[11]_i_10_n_0\
    );
\reg_op1[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(11),
      O => \reg_op1[11]_i_2_n_0\
    );
\reg_op1[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[11]_i_4_n_0\,
      I1 => Q(2),
      I2 => \reg_op1_reg[11]_i_5_n_4\,
      O => \reg_op1[11]_i_3_n_0\
    );
\reg_op1[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \reg_op1[14]_i_5_n_0\,
      I1 => rd_reg_0(7),
      I2 => \^reg_sh_reg[4]\,
      I3 => \^instr_sll_reg\,
      I4 => rd_reg_0(10),
      I5 => \reg_op1[11]_i_6_n_0\,
      O => \reg_op1[11]_i_4_n_0\
    );
\reg_op1[11]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => rd_reg_0(12),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[11]_i_6_n_0\
    );
\reg_op1[11]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_reg_0(11),
      I1 => rd0_5(11),
      O => \reg_op1[11]_i_7_n_0\
    );
\reg_op1[11]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_reg_0(10),
      I1 => rd0_5(10),
      O => \reg_op1[11]_i_8_n_0\
    );
\reg_op1[11]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_reg_0(9),
      I1 => rd0_5(9),
      O => \reg_op1[11]_i_9_n_0\
    );
\reg_op1[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \rd0__0_1\(11),
      I2 => \reg_op1[12]_i_2_n_0\,
      I3 => \^is_lui_auipc_jal_reg\,
      I4 => Q(4),
      I5 => \reg_op1[12]_i_3_n_0\,
      O => \^pcpi_rs1\(12)
    );
\reg_op1[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(12),
      O => \reg_op1[12]_i_2_n_0\
    );
\reg_op1[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[12]_i_4_n_0\,
      I1 => Q(2),
      I2 => \reg_op1_reg[15]_i_5_n_7\,
      O => \reg_op1[12]_i_3_n_0\
    );
\reg_op1[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \reg_op1[15]_i_6_n_0\,
      I1 => rd_reg_0(8),
      I2 => \^reg_sh_reg[4]\,
      I3 => \^instr_sll_reg\,
      I4 => rd_reg_0(11),
      I5 => \reg_op1[12]_i_5_n_0\,
      O => \reg_op1[12]_i_4_n_0\
    );
\reg_op1[12]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => rd_reg_0(13),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[12]_i_5_n_0\
    );
\reg_op1[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \rd0__0_1\(12),
      I2 => \reg_op1[13]_i_2_n_0\,
      I3 => \^is_lui_auipc_jal_reg\,
      I4 => Q(4),
      I5 => \reg_op1[13]_i_3_n_0\,
      O => \^pcpi_rs1\(13)
    );
\reg_op1[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(13),
      O => \reg_op1[13]_i_2_n_0\
    );
\reg_op1[13]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[13]_i_4_n_0\,
      I1 => Q(2),
      I2 => \reg_op1_reg[15]_i_5_n_6\,
      O => \reg_op1[13]_i_3_n_0\
    );
\reg_op1[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \reg_op1[16]_i_5_n_0\,
      I1 => rd_reg_0(9),
      I2 => \^reg_sh_reg[4]\,
      I3 => \^instr_sll_reg\,
      I4 => rd_reg_0(12),
      I5 => \reg_op1[13]_i_5_n_0\,
      O => \reg_op1[13]_i_4_n_0\
    );
\reg_op1[13]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => rd_reg_0(14),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[13]_i_5_n_0\
    );
\reg_op1[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \rd0__0_1\(13),
      I2 => \reg_op1[14]_i_2_n_0\,
      I3 => \^is_lui_auipc_jal_reg\,
      I4 => Q(4),
      I5 => \reg_op1[14]_i_3_n_0\,
      O => \^pcpi_rs1\(14)
    );
\reg_op1[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(14),
      O => \reg_op1[14]_i_2_n_0\
    );
\reg_op1[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[14]_i_4_n_0\,
      I1 => Q(2),
      I2 => \reg_op1_reg[15]_i_5_n_5\,
      O => \reg_op1[14]_i_3_n_0\
    );
\reg_op1[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \^reg_op1_reg[18]\,
      I1 => rd_reg_0(10),
      I2 => \^reg_sh_reg[4]\,
      I3 => \^instr_sll_reg\,
      I4 => rd_reg_0(13),
      I5 => \reg_op1[14]_i_5_n_0\,
      O => \reg_op1[14]_i_4_n_0\
    );
\reg_op1[14]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => rd_reg_0(15),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[14]_i_5_n_0\
    );
\reg_op1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \rd0__0_1\(14),
      I2 => \reg_op1[15]_i_2_n_0\,
      I3 => \^is_lui_auipc_jal_reg\,
      I4 => Q(4),
      I5 => \reg_op1[15]_i_3_n_0\,
      O => \^pcpi_rs1\(15)
    );
\reg_op1[15]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_reg_0(12),
      I1 => rd0_4,
      O => \reg_op1[15]_i_10_n_0\
    );
\reg_op1[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(15),
      O => \reg_op1[15]_i_2_n_0\
    );
\reg_op1[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[15]_i_4_n_0\,
      I1 => Q(2),
      I2 => \reg_op1_reg[15]_i_5_n_4\,
      O => \reg_op1[15]_i_3_n_0\
    );
\reg_op1[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \^reg_op1_reg[19]\,
      I1 => rd_reg_0(11),
      I2 => \^reg_sh_reg[4]\,
      I3 => \^instr_sll_reg\,
      I4 => rd_reg_0(14),
      I5 => \reg_op1[15]_i_6_n_0\,
      O => \reg_op1[15]_i_4_n_0\
    );
\reg_op1[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => rd_reg_0(16),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[15]_i_6_n_0\
    );
\reg_op1[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_reg_0(15),
      I1 => rd0_1,
      O => \reg_op1[15]_i_7_n_0\
    );
\reg_op1[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_reg_0(14),
      I1 => rd0_2,
      O => \reg_op1[15]_i_8_n_0\
    );
\reg_op1[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_reg_0(13),
      I1 => rd0_3,
      O => \reg_op1[15]_i_9_n_0\
    );
\reg_op1[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \rd0__0_1\(15),
      I2 => \reg_op1[16]_i_2_n_0\,
      I3 => \^is_lui_auipc_jal_reg\,
      I4 => Q(4),
      I5 => \reg_op1[16]_i_3_n_0\,
      O => \^pcpi_rs1\(16)
    );
\reg_op1[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(16),
      O => \reg_op1[16]_i_2_n_0\
    );
\reg_op1[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[16]_i_4_n_0\,
      I1 => Q(2),
      I2 => \reg_op1_reg[19]_i_5_n_7\,
      O => \reg_op1[16]_i_3_n_0\
    );
\reg_op1[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \^reg_op1_reg[20]\,
      I1 => rd_reg_0(12),
      I2 => \^reg_sh_reg[4]\,
      I3 => \^instr_sll_reg\,
      I4 => rd_reg_0(15),
      I5 => \reg_op1[16]_i_5_n_0\,
      O => \reg_op1[16]_i_4_n_0\
    );
\reg_op1[16]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => rd_reg_0(17),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[16]_i_5_n_0\
    );
\reg_op1[17]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => rd_reg_0(18),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \^reg_op1_reg[18]\
    );
\reg_op1[18]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => rd_reg_0(19),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \^reg_op1_reg[19]\
    );
\reg_op1[19]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_reg_0(16),
      I1 => rd0_0,
      O => \reg_op1[19]_i_10_n_0\
    );
\reg_op1[19]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => rd_reg_0(20),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \^reg_op1_reg[20]\
    );
\reg_op1[19]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_reg_0(19),
      I1 => \reg_op1_reg[19]_i_5_2\,
      O => \reg_op1[19]_i_7_n_0\
    );
\reg_op1[19]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_reg_0(18),
      I1 => \reg_op1_reg[19]_i_5_1\,
      O => \reg_op1[19]_i_8_n_0\
    );
\reg_op1[19]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_reg_0(17),
      I1 => \reg_op1_reg[19]_i_5_0\,
      O => \reg_op1[19]_i_9_n_0\
    );
\reg_op1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \rd0__0_1\(0),
      I2 => \reg_op1[1]_i_2_n_0\,
      I3 => \^is_lui_auipc_jal_reg\,
      I4 => Q(4),
      I5 => \reg_op1[1]_i_3_n_0\,
      O => \^pcpi_rs1\(1)
    );
\reg_op1[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(1),
      O => \reg_op1[1]_i_2_n_0\
    );
\reg_op1[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1055FFFF10550000"
    )
        port map (
      I0 => \reg_op1[1]_i_4_n_0\,
      I1 => \^instr_srli_reg\,
      I2 => rd_reg_0(5),
      I3 => \^reg_sh_reg[4]\,
      I4 => Q(2),
      I5 => \reg_op1_reg[0]_i_4_n_6\,
      O => \reg_op1[1]_i_3_n_0\
    );
\reg_op1[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000D0D0DDD"
    )
        port map (
      I0 => rd_reg_0(2),
      I1 => \^instr_srli_reg\,
      I2 => rd_reg_0(0),
      I3 => instr_slli,
      I4 => instr_sll,
      I5 => \^reg_sh_reg[4]\,
      O => \reg_op1[1]_i_4_n_0\
    );
\reg_op1[27]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => instr_sll,
      I1 => instr_slli,
      O => \^instr_sll_reg\
    );
\reg_op1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \rd0__0_1\(1),
      I2 => \reg_op1[2]_i_2_n_0\,
      I3 => \^is_lui_auipc_jal_reg\,
      I4 => Q(4),
      I5 => \reg_op1[2]_i_3_n_0\,
      O => \^pcpi_rs1\(2)
    );
\reg_op1[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(2),
      O => \reg_op1[2]_i_2_n_0\
    );
\reg_op1[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1055FFFF10550000"
    )
        port map (
      I0 => \reg_op1[2]_i_4_n_0\,
      I1 => \^instr_srli_reg\,
      I2 => rd_reg_0(6),
      I3 => \^reg_sh_reg[4]\,
      I4 => Q(2),
      I5 => \reg_op1_reg[0]_i_4_n_5\,
      O => \reg_op1[2]_i_3_n_0\
    );
\reg_op1[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000D0D0DDD"
    )
        port map (
      I0 => rd_reg_0(3),
      I1 => \^instr_srli_reg\,
      I2 => rd_reg_0(1),
      I3 => instr_slli,
      I4 => instr_sll,
      I5 => \^reg_sh_reg[4]\,
      O => \reg_op1[2]_i_4_n_0\
    );
\reg_op1[30]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => is_lui_auipc_jal,
      I1 => \^instr_jalr_reg\,
      O => \^is_lui_auipc_jal_reg\
    );
\reg_op1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008AAA8A"
    )
        port map (
      I0 => resetn,
      I1 => \^mem_do_prefetch_reg\,
      I2 => \reg_op1[31]_i_4_n_0\,
      I3 => Q(0),
      I4 => \reg_op1[31]_i_5_n_0\,
      O => \^resetn_2\(0)
    );
\reg_op1[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B0"
    )
        port map (
      I0 => \^resetn_1\,
      I1 => \rd0__0_0\,
      I2 => Q(1),
      I3 => mem_do_rdata_reg_0,
      O => \^mem_do_prefetch_reg\
    );
\reg_op1[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAEBBBBBBBF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => \reg_sh_reg[0]\(0),
      I3 => \^reg_sh_reg[4]\,
      I4 => \reg_sh_reg[0]\(1),
      I5 => Q(4),
      O => \reg_op1[31]_i_4_n_0\
    );
\reg_op1[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => mem_do_rdata_reg,
      I1 => \^resetn_1\,
      I2 => \rd0__0_0\,
      O => \reg_op1[31]_i_5_n_0\
    );
\reg_op1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \rd0__0_1\(2),
      I2 => \reg_op1[3]_i_2_n_0\,
      I3 => \^is_lui_auipc_jal_reg\,
      I4 => Q(4),
      I5 => \reg_op1[3]_i_3_n_0\,
      O => \^pcpi_rs1\(3)
    );
\reg_op1[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(3),
      O => \reg_op1[3]_i_2_n_0\
    );
\reg_op1[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1055FFFF10550000"
    )
        port map (
      I0 => \reg_op1[3]_i_4_n_0\,
      I1 => \^instr_srli_reg\,
      I2 => rd_reg_0(7),
      I3 => \^reg_sh_reg[4]\,
      I4 => Q(2),
      I5 => \reg_op1_reg[0]_i_4_n_4\,
      O => \reg_op1[3]_i_3_n_0\
    );
\reg_op1[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000D0D0DDD"
    )
        port map (
      I0 => rd_reg_0(4),
      I1 => \^instr_srli_reg\,
      I2 => rd_reg_0(2),
      I3 => instr_slli,
      I4 => instr_sll,
      I5 => \^reg_sh_reg[4]\,
      O => \reg_op1[3]_i_4_n_0\
    );
\reg_op1[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => instr_srli,
      I1 => instr_srai,
      I2 => instr_srl,
      I3 => instr_sra,
      O => \^instr_srli_reg\
    );
\reg_op1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \rd0__0_1\(3),
      I2 => \reg_op1[4]_i_2_n_0\,
      I3 => \^is_lui_auipc_jal_reg\,
      I4 => Q(4),
      I5 => \reg_op1[4]_i_3_n_0\,
      O => \^pcpi_rs1\(4)
    );
\reg_op1[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(4),
      O => \reg_op1[4]_i_2_n_0\
    );
\reg_op1[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[4]_i_4_n_0\,
      I1 => Q(2),
      I2 => \reg_op1_reg[7]_i_5_n_7\,
      O => \reg_op1[4]_i_3_n_0\
    );
\reg_op1[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \reg_op1[7]_i_6_n_0\,
      I1 => rd_reg_0(0),
      I2 => \^reg_sh_reg[4]\,
      I3 => \^instr_sll_reg\,
      I4 => rd_reg_0(3),
      I5 => \reg_op1[4]_i_5_n_0\,
      O => \reg_op1[4]_i_4_n_0\
    );
\reg_op1[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => rd_reg_0(5),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[4]_i_5_n_0\
    );
\reg_op1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \rd0__0_1\(4),
      I2 => \reg_op1[5]_i_2_n_0\,
      I3 => \^is_lui_auipc_jal_reg\,
      I4 => Q(4),
      I5 => \reg_op1[5]_i_3_n_0\,
      O => \^pcpi_rs1\(5)
    );
\reg_op1[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(5),
      O => \reg_op1[5]_i_2_n_0\
    );
\reg_op1[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[5]_i_4_n_0\,
      I1 => Q(2),
      I2 => \reg_op1_reg[7]_i_5_n_6\,
      O => \reg_op1[5]_i_3_n_0\
    );
\reg_op1[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \reg_op1[8]_i_5_n_0\,
      I1 => rd_reg_0(1),
      I2 => \^reg_sh_reg[4]\,
      I3 => \^instr_sll_reg\,
      I4 => rd_reg_0(4),
      I5 => \reg_op1[5]_i_5_n_0\,
      O => \reg_op1[5]_i_4_n_0\
    );
\reg_op1[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => rd_reg_0(6),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[5]_i_5_n_0\
    );
\reg_op1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \rd0__0_1\(5),
      I2 => \reg_op1[6]_i_2_n_0\,
      I3 => \^is_lui_auipc_jal_reg\,
      I4 => Q(4),
      I5 => \reg_op1[6]_i_3_n_0\,
      O => \^pcpi_rs1\(6)
    );
\reg_op1[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(6),
      O => \reg_op1[6]_i_2_n_0\
    );
\reg_op1[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[6]_i_4_n_0\,
      I1 => Q(2),
      I2 => \reg_op1_reg[7]_i_5_n_5\,
      O => \reg_op1[6]_i_3_n_0\
    );
\reg_op1[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \reg_op1[9]_i_5_n_0\,
      I1 => rd_reg_0(2),
      I2 => \^reg_sh_reg[4]\,
      I3 => \^instr_sll_reg\,
      I4 => rd_reg_0(5),
      I5 => \reg_op1[6]_i_5_n_0\,
      O => \reg_op1[6]_i_4_n_0\
    );
\reg_op1[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => rd_reg_0(7),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[6]_i_5_n_0\
    );
\reg_op1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \rd0__0_1\(6),
      I2 => \reg_op1[7]_i_2_n_0\,
      I3 => \^is_lui_auipc_jal_reg\,
      I4 => Q(4),
      I5 => \reg_op1[7]_i_3_n_0\,
      O => \^pcpi_rs1\(7)
    );
\reg_op1[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_reg_0(4),
      I1 => rd0_5(4),
      O => \reg_op1[7]_i_10_n_0\
    );
\reg_op1[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(7),
      O => \reg_op1[7]_i_2_n_0\
    );
\reg_op1[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[7]_i_4_n_0\,
      I1 => Q(2),
      I2 => \reg_op1_reg[7]_i_5_n_4\,
      O => \reg_op1[7]_i_3_n_0\
    );
\reg_op1[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \reg_op1[10]_i_5_n_0\,
      I1 => rd_reg_0(3),
      I2 => \^reg_sh_reg[4]\,
      I3 => \^instr_sll_reg\,
      I4 => rd_reg_0(6),
      I5 => \reg_op1[7]_i_6_n_0\,
      O => \reg_op1[7]_i_4_n_0\
    );
\reg_op1[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => rd_reg_0(8),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[7]_i_6_n_0\
    );
\reg_op1[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_reg_0(7),
      I1 => rd0_5(7),
      O => \reg_op1[7]_i_7_n_0\
    );
\reg_op1[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_reg_0(6),
      I1 => rd0_5(6),
      O => \reg_op1[7]_i_8_n_0\
    );
\reg_op1[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_reg_0(5),
      I1 => rd0_5(5),
      O => \reg_op1[7]_i_9_n_0\
    );
\reg_op1[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \rd0__0_1\(7),
      I2 => \reg_op1[8]_i_2_n_0\,
      I3 => \^is_lui_auipc_jal_reg\,
      I4 => Q(4),
      I5 => \reg_op1[8]_i_3_n_0\,
      O => \^pcpi_rs1\(8)
    );
\reg_op1[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(8),
      O => \reg_op1[8]_i_2_n_0\
    );
\reg_op1[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[8]_i_4_n_0\,
      I1 => Q(2),
      I2 => \reg_op1_reg[11]_i_5_n_7\,
      O => \reg_op1[8]_i_3_n_0\
    );
\reg_op1[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \reg_op1[11]_i_6_n_0\,
      I1 => rd_reg_0(4),
      I2 => \^reg_sh_reg[4]\,
      I3 => \^instr_sll_reg\,
      I4 => rd_reg_0(7),
      I5 => \reg_op1[8]_i_5_n_0\,
      O => \reg_op1[8]_i_4_n_0\
    );
\reg_op1[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => rd_reg_0(9),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[8]_i_5_n_0\
    );
\reg_op1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \rd0__0_1\(8),
      I2 => \reg_op1[9]_i_2_n_0\,
      I3 => \^is_lui_auipc_jal_reg\,
      I4 => Q(4),
      I5 => \reg_op1[9]_i_3_n_0\,
      O => \^pcpi_rs1\(9)
    );
\reg_op1[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(9),
      O => \reg_op1[9]_i_2_n_0\
    );
\reg_op1[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[9]_i_4_n_0\,
      I1 => Q(2),
      I2 => \reg_op1_reg[11]_i_5_n_6\,
      O => \reg_op1[9]_i_3_n_0\
    );
\reg_op1[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \reg_op1[12]_i_5_n_0\,
      I1 => rd_reg_0(5),
      I2 => \^reg_sh_reg[4]\,
      I3 => \^instr_sll_reg\,
      I4 => rd_reg_0(8),
      I5 => \reg_op1[9]_i_5_n_0\,
      O => \reg_op1[9]_i_4_n_0\
    );
\reg_op1[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => rd_reg_0(10),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[9]_i_5_n_0\
    );
\reg_op1_reg[0]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \reg_op1_reg[0]_i_4_n_0\,
      CO(2) => \reg_op1_reg[0]_i_4_n_1\,
      CO(1) => \reg_op1_reg[0]_i_4_n_2\,
      CO(0) => \reg_op1_reg[0]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rd_reg_0(3 downto 0),
      O(3) => \reg_op1_reg[0]_i_4_n_4\,
      O(2) => \reg_op1_reg[0]_i_4_n_5\,
      O(1) => \reg_op1_reg[0]_i_4_n_6\,
      O(0) => \reg_op1_reg[0]_i_4_n_7\,
      S(3) => \reg_op1[0]_i_6_n_0\,
      S(2) => \reg_op1[0]_i_7_n_0\,
      S(1) => \reg_op1[0]_i_8_n_0\,
      S(0) => \reg_op1[0]_i_9_n_0\
    );
\reg_op1_reg[11]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_op1_reg[7]_i_5_n_0\,
      CO(3) => \reg_op1_reg[11]_i_5_n_0\,
      CO(2) => \reg_op1_reg[11]_i_5_n_1\,
      CO(1) => \reg_op1_reg[11]_i_5_n_2\,
      CO(0) => \reg_op1_reg[11]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rd_reg_0(11 downto 8),
      O(3) => \reg_op1_reg[11]_i_5_n_4\,
      O(2) => \reg_op1_reg[11]_i_5_n_5\,
      O(1) => \reg_op1_reg[11]_i_5_n_6\,
      O(0) => \reg_op1_reg[11]_i_5_n_7\,
      S(3) => \reg_op1[11]_i_7_n_0\,
      S(2) => \reg_op1[11]_i_8_n_0\,
      S(1) => \reg_op1[11]_i_9_n_0\,
      S(0) => \reg_op1[11]_i_10_n_0\
    );
\reg_op1_reg[15]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_op1_reg[11]_i_5_n_0\,
      CO(3) => \reg_op1_reg[15]_i_5_n_0\,
      CO(2) => \reg_op1_reg[15]_i_5_n_1\,
      CO(1) => \reg_op1_reg[15]_i_5_n_2\,
      CO(0) => \reg_op1_reg[15]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rd_reg_0(15 downto 12),
      O(3) => \reg_op1_reg[15]_i_5_n_4\,
      O(2) => \reg_op1_reg[15]_i_5_n_5\,
      O(1) => \reg_op1_reg[15]_i_5_n_6\,
      O(0) => \reg_op1_reg[15]_i_5_n_7\,
      S(3) => \reg_op1[15]_i_7_n_0\,
      S(2) => \reg_op1[15]_i_8_n_0\,
      S(1) => \reg_op1[15]_i_9_n_0\,
      S(0) => \reg_op1[15]_i_10_n_0\
    );
\reg_op1_reg[19]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_op1_reg[15]_i_5_n_0\,
      CO(3) => CO(0),
      CO(2) => \reg_op1_reg[19]_i_5_n_1\,
      CO(1) => \reg_op1_reg[19]_i_5_n_2\,
      CO(0) => \reg_op1_reg[19]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rd_reg_0(19 downto 16),
      O(3 downto 1) => O(2 downto 0),
      O(0) => \reg_op1_reg[19]_i_5_n_7\,
      S(3) => \reg_op1[19]_i_7_n_0\,
      S(2) => \reg_op1[19]_i_8_n_0\,
      S(1) => \reg_op1[19]_i_9_n_0\,
      S(0) => \reg_op1[19]_i_10_n_0\
    );
\reg_op1_reg[7]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_op1_reg[0]_i_4_n_0\,
      CO(3) => \reg_op1_reg[7]_i_5_n_0\,
      CO(2) => \reg_op1_reg[7]_i_5_n_1\,
      CO(1) => \reg_op1_reg[7]_i_5_n_2\,
      CO(0) => \reg_op1_reg[7]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => rd_reg_0(7 downto 4),
      O(3) => \reg_op1_reg[7]_i_5_n_4\,
      O(2) => \reg_op1_reg[7]_i_5_n_5\,
      O(1) => \reg_op1_reg[7]_i_5_n_6\,
      O(0) => \reg_op1_reg[7]_i_5_n_7\,
      S(3) => \reg_op1[7]_i_7_n_0\,
      S(2) => \reg_op1[7]_i_8_n_0\,
      S(1) => \reg_op1[7]_i_9_n_0\,
      S(0) => \reg_op1[7]_i_10_n_0\
    );
\reg_op2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => \^instr_jalr_reg\,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => rd0_5(0),
      I4 => reg_sh1(0),
      I5 => \^decoded_rs2_reg[4]\,
      O => \^pcpi_rs2\(0)
    );
\reg_op2[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => \^instr_jalr_reg\,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => rd0_5(10),
      I4 => reg_sh1(10),
      I5 => \^decoded_rs2_reg[4]\,
      O => \^pcpi_rs2\(10)
    );
\reg_op2[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => \^instr_jalr_reg\,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => rd0_5(11),
      I4 => reg_sh1(11),
      I5 => \^decoded_rs2_reg[4]\,
      O => \^pcpi_rs2\(11)
    );
\reg_op2[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => \^instr_jalr_reg\,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => rd0_4,
      I4 => reg_sh1(12),
      I5 => \^decoded_rs2_reg[4]\,
      O => \^pcpi_rs2\(12)
    );
\reg_op2[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => \^instr_jalr_reg\,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => rd0_3,
      I4 => reg_sh1(13),
      I5 => \^decoded_rs2_reg[4]\,
      O => \^pcpi_rs2\(13)
    );
\reg_op2[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => \^instr_jalr_reg\,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => rd0_2,
      I4 => reg_sh1(14),
      I5 => \^decoded_rs2_reg[4]\,
      O => \^pcpi_rs2\(14)
    );
\reg_op2[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => \^instr_jalr_reg\,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => rd0_1,
      I4 => reg_sh1(15),
      I5 => \^decoded_rs2_reg[4]\,
      O => \^pcpi_rs2\(15)
    );
\reg_op2[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => \^instr_jalr_reg\,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => rd0_0,
      I4 => reg_sh1(16),
      I5 => \^decoded_rs2_reg[4]\,
      O => \^pcpi_rs2\(16)
    );
\reg_op2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => \^instr_jalr_reg\,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => rd0_5(1),
      I4 => reg_sh1(1),
      I5 => \^decoded_rs2_reg[4]\,
      O => \^pcpi_rs2\(1)
    );
\reg_op2[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => \^instr_jalr_reg\,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => rd0_5(2),
      I4 => reg_sh1(2),
      I5 => \^decoded_rs2_reg[4]\,
      O => \^pcpi_rs2\(2)
    );
\reg_op2[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => resetn,
      I1 => Q(4),
      O => \^resetn_4\
    );
\reg_op2[31]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => instr_xor,
      I1 => instr_xori,
      O => \^instr_xor_reg\
    );
\reg_op2[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => instr_blt,
      I1 => instr_and,
      I2 => instr_sltiu,
      I3 => instr_addi,
      O => \reg_op2[31]_i_11_n_0\
    );
\reg_op2[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => instr_sh,
      I1 => instr_lh,
      I2 => instr_add,
      I3 => instr_bltu,
      O => \reg_op2[31]_i_12_n_0\
    );
\reg_op2[31]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => instr_beq,
      I1 => instr_bne,
      I2 => instr_bge,
      I3 => instr_lhu,
      I4 => instr_lbu,
      I5 => instr_lw,
      O => \reg_op2[31]_i_13_n_0\
    );
\reg_op2[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \^instr_jal_reg\,
      I1 => \cpu_state_reg[7]_0\,
      I2 => \^instr_sra_reg\,
      I3 => \^instr_srai_reg\,
      I4 => \^instr_lb_reg\,
      I5 => \^instr_slti_reg\,
      O => \^instr_jalr_reg\
    );
\reg_op2[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \decoded_rs2__0\(4),
      I1 => \decoded_rs2__0\(3),
      I2 => \decoded_rs2__0\(2),
      I3 => \decoded_rs2__0\(1),
      I4 => \decoded_rs2__0\(0),
      O => \^decoded_rs2_reg[4]\
    );
\reg_op2[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => instr_sra,
      I1 => instr_srl,
      I2 => \^instr_or_reg\,
      I3 => \^instr_sll_reg\,
      I4 => instr_rdinstrh,
      I5 => instr_rdcycle,
      O => \^instr_sra_reg\
    );
\reg_op2[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^instr_xor_reg\,
      I1 => instr_srai,
      I2 => instr_srli,
      I3 => instr_slt,
      I4 => instr_sltu,
      I5 => \^instr_rdinstr_reg\,
      O => \^instr_srai_reg\
    );
\reg_op2[31]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => instr_lb,
      I1 => DI(0),
      I2 => instr_andi,
      I3 => instr_sb,
      I4 => \reg_op2[31]_i_11_n_0\,
      O => \^instr_lb_reg\
    );
\reg_op2[31]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \reg_op2[31]_i_12_n_0\,
      I1 => instr_slti,
      I2 => instr_sw,
      I3 => instr_bgeu,
      I4 => \reg_op2[31]_i_13_n_0\,
      O => \^instr_slti_reg\
    );
\reg_op2[31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => instr_or,
      I1 => instr_ori,
      O => \^instr_or_reg\
    );
\reg_op2[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => \^instr_jalr_reg\,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => rd0_5(3),
      I4 => reg_sh1(3),
      I5 => \^decoded_rs2_reg[4]\,
      O => \^pcpi_rs2\(3)
    );
\reg_op2[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => \^instr_jalr_reg\,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => rd0_5(4),
      I4 => reg_sh1(4),
      I5 => \^decoded_rs2_reg[4]\,
      O => \^pcpi_rs2\(4)
    );
\reg_op2[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => \^instr_jalr_reg\,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => rd0_5(5),
      I4 => reg_sh1(5),
      I5 => \^decoded_rs2_reg[4]\,
      O => \^pcpi_rs2\(5)
    );
\reg_op2[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => \^instr_jalr_reg\,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => rd0_5(6),
      I4 => reg_sh1(6),
      I5 => \^decoded_rs2_reg[4]\,
      O => \^pcpi_rs2\(6)
    );
\reg_op2[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => \^instr_jalr_reg\,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => rd0_5(7),
      I4 => reg_sh1(7),
      I5 => \^decoded_rs2_reg[4]\,
      O => \^pcpi_rs2\(7)
    );
\reg_op2[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => \^instr_jalr_reg\,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => rd0_5(8),
      I4 => reg_sh1(8),
      I5 => \^decoded_rs2_reg[4]\,
      O => \^pcpi_rs2\(8)
    );
\reg_op2[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => \^instr_jalr_reg\,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => rd0_5(9),
      I4 => reg_sh1(9),
      I5 => \^decoded_rs2_reg[4]\,
      O => \^pcpi_rs2\(9)
    );
\reg_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEFFFEEEFE"
    )
        port map (
      I0 => \reg_out_reg[0]\,
      I1 => \reg_out_reg[0]_0\,
      I2 => \rd_reg[0]__0_n_0\,
      I3 => shift_out,
      I4 => \rd_reg__1\(32),
      I5 => \reg_out_reg[31]\,
      O => D(0)
    );
\reg_out[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F44"
    )
        port map (
      I0 => \reg_out_reg[10]\,
      I1 => Q(0),
      I2 => \reg_out_reg[31]\,
      I3 => pcpi_int_rd(10),
      I4 => \reg_out_reg[10]_0\,
      I5 => \reg_out_reg[10]_1\,
      O => D(10)
    );
\reg_out[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(42),
      I1 => shift_out,
      I2 => \rd_reg[10]__0_n_0\,
      O => pcpi_int_rd(10)
    );
\reg_out[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F44"
    )
        port map (
      I0 => \reg_out_reg[11]\,
      I1 => Q(0),
      I2 => \reg_out_reg[31]\,
      I3 => pcpi_int_rd(11),
      I4 => \reg_out_reg[11]_0\,
      I5 => \reg_out_reg[11]_1\,
      O => D(11)
    );
\reg_out[11]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_81\,
      I1 => rd_reg_n_98,
      O => \reg_out[11]_i_10_n_0\
    );
\reg_out[11]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_82\,
      I1 => rd_reg_n_99,
      O => \reg_out[11]_i_11_n_0\
    );
\reg_out[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(43),
      I1 => shift_out,
      I2 => \rd_reg[11]__0_n_0\,
      O => pcpi_int_rd(11)
    );
\reg_out[11]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_79\,
      I1 => rd_reg_n_96,
      O => \reg_out[11]_i_8_n_0\
    );
\reg_out[11]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_80\,
      I1 => rd_reg_n_97,
      O => \reg_out[11]_i_9_n_0\
    );
\reg_out[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F44"
    )
        port map (
      I0 => \reg_out_reg[12]\,
      I1 => Q(0),
      I2 => \reg_out_reg[31]\,
      I3 => pcpi_int_rd(12),
      I4 => \reg_out_reg[12]_0\,
      I5 => \reg_out_reg[12]_1\,
      O => D(12)
    );
\reg_out[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(44),
      I1 => shift_out,
      I2 => \rd_reg[12]__0_n_0\,
      O => pcpi_int_rd(12)
    );
\reg_out[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F44"
    )
        port map (
      I0 => \reg_out_reg[13]\,
      I1 => Q(0),
      I2 => \reg_out_reg[31]\,
      I3 => pcpi_int_rd(13),
      I4 => \reg_out_reg[13]_0\,
      I5 => \reg_out_reg[13]_1\,
      O => D(13)
    );
\reg_out[13]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(45),
      I1 => shift_out,
      I2 => \rd_reg[13]__0_n_0\,
      O => pcpi_int_rd(13)
    );
\reg_out[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F44"
    )
        port map (
      I0 => \reg_out_reg[14]\,
      I1 => Q(0),
      I2 => \reg_out_reg[31]\,
      I3 => pcpi_int_rd(14),
      I4 => \reg_out_reg[14]_0\,
      I5 => \reg_out_reg[14]_1\,
      O => D(14)
    );
\reg_out[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(46),
      I1 => shift_out,
      I2 => \rd_reg[14]__0_n_0\,
      O => pcpi_int_rd(14)
    );
\reg_out[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F44"
    )
        port map (
      I0 => \reg_out_reg[15]\,
      I1 => Q(0),
      I2 => \reg_out_reg[31]\,
      I3 => pcpi_int_rd(15),
      I4 => \reg_out_reg[15]_0\,
      I5 => \reg_out_reg[15]_1\,
      O => D(15)
    );
\reg_out[15]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_75\,
      I1 => rd_reg_n_92,
      O => \reg_out[15]_i_10_n_0\
    );
\reg_out[15]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_76\,
      I1 => rd_reg_n_93,
      O => \reg_out[15]_i_11_n_0\
    );
\reg_out[15]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_77\,
      I1 => rd_reg_n_94,
      O => \reg_out[15]_i_12_n_0\
    );
\reg_out[15]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_78\,
      I1 => rd_reg_n_95,
      O => \reg_out[15]_i_13_n_0\
    );
\reg_out[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(47),
      I1 => shift_out,
      I2 => \rd_reg[15]__0_n_0\,
      O => pcpi_int_rd(15)
    );
\reg_out[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBA"
    )
        port map (
      I0 => \reg_out_reg[16]\,
      I1 => \reg_out_reg[31]\,
      I2 => pcpi_int_rd(16),
      I3 => \reg_out_reg[16]_0\,
      I4 => \reg_out_reg[16]_1\,
      O => D(16)
    );
\reg_out[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(48),
      I1 => shift_out,
      I2 => \rd_reg__1\(16),
      O => pcpi_int_rd(16)
    );
\reg_out[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBA"
    )
        port map (
      I0 => \reg_out_reg[17]\,
      I1 => \reg_out_reg[31]\,
      I2 => pcpi_int_rd(17),
      I3 => \reg_out_reg[17]_0\,
      I4 => \reg_out_reg[17]_1\,
      O => D(17)
    );
\reg_out[17]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(49),
      I1 => shift_out,
      I2 => \rd_reg__1\(17),
      O => pcpi_int_rd(17)
    );
\reg_out[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBA"
    )
        port map (
      I0 => \reg_out_reg[18]\,
      I1 => \reg_out_reg[31]\,
      I2 => pcpi_int_rd(18),
      I3 => \reg_out_reg[18]_0\,
      I4 => \reg_out_reg[18]_1\,
      O => D(18)
    );
\reg_out[18]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(50),
      I1 => shift_out,
      I2 => \rd_reg__1\(18),
      O => pcpi_int_rd(18)
    );
\reg_out[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBA"
    )
        port map (
      I0 => \reg_out_reg[19]\,
      I1 => \reg_out_reg[31]\,
      I2 => pcpi_int_rd(19),
      I3 => \reg_out_reg[19]_0\,
      I4 => \reg_out_reg[19]_1\,
      O => D(19)
    );
\reg_out[19]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_72\,
      I1 => rd_reg_n_89,
      O => \reg_out[19]_i_10_n_0\
    );
\reg_out[19]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_73\,
      I1 => rd_reg_n_90,
      O => \reg_out[19]_i_11_n_0\
    );
\reg_out[19]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_74\,
      I1 => rd_reg_n_91,
      O => \reg_out[19]_i_12_n_0\
    );
\reg_out[19]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_103\,
      I1 => \rd_reg_n_0_[2]\,
      O => \reg_out[19]_i_13_n_0\
    );
\reg_out[19]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_104\,
      I1 => \rd_reg_n_0_[1]\,
      O => \reg_out[19]_i_14_n_0\
    );
\reg_out[19]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_105\,
      I1 => \rd_reg_n_0_[0]\,
      O => \reg_out[19]_i_15_n_0\
    );
\reg_out[19]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(51),
      I1 => shift_out,
      I2 => \rd_reg__1\(19),
      O => pcpi_int_rd(19)
    );
\reg_out[19]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_71\,
      I1 => rd_reg_n_88,
      O => \reg_out[19]_i_9_n_0\
    );
\reg_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAFEAE"
    )
        port map (
      I0 => \reg_out_reg[1]\,
      I1 => \rd_reg[1]__0_n_0\,
      I2 => shift_out,
      I3 => \rd_reg__1\(33),
      I4 => \reg_out_reg[31]\,
      I5 => \reg_out_reg[1]_0\,
      O => D(1)
    );
\reg_out[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFEE"
    )
        port map (
      I0 => \reg_out_reg[20]\,
      I1 => \reg_out_reg[20]_0\,
      I2 => \reg_out_reg[31]\,
      I3 => pcpi_int_rd(20),
      I4 => \reg_out_reg[20]_1\,
      O => D(20)
    );
\reg_out[20]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(52),
      I1 => shift_out,
      I2 => \rd_reg__1\(20),
      O => pcpi_int_rd(20)
    );
\reg_out[20]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => instr_rdinstr,
      I1 => instr_rdcycleh,
      O => \^instr_rdinstr_reg\
    );
\reg_out[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBA"
    )
        port map (
      I0 => \reg_out_reg[21]\,
      I1 => \reg_out_reg[31]\,
      I2 => pcpi_int_rd(21),
      I3 => \reg_out_reg[21]_0\,
      I4 => \reg_out_reg[21]_1\,
      O => D(21)
    );
\reg_out[21]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(53),
      I1 => shift_out,
      I2 => \rd_reg__1\(21),
      O => pcpi_int_rd(21)
    );
\reg_out[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBA"
    )
        port map (
      I0 => \reg_out_reg[22]\,
      I1 => \reg_out_reg[31]\,
      I2 => pcpi_int_rd(22),
      I3 => \reg_out_reg[22]_0\,
      I4 => \reg_out_reg[22]_1\,
      O => D(22)
    );
\reg_out[22]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(54),
      I1 => shift_out,
      I2 => \rd_reg__1\(22),
      O => pcpi_int_rd(22)
    );
\reg_out[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBA"
    )
        port map (
      I0 => \reg_out_reg[23]\,
      I1 => \reg_out_reg[31]\,
      I2 => pcpi_int_rd(23),
      I3 => \reg_out_reg[23]_0\,
      I4 => \reg_out_reg[23]_1\,
      O => D(23)
    );
\reg_out[23]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_68\,
      I1 => rd_reg_n_85,
      O => \reg_out[23]_i_10_n_0\
    );
\reg_out[23]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_69\,
      I1 => rd_reg_n_86,
      O => \reg_out[23]_i_11_n_0\
    );
\reg_out[23]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_70\,
      I1 => rd_reg_n_87,
      O => \reg_out[23]_i_12_n_0\
    );
\reg_out[23]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_99\,
      I1 => \rd_reg_n_0_[6]\,
      O => \reg_out[23]_i_13_n_0\
    );
\reg_out[23]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_100\,
      I1 => \rd_reg_n_0_[5]\,
      O => \reg_out[23]_i_14_n_0\
    );
\reg_out[23]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_101\,
      I1 => \rd_reg_n_0_[4]\,
      O => \reg_out[23]_i_15_n_0\
    );
\reg_out[23]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_102\,
      I1 => \rd_reg_n_0_[3]\,
      O => \reg_out[23]_i_16_n_0\
    );
\reg_out[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(55),
      I1 => shift_out,
      I2 => \rd_reg__1\(23),
      O => pcpi_int_rd(23)
    );
\reg_out[23]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_67\,
      I1 => rd_reg_n_84,
      O => \reg_out[23]_i_9_n_0\
    );
\reg_out[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBA"
    )
        port map (
      I0 => \reg_out_reg[24]\,
      I1 => \reg_out_reg[31]\,
      I2 => pcpi_int_rd(24),
      I3 => \reg_out_reg[24]_0\,
      I4 => \reg_out_reg[24]_1\,
      O => D(24)
    );
\reg_out[24]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(56),
      I1 => shift_out,
      I2 => \rd_reg__1\(24),
      O => pcpi_int_rd(24)
    );
\reg_out[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBA"
    )
        port map (
      I0 => \reg_out_reg[25]\,
      I1 => \reg_out_reg[31]\,
      I2 => pcpi_int_rd(25),
      I3 => \reg_out_reg[25]_0\,
      I4 => \reg_out_reg[25]_1\,
      O => D(25)
    );
\reg_out[25]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(57),
      I1 => shift_out,
      I2 => \rd_reg__1\(25),
      O => pcpi_int_rd(25)
    );
\reg_out[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBA"
    )
        port map (
      I0 => \reg_out_reg[26]\,
      I1 => \reg_out_reg[31]\,
      I2 => pcpi_int_rd(26),
      I3 => \reg_out_reg[26]_0\,
      I4 => \reg_out_reg[26]_1\,
      O => D(26)
    );
\reg_out[26]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(58),
      I1 => shift_out,
      I2 => \rd_reg__1\(26),
      O => pcpi_int_rd(26)
    );
\reg_out[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBA"
    )
        port map (
      I0 => \reg_out_reg[27]\,
      I1 => \reg_out_reg[31]\,
      I2 => pcpi_int_rd(27),
      I3 => \reg_out_reg[27]_0\,
      I4 => \reg_out_reg[27]_1\,
      O => D(27)
    );
\reg_out[27]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_64\,
      I1 => rd_reg_n_81,
      O => \reg_out[27]_i_10_n_0\
    );
\reg_out[27]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_65\,
      I1 => rd_reg_n_82,
      O => \reg_out[27]_i_11_n_0\
    );
\reg_out[27]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_66\,
      I1 => rd_reg_n_83,
      O => \reg_out[27]_i_12_n_0\
    );
\reg_out[27]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_95\,
      I1 => \rd_reg_n_0_[10]\,
      O => \reg_out[27]_i_13_n_0\
    );
\reg_out[27]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_96\,
      I1 => \rd_reg_n_0_[9]\,
      O => \reg_out[27]_i_14_n_0\
    );
\reg_out[27]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_97\,
      I1 => \rd_reg_n_0_[8]\,
      O => \reg_out[27]_i_15_n_0\
    );
\reg_out[27]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_98\,
      I1 => \rd_reg_n_0_[7]\,
      O => \reg_out[27]_i_16_n_0\
    );
\reg_out[27]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(59),
      I1 => shift_out,
      I2 => \rd_reg__1\(27),
      O => pcpi_int_rd(27)
    );
\reg_out[27]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_63\,
      I1 => rd_reg_n_80,
      O => \reg_out[27]_i_9_n_0\
    );
\reg_out[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBA"
    )
        port map (
      I0 => \reg_out_reg[28]\,
      I1 => \reg_out_reg[31]\,
      I2 => pcpi_int_rd(28),
      I3 => \reg_out_reg[28]_0\,
      I4 => \reg_out_reg[28]_1\,
      O => D(28)
    );
\reg_out[28]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(60),
      I1 => shift_out,
      I2 => \rd_reg__1\(28),
      O => pcpi_int_rd(28)
    );
\reg_out[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFFBAFFFFFFBA"
    )
        port map (
      I0 => \reg_out_reg[29]\,
      I1 => \reg_out_reg[31]\,
      I2 => pcpi_int_rd(29),
      I3 => \reg_out_reg[29]_0\,
      I4 => Q(4),
      I5 => \reg_out_reg[29]_1\,
      O => D(29)
    );
\reg_out[29]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(61),
      I1 => shift_out,
      I2 => \rd_reg__1\(29),
      O => pcpi_int_rd(29)
    );
\reg_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEFFFEEEFE"
    )
        port map (
      I0 => \reg_out_reg[2]\,
      I1 => \reg_out_reg[2]_0\,
      I2 => \rd_reg[2]__0_n_0\,
      I3 => shift_out,
      I4 => \rd_reg__1\(34),
      I5 => \reg_out_reg[31]\,
      O => D(2)
    );
\reg_out[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBA"
    )
        port map (
      I0 => \reg_out_reg[30]\,
      I1 => \reg_out_reg[31]\,
      I2 => pcpi_int_rd(30),
      I3 => \reg_out_reg[30]_0\,
      I4 => \reg_out_reg[30]_1\,
      O => D(30)
    );
\reg_out[30]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(62),
      I1 => shift_out,
      I2 => \rd_reg__1\(30),
      O => pcpi_int_rd(30)
    );
\reg_out[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFFBAFFFFFFBA"
    )
        port map (
      I0 => \reg_out_reg[31]_0\,
      I1 => \reg_out_reg[31]\,
      I2 => pcpi_int_rd(31),
      I3 => \reg_out_reg[31]_1\,
      I4 => Q(4),
      I5 => \reg_out_reg[31]_2\,
      O => D(31)
    );
\reg_out[31]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_59\,
      I1 => rd_reg_n_76,
      O => \reg_out[31]_i_14_n_0\
    );
\reg_out[31]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_60\,
      I1 => rd_reg_n_77,
      O => \reg_out[31]_i_15_n_0\
    );
\reg_out[31]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_61\,
      I1 => rd_reg_n_78,
      O => \reg_out[31]_i_16_n_0\
    );
\reg_out[31]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_62\,
      I1 => rd_reg_n_79,
      O => \reg_out[31]_i_17_n_0\
    );
\reg_out[31]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_91\,
      I1 => \rd_reg_n_0_[14]\,
      O => \reg_out[31]_i_18_n_0\
    );
\reg_out[31]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_92\,
      I1 => \rd_reg_n_0_[13]\,
      O => \reg_out[31]_i_19_n_0\
    );
\reg_out[31]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_93\,
      I1 => \rd_reg_n_0_[12]\,
      O => \reg_out[31]_i_20_n_0\
    );
\reg_out[31]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_94\,
      I1 => \rd_reg_n_0_[11]\,
      O => \reg_out[31]_i_21_n_0\
    );
\reg_out[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(63),
      I1 => shift_out,
      I2 => \rd_reg__1\(31),
      O => pcpi_int_rd(31)
    );
\reg_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEFFFEEEFE"
    )
        port map (
      I0 => \reg_out_reg[3]\,
      I1 => \reg_out_reg[3]_0\,
      I2 => \rd_reg[3]__0_n_0\,
      I3 => shift_out,
      I4 => \rd_reg__1\(35),
      I5 => \reg_out_reg[31]\,
      O => D(3)
    );
\reg_out[3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_90\,
      I1 => \rd_reg_n_0_[15]\,
      O => \reg_out[3]_i_10_n_0\
    );
\reg_out[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_87\,
      I1 => rd_reg_n_104,
      O => \reg_out[3]_i_7_n_0\
    );
\reg_out[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_88\,
      I1 => rd_reg_n_105,
      O => \reg_out[3]_i_8_n_0\
    );
\reg_out[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_89\,
      I1 => \rd_reg_n_0_[16]\,
      O => \reg_out[3]_i_9_n_0\
    );
\reg_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEFFFEEEFE"
    )
        port map (
      I0 => \reg_out_reg[4]\,
      I1 => \reg_out_reg[4]_0\,
      I2 => \rd_reg[4]__0_n_0\,
      I3 => shift_out,
      I4 => \rd_reg__1\(36),
      I5 => \reg_out_reg[31]\,
      O => D(4)
    );
\reg_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEFFFEEEFE"
    )
        port map (
      I0 => \reg_out_reg[5]\,
      I1 => \reg_out_reg[5]_0\,
      I2 => \rd_reg[5]__0_n_0\,
      I3 => shift_out,
      I4 => \rd_reg__1\(37),
      I5 => \reg_out_reg[31]\,
      O => D(5)
    );
\reg_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEFFFEEEFE"
    )
        port map (
      I0 => \reg_out_reg[6]\,
      I1 => \reg_out_reg[6]_0\,
      I2 => \rd_reg[6]__0_n_0\,
      I3 => shift_out,
      I4 => \rd_reg__1\(38),
      I5 => \reg_out_reg[31]\,
      O => D(6)
    );
\reg_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEFFFEEEFE"
    )
        port map (
      I0 => \reg_out_reg[7]\,
      I1 => \reg_out_reg[7]_0\,
      I2 => \rd_reg[7]__0_n_0\,
      I3 => shift_out,
      I4 => \rd_reg__1\(39),
      I5 => \reg_out_reg[31]\,
      O => D(7)
    );
\reg_out[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_85\,
      I1 => rd_reg_n_102,
      O => \reg_out[7]_i_10_n_0\
    );
\reg_out[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_86\,
      I1 => rd_reg_n_103,
      O => \reg_out[7]_i_11_n_0\
    );
\reg_out[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_83\,
      I1 => rd_reg_n_100,
      O => \reg_out[7]_i_8_n_0\
    );
\reg_out[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_reg__0_n_84\,
      I1 => rd_reg_n_101,
      O => \reg_out[7]_i_9_n_0\
    );
\reg_out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F44"
    )
        port map (
      I0 => \reg_out_reg[8]\,
      I1 => Q(0),
      I2 => \reg_out_reg[31]\,
      I3 => pcpi_int_rd(8),
      I4 => \reg_out_reg[8]_0\,
      I5 => \reg_out_reg[8]_1\,
      O => D(8)
    );
\reg_out[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(40),
      I1 => shift_out,
      I2 => \rd_reg[8]__0_n_0\,
      O => pcpi_int_rd(8)
    );
\reg_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F44"
    )
        port map (
      I0 => \reg_out_reg[9]\,
      I1 => Q(0),
      I2 => \reg_out_reg[31]\,
      I3 => pcpi_int_rd(9),
      I4 => \reg_out_reg[9]_0\,
      I5 => \reg_out_reg[9]_1\,
      O => D(9)
    );
\reg_out[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rd_reg__1\(41),
      I1 => shift_out,
      I2 => \rd_reg[9]__0_n_0\,
      O => pcpi_int_rd(9)
    );
\reg_out_reg[11]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_out_reg[7]_i_4_n_0\,
      CO(3) => \reg_out_reg[11]_i_6_n_0\,
      CO(2) => \reg_out_reg[11]_i_6_n_1\,
      CO(1) => \reg_out_reg[11]_i_6_n_2\,
      CO(0) => \reg_out_reg[11]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \rd_reg__0_n_79\,
      DI(2) => \rd_reg__0_n_80\,
      DI(1) => \rd_reg__0_n_81\,
      DI(0) => \rd_reg__0_n_82\,
      O(3 downto 0) => \rd_reg__1\(43 downto 40),
      S(3) => \reg_out[11]_i_8_n_0\,
      S(2) => \reg_out[11]_i_9_n_0\,
      S(1) => \reg_out[11]_i_10_n_0\,
      S(0) => \reg_out[11]_i_11_n_0\
    );
\reg_out_reg[15]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_out_reg[11]_i_6_n_0\,
      CO(3) => \reg_out_reg[15]_i_8_n_0\,
      CO(2) => \reg_out_reg[15]_i_8_n_1\,
      CO(1) => \reg_out_reg[15]_i_8_n_2\,
      CO(0) => \reg_out_reg[15]_i_8_n_3\,
      CYINIT => '0',
      DI(3) => \rd_reg__0_n_75\,
      DI(2) => \rd_reg__0_n_76\,
      DI(1) => \rd_reg__0_n_77\,
      DI(0) => \rd_reg__0_n_78\,
      O(3 downto 0) => \rd_reg__1\(47 downto 44),
      S(3) => \reg_out[15]_i_10_n_0\,
      S(2) => \reg_out[15]_i_11_n_0\,
      S(1) => \reg_out[15]_i_12_n_0\,
      S(0) => \reg_out[15]_i_13_n_0\
    );
\reg_out_reg[19]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_out_reg[15]_i_8_n_0\,
      CO(3) => \reg_out_reg[19]_i_6_n_0\,
      CO(2) => \reg_out_reg[19]_i_6_n_1\,
      CO(1) => \reg_out_reg[19]_i_6_n_2\,
      CO(0) => \reg_out_reg[19]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \rd_reg__0_n_71\,
      DI(2) => \rd_reg__0_n_72\,
      DI(1) => \rd_reg__0_n_73\,
      DI(0) => \rd_reg__0_n_74\,
      O(3 downto 0) => \rd_reg__1\(51 downto 48),
      S(3) => \reg_out[19]_i_9_n_0\,
      S(2) => \reg_out[19]_i_10_n_0\,
      S(1) => \reg_out[19]_i_11_n_0\,
      S(0) => \reg_out[19]_i_12_n_0\
    );
\reg_out_reg[19]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \reg_out_reg[19]_i_7_n_0\,
      CO(2) => \reg_out_reg[19]_i_7_n_1\,
      CO(1) => \reg_out_reg[19]_i_7_n_2\,
      CO(0) => \reg_out_reg[19]_i_7_n_3\,
      CYINIT => '0',
      DI(3) => \rd_reg__0_n_103\,
      DI(2) => \rd_reg__0_n_104\,
      DI(1) => \rd_reg__0_n_105\,
      DI(0) => '0',
      O(3 downto 0) => \rd_reg__1\(19 downto 16),
      S(3) => \reg_out[19]_i_13_n_0\,
      S(2) => \reg_out[19]_i_14_n_0\,
      S(1) => \reg_out[19]_i_15_n_0\,
      S(0) => \rd_reg[16]__0_n_0\
    );
\reg_out_reg[23]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_out_reg[19]_i_6_n_0\,
      CO(3) => \reg_out_reg[23]_i_6_n_0\,
      CO(2) => \reg_out_reg[23]_i_6_n_1\,
      CO(1) => \reg_out_reg[23]_i_6_n_2\,
      CO(0) => \reg_out_reg[23]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \rd_reg__0_n_67\,
      DI(2) => \rd_reg__0_n_68\,
      DI(1) => \rd_reg__0_n_69\,
      DI(0) => \rd_reg__0_n_70\,
      O(3 downto 0) => \rd_reg__1\(55 downto 52),
      S(3) => \reg_out[23]_i_9_n_0\,
      S(2) => \reg_out[23]_i_10_n_0\,
      S(1) => \reg_out[23]_i_11_n_0\,
      S(0) => \reg_out[23]_i_12_n_0\
    );
\reg_out_reg[23]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_out_reg[19]_i_7_n_0\,
      CO(3) => \reg_out_reg[23]_i_7_n_0\,
      CO(2) => \reg_out_reg[23]_i_7_n_1\,
      CO(1) => \reg_out_reg[23]_i_7_n_2\,
      CO(0) => \reg_out_reg[23]_i_7_n_3\,
      CYINIT => '0',
      DI(3) => \rd_reg__0_n_99\,
      DI(2) => \rd_reg__0_n_100\,
      DI(1) => \rd_reg__0_n_101\,
      DI(0) => \rd_reg__0_n_102\,
      O(3 downto 0) => \rd_reg__1\(23 downto 20),
      S(3) => \reg_out[23]_i_13_n_0\,
      S(2) => \reg_out[23]_i_14_n_0\,
      S(1) => \reg_out[23]_i_15_n_0\,
      S(0) => \reg_out[23]_i_16_n_0\
    );
\reg_out_reg[27]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_out_reg[23]_i_6_n_0\,
      CO(3) => \reg_out_reg[27]_i_6_n_0\,
      CO(2) => \reg_out_reg[27]_i_6_n_1\,
      CO(1) => \reg_out_reg[27]_i_6_n_2\,
      CO(0) => \reg_out_reg[27]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \rd_reg__0_n_63\,
      DI(2) => \rd_reg__0_n_64\,
      DI(1) => \rd_reg__0_n_65\,
      DI(0) => \rd_reg__0_n_66\,
      O(3 downto 0) => \rd_reg__1\(59 downto 56),
      S(3) => \reg_out[27]_i_9_n_0\,
      S(2) => \reg_out[27]_i_10_n_0\,
      S(1) => \reg_out[27]_i_11_n_0\,
      S(0) => \reg_out[27]_i_12_n_0\
    );
\reg_out_reg[27]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_out_reg[23]_i_7_n_0\,
      CO(3) => \reg_out_reg[27]_i_7_n_0\,
      CO(2) => \reg_out_reg[27]_i_7_n_1\,
      CO(1) => \reg_out_reg[27]_i_7_n_2\,
      CO(0) => \reg_out_reg[27]_i_7_n_3\,
      CYINIT => '0',
      DI(3) => \rd_reg__0_n_95\,
      DI(2) => \rd_reg__0_n_96\,
      DI(1) => \rd_reg__0_n_97\,
      DI(0) => \rd_reg__0_n_98\,
      O(3 downto 0) => \rd_reg__1\(27 downto 24),
      S(3) => \reg_out[27]_i_13_n_0\,
      S(2) => \reg_out[27]_i_14_n_0\,
      S(1) => \reg_out[27]_i_15_n_0\,
      S(0) => \reg_out[27]_i_16_n_0\
    );
\reg_out_reg[31]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_out_reg[27]_i_7_n_0\,
      CO(3) => \reg_out_reg[31]_i_10_n_0\,
      CO(2) => \reg_out_reg[31]_i_10_n_1\,
      CO(1) => \reg_out_reg[31]_i_10_n_2\,
      CO(0) => \reg_out_reg[31]_i_10_n_3\,
      CYINIT => '0',
      DI(3) => \rd_reg__0_n_91\,
      DI(2) => \rd_reg__0_n_92\,
      DI(1) => \rd_reg__0_n_93\,
      DI(0) => \rd_reg__0_n_94\,
      O(3 downto 0) => \rd_reg__1\(31 downto 28),
      S(3) => \reg_out[31]_i_18_n_0\,
      S(2) => \reg_out[31]_i_19_n_0\,
      S(1) => \reg_out[31]_i_20_n_0\,
      S(0) => \reg_out[31]_i_21_n_0\
    );
\reg_out_reg[31]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_out_reg[27]_i_6_n_0\,
      CO(3) => \NLW_reg_out_reg[31]_i_9_CO_UNCONNECTED\(3),
      CO(2) => \reg_out_reg[31]_i_9_n_1\,
      CO(1) => \reg_out_reg[31]_i_9_n_2\,
      CO(0) => \reg_out_reg[31]_i_9_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \rd_reg__0_n_60\,
      DI(1) => \rd_reg__0_n_61\,
      DI(0) => \rd_reg__0_n_62\,
      O(3 downto 0) => \rd_reg__1\(63 downto 60),
      S(3) => \reg_out[31]_i_14_n_0\,
      S(2) => \reg_out[31]_i_15_n_0\,
      S(1) => \reg_out[31]_i_16_n_0\,
      S(0) => \reg_out[31]_i_17_n_0\
    );
\reg_out_reg[3]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_out_reg[31]_i_10_n_0\,
      CO(3) => \reg_out_reg[3]_i_4_n_0\,
      CO(2) => \reg_out_reg[3]_i_4_n_1\,
      CO(1) => \reg_out_reg[3]_i_4_n_2\,
      CO(0) => \reg_out_reg[3]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => \rd_reg__0_n_87\,
      DI(2) => \rd_reg__0_n_88\,
      DI(1) => \rd_reg__0_n_89\,
      DI(0) => \rd_reg__0_n_90\,
      O(3 downto 0) => \rd_reg__1\(35 downto 32),
      S(3) => \reg_out[3]_i_7_n_0\,
      S(2) => \reg_out[3]_i_8_n_0\,
      S(1) => \reg_out[3]_i_9_n_0\,
      S(0) => \reg_out[3]_i_10_n_0\
    );
\reg_out_reg[7]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_out_reg[3]_i_4_n_0\,
      CO(3) => \reg_out_reg[7]_i_4_n_0\,
      CO(2) => \reg_out_reg[7]_i_4_n_1\,
      CO(1) => \reg_out_reg[7]_i_4_n_2\,
      CO(0) => \reg_out_reg[7]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => \rd_reg__0_n_83\,
      DI(2) => \rd_reg__0_n_84\,
      DI(1) => \rd_reg__0_n_85\,
      DI(0) => \rd_reg__0_n_86\,
      O(3 downto 0) => \rd_reg__1\(39 downto 36),
      S(3) => \reg_out[7]_i_8_n_0\,
      S(2) => \reg_out[7]_i_9_n_0\,
      S(1) => \reg_out[7]_i_10_n_0\,
      S(0) => \reg_out[7]_i_11_n_0\
    );
\reg_sh[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \reg_sh_reg[0]\(4),
      I1 => \reg_sh_reg[0]\(2),
      I2 => \reg_sh_reg[0]\(3),
      O => \^reg_sh_reg[4]\
    );
shift_out_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2220"
    )
        port map (
      I0 => instr_mulh1,
      I1 => \rd_reg__0_0\(9),
      I2 => \rd_reg__0_0\(7),
      I3 => \rd_reg__0_0\(8),
      O => instr_any_mulh
    );
shift_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => instr_any_mulh,
      Q => shift_out,
      R => '0'
    );
trap_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \^resetn_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32 is
  port (
    is_lui_auipc_jal_jalr_addi_add_sub0 : out STD_LOGIC;
    instr_jal_reg_0 : out STD_LOGIC;
    instr_sub : out STD_LOGIC;
    instr_add : out STD_LOGIC;
    instr_addi : out STD_LOGIC;
    instr_jalr : out STD_LOGIC;
    is_lbu_lhu_lw : out STD_LOGIC;
    instr_ecall_ebreak : out STD_LOGIC;
    pcpi_timeout : out STD_LOGIC;
    trap_reg_0 : out STD_LOGIC;
    mem_axi_arprot : out STD_LOGIC_VECTOR ( 0 to 0 );
    instr_lh : out STD_LOGIC;
    instr_lb : out STD_LOGIC;
    mem_do_wdata : out STD_LOGIC;
    mem_do_rdata : out STD_LOGIC;
    mem_valid : out STD_LOGIC;
    is_beq_bne_blt_bge_bltu_bgeu : out STD_LOGIC;
    latched_branch_reg_0 : out STD_LOGIC;
    latched_stalu_reg_0 : out STD_LOGIC;
    latched_is_lb_reg_0 : out STD_LOGIC;
    latched_is_lh_reg_0 : out STD_LOGIC;
    latched_is_lu_reg_0 : out STD_LOGIC;
    latched_store_reg_0 : out STD_LOGIC;
    mem_do_prefetch_reg_0 : out STD_LOGIC;
    pcpi_valid : out STD_LOGIC;
    mem_axi_rready : out STD_LOGIC;
    \mem_wstrb_reg[2]_0\ : out STD_LOGIC;
    \mem_wstrb_reg[3]_0\ : out STD_LOGIC;
    \mem_wstrb_reg[0]_0\ : out STD_LOGIC;
    \mem_wstrb_reg[1]_0\ : out STD_LOGIC;
    \cpu_state_reg[5]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    instr_beq_reg_0 : out STD_LOGIC;
    \cpu_state_reg[5]_1\ : out STD_LOGIC;
    \active_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_op1_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \pcpi_insn_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \reg_op2_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_axi_awvalid : out STD_LOGIC;
    mem_axi_wvalid : out STD_LOGIC;
    mem_axi_bready : out STD_LOGIC;
    mem_axi_arvalid : out STD_LOGIC;
    mem_axi_bvalid_0 : out STD_LOGIC;
    latched_is_lu : out STD_LOGIC;
    mem_axi_awaddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    mem_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \mem_state_reg[0]_0\ : out STD_LOGIC;
    \cpu_state_reg[7]_0\ : out STD_LOGIC;
    \active_reg[1]_0\ : out STD_LOGIC;
    instr_bge_reg_0 : out STD_LOGIC;
    decoder_trigger_reg_0 : out STD_LOGIC;
    \cpu_state_reg[3]_0\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    mem_do_wdata_reg_0 : in STD_LOGIC;
    mem_do_rdata_reg_0 : in STD_LOGIC;
    latched_branch_reg_1 : in STD_LOGIC;
    latched_stalu_reg_1 : in STD_LOGIC;
    latched_is_lb_reg_1 : in STD_LOGIC;
    latched_is_lh_reg_1 : in STD_LOGIC;
    latched_is_lu_reg_1 : in STD_LOGIC;
    is_lui_auipc_jal_jalr_addi_add_sub_reg_0 : in STD_LOGIC;
    latched_store_reg_1 : in STD_LOGIC;
    pcpi_valid_reg_0 : in STD_LOGIC;
    mem_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_axi_bvalid : in STD_LOGIC;
    mem_axi_rvalid : in STD_LOGIC;
    resetn : in STD_LOGIC;
    ack_awvalid : in STD_LOGIC;
    mem_axi_wvalid_0 : in STD_LOGIC;
    mem_axi_arvalid_0 : in STD_LOGIC;
    xfer_done : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32 is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal alu_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal alu_out_q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \alu_out_q[0]_i_10_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_11_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_12_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_13_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_14_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_15_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_17_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_18_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_19_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_21_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_22_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_23_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_24_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_25_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_26_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_27_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_28_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_30_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_31_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_32_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_33_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_35_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_36_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_37_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_38_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_39_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_3_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_40_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_41_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_42_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_43_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_44_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_45_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_46_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_47_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_48_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_49_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_50_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_51_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_52_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_53_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_54_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_8_n_0\ : STD_LOGIC;
  signal \alu_out_q[0]_i_9_n_0\ : STD_LOGIC;
  signal \alu_out_q[10]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q[11]_i_3_n_0\ : STD_LOGIC;
  signal \alu_out_q[11]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out_q[11]_i_5_n_0\ : STD_LOGIC;
  signal \alu_out_q[11]_i_6_n_0\ : STD_LOGIC;
  signal \alu_out_q[11]_i_7_n_0\ : STD_LOGIC;
  signal \alu_out_q[12]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q[13]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q[14]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q[15]_i_3_n_0\ : STD_LOGIC;
  signal \alu_out_q[15]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out_q[15]_i_5_n_0\ : STD_LOGIC;
  signal \alu_out_q[15]_i_6_n_0\ : STD_LOGIC;
  signal \alu_out_q[15]_i_7_n_0\ : STD_LOGIC;
  signal \alu_out_q[16]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q[17]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q[18]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q[19]_i_3_n_0\ : STD_LOGIC;
  signal \alu_out_q[19]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out_q[19]_i_5_n_0\ : STD_LOGIC;
  signal \alu_out_q[19]_i_6_n_0\ : STD_LOGIC;
  signal \alu_out_q[19]_i_7_n_0\ : STD_LOGIC;
  signal \alu_out_q[1]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q[20]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q[21]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q[22]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q[23]_i_3_n_0\ : STD_LOGIC;
  signal \alu_out_q[23]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out_q[23]_i_5_n_0\ : STD_LOGIC;
  signal \alu_out_q[23]_i_6_n_0\ : STD_LOGIC;
  signal \alu_out_q[23]_i_7_n_0\ : STD_LOGIC;
  signal \alu_out_q[24]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q[25]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q[26]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q[27]_i_3_n_0\ : STD_LOGIC;
  signal \alu_out_q[27]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out_q[27]_i_5_n_0\ : STD_LOGIC;
  signal \alu_out_q[27]_i_6_n_0\ : STD_LOGIC;
  signal \alu_out_q[27]_i_7_n_0\ : STD_LOGIC;
  signal \alu_out_q[28]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q[29]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q[2]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q[30]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q[31]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q[31]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out_q[31]_i_5_n_0\ : STD_LOGIC;
  signal \alu_out_q[31]_i_6_n_0\ : STD_LOGIC;
  signal \alu_out_q[31]_i_7_n_0\ : STD_LOGIC;
  signal \alu_out_q[31]_i_8_n_0\ : STD_LOGIC;
  signal \alu_out_q[31]_i_9_n_0\ : STD_LOGIC;
  signal \alu_out_q[3]_i_3_n_0\ : STD_LOGIC;
  signal \alu_out_q[3]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out_q[3]_i_5_n_0\ : STD_LOGIC;
  signal \alu_out_q[3]_i_6_n_0\ : STD_LOGIC;
  signal \alu_out_q[3]_i_7_n_0\ : STD_LOGIC;
  signal \alu_out_q[4]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q[5]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q[6]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q[7]_i_3_n_0\ : STD_LOGIC;
  signal \alu_out_q[7]_i_4_n_0\ : STD_LOGIC;
  signal \alu_out_q[7]_i_5_n_0\ : STD_LOGIC;
  signal \alu_out_q[7]_i_6_n_0\ : STD_LOGIC;
  signal \alu_out_q[7]_i_7_n_0\ : STD_LOGIC;
  signal \alu_out_q[8]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q[9]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_16_n_0\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_16_n_1\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_16_n_2\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_16_n_3\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_20_n_0\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_20_n_1\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_20_n_2\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_20_n_3\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_29_n_0\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_29_n_1\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_29_n_2\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_29_n_3\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_34_n_0\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_34_n_1\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_34_n_2\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_34_n_3\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_5_n_1\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_5_n_2\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_5_n_3\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_6_n_1\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_6_n_2\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_6_n_3\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_7_n_1\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_7_n_2\ : STD_LOGIC;
  signal \alu_out_q_reg[0]_i_7_n_3\ : STD_LOGIC;
  signal \alu_out_q_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \alu_out_q_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \alu_out_q_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \alu_out_q_reg[11]_i_2_n_4\ : STD_LOGIC;
  signal \alu_out_q_reg[11]_i_2_n_5\ : STD_LOGIC;
  signal \alu_out_q_reg[11]_i_2_n_6\ : STD_LOGIC;
  signal \alu_out_q_reg[11]_i_2_n_7\ : STD_LOGIC;
  signal \alu_out_q_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \alu_out_q_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \alu_out_q_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \alu_out_q_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \alu_out_q_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \alu_out_q_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \alu_out_q_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \alu_out_q_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q_reg[19]_i_2_n_1\ : STD_LOGIC;
  signal \alu_out_q_reg[19]_i_2_n_2\ : STD_LOGIC;
  signal \alu_out_q_reg[19]_i_2_n_3\ : STD_LOGIC;
  signal \alu_out_q_reg[19]_i_2_n_4\ : STD_LOGIC;
  signal \alu_out_q_reg[19]_i_2_n_5\ : STD_LOGIC;
  signal \alu_out_q_reg[19]_i_2_n_6\ : STD_LOGIC;
  signal \alu_out_q_reg[19]_i_2_n_7\ : STD_LOGIC;
  signal \alu_out_q_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q_reg[23]_i_2_n_1\ : STD_LOGIC;
  signal \alu_out_q_reg[23]_i_2_n_2\ : STD_LOGIC;
  signal \alu_out_q_reg[23]_i_2_n_3\ : STD_LOGIC;
  signal \alu_out_q_reg[23]_i_2_n_4\ : STD_LOGIC;
  signal \alu_out_q_reg[23]_i_2_n_5\ : STD_LOGIC;
  signal \alu_out_q_reg[23]_i_2_n_6\ : STD_LOGIC;
  signal \alu_out_q_reg[23]_i_2_n_7\ : STD_LOGIC;
  signal \alu_out_q_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q_reg[27]_i_2_n_1\ : STD_LOGIC;
  signal \alu_out_q_reg[27]_i_2_n_2\ : STD_LOGIC;
  signal \alu_out_q_reg[27]_i_2_n_3\ : STD_LOGIC;
  signal \alu_out_q_reg[27]_i_2_n_4\ : STD_LOGIC;
  signal \alu_out_q_reg[27]_i_2_n_5\ : STD_LOGIC;
  signal \alu_out_q_reg[27]_i_2_n_6\ : STD_LOGIC;
  signal \alu_out_q_reg[27]_i_2_n_7\ : STD_LOGIC;
  signal \alu_out_q_reg[31]_i_3_n_1\ : STD_LOGIC;
  signal \alu_out_q_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \alu_out_q_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \alu_out_q_reg[31]_i_3_n_4\ : STD_LOGIC;
  signal \alu_out_q_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \alu_out_q_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \alu_out_q_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \alu_out_q_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \alu_out_q_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \alu_out_q_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \alu_out_q_reg[3]_i_2_n_4\ : STD_LOGIC;
  signal \alu_out_q_reg[3]_i_2_n_5\ : STD_LOGIC;
  signal \alu_out_q_reg[3]_i_2_n_6\ : STD_LOGIC;
  signal \alu_out_q_reg[3]_i_2_n_7\ : STD_LOGIC;
  signal \alu_out_q_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \alu_out_q_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \alu_out_q_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \alu_out_q_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \alu_out_q_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \alu_out_q_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \alu_out_q_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \alu_out_q_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal \count_cycle[0]_i_2_n_0\ : STD_LOGIC;
  signal count_cycle_reg : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \count_cycle_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_cycle_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \count_cycle_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_cycle_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \count_cycle_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_cycle_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_cycle_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_cycle_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \count_cycle_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_cycle_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_cycle_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_cycle_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_cycle_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_cycle_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_cycle_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_cycle_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_cycle_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_cycle_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_cycle_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_cycle_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_cycle_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_cycle_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_cycle_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_cycle_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_cycle_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \count_cycle_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \count_cycle_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \count_cycle_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_cycle_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \count_cycle_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \count_cycle_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \count_cycle_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \count_cycle_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \count_cycle_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \count_cycle_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \count_cycle_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \count_cycle_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \count_cycle_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \count_cycle_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \count_cycle_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \count_cycle_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \count_cycle_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \count_cycle_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \count_cycle_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \count_cycle_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \count_cycle_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \count_cycle_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \count_cycle_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \count_cycle_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \count_cycle_reg[32]_i_1_n_1\ : STD_LOGIC;
  signal \count_cycle_reg[32]_i_1_n_2\ : STD_LOGIC;
  signal \count_cycle_reg[32]_i_1_n_3\ : STD_LOGIC;
  signal \count_cycle_reg[32]_i_1_n_4\ : STD_LOGIC;
  signal \count_cycle_reg[32]_i_1_n_5\ : STD_LOGIC;
  signal \count_cycle_reg[32]_i_1_n_6\ : STD_LOGIC;
  signal \count_cycle_reg[32]_i_1_n_7\ : STD_LOGIC;
  signal \count_cycle_reg[36]_i_1_n_0\ : STD_LOGIC;
  signal \count_cycle_reg[36]_i_1_n_1\ : STD_LOGIC;
  signal \count_cycle_reg[36]_i_1_n_2\ : STD_LOGIC;
  signal \count_cycle_reg[36]_i_1_n_3\ : STD_LOGIC;
  signal \count_cycle_reg[36]_i_1_n_4\ : STD_LOGIC;
  signal \count_cycle_reg[36]_i_1_n_5\ : STD_LOGIC;
  signal \count_cycle_reg[36]_i_1_n_6\ : STD_LOGIC;
  signal \count_cycle_reg[36]_i_1_n_7\ : STD_LOGIC;
  signal \count_cycle_reg[40]_i_1_n_0\ : STD_LOGIC;
  signal \count_cycle_reg[40]_i_1_n_1\ : STD_LOGIC;
  signal \count_cycle_reg[40]_i_1_n_2\ : STD_LOGIC;
  signal \count_cycle_reg[40]_i_1_n_3\ : STD_LOGIC;
  signal \count_cycle_reg[40]_i_1_n_4\ : STD_LOGIC;
  signal \count_cycle_reg[40]_i_1_n_5\ : STD_LOGIC;
  signal \count_cycle_reg[40]_i_1_n_6\ : STD_LOGIC;
  signal \count_cycle_reg[40]_i_1_n_7\ : STD_LOGIC;
  signal \count_cycle_reg[44]_i_1_n_0\ : STD_LOGIC;
  signal \count_cycle_reg[44]_i_1_n_1\ : STD_LOGIC;
  signal \count_cycle_reg[44]_i_1_n_2\ : STD_LOGIC;
  signal \count_cycle_reg[44]_i_1_n_3\ : STD_LOGIC;
  signal \count_cycle_reg[44]_i_1_n_4\ : STD_LOGIC;
  signal \count_cycle_reg[44]_i_1_n_5\ : STD_LOGIC;
  signal \count_cycle_reg[44]_i_1_n_6\ : STD_LOGIC;
  signal \count_cycle_reg[44]_i_1_n_7\ : STD_LOGIC;
  signal \count_cycle_reg[48]_i_1_n_0\ : STD_LOGIC;
  signal \count_cycle_reg[48]_i_1_n_1\ : STD_LOGIC;
  signal \count_cycle_reg[48]_i_1_n_2\ : STD_LOGIC;
  signal \count_cycle_reg[48]_i_1_n_3\ : STD_LOGIC;
  signal \count_cycle_reg[48]_i_1_n_4\ : STD_LOGIC;
  signal \count_cycle_reg[48]_i_1_n_5\ : STD_LOGIC;
  signal \count_cycle_reg[48]_i_1_n_6\ : STD_LOGIC;
  signal \count_cycle_reg[48]_i_1_n_7\ : STD_LOGIC;
  signal \count_cycle_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_cycle_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_cycle_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_cycle_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_cycle_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_cycle_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_cycle_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_cycle_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_cycle_reg[52]_i_1_n_0\ : STD_LOGIC;
  signal \count_cycle_reg[52]_i_1_n_1\ : STD_LOGIC;
  signal \count_cycle_reg[52]_i_1_n_2\ : STD_LOGIC;
  signal \count_cycle_reg[52]_i_1_n_3\ : STD_LOGIC;
  signal \count_cycle_reg[52]_i_1_n_4\ : STD_LOGIC;
  signal \count_cycle_reg[52]_i_1_n_5\ : STD_LOGIC;
  signal \count_cycle_reg[52]_i_1_n_6\ : STD_LOGIC;
  signal \count_cycle_reg[52]_i_1_n_7\ : STD_LOGIC;
  signal \count_cycle_reg[56]_i_1_n_0\ : STD_LOGIC;
  signal \count_cycle_reg[56]_i_1_n_1\ : STD_LOGIC;
  signal \count_cycle_reg[56]_i_1_n_2\ : STD_LOGIC;
  signal \count_cycle_reg[56]_i_1_n_3\ : STD_LOGIC;
  signal \count_cycle_reg[56]_i_1_n_4\ : STD_LOGIC;
  signal \count_cycle_reg[56]_i_1_n_5\ : STD_LOGIC;
  signal \count_cycle_reg[56]_i_1_n_6\ : STD_LOGIC;
  signal \count_cycle_reg[56]_i_1_n_7\ : STD_LOGIC;
  signal \count_cycle_reg[60]_i_1_n_1\ : STD_LOGIC;
  signal \count_cycle_reg[60]_i_1_n_2\ : STD_LOGIC;
  signal \count_cycle_reg[60]_i_1_n_3\ : STD_LOGIC;
  signal \count_cycle_reg[60]_i_1_n_4\ : STD_LOGIC;
  signal \count_cycle_reg[60]_i_1_n_5\ : STD_LOGIC;
  signal \count_cycle_reg[60]_i_1_n_6\ : STD_LOGIC;
  signal \count_cycle_reg[60]_i_1_n_7\ : STD_LOGIC;
  signal \count_cycle_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_cycle_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_cycle_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_cycle_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_cycle_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_cycle_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_cycle_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_cycle_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal count_instr : STD_LOGIC;
  signal \count_instr[0]_i_3_n_0\ : STD_LOGIC;
  signal \count_instr_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_instr_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \count_instr_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \count_instr_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \count_instr_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \count_instr_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \count_instr_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \count_instr_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \count_instr_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_instr_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_instr_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_instr_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_instr_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_instr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_instr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_instr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_instr_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_instr_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_instr_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_instr_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_instr_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_instr_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_instr_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_instr_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_instr_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \count_instr_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \count_instr_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \count_instr_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_instr_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \count_instr_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \count_instr_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \count_instr_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \count_instr_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \count_instr_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \count_instr_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \count_instr_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \count_instr_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \count_instr_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \count_instr_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \count_instr_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \count_instr_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \count_instr_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \count_instr_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \count_instr_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \count_instr_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \count_instr_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \count_instr_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \count_instr_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \count_instr_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \count_instr_reg[32]_i_1_n_1\ : STD_LOGIC;
  signal \count_instr_reg[32]_i_1_n_2\ : STD_LOGIC;
  signal \count_instr_reg[32]_i_1_n_3\ : STD_LOGIC;
  signal \count_instr_reg[32]_i_1_n_4\ : STD_LOGIC;
  signal \count_instr_reg[32]_i_1_n_5\ : STD_LOGIC;
  signal \count_instr_reg[32]_i_1_n_6\ : STD_LOGIC;
  signal \count_instr_reg[32]_i_1_n_7\ : STD_LOGIC;
  signal \count_instr_reg[36]_i_1_n_0\ : STD_LOGIC;
  signal \count_instr_reg[36]_i_1_n_1\ : STD_LOGIC;
  signal \count_instr_reg[36]_i_1_n_2\ : STD_LOGIC;
  signal \count_instr_reg[36]_i_1_n_3\ : STD_LOGIC;
  signal \count_instr_reg[36]_i_1_n_4\ : STD_LOGIC;
  signal \count_instr_reg[36]_i_1_n_5\ : STD_LOGIC;
  signal \count_instr_reg[36]_i_1_n_6\ : STD_LOGIC;
  signal \count_instr_reg[36]_i_1_n_7\ : STD_LOGIC;
  signal \count_instr_reg[40]_i_1_n_0\ : STD_LOGIC;
  signal \count_instr_reg[40]_i_1_n_1\ : STD_LOGIC;
  signal \count_instr_reg[40]_i_1_n_2\ : STD_LOGIC;
  signal \count_instr_reg[40]_i_1_n_3\ : STD_LOGIC;
  signal \count_instr_reg[40]_i_1_n_4\ : STD_LOGIC;
  signal \count_instr_reg[40]_i_1_n_5\ : STD_LOGIC;
  signal \count_instr_reg[40]_i_1_n_6\ : STD_LOGIC;
  signal \count_instr_reg[40]_i_1_n_7\ : STD_LOGIC;
  signal \count_instr_reg[44]_i_1_n_0\ : STD_LOGIC;
  signal \count_instr_reg[44]_i_1_n_1\ : STD_LOGIC;
  signal \count_instr_reg[44]_i_1_n_2\ : STD_LOGIC;
  signal \count_instr_reg[44]_i_1_n_3\ : STD_LOGIC;
  signal \count_instr_reg[44]_i_1_n_4\ : STD_LOGIC;
  signal \count_instr_reg[44]_i_1_n_5\ : STD_LOGIC;
  signal \count_instr_reg[44]_i_1_n_6\ : STD_LOGIC;
  signal \count_instr_reg[44]_i_1_n_7\ : STD_LOGIC;
  signal \count_instr_reg[48]_i_1_n_0\ : STD_LOGIC;
  signal \count_instr_reg[48]_i_1_n_1\ : STD_LOGIC;
  signal \count_instr_reg[48]_i_1_n_2\ : STD_LOGIC;
  signal \count_instr_reg[48]_i_1_n_3\ : STD_LOGIC;
  signal \count_instr_reg[48]_i_1_n_4\ : STD_LOGIC;
  signal \count_instr_reg[48]_i_1_n_5\ : STD_LOGIC;
  signal \count_instr_reg[48]_i_1_n_6\ : STD_LOGIC;
  signal \count_instr_reg[48]_i_1_n_7\ : STD_LOGIC;
  signal \count_instr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_instr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_instr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_instr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_instr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_instr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_instr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_instr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_instr_reg[52]_i_1_n_0\ : STD_LOGIC;
  signal \count_instr_reg[52]_i_1_n_1\ : STD_LOGIC;
  signal \count_instr_reg[52]_i_1_n_2\ : STD_LOGIC;
  signal \count_instr_reg[52]_i_1_n_3\ : STD_LOGIC;
  signal \count_instr_reg[52]_i_1_n_4\ : STD_LOGIC;
  signal \count_instr_reg[52]_i_1_n_5\ : STD_LOGIC;
  signal \count_instr_reg[52]_i_1_n_6\ : STD_LOGIC;
  signal \count_instr_reg[52]_i_1_n_7\ : STD_LOGIC;
  signal \count_instr_reg[56]_i_1_n_0\ : STD_LOGIC;
  signal \count_instr_reg[56]_i_1_n_1\ : STD_LOGIC;
  signal \count_instr_reg[56]_i_1_n_2\ : STD_LOGIC;
  signal \count_instr_reg[56]_i_1_n_3\ : STD_LOGIC;
  signal \count_instr_reg[56]_i_1_n_4\ : STD_LOGIC;
  signal \count_instr_reg[56]_i_1_n_5\ : STD_LOGIC;
  signal \count_instr_reg[56]_i_1_n_6\ : STD_LOGIC;
  signal \count_instr_reg[56]_i_1_n_7\ : STD_LOGIC;
  signal \count_instr_reg[60]_i_1_n_1\ : STD_LOGIC;
  signal \count_instr_reg[60]_i_1_n_2\ : STD_LOGIC;
  signal \count_instr_reg[60]_i_1_n_3\ : STD_LOGIC;
  signal \count_instr_reg[60]_i_1_n_4\ : STD_LOGIC;
  signal \count_instr_reg[60]_i_1_n_5\ : STD_LOGIC;
  signal \count_instr_reg[60]_i_1_n_6\ : STD_LOGIC;
  signal \count_instr_reg[60]_i_1_n_7\ : STD_LOGIC;
  signal \count_instr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_instr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_instr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_instr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_instr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_instr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_instr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_instr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[14]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[15]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[16]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[17]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[18]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[19]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[20]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[21]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[22]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[23]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[24]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[25]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[26]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[27]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[28]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[29]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[30]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[31]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_instr_reg_n_0_[9]\ : STD_LOGIC;
  signal cpu_state0_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \cpu_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \cpu_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \cpu_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \cpu_state[6]_i_3_n_0\ : STD_LOGIC;
  signal \cpu_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \cpu_state[7]_i_4_n_0\ : STD_LOGIC;
  signal \cpu_state[7]_i_6_n_0\ : STD_LOGIC;
  signal \cpu_state[7]_i_7_n_0\ : STD_LOGIC;
  signal \cpu_state[7]_i_8_n_0\ : STD_LOGIC;
  signal \cpu_state[7]_i_9_n_0\ : STD_LOGIC;
  signal \^cpu_state_reg[5]_1\ : STD_LOGIC;
  signal \cpu_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \cpu_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \cpu_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \cpu_state_reg_n_0_[7]\ : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_10_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_10_n_1 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_10_n_2 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_10_n_3 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_10_n_4 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_10_n_5 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_10_n_6 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_10_n_7 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_11_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_12_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_1_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_2_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_3_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_4_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_5_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_6_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_7_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_8_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_9_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_9_n_1 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_9_n_2 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_9_n_3 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_9_n_4 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_9_n_5 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_0_5_i_9_n_6 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_12_17_i_1_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_12_17_i_2_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_12_17_i_3_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_12_17_i_4_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_12_17_i_5_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_12_17_i_6_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_12_17_i_7_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_12_17_i_7_n_1 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_12_17_i_7_n_2 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_12_17_i_7_n_3 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_12_17_i_7_n_4 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_12_17_i_7_n_5 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_12_17_i_7_n_6 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_12_17_i_7_n_7 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_12_17_i_8_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_12_17_i_8_n_1 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_12_17_i_8_n_2 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_12_17_i_8_n_3 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_12_17_i_8_n_4 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_12_17_i_8_n_5 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_12_17_i_8_n_6 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_12_17_i_8_n_7 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_18_23_i_1_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_18_23_i_2_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_18_23_i_3_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_18_23_i_4_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_18_23_i_5_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_18_23_i_6_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_18_23_i_7_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_18_23_i_7_n_1 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_18_23_i_7_n_2 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_18_23_i_7_n_3 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_18_23_i_7_n_4 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_18_23_i_7_n_5 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_18_23_i_7_n_6 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_18_23_i_7_n_7 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_24_29_i_1_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_24_29_i_2_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_24_29_i_3_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_24_29_i_4_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_24_29_i_5_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_24_29_i_6_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_24_29_i_7_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_24_29_i_7_n_1 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_24_29_i_7_n_2 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_24_29_i_7_n_3 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_24_29_i_7_n_4 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_24_29_i_7_n_5 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_24_29_i_7_n_6 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_24_29_i_7_n_7 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_24_29_i_8_n_1 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_24_29_i_8_n_2 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_24_29_i_8_n_3 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_24_29_i_8_n_4 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_24_29_i_8_n_5 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_24_29_i_8_n_6 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_24_29_i_8_n_7 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_30_31_i_1_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_30_31_i_2_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_6_11_i_1_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_6_11_i_2_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_6_11_i_3_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_6_11_i_4_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_6_11_i_5_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_6_11_i_6_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_6_11_i_7_n_0 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_6_11_i_7_n_1 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_6_11_i_7_n_2 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_6_11_i_7_n_3 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_6_11_i_7_n_4 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_6_11_i_7_n_5 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_6_11_i_7_n_6 : STD_LOGIC;
  signal cpuregs_reg_r1_0_31_6_11_i_7_n_7 : STD_LOGIC;
  signal current_pc : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal data3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data4 : STD_LOGIC;
  signal data5 : STD_LOGIC;
  signal decoded_imm : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \decoded_imm[11]_i_2_n_0\ : STD_LOGIC;
  signal \decoded_imm[11]_i_3_n_0\ : STD_LOGIC;
  signal \decoded_imm[12]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm[13]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm[14]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm[15]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm[16]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm[17]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm[18]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm[19]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm[20]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm[21]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm[22]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm[23]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm[24]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm[25]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm[26]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm[27]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm[28]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm[29]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm[30]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm[31]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm[31]_i_2_n_0\ : STD_LOGIC;
  signal \decoded_imm[4]_i_2_n_0\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[0]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[10]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[11]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[12]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[13]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[14]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[15]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[16]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[17]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[18]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[19]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[1]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[20]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[21]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[22]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[23]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[24]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[25]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[26]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[27]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[28]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[29]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[2]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[30]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[31]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[3]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[4]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[5]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[6]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[7]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[8]\ : STD_LOGIC;
  signal \decoded_imm_reg_n_0_[9]\ : STD_LOGIC;
  signal decoded_imm_uj : STD_LOGIC_VECTOR ( 31 downto 5 );
  signal \decoded_imm_uj[10]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm_uj[5]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm_uj[6]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm_uj[7]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm_uj[8]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_imm_uj[9]_i_1_n_0\ : STD_LOGIC;
  signal decoded_rd : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \decoded_rd[0]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_rd[1]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_rd[2]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_rd[3]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_rd[4]_i_1_n_0\ : STD_LOGIC;
  signal decoded_rs1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \decoded_rs1__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \decoded_rs1_rep[0]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_rs1_rep[1]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_rs1_rep[2]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_rs1_rep[3]_i_1_n_0\ : STD_LOGIC;
  signal \decoded_rs1_rep[4]_i_1_n_0\ : STD_LOGIC;
  signal decoded_rs2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \decoded_rs2__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal decoder_pseudo_trigger : STD_LOGIC;
  signal decoder_pseudo_trigger_i_2_n_0 : STD_LOGIC;
  signal decoder_pseudo_trigger_reg_n_0 : STD_LOGIC;
  signal decoder_trigger_i_10_n_0 : STD_LOGIC;
  signal decoder_trigger_i_11_n_0 : STD_LOGIC;
  signal decoder_trigger_i_12_n_0 : STD_LOGIC;
  signal decoder_trigger_i_13_n_0 : STD_LOGIC;
  signal decoder_trigger_i_14_n_0 : STD_LOGIC;
  signal decoder_trigger_i_15_n_0 : STD_LOGIC;
  signal decoder_trigger_i_17_n_0 : STD_LOGIC;
  signal decoder_trigger_i_18_n_0 : STD_LOGIC;
  signal decoder_trigger_i_19_n_0 : STD_LOGIC;
  signal decoder_trigger_i_1_n_0 : STD_LOGIC;
  signal decoder_trigger_i_20_n_0 : STD_LOGIC;
  signal decoder_trigger_i_21_n_0 : STD_LOGIC;
  signal decoder_trigger_i_22_n_0 : STD_LOGIC;
  signal decoder_trigger_i_23_n_0 : STD_LOGIC;
  signal decoder_trigger_i_24_n_0 : STD_LOGIC;
  signal decoder_trigger_i_26_n_0 : STD_LOGIC;
  signal decoder_trigger_i_27_n_0 : STD_LOGIC;
  signal decoder_trigger_i_28_n_0 : STD_LOGIC;
  signal decoder_trigger_i_29_n_0 : STD_LOGIC;
  signal decoder_trigger_i_2_n_0 : STD_LOGIC;
  signal decoder_trigger_i_30_n_0 : STD_LOGIC;
  signal decoder_trigger_i_31_n_0 : STD_LOGIC;
  signal decoder_trigger_i_32_n_0 : STD_LOGIC;
  signal decoder_trigger_i_33_n_0 : STD_LOGIC;
  signal decoder_trigger_i_34_n_0 : STD_LOGIC;
  signal decoder_trigger_i_35_n_0 : STD_LOGIC;
  signal decoder_trigger_i_36_n_0 : STD_LOGIC;
  signal decoder_trigger_i_37_n_0 : STD_LOGIC;
  signal decoder_trigger_i_38_n_0 : STD_LOGIC;
  signal decoder_trigger_i_39_n_0 : STD_LOGIC;
  signal decoder_trigger_i_3_n_0 : STD_LOGIC;
  signal decoder_trigger_i_40_n_0 : STD_LOGIC;
  signal decoder_trigger_i_41_n_0 : STD_LOGIC;
  signal decoder_trigger_i_4_n_0 : STD_LOGIC;
  signal decoder_trigger_i_5_n_0 : STD_LOGIC;
  signal decoder_trigger_i_8_n_0 : STD_LOGIC;
  signal decoder_trigger_i_9_n_0 : STD_LOGIC;
  signal decoder_trigger_reg_i_16_n_0 : STD_LOGIC;
  signal decoder_trigger_reg_i_16_n_1 : STD_LOGIC;
  signal decoder_trigger_reg_i_16_n_2 : STD_LOGIC;
  signal decoder_trigger_reg_i_16_n_3 : STD_LOGIC;
  signal decoder_trigger_reg_i_25_n_0 : STD_LOGIC;
  signal decoder_trigger_reg_i_25_n_1 : STD_LOGIC;
  signal decoder_trigger_reg_i_25_n_2 : STD_LOGIC;
  signal decoder_trigger_reg_i_25_n_3 : STD_LOGIC;
  signal decoder_trigger_reg_i_6_n_1 : STD_LOGIC;
  signal decoder_trigger_reg_i_6_n_2 : STD_LOGIC;
  signal decoder_trigger_reg_i_6_n_3 : STD_LOGIC;
  signal decoder_trigger_reg_i_7_n_0 : STD_LOGIC;
  signal decoder_trigger_reg_i_7_n_1 : STD_LOGIC;
  signal decoder_trigger_reg_i_7_n_2 : STD_LOGIC;
  signal decoder_trigger_reg_i_7_n_3 : STD_LOGIC;
  signal decoder_trigger_reg_n_0 : STD_LOGIC;
  signal \^instr_add\ : STD_LOGIC;
  signal instr_add0 : STD_LOGIC;
  signal \^instr_addi\ : STD_LOGIC;
  signal instr_addi0 : STD_LOGIC;
  signal instr_and : STD_LOGIC;
  signal instr_and0 : STD_LOGIC;
  signal instr_and_i_2_n_0 : STD_LOGIC;
  signal instr_andi : STD_LOGIC;
  signal instr_andi0 : STD_LOGIC;
  signal instr_auipc : STD_LOGIC;
  signal instr_auipc_i_1_n_0 : STD_LOGIC;
  signal instr_auipc_i_2_n_0 : STD_LOGIC;
  signal instr_auipc_i_3_n_0 : STD_LOGIC;
  signal instr_beq : STD_LOGIC;
  signal instr_beq0 : STD_LOGIC;
  signal instr_bge : STD_LOGIC;
  signal instr_bge_i_1_n_0 : STD_LOGIC;
  signal \^instr_bge_reg_0\ : STD_LOGIC;
  signal instr_bgeu : STD_LOGIC;
  signal instr_bgeu0 : STD_LOGIC;
  signal instr_blt : STD_LOGIC;
  signal instr_blt0 : STD_LOGIC;
  signal instr_bltu : STD_LOGIC;
  signal instr_bltu0 : STD_LOGIC;
  signal instr_bne : STD_LOGIC;
  signal instr_bne0 : STD_LOGIC;
  signal \^instr_ecall_ebreak\ : STD_LOGIC;
  signal instr_ecall_ebreak0 : STD_LOGIC;
  signal instr_ecall_ebreak_i_2_n_0 : STD_LOGIC;
  signal instr_ecall_ebreak_i_3_n_0 : STD_LOGIC;
  signal instr_ecall_ebreak_i_4_n_0 : STD_LOGIC;
  signal instr_ecall_ebreak_i_5_n_0 : STD_LOGIC;
  signal instr_jal : STD_LOGIC;
  signal instr_jal_i_2_n_0 : STD_LOGIC;
  signal instr_jal_i_4_n_0 : STD_LOGIC;
  signal \^instr_jal_reg_0\ : STD_LOGIC;
  signal \^instr_jalr\ : STD_LOGIC;
  signal instr_jalr0 : STD_LOGIC;
  signal instr_jalr_i_2_n_0 : STD_LOGIC;
  signal instr_jalr_i_3_n_0 : STD_LOGIC;
  signal \^instr_lb\ : STD_LOGIC;
  signal instr_lb_i_1_n_0 : STD_LOGIC;
  signal instr_lbu : STD_LOGIC;
  signal instr_lbu_i_1_n_0 : STD_LOGIC;
  signal \^instr_lh\ : STD_LOGIC;
  signal instr_lh_i_1_n_0 : STD_LOGIC;
  signal instr_lhu : STD_LOGIC;
  signal instr_lhu_i_1_n_0 : STD_LOGIC;
  signal instr_lhu_i_2_n_0 : STD_LOGIC;
  signal instr_lui : STD_LOGIC;
  signal instr_lui0 : STD_LOGIC;
  signal instr_lui_i_1_n_0 : STD_LOGIC;
  signal instr_lui_i_2_n_0 : STD_LOGIC;
  signal instr_lui_i_3_n_0 : STD_LOGIC;
  signal instr_lw : STD_LOGIC;
  signal instr_lw_i_1_n_0 : STD_LOGIC;
  signal instr_or : STD_LOGIC;
  signal instr_or0 : STD_LOGIC;
  signal instr_ori : STD_LOGIC;
  signal instr_ori0 : STD_LOGIC;
  signal instr_rdcycle : STD_LOGIC;
  signal instr_rdcycle0 : STD_LOGIC;
  signal instr_rdcycle_i_2_n_0 : STD_LOGIC;
  signal instr_rdcycle_i_3_n_0 : STD_LOGIC;
  signal instr_rdcycleh : STD_LOGIC;
  signal instr_rdcycleh0 : STD_LOGIC;
  signal instr_rdcycleh_i_2_n_0 : STD_LOGIC;
  signal instr_rdcycleh_i_3_n_0 : STD_LOGIC;
  signal instr_rdcycleh_i_4_n_0 : STD_LOGIC;
  signal instr_rdcycleh_i_5_n_0 : STD_LOGIC;
  signal instr_rdcycleh_i_6_n_0 : STD_LOGIC;
  signal instr_rdcycleh_i_7_n_0 : STD_LOGIC;
  signal instr_rdinstr : STD_LOGIC;
  signal instr_rdinstr0 : STD_LOGIC;
  signal instr_rdinstr_i_2_n_0 : STD_LOGIC;
  signal instr_rdinstr_i_3_n_0 : STD_LOGIC;
  signal instr_rdinstr_i_4_n_0 : STD_LOGIC;
  signal instr_rdinstrh : STD_LOGIC;
  signal instr_rdinstrh0 : STD_LOGIC;
  signal instr_rdinstrh_i_2_n_0 : STD_LOGIC;
  signal instr_rdinstrh_i_3_n_0 : STD_LOGIC;
  signal instr_rdinstrh_i_4_n_0 : STD_LOGIC;
  signal instr_sb : STD_LOGIC;
  signal instr_sb0 : STD_LOGIC;
  signal instr_sh : STD_LOGIC;
  signal instr_sh0 : STD_LOGIC;
  signal instr_sll : STD_LOGIC;
  signal instr_sll0 : STD_LOGIC;
  signal instr_slli : STD_LOGIC;
  signal instr_slli0 : STD_LOGIC;
  signal instr_slt : STD_LOGIC;
  signal instr_slt0 : STD_LOGIC;
  signal instr_slti : STD_LOGIC;
  signal instr_slti0 : STD_LOGIC;
  signal instr_sltiu : STD_LOGIC;
  signal instr_sltiu_i_1_n_0 : STD_LOGIC;
  signal instr_sltu : STD_LOGIC;
  signal instr_sltu0 : STD_LOGIC;
  signal instr_sra : STD_LOGIC;
  signal instr_sra_i_1_n_0 : STD_LOGIC;
  signal instr_sra_i_2_n_0 : STD_LOGIC;
  signal instr_srai : STD_LOGIC;
  signal instr_srai0 : STD_LOGIC;
  signal instr_srl : STD_LOGIC;
  signal instr_srl_i_1_n_0 : STD_LOGIC;
  signal instr_srli : STD_LOGIC;
  signal instr_srli0 : STD_LOGIC;
  signal \^instr_sub\ : STD_LOGIC;
  signal instr_sub0 : STD_LOGIC;
  signal instr_sw : STD_LOGIC;
  signal instr_sw0 : STD_LOGIC;
  signal instr_xor : STD_LOGIC;
  signal instr_xor0 : STD_LOGIC;
  signal instr_xori : STD_LOGIC;
  signal instr_xori0 : STD_LOGIC;
  signal is_alu_reg_imm : STD_LOGIC;
  signal is_alu_reg_imm_i_1_n_0 : STD_LOGIC;
  signal is_alu_reg_reg : STD_LOGIC;
  signal is_alu_reg_reg_i_1_n_0 : STD_LOGIC;
  signal is_alu_reg_reg_i_2_n_0 : STD_LOGIC;
  signal \^is_beq_bne_blt_bge_bltu_bgeu\ : STD_LOGIC;
  signal is_beq_bne_blt_bge_bltu_bgeu_i_1_n_0 : STD_LOGIC;
  signal is_compare : STD_LOGIC;
  signal is_compare_i_1_n_0 : STD_LOGIC;
  signal is_compare_i_2_n_0 : STD_LOGIC;
  signal is_jalr_addi_slti_sltiu_xori_ori_andi : STD_LOGIC;
  signal is_jalr_addi_slti_sltiu_xori_ori_andi0 : STD_LOGIC;
  signal is_lb_lh_lw_lbu_lhu : STD_LOGIC;
  signal is_lb_lh_lw_lbu_lhu_i_1_n_0 : STD_LOGIC;
  signal is_lbu_lhu_lw_i_1_n_0 : STD_LOGIC;
  signal is_lui_auipc_jal : STD_LOGIC;
  signal is_lui_auipc_jal_jalr_addi_add_sub : STD_LOGIC;
  signal \^is_lui_auipc_jal_jalr_addi_add_sub0\ : STD_LOGIC;
  signal is_sb_sh_sw : STD_LOGIC;
  signal is_sb_sh_sw_i_1_n_0 : STD_LOGIC;
  signal is_sb_sh_sw_i_2_n_0 : STD_LOGIC;
  signal is_sll_srl_sra : STD_LOGIC;
  signal is_sll_srl_sra0 : STD_LOGIC;
  signal is_slli_srli_srai : STD_LOGIC;
  signal is_slli_srli_srai0 : STD_LOGIC;
  signal is_slli_srli_srai_i_2_n_0 : STD_LOGIC;
  signal is_slti_blt_slt : STD_LOGIC;
  signal is_slti_blt_slt_i_1_n_0 : STD_LOGIC;
  signal is_sltiu_bltu_sltu : STD_LOGIC;
  signal is_sltiu_bltu_sltu_i_1_n_0 : STD_LOGIC;
  signal \^latched_branch_reg_0\ : STD_LOGIC;
  signal \^latched_is_lb_reg_0\ : STD_LOGIC;
  signal \^latched_is_lh_reg_0\ : STD_LOGIC;
  signal \^latched_is_lu\ : STD_LOGIC;
  signal \^latched_is_lu_reg_0\ : STD_LOGIC;
  signal latched_rd : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \latched_rd[4]_i_1_n_0\ : STD_LOGIC;
  signal \latched_rd[4]_i_2_n_0\ : STD_LOGIC;
  signal \^latched_stalu_reg_0\ : STD_LOGIC;
  signal latched_store_i_6_n_0 : STD_LOGIC;
  signal latched_store_i_7_n_0 : STD_LOGIC;
  signal \^latched_store_reg_0\ : STD_LOGIC;
  signal \mem_addr[10]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[11]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[12]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[13]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[14]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[15]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[16]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[17]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[18]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[19]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[20]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[21]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[22]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[23]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[24]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[25]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[26]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[27]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[28]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[29]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[30]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[31]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[31]_i_2_n_0\ : STD_LOGIC;
  signal \mem_addr[31]_i_3_n_0\ : STD_LOGIC;
  signal \mem_addr[31]_i_4_n_0\ : STD_LOGIC;
  signal \mem_addr[31]_i_5_n_0\ : STD_LOGIC;
  signal \mem_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[8]_i_1_n_0\ : STD_LOGIC;
  signal \mem_addr[9]_i_1_n_0\ : STD_LOGIC;
  signal mem_do_prefetch_i_1_n_0 : STD_LOGIC;
  signal mem_do_prefetch_i_2_n_0 : STD_LOGIC;
  signal \^mem_do_prefetch_reg_0\ : STD_LOGIC;
  signal \^mem_do_rdata\ : STD_LOGIC;
  signal mem_do_rinst0 : STD_LOGIC;
  signal mem_do_rinst_i_10_n_0 : STD_LOGIC;
  signal mem_do_rinst_i_11_n_0 : STD_LOGIC;
  signal mem_do_rinst_i_12_n_0 : STD_LOGIC;
  signal mem_do_rinst_i_13_n_0 : STD_LOGIC;
  signal mem_do_rinst_i_14_n_0 : STD_LOGIC;
  signal mem_do_rinst_i_15_n_0 : STD_LOGIC;
  signal mem_do_rinst_i_16_n_0 : STD_LOGIC;
  signal mem_do_rinst_i_4_n_0 : STD_LOGIC;
  signal mem_do_rinst_i_5_n_0 : STD_LOGIC;
  signal mem_do_rinst_i_6_n_0 : STD_LOGIC;
  signal mem_do_rinst_i_7_n_0 : STD_LOGIC;
  signal mem_do_rinst_i_8_n_0 : STD_LOGIC;
  signal mem_do_rinst_reg_n_0 : STD_LOGIC;
  signal \^mem_do_wdata\ : STD_LOGIC;
  signal mem_instr_i_1_n_0 : STD_LOGIC;
  signal \mem_rdata_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_rdata_q[12]_i_1_n_0\ : STD_LOGIC;
  signal \mem_rdata_q[13]_i_1_n_0\ : STD_LOGIC;
  signal \mem_rdata_q[14]_i_1_n_0\ : STD_LOGIC;
  signal \mem_rdata_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \mem_rdata_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \mem_rdata_q[31]_i_1_n_0\ : STD_LOGIC;
  signal \mem_rdata_q[3]_i_1_n_0\ : STD_LOGIC;
  signal \mem_rdata_q[4]_i_1_n_0\ : STD_LOGIC;
  signal \mem_rdata_q[5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_rdata_q[6]_i_1_n_0\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[10]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[11]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[15]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[16]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[17]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[18]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[19]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[20]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[21]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[22]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[23]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[24]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[25]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[26]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[27]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[28]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[29]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[30]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[31]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[6]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[7]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[8]\ : STD_LOGIC;
  signal \mem_rdata_q_reg_n_0_[9]\ : STD_LOGIC;
  signal mem_ready : STD_LOGIC;
  signal mem_state : STD_LOGIC;
  signal \mem_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^mem_state_reg[0]_0\ : STD_LOGIC;
  signal \mem_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \mem_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \^mem_valid\ : STD_LOGIC;
  signal mem_valid13_out : STD_LOGIC;
  signal mem_valid_i_1_n_0 : STD_LOGIC;
  signal mem_valid_i_3_n_0 : STD_LOGIC;
  signal \mem_wdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \mem_wdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wdata[9]_i_1_n_0\ : STD_LOGIC;
  signal mem_wordsize : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \mem_wordsize[0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wordsize[1]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wordsize_reg_n_0_[0]\ : STD_LOGIC;
  signal \mem_wordsize_reg_n_0_[1]\ : STD_LOGIC;
  signal \mem_wstrb[0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wstrb[1]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wstrb[2]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wstrb[3]_i_1_n_0\ : STD_LOGIC;
  signal \mem_wstrb[3]_i_2_n_0\ : STD_LOGIC;
  signal \^mem_wstrb_reg[0]_0\ : STD_LOGIC;
  signal \^mem_wstrb_reg[1]_0\ : STD_LOGIC;
  signal \^mem_wstrb_reg[2]_0\ : STD_LOGIC;
  signal \^mem_wstrb_reg[3]_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^pcpi_insn_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pcpi_mul_n_0 : STD_LOGIC;
  signal pcpi_mul_n_1 : STD_LOGIC;
  signal pcpi_mul_n_100 : STD_LOGIC;
  signal pcpi_mul_n_2 : STD_LOGIC;
  signal pcpi_mul_n_22 : STD_LOGIC;
  signal pcpi_mul_n_23 : STD_LOGIC;
  signal pcpi_mul_n_24 : STD_LOGIC;
  signal pcpi_mul_n_25 : STD_LOGIC;
  signal pcpi_mul_n_26 : STD_LOGIC;
  signal pcpi_mul_n_27 : STD_LOGIC;
  signal pcpi_mul_n_28 : STD_LOGIC;
  signal pcpi_mul_n_29 : STD_LOGIC;
  signal pcpi_mul_n_3 : STD_LOGIC;
  signal pcpi_mul_n_31 : STD_LOGIC;
  signal pcpi_mul_n_32 : STD_LOGIC;
  signal pcpi_mul_n_33 : STD_LOGIC;
  signal pcpi_mul_n_34 : STD_LOGIC;
  signal pcpi_mul_n_35 : STD_LOGIC;
  signal pcpi_mul_n_36 : STD_LOGIC;
  signal pcpi_mul_n_37 : STD_LOGIC;
  signal pcpi_mul_n_38 : STD_LOGIC;
  signal pcpi_mul_n_39 : STD_LOGIC;
  signal pcpi_mul_n_40 : STD_LOGIC;
  signal pcpi_mul_n_41 : STD_LOGIC;
  signal pcpi_mul_n_42 : STD_LOGIC;
  signal pcpi_mul_n_43 : STD_LOGIC;
  signal pcpi_mul_n_44 : STD_LOGIC;
  signal pcpi_mul_n_45 : STD_LOGIC;
  signal pcpi_mul_n_46 : STD_LOGIC;
  signal pcpi_mul_n_47 : STD_LOGIC;
  signal pcpi_mul_n_48 : STD_LOGIC;
  signal pcpi_mul_n_49 : STD_LOGIC;
  signal pcpi_mul_n_50 : STD_LOGIC;
  signal pcpi_mul_n_51 : STD_LOGIC;
  signal pcpi_mul_n_52 : STD_LOGIC;
  signal pcpi_mul_n_53 : STD_LOGIC;
  signal pcpi_mul_n_54 : STD_LOGIC;
  signal pcpi_mul_n_55 : STD_LOGIC;
  signal pcpi_mul_n_56 : STD_LOGIC;
  signal pcpi_mul_n_57 : STD_LOGIC;
  signal pcpi_mul_n_58 : STD_LOGIC;
  signal pcpi_mul_n_59 : STD_LOGIC;
  signal pcpi_mul_n_60 : STD_LOGIC;
  signal pcpi_mul_n_61 : STD_LOGIC;
  signal pcpi_mul_n_62 : STD_LOGIC;
  signal pcpi_mul_n_63 : STD_LOGIC;
  signal pcpi_mul_n_64 : STD_LOGIC;
  signal pcpi_mul_n_65 : STD_LOGIC;
  signal pcpi_mul_n_66 : STD_LOGIC;
  signal pcpi_mul_n_67 : STD_LOGIC;
  signal pcpi_mul_n_68 : STD_LOGIC;
  signal pcpi_mul_n_69 : STD_LOGIC;
  signal pcpi_mul_n_70 : STD_LOGIC;
  signal pcpi_mul_n_71 : STD_LOGIC;
  signal pcpi_mul_n_72 : STD_LOGIC;
  signal pcpi_mul_n_73 : STD_LOGIC;
  signal pcpi_mul_n_74 : STD_LOGIC;
  signal pcpi_mul_n_75 : STD_LOGIC;
  signal pcpi_mul_n_76 : STD_LOGIC;
  signal pcpi_mul_n_77 : STD_LOGIC;
  signal pcpi_mul_n_78 : STD_LOGIC;
  signal pcpi_mul_n_79 : STD_LOGIC;
  signal pcpi_mul_n_80 : STD_LOGIC;
  signal pcpi_mul_n_81 : STD_LOGIC;
  signal pcpi_mul_n_82 : STD_LOGIC;
  signal pcpi_mul_n_87 : STD_LOGIC;
  signal pcpi_mul_n_89 : STD_LOGIC;
  signal pcpi_mul_n_90 : STD_LOGIC;
  signal pcpi_mul_n_91 : STD_LOGIC;
  signal pcpi_mul_n_92 : STD_LOGIC;
  signal pcpi_mul_n_93 : STD_LOGIC;
  signal pcpi_mul_n_94 : STD_LOGIC;
  signal pcpi_mul_n_95 : STD_LOGIC;
  signal pcpi_mul_n_96 : STD_LOGIC;
  signal pcpi_mul_n_97 : STD_LOGIC;
  signal pcpi_mul_n_98 : STD_LOGIC;
  signal pcpi_mul_n_99 : STD_LOGIC;
  signal \^pcpi_timeout\ : STD_LOGIC;
  signal pcpi_timeout_counter0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \pcpi_timeout_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \pcpi_timeout_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal pcpi_timeout_counter_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pcpi_timeout_i_1_n_0 : STD_LOGIC;
  signal reg_next_pc1_in : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \reg_next_pc[12]_i_2_n_0\ : STD_LOGIC;
  signal \reg_next_pc[12]_i_3_n_0\ : STD_LOGIC;
  signal \reg_next_pc[12]_i_4_n_0\ : STD_LOGIC;
  signal \reg_next_pc[12]_i_5_n_0\ : STD_LOGIC;
  signal \reg_next_pc[16]_i_2_n_0\ : STD_LOGIC;
  signal \reg_next_pc[16]_i_3_n_0\ : STD_LOGIC;
  signal \reg_next_pc[16]_i_4_n_0\ : STD_LOGIC;
  signal \reg_next_pc[16]_i_5_n_0\ : STD_LOGIC;
  signal \reg_next_pc[20]_i_2_n_0\ : STD_LOGIC;
  signal \reg_next_pc[20]_i_3_n_0\ : STD_LOGIC;
  signal \reg_next_pc[20]_i_4_n_0\ : STD_LOGIC;
  signal \reg_next_pc[20]_i_5_n_0\ : STD_LOGIC;
  signal \reg_next_pc[24]_i_2_n_0\ : STD_LOGIC;
  signal \reg_next_pc[24]_i_3_n_0\ : STD_LOGIC;
  signal \reg_next_pc[24]_i_4_n_0\ : STD_LOGIC;
  signal \reg_next_pc[24]_i_5_n_0\ : STD_LOGIC;
  signal \reg_next_pc[28]_i_2_n_0\ : STD_LOGIC;
  signal \reg_next_pc[28]_i_3_n_0\ : STD_LOGIC;
  signal \reg_next_pc[28]_i_4_n_0\ : STD_LOGIC;
  signal \reg_next_pc[28]_i_5_n_0\ : STD_LOGIC;
  signal \reg_next_pc[31]_i_2_n_0\ : STD_LOGIC;
  signal \reg_next_pc[31]_i_3_n_0\ : STD_LOGIC;
  signal \reg_next_pc[31]_i_4_n_0\ : STD_LOGIC;
  signal \reg_next_pc[31]_i_5_n_0\ : STD_LOGIC;
  signal \reg_next_pc[4]_i_2_n_0\ : STD_LOGIC;
  signal \reg_next_pc[4]_i_3_n_0\ : STD_LOGIC;
  signal \reg_next_pc[4]_i_4_n_0\ : STD_LOGIC;
  signal \reg_next_pc[4]_i_5_n_0\ : STD_LOGIC;
  signal \reg_next_pc[8]_i_2_n_0\ : STD_LOGIC;
  signal \reg_next_pc[8]_i_3_n_0\ : STD_LOGIC;
  signal \reg_next_pc[8]_i_4_n_0\ : STD_LOGIC;
  signal \reg_next_pc[8]_i_5_n_0\ : STD_LOGIC;
  signal \reg_next_pc_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \reg_next_pc_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \reg_next_pc_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \reg_next_pc_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \reg_next_pc_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \reg_next_pc_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \reg_next_pc_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \reg_next_pc_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \reg_next_pc_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \reg_next_pc_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \reg_next_pc_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \reg_next_pc_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \reg_next_pc_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \reg_next_pc_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \reg_next_pc_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \reg_next_pc_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \reg_next_pc_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \reg_next_pc_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \reg_next_pc_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \reg_next_pc_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \reg_next_pc_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \reg_next_pc_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \reg_next_pc_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg_next_pc_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \reg_next_pc_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \reg_next_pc_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \reg_next_pc_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \reg_next_pc_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \reg_next_pc_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \reg_next_pc_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[10]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[11]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[12]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[13]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[14]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[15]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[16]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[17]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[18]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[19]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[20]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[21]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[22]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[23]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[24]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[25]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[26]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[27]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[28]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[29]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[30]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[31]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[4]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[5]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[6]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[7]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[8]\ : STD_LOGIC;
  signal \reg_next_pc_reg_n_0_[9]\ : STD_LOGIC;
  signal \reg_op1[17]_i_1_n_0\ : STD_LOGIC;
  signal \reg_op1[17]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[17]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[17]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[18]_i_1_n_0\ : STD_LOGIC;
  signal \reg_op1[18]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[18]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[18]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[19]_i_1_n_0\ : STD_LOGIC;
  signal \reg_op1[19]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[19]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[19]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[20]_i_1_n_0\ : STD_LOGIC;
  signal \reg_op1[20]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[20]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[20]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[20]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1[21]_i_1_n_0\ : STD_LOGIC;
  signal \reg_op1[21]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[21]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[21]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[21]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1[22]_i_1_n_0\ : STD_LOGIC;
  signal \reg_op1[22]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[22]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[22]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[22]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1[23]_i_10_n_0\ : STD_LOGIC;
  signal \reg_op1[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg_op1[23]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[23]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[23]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[23]_i_6_n_0\ : STD_LOGIC;
  signal \reg_op1[23]_i_7_n_0\ : STD_LOGIC;
  signal \reg_op1[23]_i_8_n_0\ : STD_LOGIC;
  signal \reg_op1[23]_i_9_n_0\ : STD_LOGIC;
  signal \reg_op1[24]_i_1_n_0\ : STD_LOGIC;
  signal \reg_op1[24]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[24]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[24]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[24]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1[25]_i_1_n_0\ : STD_LOGIC;
  signal \reg_op1[25]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[25]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[25]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[25]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1[25]_i_6_n_0\ : STD_LOGIC;
  signal \reg_op1[26]_i_1_n_0\ : STD_LOGIC;
  signal \reg_op1[26]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[26]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[26]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[26]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1[26]_i_6_n_0\ : STD_LOGIC;
  signal \reg_op1[27]_i_1_n_0\ : STD_LOGIC;
  signal \reg_op1[27]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[27]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[27]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[27]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1[27]_i_7_n_0\ : STD_LOGIC;
  signal \reg_op1[28]_i_1_n_0\ : STD_LOGIC;
  signal \reg_op1[28]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[28]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[28]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[28]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1[29]_i_1_n_0\ : STD_LOGIC;
  signal \reg_op1[29]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[29]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[29]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[29]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1[30]_i_1_n_0\ : STD_LOGIC;
  signal \reg_op1[30]_i_3_n_0\ : STD_LOGIC;
  signal \reg_op1[30]_i_4_n_0\ : STD_LOGIC;
  signal \reg_op1[30]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1[30]_i_6_n_0\ : STD_LOGIC;
  signal \reg_op1[31]_i_10_n_0\ : STD_LOGIC;
  signal \reg_op1[31]_i_12_n_0\ : STD_LOGIC;
  signal \reg_op1[31]_i_13_n_0\ : STD_LOGIC;
  signal \reg_op1[31]_i_14_n_0\ : STD_LOGIC;
  signal \reg_op1[31]_i_15_n_0\ : STD_LOGIC;
  signal \reg_op1[31]_i_16_n_0\ : STD_LOGIC;
  signal \reg_op1[31]_i_17_n_0\ : STD_LOGIC;
  signal \reg_op1[31]_i_18_n_0\ : STD_LOGIC;
  signal \reg_op1[31]_i_19_n_0\ : STD_LOGIC;
  signal \reg_op1[31]_i_2_n_0\ : STD_LOGIC;
  signal \reg_op1[31]_i_6_n_0\ : STD_LOGIC;
  signal \reg_op1[31]_i_7_n_0\ : STD_LOGIC;
  signal \reg_op1[31]_i_9_n_0\ : STD_LOGIC;
  signal \reg_op1_reg[23]_i_5_n_0\ : STD_LOGIC;
  signal \reg_op1_reg[23]_i_5_n_1\ : STD_LOGIC;
  signal \reg_op1_reg[23]_i_5_n_2\ : STD_LOGIC;
  signal \reg_op1_reg[23]_i_5_n_3\ : STD_LOGIC;
  signal \reg_op1_reg[23]_i_5_n_4\ : STD_LOGIC;
  signal \reg_op1_reg[23]_i_5_n_5\ : STD_LOGIC;
  signal \reg_op1_reg[23]_i_5_n_6\ : STD_LOGIC;
  signal \reg_op1_reg[23]_i_5_n_7\ : STD_LOGIC;
  signal \^reg_op1_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_op1_reg[31]_i_11_n_0\ : STD_LOGIC;
  signal \reg_op1_reg[31]_i_11_n_1\ : STD_LOGIC;
  signal \reg_op1_reg[31]_i_11_n_2\ : STD_LOGIC;
  signal \reg_op1_reg[31]_i_11_n_3\ : STD_LOGIC;
  signal \reg_op1_reg[31]_i_11_n_4\ : STD_LOGIC;
  signal \reg_op1_reg[31]_i_11_n_5\ : STD_LOGIC;
  signal \reg_op1_reg[31]_i_11_n_6\ : STD_LOGIC;
  signal \reg_op1_reg[31]_i_11_n_7\ : STD_LOGIC;
  signal \reg_op1_reg[31]_i_8_n_1\ : STD_LOGIC;
  signal \reg_op1_reg[31]_i_8_n_2\ : STD_LOGIC;
  signal \reg_op1_reg[31]_i_8_n_3\ : STD_LOGIC;
  signal \reg_op1_reg[31]_i_8_n_4\ : STD_LOGIC;
  signal \reg_op1_reg[31]_i_8_n_5\ : STD_LOGIC;
  signal \reg_op1_reg[31]_i_8_n_6\ : STD_LOGIC;
  signal \reg_op1_reg[31]_i_8_n_7\ : STD_LOGIC;
  signal reg_op2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^reg_op2_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_out1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \reg_out[0]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[0]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[0]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out[10]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[10]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[10]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[10]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out[11]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[11]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[11]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[11]_i_7_n_0\ : STD_LOGIC;
  signal \reg_out[12]_i_10_n_0\ : STD_LOGIC;
  signal \reg_out[12]_i_11_n_0\ : STD_LOGIC;
  signal \reg_out[12]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[12]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[12]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[12]_i_7_n_0\ : STD_LOGIC;
  signal \reg_out[12]_i_8_n_0\ : STD_LOGIC;
  signal \reg_out[12]_i_9_n_0\ : STD_LOGIC;
  signal \reg_out[13]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[13]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[13]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[13]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out[14]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[14]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[14]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[14]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out[14]_i_7_n_0\ : STD_LOGIC;
  signal \reg_out[15]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[15]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[15]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[15]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out[15]_i_7_n_0\ : STD_LOGIC;
  signal \reg_out[15]_i_9_n_0\ : STD_LOGIC;
  signal \reg_out[16]_i_10_n_0\ : STD_LOGIC;
  signal \reg_out[16]_i_11_n_0\ : STD_LOGIC;
  signal \reg_out[16]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[16]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[16]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[16]_i_7_n_0\ : STD_LOGIC;
  signal \reg_out[16]_i_8_n_0\ : STD_LOGIC;
  signal \reg_out[16]_i_9_n_0\ : STD_LOGIC;
  signal \reg_out[17]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[17]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[17]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[17]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out[18]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[18]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[18]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[18]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out[19]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[19]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[19]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[19]_i_8_n_0\ : STD_LOGIC;
  signal \reg_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \reg_out[1]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[1]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[1]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out[20]_i_10_n_0\ : STD_LOGIC;
  signal \reg_out[20]_i_11_n_0\ : STD_LOGIC;
  signal \reg_out[20]_i_12_n_0\ : STD_LOGIC;
  signal \reg_out[20]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[20]_i_3_n_0\ : STD_LOGIC;
  signal \reg_out[20]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[20]_i_8_n_0\ : STD_LOGIC;
  signal \reg_out[20]_i_9_n_0\ : STD_LOGIC;
  signal \reg_out[21]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[21]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[21]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[21]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out[22]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[22]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[22]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[22]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out[23]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[23]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[23]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[23]_i_8_n_0\ : STD_LOGIC;
  signal \reg_out[24]_i_10_n_0\ : STD_LOGIC;
  signal \reg_out[24]_i_11_n_0\ : STD_LOGIC;
  signal \reg_out[24]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[24]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[24]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[24]_i_7_n_0\ : STD_LOGIC;
  signal \reg_out[24]_i_8_n_0\ : STD_LOGIC;
  signal \reg_out[24]_i_9_n_0\ : STD_LOGIC;
  signal \reg_out[25]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[25]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[25]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[25]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out[26]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[26]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[26]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[26]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out[27]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[27]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[27]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[27]_i_8_n_0\ : STD_LOGIC;
  signal \reg_out[28]_i_10_n_0\ : STD_LOGIC;
  signal \reg_out[28]_i_11_n_0\ : STD_LOGIC;
  signal \reg_out[28]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[28]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[28]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[28]_i_7_n_0\ : STD_LOGIC;
  signal \reg_out[28]_i_8_n_0\ : STD_LOGIC;
  signal \reg_out[28]_i_9_n_0\ : STD_LOGIC;
  signal \reg_out[29]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[29]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[29]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[29]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[2]_i_3_n_0\ : STD_LOGIC;
  signal \reg_out[2]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[2]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[2]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out[30]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[30]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[30]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[30]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out[31]_i_12_n_0\ : STD_LOGIC;
  signal \reg_out[31]_i_13_n_0\ : STD_LOGIC;
  signal \reg_out[31]_i_22_n_0\ : STD_LOGIC;
  signal \reg_out[31]_i_23_n_0\ : STD_LOGIC;
  signal \reg_out[31]_i_24_n_0\ : STD_LOGIC;
  signal \reg_out[31]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[31]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[31]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[31]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out[31]_i_7_n_0\ : STD_LOGIC;
  signal \reg_out[31]_i_8_n_0\ : STD_LOGIC;
  signal \reg_out[3]_i_11_n_0\ : STD_LOGIC;
  signal \reg_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \reg_out[3]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[3]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out[4]_i_10_n_0\ : STD_LOGIC;
  signal \reg_out[4]_i_11_n_0\ : STD_LOGIC;
  signal \reg_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \reg_out[4]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[4]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[4]_i_7_n_0\ : STD_LOGIC;
  signal \reg_out[4]_i_8_n_0\ : STD_LOGIC;
  signal \reg_out[4]_i_9_n_0\ : STD_LOGIC;
  signal \reg_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[5]_i_3_n_0\ : STD_LOGIC;
  signal \reg_out[5]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[5]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[5]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[6]_i_3_n_0\ : STD_LOGIC;
  signal \reg_out[6]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[6]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[6]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out[7]_i_12_n_0\ : STD_LOGIC;
  signal \reg_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \reg_out[7]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[7]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out[7]_i_7_n_0\ : STD_LOGIC;
  signal \reg_out[8]_i_10_n_0\ : STD_LOGIC;
  signal \reg_out[8]_i_11_n_0\ : STD_LOGIC;
  signal \reg_out[8]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[8]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[8]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[8]_i_7_n_0\ : STD_LOGIC;
  signal \reg_out[8]_i_8_n_0\ : STD_LOGIC;
  signal \reg_out[8]_i_9_n_0\ : STD_LOGIC;
  signal \reg_out[9]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out[9]_i_4_n_0\ : STD_LOGIC;
  signal \reg_out[9]_i_5_n_0\ : STD_LOGIC;
  signal \reg_out[9]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out_reg[12]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out_reg[12]_i_6_n_1\ : STD_LOGIC;
  signal \reg_out_reg[12]_i_6_n_2\ : STD_LOGIC;
  signal \reg_out_reg[12]_i_6_n_3\ : STD_LOGIC;
  signal \reg_out_reg[12]_i_6_n_4\ : STD_LOGIC;
  signal \reg_out_reg[12]_i_6_n_5\ : STD_LOGIC;
  signal \reg_out_reg[12]_i_6_n_6\ : STD_LOGIC;
  signal \reg_out_reg[12]_i_6_n_7\ : STD_LOGIC;
  signal \reg_out_reg[16]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out_reg[16]_i_6_n_1\ : STD_LOGIC;
  signal \reg_out_reg[16]_i_6_n_2\ : STD_LOGIC;
  signal \reg_out_reg[16]_i_6_n_3\ : STD_LOGIC;
  signal \reg_out_reg[16]_i_6_n_4\ : STD_LOGIC;
  signal \reg_out_reg[16]_i_6_n_5\ : STD_LOGIC;
  signal \reg_out_reg[16]_i_6_n_6\ : STD_LOGIC;
  signal \reg_out_reg[16]_i_6_n_7\ : STD_LOGIC;
  signal \reg_out_reg[20]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out_reg[20]_i_6_n_1\ : STD_LOGIC;
  signal \reg_out_reg[20]_i_6_n_2\ : STD_LOGIC;
  signal \reg_out_reg[20]_i_6_n_3\ : STD_LOGIC;
  signal \reg_out_reg[20]_i_6_n_4\ : STD_LOGIC;
  signal \reg_out_reg[20]_i_6_n_5\ : STD_LOGIC;
  signal \reg_out_reg[20]_i_6_n_6\ : STD_LOGIC;
  signal \reg_out_reg[20]_i_6_n_7\ : STD_LOGIC;
  signal \reg_out_reg[24]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out_reg[24]_i_6_n_1\ : STD_LOGIC;
  signal \reg_out_reg[24]_i_6_n_2\ : STD_LOGIC;
  signal \reg_out_reg[24]_i_6_n_3\ : STD_LOGIC;
  signal \reg_out_reg[24]_i_6_n_4\ : STD_LOGIC;
  signal \reg_out_reg[24]_i_6_n_5\ : STD_LOGIC;
  signal \reg_out_reg[24]_i_6_n_6\ : STD_LOGIC;
  signal \reg_out_reg[24]_i_6_n_7\ : STD_LOGIC;
  signal \reg_out_reg[28]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out_reg[28]_i_6_n_1\ : STD_LOGIC;
  signal \reg_out_reg[28]_i_6_n_2\ : STD_LOGIC;
  signal \reg_out_reg[28]_i_6_n_3\ : STD_LOGIC;
  signal \reg_out_reg[28]_i_6_n_4\ : STD_LOGIC;
  signal \reg_out_reg[28]_i_6_n_5\ : STD_LOGIC;
  signal \reg_out_reg[28]_i_6_n_6\ : STD_LOGIC;
  signal \reg_out_reg[28]_i_6_n_7\ : STD_LOGIC;
  signal \reg_out_reg[31]_i_11_n_2\ : STD_LOGIC;
  signal \reg_out_reg[31]_i_11_n_3\ : STD_LOGIC;
  signal \reg_out_reg[31]_i_11_n_5\ : STD_LOGIC;
  signal \reg_out_reg[31]_i_11_n_6\ : STD_LOGIC;
  signal \reg_out_reg[31]_i_11_n_7\ : STD_LOGIC;
  signal \reg_out_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out_reg[4]_i_6_n_1\ : STD_LOGIC;
  signal \reg_out_reg[4]_i_6_n_2\ : STD_LOGIC;
  signal \reg_out_reg[4]_i_6_n_3\ : STD_LOGIC;
  signal \reg_out_reg[4]_i_6_n_4\ : STD_LOGIC;
  signal \reg_out_reg[4]_i_6_n_5\ : STD_LOGIC;
  signal \reg_out_reg[4]_i_6_n_6\ : STD_LOGIC;
  signal \reg_out_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \reg_out_reg[8]_i_6_n_1\ : STD_LOGIC;
  signal \reg_out_reg[8]_i_6_n_2\ : STD_LOGIC;
  signal \reg_out_reg[8]_i_6_n_3\ : STD_LOGIC;
  signal \reg_out_reg[8]_i_6_n_4\ : STD_LOGIC;
  signal \reg_out_reg[8]_i_6_n_5\ : STD_LOGIC;
  signal \reg_out_reg[8]_i_6_n_6\ : STD_LOGIC;
  signal \reg_out_reg[8]_i_6_n_7\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[10]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[11]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[12]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[13]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[14]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[15]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[16]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[17]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[18]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[19]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[20]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[21]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[22]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[23]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[24]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[25]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[26]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[27]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[28]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[29]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[30]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[31]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[4]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[5]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[6]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[7]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[8]\ : STD_LOGIC;
  signal \reg_out_reg_n_0_[9]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[10]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[11]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[12]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[13]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[14]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[15]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[16]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[17]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[18]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[19]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[20]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[21]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[22]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[23]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[24]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[25]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[26]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[27]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[28]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[29]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[30]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[31]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[4]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[5]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[6]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[7]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[8]\ : STD_LOGIC;
  signal \reg_pc_reg_n_0_[9]\ : STD_LOGIC;
  signal reg_sh1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_sh[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg_sh[0]_i_3_n_0\ : STD_LOGIC;
  signal \reg_sh[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg_sh[1]_i_2_n_0\ : STD_LOGIC;
  signal \reg_sh[1]_i_3_n_0\ : STD_LOGIC;
  signal \reg_sh[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg_sh[2]_i_2_n_0\ : STD_LOGIC;
  signal \reg_sh[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg_sh[3]_i_2_n_0\ : STD_LOGIC;
  signal \reg_sh[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg_sh[4]_i_2_n_0\ : STD_LOGIC;
  signal \reg_sh[4]_i_3_n_0\ : STD_LOGIC;
  signal \reg_sh_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg_sh_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg_sh_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg_sh_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_sh_reg_n_0_[4]\ : STD_LOGIC;
  signal \^trap_reg_0\ : STD_LOGIC;
  signal \NLW_alu_out_q_reg[0]_i_16_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_out_q_reg[0]_i_20_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_out_q_reg[0]_i_29_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_out_q_reg[0]_i_34_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_out_q_reg[0]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_out_q_reg[0]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_alu_out_q_reg[0]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_out_q_reg[0]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_out_q_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count_cycle_reg[60]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_count_instr_reg[60]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_cpuregs_reg_r1_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_cpuregs_reg_r1_0_31_0_5_i_9_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cpuregs_reg_r1_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_cpuregs_reg_r1_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_cpuregs_reg_r1_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_cpuregs_reg_r1_0_31_24_29_i_8_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_cpuregs_reg_r1_0_31_30_31_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_cpuregs_reg_r1_0_31_30_31_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_cpuregs_reg_r1_0_31_30_31_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_cpuregs_reg_r1_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_cpuregs_reg_r2_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_cpuregs_reg_r2_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_cpuregs_reg_r2_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_cpuregs_reg_r2_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_cpuregs_reg_r2_0_31_30_31_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_cpuregs_reg_r2_0_31_30_31_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_cpuregs_reg_r2_0_31_30_31_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_cpuregs_reg_r2_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_decoder_trigger_reg_i_16_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_decoder_trigger_reg_i_25_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_decoder_trigger_reg_i_6_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_decoder_trigger_reg_i_7_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_reg_next_pc_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_reg_next_pc_reg[31]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_reg_next_pc_reg[4]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_reg_op1_reg[31]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_reg_out_reg[31]_i_11_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_reg_out_reg[31]_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_reg_out_reg[4]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \alu_out_q_reg[0]_i_16\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \alu_out_q_reg[0]_i_20\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \alu_out_q_reg[0]_i_29\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \alu_out_q_reg[0]_i_34\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \alu_out_q_reg[0]_i_5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \alu_out_q_reg[0]_i_6\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \alu_out_q_reg[0]_i_7\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \alu_out_q_reg[11]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \alu_out_q_reg[15]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \alu_out_q_reg[19]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \alu_out_q_reg[23]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \alu_out_q_reg[27]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \alu_out_q_reg[31]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \alu_out_q_reg[3]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \alu_out_q_reg[7]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cpu_state[1]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \cpu_state[2]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \cpu_state[3]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \cpu_state[3]_i_3\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \cpu_state[5]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \cpu_state[6]_i_3\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \cpu_state[7]_i_7\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \cpu_state[7]_i_9\ : label is "soft_lutpair28";
  attribute METHODOLOGY_DRC_VIOS of cpuregs_reg_r1_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of cpuregs_reg_r1_0_31_0_5 : label is 1024;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of cpuregs_reg_r1_0_31_0_5 : label is "cpuregs";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of cpuregs_reg_r1_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of cpuregs_reg_r1_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of cpuregs_reg_r1_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of cpuregs_reg_r1_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of cpuregs_reg_r1_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of cpuregs_reg_r1_0_31_0_5_i_10 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of cpuregs_reg_r1_0_31_0_5_i_9 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of cpuregs_reg_r1_0_31_12_17 : label is "";
  attribute RTL_RAM_BITS of cpuregs_reg_r1_0_31_12_17 : label is 1024;
  attribute RTL_RAM_NAME of cpuregs_reg_r1_0_31_12_17 : label is "cpuregs";
  attribute ram_addr_begin of cpuregs_reg_r1_0_31_12_17 : label is 0;
  attribute ram_addr_end of cpuregs_reg_r1_0_31_12_17 : label is 31;
  attribute ram_offset of cpuregs_reg_r1_0_31_12_17 : label is 0;
  attribute ram_slice_begin of cpuregs_reg_r1_0_31_12_17 : label is 12;
  attribute ram_slice_end of cpuregs_reg_r1_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of cpuregs_reg_r1_0_31_12_17_i_7 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of cpuregs_reg_r1_0_31_12_17_i_8 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of cpuregs_reg_r1_0_31_18_23 : label is "";
  attribute RTL_RAM_BITS of cpuregs_reg_r1_0_31_18_23 : label is 1024;
  attribute RTL_RAM_NAME of cpuregs_reg_r1_0_31_18_23 : label is "cpuregs";
  attribute ram_addr_begin of cpuregs_reg_r1_0_31_18_23 : label is 0;
  attribute ram_addr_end of cpuregs_reg_r1_0_31_18_23 : label is 31;
  attribute ram_offset of cpuregs_reg_r1_0_31_18_23 : label is 0;
  attribute ram_slice_begin of cpuregs_reg_r1_0_31_18_23 : label is 18;
  attribute ram_slice_end of cpuregs_reg_r1_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of cpuregs_reg_r1_0_31_18_23_i_7 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of cpuregs_reg_r1_0_31_24_29 : label is "";
  attribute RTL_RAM_BITS of cpuregs_reg_r1_0_31_24_29 : label is 1024;
  attribute RTL_RAM_NAME of cpuregs_reg_r1_0_31_24_29 : label is "cpuregs";
  attribute ram_addr_begin of cpuregs_reg_r1_0_31_24_29 : label is 0;
  attribute ram_addr_end of cpuregs_reg_r1_0_31_24_29 : label is 31;
  attribute ram_offset of cpuregs_reg_r1_0_31_24_29 : label is 0;
  attribute ram_slice_begin of cpuregs_reg_r1_0_31_24_29 : label is 24;
  attribute ram_slice_end of cpuregs_reg_r1_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of cpuregs_reg_r1_0_31_24_29_i_7 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of cpuregs_reg_r1_0_31_24_29_i_8 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of cpuregs_reg_r1_0_31_30_31 : label is "";
  attribute RTL_RAM_BITS of cpuregs_reg_r1_0_31_30_31 : label is 1024;
  attribute RTL_RAM_NAME of cpuregs_reg_r1_0_31_30_31 : label is "cpuregs";
  attribute ram_addr_begin of cpuregs_reg_r1_0_31_30_31 : label is 0;
  attribute ram_addr_end of cpuregs_reg_r1_0_31_30_31 : label is 31;
  attribute ram_offset of cpuregs_reg_r1_0_31_30_31 : label is 0;
  attribute ram_slice_begin of cpuregs_reg_r1_0_31_30_31 : label is 30;
  attribute ram_slice_end of cpuregs_reg_r1_0_31_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of cpuregs_reg_r1_0_31_6_11 : label is "";
  attribute RTL_RAM_BITS of cpuregs_reg_r1_0_31_6_11 : label is 1024;
  attribute RTL_RAM_NAME of cpuregs_reg_r1_0_31_6_11 : label is "cpuregs";
  attribute ram_addr_begin of cpuregs_reg_r1_0_31_6_11 : label is 0;
  attribute ram_addr_end of cpuregs_reg_r1_0_31_6_11 : label is 31;
  attribute ram_offset of cpuregs_reg_r1_0_31_6_11 : label is 0;
  attribute ram_slice_begin of cpuregs_reg_r1_0_31_6_11 : label is 6;
  attribute ram_slice_end of cpuregs_reg_r1_0_31_6_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of cpuregs_reg_r1_0_31_6_11_i_7 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of cpuregs_reg_r2_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS of cpuregs_reg_r2_0_31_0_5 : label is 1024;
  attribute RTL_RAM_NAME of cpuregs_reg_r2_0_31_0_5 : label is "cpuregs";
  attribute ram_addr_begin of cpuregs_reg_r2_0_31_0_5 : label is 0;
  attribute ram_addr_end of cpuregs_reg_r2_0_31_0_5 : label is 31;
  attribute ram_offset of cpuregs_reg_r2_0_31_0_5 : label is 0;
  attribute ram_slice_begin of cpuregs_reg_r2_0_31_0_5 : label is 0;
  attribute ram_slice_end of cpuregs_reg_r2_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of cpuregs_reg_r2_0_31_12_17 : label is "";
  attribute RTL_RAM_BITS of cpuregs_reg_r2_0_31_12_17 : label is 1024;
  attribute RTL_RAM_NAME of cpuregs_reg_r2_0_31_12_17 : label is "cpuregs";
  attribute ram_addr_begin of cpuregs_reg_r2_0_31_12_17 : label is 0;
  attribute ram_addr_end of cpuregs_reg_r2_0_31_12_17 : label is 31;
  attribute ram_offset of cpuregs_reg_r2_0_31_12_17 : label is 0;
  attribute ram_slice_begin of cpuregs_reg_r2_0_31_12_17 : label is 12;
  attribute ram_slice_end of cpuregs_reg_r2_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of cpuregs_reg_r2_0_31_18_23 : label is "";
  attribute RTL_RAM_BITS of cpuregs_reg_r2_0_31_18_23 : label is 1024;
  attribute RTL_RAM_NAME of cpuregs_reg_r2_0_31_18_23 : label is "cpuregs";
  attribute ram_addr_begin of cpuregs_reg_r2_0_31_18_23 : label is 0;
  attribute ram_addr_end of cpuregs_reg_r2_0_31_18_23 : label is 31;
  attribute ram_offset of cpuregs_reg_r2_0_31_18_23 : label is 0;
  attribute ram_slice_begin of cpuregs_reg_r2_0_31_18_23 : label is 18;
  attribute ram_slice_end of cpuregs_reg_r2_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of cpuregs_reg_r2_0_31_24_29 : label is "";
  attribute RTL_RAM_BITS of cpuregs_reg_r2_0_31_24_29 : label is 1024;
  attribute RTL_RAM_NAME of cpuregs_reg_r2_0_31_24_29 : label is "cpuregs";
  attribute ram_addr_begin of cpuregs_reg_r2_0_31_24_29 : label is 0;
  attribute ram_addr_end of cpuregs_reg_r2_0_31_24_29 : label is 31;
  attribute ram_offset of cpuregs_reg_r2_0_31_24_29 : label is 0;
  attribute ram_slice_begin of cpuregs_reg_r2_0_31_24_29 : label is 24;
  attribute ram_slice_end of cpuregs_reg_r2_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of cpuregs_reg_r2_0_31_30_31 : label is "";
  attribute RTL_RAM_BITS of cpuregs_reg_r2_0_31_30_31 : label is 1024;
  attribute RTL_RAM_NAME of cpuregs_reg_r2_0_31_30_31 : label is "cpuregs";
  attribute ram_addr_begin of cpuregs_reg_r2_0_31_30_31 : label is 0;
  attribute ram_addr_end of cpuregs_reg_r2_0_31_30_31 : label is 31;
  attribute ram_offset of cpuregs_reg_r2_0_31_30_31 : label is 0;
  attribute ram_slice_begin of cpuregs_reg_r2_0_31_30_31 : label is 30;
  attribute ram_slice_end of cpuregs_reg_r2_0_31_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of cpuregs_reg_r2_0_31_6_11 : label is "";
  attribute RTL_RAM_BITS of cpuregs_reg_r2_0_31_6_11 : label is 1024;
  attribute RTL_RAM_NAME of cpuregs_reg_r2_0_31_6_11 : label is "cpuregs";
  attribute ram_addr_begin of cpuregs_reg_r2_0_31_6_11 : label is 0;
  attribute ram_addr_end of cpuregs_reg_r2_0_31_6_11 : label is 31;
  attribute ram_offset of cpuregs_reg_r2_0_31_6_11 : label is 0;
  attribute ram_slice_begin of cpuregs_reg_r2_0_31_6_11 : label is 6;
  attribute ram_slice_end of cpuregs_reg_r2_0_31_6_11 : label is 11;
  attribute SOFT_HLUTNM of \decoded_imm[4]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \decoded_imm[8]_i_1\ : label is "soft_lutpair52";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \decoded_rs1_reg_rep[0]\ : label is "no";
  attribute equivalent_register_removal of \decoded_rs1_reg_rep[1]\ : label is "no";
  attribute equivalent_register_removal of \decoded_rs1_reg_rep[2]\ : label is "no";
  attribute equivalent_register_removal of \decoded_rs1_reg_rep[3]\ : label is "no";
  attribute equivalent_register_removal of \decoded_rs1_reg_rep[4]\ : label is "no";
  attribute equivalent_register_removal of \decoded_rs2_reg_rep[0]\ : label is "no";
  attribute equivalent_register_removal of \decoded_rs2_reg_rep[1]\ : label is "no";
  attribute equivalent_register_removal of \decoded_rs2_reg_rep[2]\ : label is "no";
  attribute equivalent_register_removal of \decoded_rs2_reg_rep[3]\ : label is "no";
  attribute equivalent_register_removal of \decoded_rs2_reg_rep[4]\ : label is "no";
  attribute SOFT_HLUTNM of decoder_pseudo_trigger_i_2 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of decoder_trigger_i_2 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of decoder_trigger_i_3 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of decoder_trigger_i_4 : label is "soft_lutpair62";
  attribute METHODOLOGY_DRC_VIOS of decoder_trigger_reg_i_16 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of decoder_trigger_reg_i_25 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of decoder_trigger_reg_i_6 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of decoder_trigger_reg_i_7 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of instr_add_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of instr_addi_i_1 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of instr_and_i_1 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of instr_andi_i_1 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of instr_auipc_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of instr_beq_i_1 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of instr_bge_i_1 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of instr_bgeu_i_1 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of instr_blt_i_1 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of instr_bltu_i_1 : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of instr_bne_i_1 : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of instr_ecall_ebreak_i_2 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of instr_ecall_ebreak_i_4 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of instr_lbu_i_1 : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of instr_lh_i_1 : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of instr_lhu_i_2 : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of instr_lw_i_1 : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of instr_or_i_1 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of instr_ori_i_1 : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of instr_rdcycle_i_2 : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of instr_rdcycleh_i_2 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of instr_rdcycleh_i_3 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of instr_rdcycleh_i_4 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of instr_rdinstr_i_3 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of instr_rdinstrh_i_1 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of instr_rdinstrh_i_4 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of instr_sb_i_1 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of instr_sh_i_1 : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of instr_sll_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of instr_slli_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of instr_slt_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of instr_slti_i_1 : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of instr_sltiu_i_1 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of instr_sltu_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of instr_sra_i_1 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of instr_srai_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of instr_srl_i_1 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of instr_srli_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of instr_sub_i_1 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of instr_sw_i_1 : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of instr_xor_i_1 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of instr_xori_i_1 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of is_alu_reg_imm_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of is_compare_i_2 : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of is_jalr_addi_slti_sltiu_xori_ori_andi_i_1 : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of is_slti_blt_slt_i_1 : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of latched_branch_i_2 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of latched_store_i_4 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of latched_store_i_6 : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of latched_store_i_7 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \mem_addr[31]_i_4\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of mem_axi_bready_INST_0 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of mem_axi_rready_INST_0 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of mem_do_prefetch_i_2 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of mem_do_prefetch_i_3 : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of mem_do_rinst_i_11 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of mem_do_rinst_i_16 : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of mem_do_rinst_i_8 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of mem_instr_i_1 : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of mem_valid_i_2 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \mem_wdata[10]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \mem_wdata[11]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \mem_wdata[12]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \mem_wdata[13]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \mem_wdata[14]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \mem_wdata[15]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \mem_wdata[16]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \mem_wdata[24]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \mem_wdata[25]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \mem_wdata[26]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \mem_wdata[27]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \mem_wdata[28]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \mem_wdata[29]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \mem_wdata[30]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \mem_wdata[31]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \mem_wdata[8]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \mem_wdata[9]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \mem_wordsize[1]_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \mem_wstrb[0]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \mem_wstrb[1]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \mem_wstrb[2]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \mem_wstrb[3]_i_2\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \pcpi_timeout_counter[0]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \pcpi_timeout_counter[1]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \pcpi_timeout_counter[2]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \pcpi_timeout_counter[3]_i_3\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of pcpi_valid_i_2 : label is "soft_lutpair63";
  attribute METHODOLOGY_DRC_VIOS of \reg_next_pc_reg[12]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \reg_next_pc_reg[16]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \reg_next_pc_reg[20]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \reg_next_pc_reg[24]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \reg_next_pc_reg[28]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \reg_next_pc_reg[31]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \reg_next_pc_reg[4]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \reg_next_pc_reg[8]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \reg_op1[17]_i_3\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \reg_op1[18]_i_3\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \reg_op1[19]_i_3\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \reg_op1[20]_i_3\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \reg_op1[21]_i_3\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \reg_op1[22]_i_3\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \reg_op1[23]_i_3\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \reg_op1[24]_i_3\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \reg_op1[25]_i_3\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \reg_op1[27]_i_3\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \reg_op1[27]_i_5\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \reg_op1[28]_i_5\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \reg_op1[29]_i_5\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \reg_op1[31]_i_10\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \reg_out[0]_i_2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \reg_out[0]_i_3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \reg_out[14]_i_6\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \reg_out[15]_i_6\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \reg_out[2]_i_2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \reg_out[31]_i_12\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \reg_out[31]_i_6\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \reg_out[31]_i_8\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \reg_out[7]_i_6\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \reg_out[8]_i_4\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \reg_sh[2]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \reg_sh[3]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \reg_sh[4]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \reg_sh[4]_i_3\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of xfer_done_i_1 : label is "soft_lutpair23";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  \cpu_state_reg[5]_1\ <= \^cpu_state_reg[5]_1\;
  instr_add <= \^instr_add\;
  instr_addi <= \^instr_addi\;
  instr_bge_reg_0 <= \^instr_bge_reg_0\;
  instr_ecall_ebreak <= \^instr_ecall_ebreak\;
  instr_jal_reg_0 <= \^instr_jal_reg_0\;
  instr_jalr <= \^instr_jalr\;
  instr_lb <= \^instr_lb\;
  instr_lh <= \^instr_lh\;
  instr_sub <= \^instr_sub\;
  is_beq_bne_blt_bge_bltu_bgeu <= \^is_beq_bne_blt_bge_bltu_bgeu\;
  is_lui_auipc_jal_jalr_addi_add_sub0 <= \^is_lui_auipc_jal_jalr_addi_add_sub0\;
  latched_branch_reg_0 <= \^latched_branch_reg_0\;
  latched_is_lb_reg_0 <= \^latched_is_lb_reg_0\;
  latched_is_lh_reg_0 <= \^latched_is_lh_reg_0\;
  latched_is_lu <= \^latched_is_lu\;
  latched_is_lu_reg_0 <= \^latched_is_lu_reg_0\;
  latched_stalu_reg_0 <= \^latched_stalu_reg_0\;
  latched_store_reg_0 <= \^latched_store_reg_0\;
  mem_do_prefetch_reg_0 <= \^mem_do_prefetch_reg_0\;
  mem_do_rdata <= \^mem_do_rdata\;
  mem_do_wdata <= \^mem_do_wdata\;
  \mem_state_reg[0]_0\ <= \^mem_state_reg[0]_0\;
  mem_valid <= \^mem_valid\;
  \mem_wstrb_reg[0]_0\ <= \^mem_wstrb_reg[0]_0\;
  \mem_wstrb_reg[1]_0\ <= \^mem_wstrb_reg[1]_0\;
  \mem_wstrb_reg[2]_0\ <= \^mem_wstrb_reg[2]_0\;
  \mem_wstrb_reg[3]_0\ <= \^mem_wstrb_reg[3]_0\;
  \pcpi_insn_reg[31]_0\(31 downto 0) <= \^pcpi_insn_reg[31]_0\(31 downto 0);
  pcpi_timeout <= \^pcpi_timeout\;
  \reg_op1_reg[31]_0\(31 downto 0) <= \^reg_op1_reg[31]_0\(31 downto 0);
  \reg_op2_reg[31]_0\(31 downto 0) <= \^reg_op2_reg[31]_0\(31 downto 0);
  trap_reg_0 <= \^trap_reg_0\;
\alu_out_q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF4FF04"
    )
        port map (
      I0 => \^instr_bge_reg_0\,
      I1 => is_compare,
      I2 => is_lui_auipc_jal_jalr_addi_add_sub,
      I3 => \alu_out_q[0]_i_3_n_0\,
      I4 => \alu_out_q_reg[3]_i_2_n_7\,
      I5 => \alu_out_q[0]_i_4_n_0\,
      O => alu_out(0)
    );
\alu_out_q[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(27),
      I1 => \^reg_op2_reg[31]_0\(27),
      I2 => \^reg_op2_reg[31]_0\(26),
      I3 => \^reg_op1_reg[31]_0\(26),
      O => \alu_out_q[0]_i_10_n_0\
    );
\alu_out_q[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(25),
      I1 => \^reg_op2_reg[31]_0\(25),
      I2 => \^reg_op2_reg[31]_0\(24),
      I3 => \^reg_op1_reg[31]_0\(24),
      O => \alu_out_q[0]_i_11_n_0\
    );
\alu_out_q[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(31),
      I1 => \^reg_op1_reg[31]_0\(31),
      I2 => \^reg_op2_reg[31]_0\(30),
      I3 => \^reg_op1_reg[31]_0\(30),
      O => \alu_out_q[0]_i_12_n_0\
    );
\alu_out_q[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(29),
      I1 => \^reg_op1_reg[31]_0\(29),
      I2 => \^reg_op2_reg[31]_0\(28),
      I3 => \^reg_op1_reg[31]_0\(28),
      O => \alu_out_q[0]_i_13_n_0\
    );
\alu_out_q[0]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(26),
      I1 => \^reg_op1_reg[31]_0\(26),
      I2 => \^reg_op2_reg[31]_0\(27),
      I3 => \^reg_op1_reg[31]_0\(27),
      O => \alu_out_q[0]_i_14_n_0\
    );
\alu_out_q[0]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(24),
      I1 => \^reg_op1_reg[31]_0\(24),
      I2 => \^reg_op2_reg[31]_0\(25),
      I3 => \^reg_op1_reg[31]_0\(25),
      O => \alu_out_q[0]_i_15_n_0\
    );
\alu_out_q[0]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(31),
      I1 => \^reg_op1_reg[31]_0\(31),
      I2 => \^reg_op2_reg[31]_0\(30),
      I3 => \^reg_op1_reg[31]_0\(30),
      O => \alu_out_q[0]_i_17_n_0\
    );
\alu_out_q[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(28),
      I1 => \^reg_op2_reg[31]_0\(28),
      I2 => \^reg_op1_reg[31]_0\(29),
      I3 => \^reg_op2_reg[31]_0\(29),
      I4 => \^reg_op2_reg[31]_0\(27),
      I5 => \^reg_op1_reg[31]_0\(27),
      O => \alu_out_q[0]_i_18_n_0\
    );
\alu_out_q[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(25),
      I1 => \^reg_op2_reg[31]_0\(25),
      I2 => \^reg_op1_reg[31]_0\(24),
      I3 => \^reg_op2_reg[31]_0\(24),
      I4 => \^reg_op2_reg[31]_0\(26),
      I5 => \^reg_op1_reg[31]_0\(26),
      O => \alu_out_q[0]_i_19_n_0\
    );
\alu_out_q[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333CCAF3333CCA0"
    )
        port map (
      I0 => data4,
      I1 => \alu_out_q_reg[0]_i_6_n_1\,
      I2 => instr_bge,
      I3 => instr_bne,
      I4 => instr_beq,
      I5 => decoder_trigger_i_5_n_0,
      O => \^instr_bge_reg_0\
    );
\alu_out_q[0]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(23),
      I1 => \^reg_op2_reg[31]_0\(23),
      I2 => \^reg_op2_reg[31]_0\(22),
      I3 => \^reg_op1_reg[31]_0\(22),
      O => \alu_out_q[0]_i_21_n_0\
    );
\alu_out_q[0]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(21),
      I1 => \^reg_op2_reg[31]_0\(21),
      I2 => \^reg_op2_reg[31]_0\(20),
      I3 => \^reg_op1_reg[31]_0\(20),
      O => \alu_out_q[0]_i_22_n_0\
    );
\alu_out_q[0]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(19),
      I1 => \^reg_op2_reg[31]_0\(19),
      I2 => \^reg_op2_reg[31]_0\(18),
      I3 => \^reg_op1_reg[31]_0\(18),
      O => \alu_out_q[0]_i_23_n_0\
    );
\alu_out_q[0]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(17),
      I1 => \^reg_op2_reg[31]_0\(17),
      I2 => \^reg_op2_reg[31]_0\(16),
      I3 => \^reg_op1_reg[31]_0\(16),
      O => \alu_out_q[0]_i_24_n_0\
    );
\alu_out_q[0]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(23),
      I1 => \^reg_op1_reg[31]_0\(23),
      I2 => \^reg_op2_reg[31]_0\(22),
      I3 => \^reg_op1_reg[31]_0\(22),
      O => \alu_out_q[0]_i_25_n_0\
    );
\alu_out_q[0]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(20),
      I1 => \^reg_op1_reg[31]_0\(20),
      I2 => \^reg_op2_reg[31]_0\(21),
      I3 => \^reg_op1_reg[31]_0\(21),
      O => \alu_out_q[0]_i_26_n_0\
    );
\alu_out_q[0]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(18),
      I1 => \^reg_op1_reg[31]_0\(18),
      I2 => \^reg_op2_reg[31]_0\(19),
      I3 => \^reg_op1_reg[31]_0\(19),
      O => \alu_out_q[0]_i_27_n_0\
    );
\alu_out_q[0]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(17),
      I1 => \^reg_op1_reg[31]_0\(17),
      I2 => \^reg_op2_reg[31]_0\(16),
      I3 => \^reg_op1_reg[31]_0\(16),
      O => \alu_out_q[0]_i_28_n_0\
    );
\alu_out_q[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0110011001100000"
    )
        port map (
      I0 => is_lui_auipc_jal_jalr_addi_add_sub,
      I1 => is_compare,
      I2 => \^reg_op1_reg[31]_0\(0),
      I3 => \^reg_op2_reg[31]_0\(0),
      I4 => instr_xor,
      I5 => instr_xori,
      O => \alu_out_q[0]_i_3_n_0\
    );
\alu_out_q[0]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(22),
      I1 => \^reg_op2_reg[31]_0\(22),
      I2 => \^reg_op1_reg[31]_0\(23),
      I3 => \^reg_op2_reg[31]_0\(23),
      I4 => \^reg_op2_reg[31]_0\(21),
      I5 => \^reg_op1_reg[31]_0\(21),
      O => \alu_out_q[0]_i_30_n_0\
    );
\alu_out_q[0]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(19),
      I1 => \^reg_op2_reg[31]_0\(19),
      I2 => \^reg_op1_reg[31]_0\(18),
      I3 => \^reg_op2_reg[31]_0\(18),
      I4 => \^reg_op2_reg[31]_0\(20),
      I5 => \^reg_op1_reg[31]_0\(20),
      O => \alu_out_q[0]_i_31_n_0\
    );
\alu_out_q[0]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(16),
      I1 => \^reg_op2_reg[31]_0\(16),
      I2 => \^reg_op1_reg[31]_0\(17),
      I3 => \^reg_op2_reg[31]_0\(17),
      I4 => \^reg_op2_reg[31]_0\(15),
      I5 => \^reg_op1_reg[31]_0\(15),
      O => \alu_out_q[0]_i_32_n_0\
    );
\alu_out_q[0]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(13),
      I1 => \^reg_op2_reg[31]_0\(13),
      I2 => \^reg_op1_reg[31]_0\(12),
      I3 => \^reg_op2_reg[31]_0\(12),
      I4 => \^reg_op2_reg[31]_0\(14),
      I5 => \^reg_op1_reg[31]_0\(14),
      O => \alu_out_q[0]_i_33_n_0\
    );
\alu_out_q[0]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(15),
      I1 => \^reg_op2_reg[31]_0\(15),
      I2 => \^reg_op2_reg[31]_0\(14),
      I3 => \^reg_op1_reg[31]_0\(14),
      O => \alu_out_q[0]_i_35_n_0\
    );
\alu_out_q[0]_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(13),
      I1 => \^reg_op2_reg[31]_0\(13),
      I2 => \^reg_op2_reg[31]_0\(12),
      I3 => \^reg_op1_reg[31]_0\(12),
      O => \alu_out_q[0]_i_36_n_0\
    );
\alu_out_q[0]_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(11),
      I1 => \^reg_op2_reg[31]_0\(11),
      I2 => \^reg_op2_reg[31]_0\(10),
      I3 => \^reg_op1_reg[31]_0\(10),
      O => \alu_out_q[0]_i_37_n_0\
    );
\alu_out_q[0]_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(9),
      I1 => \^reg_op2_reg[31]_0\(9),
      I2 => \^reg_op2_reg[31]_0\(8),
      I3 => \^reg_op1_reg[31]_0\(8),
      O => \alu_out_q[0]_i_38_n_0\
    );
\alu_out_q[0]_i_39\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(14),
      I1 => \^reg_op1_reg[31]_0\(14),
      I2 => \^reg_op2_reg[31]_0\(15),
      I3 => \^reg_op1_reg[31]_0\(15),
      O => \alu_out_q[0]_i_39_n_0\
    );
\alu_out_q[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A800"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => instr_ori,
      I2 => instr_or,
      I3 => \^reg_op2_reg[31]_0\(0),
      I4 => \^reg_op1_reg[31]_0\(0),
      O => \alu_out_q[0]_i_4_n_0\
    );
\alu_out_q[0]_i_40\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(12),
      I1 => \^reg_op1_reg[31]_0\(12),
      I2 => \^reg_op2_reg[31]_0\(13),
      I3 => \^reg_op1_reg[31]_0\(13),
      O => \alu_out_q[0]_i_40_n_0\
    );
\alu_out_q[0]_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(11),
      I1 => \^reg_op1_reg[31]_0\(11),
      I2 => \^reg_op2_reg[31]_0\(10),
      I3 => \^reg_op1_reg[31]_0\(10),
      O => \alu_out_q[0]_i_41_n_0\
    );
\alu_out_q[0]_i_42\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(8),
      I1 => \^reg_op1_reg[31]_0\(8),
      I2 => \^reg_op2_reg[31]_0\(9),
      I3 => \^reg_op1_reg[31]_0\(9),
      O => \alu_out_q[0]_i_42_n_0\
    );
\alu_out_q[0]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(10),
      I1 => \^reg_op2_reg[31]_0\(10),
      I2 => \^reg_op1_reg[31]_0\(11),
      I3 => \^reg_op2_reg[31]_0\(11),
      I4 => \^reg_op2_reg[31]_0\(9),
      I5 => \^reg_op1_reg[31]_0\(9),
      O => \alu_out_q[0]_i_43_n_0\
    );
\alu_out_q[0]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(7),
      I1 => \^reg_op2_reg[31]_0\(7),
      I2 => \^reg_op1_reg[31]_0\(6),
      I3 => \^reg_op2_reg[31]_0\(6),
      I4 => \^reg_op2_reg[31]_0\(8),
      I5 => \^reg_op1_reg[31]_0\(8),
      O => \alu_out_q[0]_i_44_n_0\
    );
\alu_out_q[0]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(4),
      I1 => \^reg_op2_reg[31]_0\(4),
      I2 => \^reg_op1_reg[31]_0\(5),
      I3 => \^reg_op2_reg[31]_0\(5),
      I4 => \^reg_op2_reg[31]_0\(3),
      I5 => \^reg_op1_reg[31]_0\(3),
      O => \alu_out_q[0]_i_45_n_0\
    );
\alu_out_q[0]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(1),
      I1 => \^reg_op2_reg[31]_0\(1),
      I2 => \^reg_op1_reg[31]_0\(0),
      I3 => \^reg_op2_reg[31]_0\(0),
      I4 => \^reg_op2_reg[31]_0\(2),
      I5 => \^reg_op1_reg[31]_0\(2),
      O => \alu_out_q[0]_i_46_n_0\
    );
\alu_out_q[0]_i_47\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(7),
      I1 => \^reg_op2_reg[31]_0\(7),
      I2 => \^reg_op2_reg[31]_0\(6),
      I3 => \^reg_op1_reg[31]_0\(6),
      O => \alu_out_q[0]_i_47_n_0\
    );
\alu_out_q[0]_i_48\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(5),
      I1 => \^reg_op2_reg[31]_0\(5),
      I2 => \^reg_op2_reg[31]_0\(4),
      I3 => \^reg_op1_reg[31]_0\(4),
      O => \alu_out_q[0]_i_48_n_0\
    );
\alu_out_q[0]_i_49\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(3),
      I1 => \^reg_op2_reg[31]_0\(3),
      I2 => \^reg_op2_reg[31]_0\(2),
      I3 => \^reg_op1_reg[31]_0\(2),
      O => \alu_out_q[0]_i_49_n_0\
    );
\alu_out_q[0]_i_50\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(1),
      I1 => \^reg_op2_reg[31]_0\(1),
      I2 => \^reg_op2_reg[31]_0\(0),
      I3 => \^reg_op1_reg[31]_0\(0),
      O => \alu_out_q[0]_i_50_n_0\
    );
\alu_out_q[0]_i_51\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(6),
      I1 => \^reg_op1_reg[31]_0\(6),
      I2 => \^reg_op2_reg[31]_0\(7),
      I3 => \^reg_op1_reg[31]_0\(7),
      O => \alu_out_q[0]_i_51_n_0\
    );
\alu_out_q[0]_i_52\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(5),
      I1 => \^reg_op1_reg[31]_0\(5),
      I2 => \^reg_op2_reg[31]_0\(4),
      I3 => \^reg_op1_reg[31]_0\(4),
      O => \alu_out_q[0]_i_52_n_0\
    );
\alu_out_q[0]_i_53\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(2),
      I1 => \^reg_op1_reg[31]_0\(2),
      I2 => \^reg_op2_reg[31]_0\(3),
      I3 => \^reg_op1_reg[31]_0\(3),
      O => \alu_out_q[0]_i_53_n_0\
    );
\alu_out_q[0]_i_54\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(0),
      I1 => \^reg_op1_reg[31]_0\(0),
      I2 => \^reg_op2_reg[31]_0\(1),
      I3 => \^reg_op1_reg[31]_0\(1),
      O => \alu_out_q[0]_i_54_n_0\
    );
\alu_out_q[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(31),
      I1 => \^reg_op2_reg[31]_0\(31),
      I2 => \^reg_op2_reg[31]_0\(30),
      I3 => \^reg_op1_reg[31]_0\(30),
      O => \alu_out_q[0]_i_8_n_0\
    );
\alu_out_q[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(29),
      I1 => \^reg_op2_reg[31]_0\(29),
      I2 => \^reg_op2_reg[31]_0\(28),
      I3 => \^reg_op1_reg[31]_0\(28),
      O => \alu_out_q[0]_i_9_n_0\
    );
\alu_out_q[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(10),
      I1 => \^reg_op1_reg[31]_0\(10),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[11]_i_2_n_5\,
      I5 => \alu_out_q[10]_i_2_n_0\,
      O => alu_out(10)
    );
\alu_out_q[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A8A880"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => \^reg_op2_reg[31]_0\(10),
      I2 => \^reg_op1_reg[31]_0\(10),
      I3 => instr_ori,
      I4 => instr_or,
      O => \alu_out_q[10]_i_2_n_0\
    );
\alu_out_q[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(11),
      I1 => \^reg_op1_reg[31]_0\(11),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[11]_i_2_n_4\,
      I5 => \alu_out_q[11]_i_3_n_0\,
      O => alu_out(11)
    );
\alu_out_q[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A8A880"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => \^reg_op2_reg[31]_0\(11),
      I2 => \^reg_op1_reg[31]_0\(11),
      I3 => instr_ori,
      I4 => instr_or,
      O => \alu_out_q[11]_i_3_n_0\
    );
\alu_out_q[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(11),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(11),
      O => \alu_out_q[11]_i_4_n_0\
    );
\alu_out_q[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(10),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(10),
      O => \alu_out_q[11]_i_5_n_0\
    );
\alu_out_q[11]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(9),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(9),
      O => \alu_out_q[11]_i_6_n_0\
    );
\alu_out_q[11]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(8),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(8),
      O => \alu_out_q[11]_i_7_n_0\
    );
\alu_out_q[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(12),
      I1 => \^reg_op1_reg[31]_0\(12),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[15]_i_2_n_7\,
      I5 => \alu_out_q[12]_i_2_n_0\,
      O => alu_out(12)
    );
\alu_out_q[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A8A880"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => \^reg_op2_reg[31]_0\(12),
      I2 => \^reg_op1_reg[31]_0\(12),
      I3 => instr_ori,
      I4 => instr_or,
      O => \alu_out_q[12]_i_2_n_0\
    );
\alu_out_q[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(13),
      I1 => \^reg_op1_reg[31]_0\(13),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[15]_i_2_n_6\,
      I5 => \alu_out_q[13]_i_2_n_0\,
      O => alu_out(13)
    );
\alu_out_q[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A8A880"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => \^reg_op2_reg[31]_0\(13),
      I2 => \^reg_op1_reg[31]_0\(13),
      I3 => instr_ori,
      I4 => instr_or,
      O => \alu_out_q[13]_i_2_n_0\
    );
\alu_out_q[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(14),
      I1 => \^reg_op1_reg[31]_0\(14),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[15]_i_2_n_5\,
      I5 => \alu_out_q[14]_i_2_n_0\,
      O => alu_out(14)
    );
\alu_out_q[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A8A880"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => \^reg_op2_reg[31]_0\(14),
      I2 => \^reg_op1_reg[31]_0\(14),
      I3 => instr_ori,
      I4 => instr_or,
      O => \alu_out_q[14]_i_2_n_0\
    );
\alu_out_q[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(15),
      I1 => \^reg_op1_reg[31]_0\(15),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[15]_i_2_n_4\,
      I5 => \alu_out_q[15]_i_3_n_0\,
      O => alu_out(15)
    );
\alu_out_q[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A800"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => instr_ori,
      I2 => instr_or,
      I3 => \^reg_op2_reg[31]_0\(15),
      I4 => \^reg_op1_reg[31]_0\(15),
      O => \alu_out_q[15]_i_3_n_0\
    );
\alu_out_q[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(15),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(15),
      O => \alu_out_q[15]_i_4_n_0\
    );
\alu_out_q[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(14),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(14),
      O => \alu_out_q[15]_i_5_n_0\
    );
\alu_out_q[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(13),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(13),
      O => \alu_out_q[15]_i_6_n_0\
    );
\alu_out_q[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(12),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(12),
      O => \alu_out_q[15]_i_7_n_0\
    );
\alu_out_q[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(16),
      I1 => \^reg_op1_reg[31]_0\(16),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[19]_i_2_n_7\,
      I5 => \alu_out_q[16]_i_2_n_0\,
      O => alu_out(16)
    );
\alu_out_q[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A800"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => instr_ori,
      I2 => instr_or,
      I3 => \^reg_op2_reg[31]_0\(16),
      I4 => \^reg_op1_reg[31]_0\(16),
      O => \alu_out_q[16]_i_2_n_0\
    );
\alu_out_q[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(17),
      I1 => \^reg_op1_reg[31]_0\(17),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[19]_i_2_n_6\,
      I5 => \alu_out_q[17]_i_2_n_0\,
      O => alu_out(17)
    );
\alu_out_q[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A800"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => instr_ori,
      I2 => instr_or,
      I3 => \^reg_op2_reg[31]_0\(17),
      I4 => \^reg_op1_reg[31]_0\(17),
      O => \alu_out_q[17]_i_2_n_0\
    );
\alu_out_q[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(18),
      I1 => \^reg_op1_reg[31]_0\(18),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[19]_i_2_n_5\,
      I5 => \alu_out_q[18]_i_2_n_0\,
      O => alu_out(18)
    );
\alu_out_q[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A800"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => instr_ori,
      I2 => instr_or,
      I3 => \^reg_op2_reg[31]_0\(18),
      I4 => \^reg_op1_reg[31]_0\(18),
      O => \alu_out_q[18]_i_2_n_0\
    );
\alu_out_q[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(19),
      I1 => \^reg_op1_reg[31]_0\(19),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[19]_i_2_n_4\,
      I5 => \alu_out_q[19]_i_3_n_0\,
      O => alu_out(19)
    );
\alu_out_q[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A800"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => instr_ori,
      I2 => instr_or,
      I3 => \^reg_op2_reg[31]_0\(19),
      I4 => \^reg_op1_reg[31]_0\(19),
      O => \alu_out_q[19]_i_3_n_0\
    );
\alu_out_q[19]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(19),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(19),
      O => \alu_out_q[19]_i_4_n_0\
    );
\alu_out_q[19]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(18),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(18),
      O => \alu_out_q[19]_i_5_n_0\
    );
\alu_out_q[19]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(17),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(17),
      O => \alu_out_q[19]_i_6_n_0\
    );
\alu_out_q[19]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(16),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(16),
      O => \alu_out_q[19]_i_7_n_0\
    );
\alu_out_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(1),
      I1 => \^reg_op1_reg[31]_0\(1),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[3]_i_2_n_6\,
      I5 => \alu_out_q[1]_i_2_n_0\,
      O => alu_out(1)
    );
\alu_out_q[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A800"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => instr_ori,
      I2 => instr_or,
      I3 => \^reg_op2_reg[31]_0\(1),
      I4 => \^reg_op1_reg[31]_0\(1),
      O => \alu_out_q[1]_i_2_n_0\
    );
\alu_out_q[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(20),
      I1 => \^reg_op1_reg[31]_0\(20),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[23]_i_2_n_7\,
      I5 => \alu_out_q[20]_i_2_n_0\,
      O => alu_out(20)
    );
\alu_out_q[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A800"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => instr_ori,
      I2 => instr_or,
      I3 => \^reg_op2_reg[31]_0\(20),
      I4 => \^reg_op1_reg[31]_0\(20),
      O => \alu_out_q[20]_i_2_n_0\
    );
\alu_out_q[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(21),
      I1 => \^reg_op1_reg[31]_0\(21),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[23]_i_2_n_6\,
      I5 => \alu_out_q[21]_i_2_n_0\,
      O => alu_out(21)
    );
\alu_out_q[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A8A880"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => \^reg_op2_reg[31]_0\(21),
      I2 => \^reg_op1_reg[31]_0\(21),
      I3 => instr_ori,
      I4 => instr_or,
      O => \alu_out_q[21]_i_2_n_0\
    );
\alu_out_q[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(22),
      I1 => \^reg_op1_reg[31]_0\(22),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[23]_i_2_n_5\,
      I5 => \alu_out_q[22]_i_2_n_0\,
      O => alu_out(22)
    );
\alu_out_q[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A8A880"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => \^reg_op2_reg[31]_0\(22),
      I2 => \^reg_op1_reg[31]_0\(22),
      I3 => instr_ori,
      I4 => instr_or,
      O => \alu_out_q[22]_i_2_n_0\
    );
\alu_out_q[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(23),
      I1 => \^reg_op1_reg[31]_0\(23),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[23]_i_2_n_4\,
      I5 => \alu_out_q[23]_i_3_n_0\,
      O => alu_out(23)
    );
\alu_out_q[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A800"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => instr_ori,
      I2 => instr_or,
      I3 => \^reg_op2_reg[31]_0\(23),
      I4 => \^reg_op1_reg[31]_0\(23),
      O => \alu_out_q[23]_i_3_n_0\
    );
\alu_out_q[23]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(23),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(23),
      O => \alu_out_q[23]_i_4_n_0\
    );
\alu_out_q[23]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(22),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(22),
      O => \alu_out_q[23]_i_5_n_0\
    );
\alu_out_q[23]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(21),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(21),
      O => \alu_out_q[23]_i_6_n_0\
    );
\alu_out_q[23]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(20),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(20),
      O => \alu_out_q[23]_i_7_n_0\
    );
\alu_out_q[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(24),
      I1 => \^reg_op1_reg[31]_0\(24),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[27]_i_2_n_7\,
      I5 => \alu_out_q[24]_i_2_n_0\,
      O => alu_out(24)
    );
\alu_out_q[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A800"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => instr_ori,
      I2 => instr_or,
      I3 => \^reg_op2_reg[31]_0\(24),
      I4 => \^reg_op1_reg[31]_0\(24),
      O => \alu_out_q[24]_i_2_n_0\
    );
\alu_out_q[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(25),
      I1 => \^reg_op1_reg[31]_0\(25),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[27]_i_2_n_6\,
      I5 => \alu_out_q[25]_i_2_n_0\,
      O => alu_out(25)
    );
\alu_out_q[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A8A880"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => \^reg_op2_reg[31]_0\(25),
      I2 => \^reg_op1_reg[31]_0\(25),
      I3 => instr_ori,
      I4 => instr_or,
      O => \alu_out_q[25]_i_2_n_0\
    );
\alu_out_q[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(26),
      I1 => \^reg_op1_reg[31]_0\(26),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[27]_i_2_n_5\,
      I5 => \alu_out_q[26]_i_2_n_0\,
      O => alu_out(26)
    );
\alu_out_q[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A8A880"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => \^reg_op2_reg[31]_0\(26),
      I2 => \^reg_op1_reg[31]_0\(26),
      I3 => instr_ori,
      I4 => instr_or,
      O => \alu_out_q[26]_i_2_n_0\
    );
\alu_out_q[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(27),
      I1 => \^reg_op1_reg[31]_0\(27),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[27]_i_2_n_4\,
      I5 => \alu_out_q[27]_i_3_n_0\,
      O => alu_out(27)
    );
\alu_out_q[27]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A800"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => instr_ori,
      I2 => instr_or,
      I3 => \^reg_op2_reg[31]_0\(27),
      I4 => \^reg_op1_reg[31]_0\(27),
      O => \alu_out_q[27]_i_3_n_0\
    );
\alu_out_q[27]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(27),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(27),
      O => \alu_out_q[27]_i_4_n_0\
    );
\alu_out_q[27]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(26),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(26),
      O => \alu_out_q[27]_i_5_n_0\
    );
\alu_out_q[27]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(25),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(25),
      O => \alu_out_q[27]_i_6_n_0\
    );
\alu_out_q[27]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(24),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(24),
      O => \alu_out_q[27]_i_7_n_0\
    );
\alu_out_q[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(28),
      I1 => \^reg_op1_reg[31]_0\(28),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[31]_i_3_n_7\,
      I5 => \alu_out_q[28]_i_2_n_0\,
      O => alu_out(28)
    );
\alu_out_q[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A800"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => instr_ori,
      I2 => instr_or,
      I3 => \^reg_op2_reg[31]_0\(28),
      I4 => \^reg_op1_reg[31]_0\(28),
      O => \alu_out_q[28]_i_2_n_0\
    );
\alu_out_q[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(29),
      I1 => \^reg_op1_reg[31]_0\(29),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[31]_i_3_n_6\,
      I5 => \alu_out_q[29]_i_2_n_0\,
      O => alu_out(29)
    );
\alu_out_q[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A800"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => instr_ori,
      I2 => instr_or,
      I3 => \^reg_op2_reg[31]_0\(29),
      I4 => \^reg_op1_reg[31]_0\(29),
      O => \alu_out_q[29]_i_2_n_0\
    );
\alu_out_q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(2),
      I1 => \^reg_op1_reg[31]_0\(2),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[3]_i_2_n_5\,
      I5 => \alu_out_q[2]_i_2_n_0\,
      O => alu_out(2)
    );
\alu_out_q[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A800"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => instr_ori,
      I2 => instr_or,
      I3 => \^reg_op2_reg[31]_0\(2),
      I4 => \^reg_op1_reg[31]_0\(2),
      O => \alu_out_q[2]_i_2_n_0\
    );
\alu_out_q[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(30),
      I1 => \^reg_op1_reg[31]_0\(30),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[31]_i_3_n_5\,
      I5 => \alu_out_q[30]_i_2_n_0\,
      O => alu_out(30)
    );
\alu_out_q[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A8A880"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => \^reg_op2_reg[31]_0\(30),
      I2 => \^reg_op1_reg[31]_0\(30),
      I3 => instr_ori,
      I4 => instr_or,
      O => \alu_out_q[30]_i_2_n_0\
    );
\alu_out_q[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(31),
      I1 => \^reg_op1_reg[31]_0\(31),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[31]_i_3_n_4\,
      I5 => \alu_out_q[31]_i_4_n_0\,
      O => alu_out(31)
    );
\alu_out_q[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF1"
    )
        port map (
      I0 => instr_xori,
      I1 => instr_xor,
      I2 => is_lui_auipc_jal_jalr_addi_add_sub,
      I3 => is_compare,
      O => \alu_out_q[31]_i_2_n_0\
    );
\alu_out_q[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A8A880"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => \^reg_op2_reg[31]_0\(31),
      I2 => \^reg_op1_reg[31]_0\(31),
      I3 => instr_ori,
      I4 => instr_or,
      O => \alu_out_q[31]_i_4_n_0\
    );
\alu_out_q[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^instr_sub\,
      I1 => \^reg_op2_reg[31]_0\(31),
      I2 => \^reg_op1_reg[31]_0\(31),
      O => \alu_out_q[31]_i_5_n_0\
    );
\alu_out_q[31]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(30),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(30),
      O => \alu_out_q[31]_i_6_n_0\
    );
\alu_out_q[31]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(29),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(29),
      O => \alu_out_q[31]_i_7_n_0\
    );
\alu_out_q[31]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(28),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(28),
      O => \alu_out_q[31]_i_8_n_0\
    );
\alu_out_q[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010101010100"
    )
        port map (
      I0 => pcpi_mul_n_95,
      I1 => is_compare,
      I2 => is_lui_auipc_jal_jalr_addi_add_sub,
      I3 => pcpi_mul_n_94,
      I4 => instr_and,
      I5 => instr_andi,
      O => \alu_out_q[31]_i_9_n_0\
    );
\alu_out_q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(3),
      I1 => \^reg_op1_reg[31]_0\(3),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[3]_i_2_n_4\,
      I5 => \alu_out_q[3]_i_3_n_0\,
      O => alu_out(3)
    );
\alu_out_q[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A800"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => instr_ori,
      I2 => instr_or,
      I3 => \^reg_op2_reg[31]_0\(3),
      I4 => \^reg_op1_reg[31]_0\(3),
      O => \alu_out_q[3]_i_3_n_0\
    );
\alu_out_q[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(3),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(3),
      O => \alu_out_q[3]_i_4_n_0\
    );
\alu_out_q[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(2),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(2),
      O => \alu_out_q[3]_i_5_n_0\
    );
\alu_out_q[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(1),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(1),
      O => \alu_out_q[3]_i_6_n_0\
    );
\alu_out_q[3]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(0),
      O => \alu_out_q[3]_i_7_n_0\
    );
\alu_out_q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(4),
      I1 => \^reg_op1_reg[31]_0\(4),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[7]_i_2_n_7\,
      I5 => \alu_out_q[4]_i_2_n_0\,
      O => alu_out(4)
    );
\alu_out_q[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A800"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => instr_ori,
      I2 => instr_or,
      I3 => \^reg_op2_reg[31]_0\(4),
      I4 => \^reg_op1_reg[31]_0\(4),
      O => \alu_out_q[4]_i_2_n_0\
    );
\alu_out_q[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(5),
      I1 => \^reg_op1_reg[31]_0\(5),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[7]_i_2_n_6\,
      I5 => \alu_out_q[5]_i_2_n_0\,
      O => alu_out(5)
    );
\alu_out_q[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A800"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => instr_ori,
      I2 => instr_or,
      I3 => \^reg_op2_reg[31]_0\(5),
      I4 => \^reg_op1_reg[31]_0\(5),
      O => \alu_out_q[5]_i_2_n_0\
    );
\alu_out_q[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(6),
      I1 => \^reg_op1_reg[31]_0\(6),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[7]_i_2_n_5\,
      I5 => \alu_out_q[6]_i_2_n_0\,
      O => alu_out(6)
    );
\alu_out_q[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A8A880"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => \^reg_op2_reg[31]_0\(6),
      I2 => \^reg_op1_reg[31]_0\(6),
      I3 => instr_ori,
      I4 => instr_or,
      O => \alu_out_q[6]_i_2_n_0\
    );
\alu_out_q[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(7),
      I1 => \^reg_op1_reg[31]_0\(7),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[7]_i_2_n_4\,
      I5 => \alu_out_q[7]_i_3_n_0\,
      O => alu_out(7)
    );
\alu_out_q[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A800"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => instr_ori,
      I2 => instr_or,
      I3 => \^reg_op2_reg[31]_0\(7),
      I4 => \^reg_op1_reg[31]_0\(7),
      O => \alu_out_q[7]_i_3_n_0\
    );
\alu_out_q[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(7),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(7),
      O => \alu_out_q[7]_i_4_n_0\
    );
\alu_out_q[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(6),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(6),
      O => \alu_out_q[7]_i_5_n_0\
    );
\alu_out_q[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(5),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(5),
      O => \alu_out_q[7]_i_6_n_0\
    );
\alu_out_q[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(4),
      I1 => \^instr_sub\,
      I2 => \^reg_op1_reg[31]_0\(4),
      O => \alu_out_q[7]_i_7_n_0\
    );
\alu_out_q[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(8),
      I1 => \^reg_op1_reg[31]_0\(8),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[11]_i_2_n_7\,
      I5 => \alu_out_q[8]_i_2_n_0\,
      O => alu_out(8)
    );
\alu_out_q[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A800"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => instr_ori,
      I2 => instr_or,
      I3 => \^reg_op2_reg[31]_0\(8),
      I4 => \^reg_op1_reg[31]_0\(8),
      O => \alu_out_q[8]_i_2_n_0\
    );
\alu_out_q[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF060606"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(9),
      I1 => \^reg_op1_reg[31]_0\(9),
      I2 => \alu_out_q[31]_i_2_n_0\,
      I3 => is_lui_auipc_jal_jalr_addi_add_sub,
      I4 => \alu_out_q_reg[11]_i_2_n_6\,
      I5 => \alu_out_q[9]_i_2_n_0\,
      O => alu_out(9)
    );
\alu_out_q[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A8A880"
    )
        port map (
      I0 => \alu_out_q[31]_i_9_n_0\,
      I1 => \^reg_op2_reg[31]_0\(9),
      I2 => \^reg_op1_reg[31]_0\(9),
      I3 => instr_ori,
      I4 => instr_or,
      O => \alu_out_q[9]_i_2_n_0\
    );
\alu_out_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(0),
      Q => alu_out_q(0),
      R => '0'
    );
\alu_out_q_reg[0]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out_q_reg[0]_i_29_n_0\,
      CO(3) => \alu_out_q_reg[0]_i_16_n_0\,
      CO(2) => \alu_out_q_reg[0]_i_16_n_1\,
      CO(1) => \alu_out_q_reg[0]_i_16_n_2\,
      CO(0) => \alu_out_q_reg[0]_i_16_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_alu_out_q_reg[0]_i_16_O_UNCONNECTED\(3 downto 0),
      S(3) => \alu_out_q[0]_i_30_n_0\,
      S(2) => \alu_out_q[0]_i_31_n_0\,
      S(1) => \alu_out_q[0]_i_32_n_0\,
      S(0) => \alu_out_q[0]_i_33_n_0\
    );
\alu_out_q_reg[0]_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out_q_reg[0]_i_34_n_0\,
      CO(3) => \alu_out_q_reg[0]_i_20_n_0\,
      CO(2) => \alu_out_q_reg[0]_i_20_n_1\,
      CO(1) => \alu_out_q_reg[0]_i_20_n_2\,
      CO(0) => \alu_out_q_reg[0]_i_20_n_3\,
      CYINIT => '0',
      DI(3) => \alu_out_q[0]_i_35_n_0\,
      DI(2) => \alu_out_q[0]_i_36_n_0\,
      DI(1) => \alu_out_q[0]_i_37_n_0\,
      DI(0) => \alu_out_q[0]_i_38_n_0\,
      O(3 downto 0) => \NLW_alu_out_q_reg[0]_i_20_O_UNCONNECTED\(3 downto 0),
      S(3) => \alu_out_q[0]_i_39_n_0\,
      S(2) => \alu_out_q[0]_i_40_n_0\,
      S(1) => \alu_out_q[0]_i_41_n_0\,
      S(0) => \alu_out_q[0]_i_42_n_0\
    );
\alu_out_q_reg[0]_i_29\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \alu_out_q_reg[0]_i_29_n_0\,
      CO(2) => \alu_out_q_reg[0]_i_29_n_1\,
      CO(1) => \alu_out_q_reg[0]_i_29_n_2\,
      CO(0) => \alu_out_q_reg[0]_i_29_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_alu_out_q_reg[0]_i_29_O_UNCONNECTED\(3 downto 0),
      S(3) => \alu_out_q[0]_i_43_n_0\,
      S(2) => \alu_out_q[0]_i_44_n_0\,
      S(1) => \alu_out_q[0]_i_45_n_0\,
      S(0) => \alu_out_q[0]_i_46_n_0\
    );
\alu_out_q_reg[0]_i_34\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \alu_out_q_reg[0]_i_34_n_0\,
      CO(2) => \alu_out_q_reg[0]_i_34_n_1\,
      CO(1) => \alu_out_q_reg[0]_i_34_n_2\,
      CO(0) => \alu_out_q_reg[0]_i_34_n_3\,
      CYINIT => '0',
      DI(3) => \alu_out_q[0]_i_47_n_0\,
      DI(2) => \alu_out_q[0]_i_48_n_0\,
      DI(1) => \alu_out_q[0]_i_49_n_0\,
      DI(0) => \alu_out_q[0]_i_50_n_0\,
      O(3 downto 0) => \NLW_alu_out_q_reg[0]_i_34_O_UNCONNECTED\(3 downto 0),
      S(3) => \alu_out_q[0]_i_51_n_0\,
      S(2) => \alu_out_q[0]_i_52_n_0\,
      S(1) => \alu_out_q[0]_i_53_n_0\,
      S(0) => \alu_out_q[0]_i_54_n_0\
    );
\alu_out_q_reg[0]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out_q_reg[0]_i_7_n_0\,
      CO(3) => data4,
      CO(2) => \alu_out_q_reg[0]_i_5_n_1\,
      CO(1) => \alu_out_q_reg[0]_i_5_n_2\,
      CO(0) => \alu_out_q_reg[0]_i_5_n_3\,
      CYINIT => '0',
      DI(3) => \alu_out_q[0]_i_8_n_0\,
      DI(2) => \alu_out_q[0]_i_9_n_0\,
      DI(1) => \alu_out_q[0]_i_10_n_0\,
      DI(0) => \alu_out_q[0]_i_11_n_0\,
      O(3 downto 0) => \NLW_alu_out_q_reg[0]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \alu_out_q[0]_i_12_n_0\,
      S(2) => \alu_out_q[0]_i_13_n_0\,
      S(1) => \alu_out_q[0]_i_14_n_0\,
      S(0) => \alu_out_q[0]_i_15_n_0\
    );
\alu_out_q_reg[0]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out_q_reg[0]_i_16_n_0\,
      CO(3) => \NLW_alu_out_q_reg[0]_i_6_CO_UNCONNECTED\(3),
      CO(2) => \alu_out_q_reg[0]_i_6_n_1\,
      CO(1) => \alu_out_q_reg[0]_i_6_n_2\,
      CO(0) => \alu_out_q_reg[0]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_alu_out_q_reg[0]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \alu_out_q[0]_i_17_n_0\,
      S(1) => \alu_out_q[0]_i_18_n_0\,
      S(0) => \alu_out_q[0]_i_19_n_0\
    );
\alu_out_q_reg[0]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out_q_reg[0]_i_20_n_0\,
      CO(3) => \alu_out_q_reg[0]_i_7_n_0\,
      CO(2) => \alu_out_q_reg[0]_i_7_n_1\,
      CO(1) => \alu_out_q_reg[0]_i_7_n_2\,
      CO(0) => \alu_out_q_reg[0]_i_7_n_3\,
      CYINIT => '0',
      DI(3) => \alu_out_q[0]_i_21_n_0\,
      DI(2) => \alu_out_q[0]_i_22_n_0\,
      DI(1) => \alu_out_q[0]_i_23_n_0\,
      DI(0) => \alu_out_q[0]_i_24_n_0\,
      O(3 downto 0) => \NLW_alu_out_q_reg[0]_i_7_O_UNCONNECTED\(3 downto 0),
      S(3) => \alu_out_q[0]_i_25_n_0\,
      S(2) => \alu_out_q[0]_i_26_n_0\,
      S(1) => \alu_out_q[0]_i_27_n_0\,
      S(0) => \alu_out_q[0]_i_28_n_0\
    );
\alu_out_q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(10),
      Q => alu_out_q(10),
      R => '0'
    );
\alu_out_q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(11),
      Q => alu_out_q(11),
      R => '0'
    );
\alu_out_q_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out_q_reg[7]_i_2_n_0\,
      CO(3) => \alu_out_q_reg[11]_i_2_n_0\,
      CO(2) => \alu_out_q_reg[11]_i_2_n_1\,
      CO(1) => \alu_out_q_reg[11]_i_2_n_2\,
      CO(0) => \alu_out_q_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^reg_op1_reg[31]_0\(11 downto 8),
      O(3) => \alu_out_q_reg[11]_i_2_n_4\,
      O(2) => \alu_out_q_reg[11]_i_2_n_5\,
      O(1) => \alu_out_q_reg[11]_i_2_n_6\,
      O(0) => \alu_out_q_reg[11]_i_2_n_7\,
      S(3) => \alu_out_q[11]_i_4_n_0\,
      S(2) => \alu_out_q[11]_i_5_n_0\,
      S(1) => \alu_out_q[11]_i_6_n_0\,
      S(0) => \alu_out_q[11]_i_7_n_0\
    );
\alu_out_q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(12),
      Q => alu_out_q(12),
      R => '0'
    );
\alu_out_q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(13),
      Q => alu_out_q(13),
      R => '0'
    );
\alu_out_q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(14),
      Q => alu_out_q(14),
      R => '0'
    );
\alu_out_q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(15),
      Q => alu_out_q(15),
      R => '0'
    );
\alu_out_q_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out_q_reg[11]_i_2_n_0\,
      CO(3) => \alu_out_q_reg[15]_i_2_n_0\,
      CO(2) => \alu_out_q_reg[15]_i_2_n_1\,
      CO(1) => \alu_out_q_reg[15]_i_2_n_2\,
      CO(0) => \alu_out_q_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^reg_op1_reg[31]_0\(15 downto 12),
      O(3) => \alu_out_q_reg[15]_i_2_n_4\,
      O(2) => \alu_out_q_reg[15]_i_2_n_5\,
      O(1) => \alu_out_q_reg[15]_i_2_n_6\,
      O(0) => \alu_out_q_reg[15]_i_2_n_7\,
      S(3) => \alu_out_q[15]_i_4_n_0\,
      S(2) => \alu_out_q[15]_i_5_n_0\,
      S(1) => \alu_out_q[15]_i_6_n_0\,
      S(0) => \alu_out_q[15]_i_7_n_0\
    );
\alu_out_q_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(16),
      Q => alu_out_q(16),
      R => '0'
    );
\alu_out_q_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(17),
      Q => alu_out_q(17),
      R => '0'
    );
\alu_out_q_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(18),
      Q => alu_out_q(18),
      R => '0'
    );
\alu_out_q_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(19),
      Q => alu_out_q(19),
      R => '0'
    );
\alu_out_q_reg[19]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out_q_reg[15]_i_2_n_0\,
      CO(3) => \alu_out_q_reg[19]_i_2_n_0\,
      CO(2) => \alu_out_q_reg[19]_i_2_n_1\,
      CO(1) => \alu_out_q_reg[19]_i_2_n_2\,
      CO(0) => \alu_out_q_reg[19]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^reg_op1_reg[31]_0\(19 downto 16),
      O(3) => \alu_out_q_reg[19]_i_2_n_4\,
      O(2) => \alu_out_q_reg[19]_i_2_n_5\,
      O(1) => \alu_out_q_reg[19]_i_2_n_6\,
      O(0) => \alu_out_q_reg[19]_i_2_n_7\,
      S(3) => \alu_out_q[19]_i_4_n_0\,
      S(2) => \alu_out_q[19]_i_5_n_0\,
      S(1) => \alu_out_q[19]_i_6_n_0\,
      S(0) => \alu_out_q[19]_i_7_n_0\
    );
\alu_out_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(1),
      Q => alu_out_q(1),
      R => '0'
    );
\alu_out_q_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(20),
      Q => alu_out_q(20),
      R => '0'
    );
\alu_out_q_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(21),
      Q => alu_out_q(21),
      R => '0'
    );
\alu_out_q_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(22),
      Q => alu_out_q(22),
      R => '0'
    );
\alu_out_q_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(23),
      Q => alu_out_q(23),
      R => '0'
    );
\alu_out_q_reg[23]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out_q_reg[19]_i_2_n_0\,
      CO(3) => \alu_out_q_reg[23]_i_2_n_0\,
      CO(2) => \alu_out_q_reg[23]_i_2_n_1\,
      CO(1) => \alu_out_q_reg[23]_i_2_n_2\,
      CO(0) => \alu_out_q_reg[23]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^reg_op1_reg[31]_0\(23 downto 20),
      O(3) => \alu_out_q_reg[23]_i_2_n_4\,
      O(2) => \alu_out_q_reg[23]_i_2_n_5\,
      O(1) => \alu_out_q_reg[23]_i_2_n_6\,
      O(0) => \alu_out_q_reg[23]_i_2_n_7\,
      S(3) => \alu_out_q[23]_i_4_n_0\,
      S(2) => \alu_out_q[23]_i_5_n_0\,
      S(1) => \alu_out_q[23]_i_6_n_0\,
      S(0) => \alu_out_q[23]_i_7_n_0\
    );
\alu_out_q_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(24),
      Q => alu_out_q(24),
      R => '0'
    );
\alu_out_q_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(25),
      Q => alu_out_q(25),
      R => '0'
    );
\alu_out_q_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(26),
      Q => alu_out_q(26),
      R => '0'
    );
\alu_out_q_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(27),
      Q => alu_out_q(27),
      R => '0'
    );
\alu_out_q_reg[27]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out_q_reg[23]_i_2_n_0\,
      CO(3) => \alu_out_q_reg[27]_i_2_n_0\,
      CO(2) => \alu_out_q_reg[27]_i_2_n_1\,
      CO(1) => \alu_out_q_reg[27]_i_2_n_2\,
      CO(0) => \alu_out_q_reg[27]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^reg_op1_reg[31]_0\(27 downto 24),
      O(3) => \alu_out_q_reg[27]_i_2_n_4\,
      O(2) => \alu_out_q_reg[27]_i_2_n_5\,
      O(1) => \alu_out_q_reg[27]_i_2_n_6\,
      O(0) => \alu_out_q_reg[27]_i_2_n_7\,
      S(3) => \alu_out_q[27]_i_4_n_0\,
      S(2) => \alu_out_q[27]_i_5_n_0\,
      S(1) => \alu_out_q[27]_i_6_n_0\,
      S(0) => \alu_out_q[27]_i_7_n_0\
    );
\alu_out_q_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(28),
      Q => alu_out_q(28),
      R => '0'
    );
\alu_out_q_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(29),
      Q => alu_out_q(29),
      R => '0'
    );
\alu_out_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(2),
      Q => alu_out_q(2),
      R => '0'
    );
\alu_out_q_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(30),
      Q => alu_out_q(30),
      R => '0'
    );
\alu_out_q_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(31),
      Q => alu_out_q(31),
      R => '0'
    );
\alu_out_q_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out_q_reg[27]_i_2_n_0\,
      CO(3) => \NLW_alu_out_q_reg[31]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \alu_out_q_reg[31]_i_3_n_1\,
      CO(1) => \alu_out_q_reg[31]_i_3_n_2\,
      CO(0) => \alu_out_q_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^reg_op1_reg[31]_0\(30 downto 28),
      O(3) => \alu_out_q_reg[31]_i_3_n_4\,
      O(2) => \alu_out_q_reg[31]_i_3_n_5\,
      O(1) => \alu_out_q_reg[31]_i_3_n_6\,
      O(0) => \alu_out_q_reg[31]_i_3_n_7\,
      S(3) => \alu_out_q[31]_i_5_n_0\,
      S(2) => \alu_out_q[31]_i_6_n_0\,
      S(1) => \alu_out_q[31]_i_7_n_0\,
      S(0) => \alu_out_q[31]_i_8_n_0\
    );
\alu_out_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(3),
      Q => alu_out_q(3),
      R => '0'
    );
\alu_out_q_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \alu_out_q_reg[3]_i_2_n_0\,
      CO(2) => \alu_out_q_reg[3]_i_2_n_1\,
      CO(1) => \alu_out_q_reg[3]_i_2_n_2\,
      CO(0) => \alu_out_q_reg[3]_i_2_n_3\,
      CYINIT => \^reg_op1_reg[31]_0\(0),
      DI(3 downto 1) => \^reg_op1_reg[31]_0\(3 downto 1),
      DI(0) => \^instr_sub\,
      O(3) => \alu_out_q_reg[3]_i_2_n_4\,
      O(2) => \alu_out_q_reg[3]_i_2_n_5\,
      O(1) => \alu_out_q_reg[3]_i_2_n_6\,
      O(0) => \alu_out_q_reg[3]_i_2_n_7\,
      S(3) => \alu_out_q[3]_i_4_n_0\,
      S(2) => \alu_out_q[3]_i_5_n_0\,
      S(1) => \alu_out_q[3]_i_6_n_0\,
      S(0) => \alu_out_q[3]_i_7_n_0\
    );
\alu_out_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(4),
      Q => alu_out_q(4),
      R => '0'
    );
\alu_out_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(5),
      Q => alu_out_q(5),
      R => '0'
    );
\alu_out_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(6),
      Q => alu_out_q(6),
      R => '0'
    );
\alu_out_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(7),
      Q => alu_out_q(7),
      R => '0'
    );
\alu_out_q_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out_q_reg[3]_i_2_n_0\,
      CO(3) => \alu_out_q_reg[7]_i_2_n_0\,
      CO(2) => \alu_out_q_reg[7]_i_2_n_1\,
      CO(1) => \alu_out_q_reg[7]_i_2_n_2\,
      CO(0) => \alu_out_q_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^reg_op1_reg[31]_0\(7 downto 4),
      O(3) => \alu_out_q_reg[7]_i_2_n_4\,
      O(2) => \alu_out_q_reg[7]_i_2_n_5\,
      O(1) => \alu_out_q_reg[7]_i_2_n_6\,
      O(0) => \alu_out_q_reg[7]_i_2_n_7\,
      S(3) => \alu_out_q[7]_i_4_n_0\,
      S(2) => \alu_out_q[7]_i_5_n_0\,
      S(1) => \alu_out_q[7]_i_6_n_0\,
      S(0) => \alu_out_q[7]_i_7_n_0\
    );
\alu_out_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(8),
      Q => alu_out_q(8),
      R => '0'
    );
\alu_out_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => alu_out(9),
      Q => alu_out_q(9),
      R => '0'
    );
\count_cycle[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_cycle_reg(0),
      O => \count_cycle[0]_i_2_n_0\
    );
\count_cycle_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[0]_i_1_n_7\,
      Q => count_cycle_reg(0),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_cycle_reg[0]_i_1_n_0\,
      CO(2) => \count_cycle_reg[0]_i_1_n_1\,
      CO(1) => \count_cycle_reg[0]_i_1_n_2\,
      CO(0) => \count_cycle_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_cycle_reg[0]_i_1_n_4\,
      O(2) => \count_cycle_reg[0]_i_1_n_5\,
      O(1) => \count_cycle_reg[0]_i_1_n_6\,
      O(0) => \count_cycle_reg[0]_i_1_n_7\,
      S(3 downto 1) => count_cycle_reg(3 downto 1),
      S(0) => \count_cycle[0]_i_2_n_0\
    );
\count_cycle_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[8]_i_1_n_5\,
      Q => count_cycle_reg(10),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[8]_i_1_n_4\,
      Q => count_cycle_reg(11),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[12]_i_1_n_7\,
      Q => count_cycle_reg(12),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_cycle_reg[8]_i_1_n_0\,
      CO(3) => \count_cycle_reg[12]_i_1_n_0\,
      CO(2) => \count_cycle_reg[12]_i_1_n_1\,
      CO(1) => \count_cycle_reg[12]_i_1_n_2\,
      CO(0) => \count_cycle_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_cycle_reg[12]_i_1_n_4\,
      O(2) => \count_cycle_reg[12]_i_1_n_5\,
      O(1) => \count_cycle_reg[12]_i_1_n_6\,
      O(0) => \count_cycle_reg[12]_i_1_n_7\,
      S(3 downto 0) => count_cycle_reg(15 downto 12)
    );
\count_cycle_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[12]_i_1_n_6\,
      Q => count_cycle_reg(13),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[12]_i_1_n_5\,
      Q => count_cycle_reg(14),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[12]_i_1_n_4\,
      Q => count_cycle_reg(15),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[16]_i_1_n_7\,
      Q => count_cycle_reg(16),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_cycle_reg[12]_i_1_n_0\,
      CO(3) => \count_cycle_reg[16]_i_1_n_0\,
      CO(2) => \count_cycle_reg[16]_i_1_n_1\,
      CO(1) => \count_cycle_reg[16]_i_1_n_2\,
      CO(0) => \count_cycle_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_cycle_reg[16]_i_1_n_4\,
      O(2) => \count_cycle_reg[16]_i_1_n_5\,
      O(1) => \count_cycle_reg[16]_i_1_n_6\,
      O(0) => \count_cycle_reg[16]_i_1_n_7\,
      S(3 downto 0) => count_cycle_reg(19 downto 16)
    );
\count_cycle_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[16]_i_1_n_6\,
      Q => count_cycle_reg(17),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[16]_i_1_n_5\,
      Q => count_cycle_reg(18),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[16]_i_1_n_4\,
      Q => count_cycle_reg(19),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[0]_i_1_n_6\,
      Q => count_cycle_reg(1),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[20]_i_1_n_7\,
      Q => count_cycle_reg(20),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_cycle_reg[16]_i_1_n_0\,
      CO(3) => \count_cycle_reg[20]_i_1_n_0\,
      CO(2) => \count_cycle_reg[20]_i_1_n_1\,
      CO(1) => \count_cycle_reg[20]_i_1_n_2\,
      CO(0) => \count_cycle_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_cycle_reg[20]_i_1_n_4\,
      O(2) => \count_cycle_reg[20]_i_1_n_5\,
      O(1) => \count_cycle_reg[20]_i_1_n_6\,
      O(0) => \count_cycle_reg[20]_i_1_n_7\,
      S(3 downto 0) => count_cycle_reg(23 downto 20)
    );
\count_cycle_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[20]_i_1_n_6\,
      Q => count_cycle_reg(21),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[20]_i_1_n_5\,
      Q => count_cycle_reg(22),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[20]_i_1_n_4\,
      Q => count_cycle_reg(23),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[24]_i_1_n_7\,
      Q => count_cycle_reg(24),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_cycle_reg[20]_i_1_n_0\,
      CO(3) => \count_cycle_reg[24]_i_1_n_0\,
      CO(2) => \count_cycle_reg[24]_i_1_n_1\,
      CO(1) => \count_cycle_reg[24]_i_1_n_2\,
      CO(0) => \count_cycle_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_cycle_reg[24]_i_1_n_4\,
      O(2) => \count_cycle_reg[24]_i_1_n_5\,
      O(1) => \count_cycle_reg[24]_i_1_n_6\,
      O(0) => \count_cycle_reg[24]_i_1_n_7\,
      S(3 downto 0) => count_cycle_reg(27 downto 24)
    );
\count_cycle_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[24]_i_1_n_6\,
      Q => count_cycle_reg(25),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[24]_i_1_n_5\,
      Q => count_cycle_reg(26),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[24]_i_1_n_4\,
      Q => count_cycle_reg(27),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[28]_i_1_n_7\,
      Q => count_cycle_reg(28),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_cycle_reg[24]_i_1_n_0\,
      CO(3) => \count_cycle_reg[28]_i_1_n_0\,
      CO(2) => \count_cycle_reg[28]_i_1_n_1\,
      CO(1) => \count_cycle_reg[28]_i_1_n_2\,
      CO(0) => \count_cycle_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_cycle_reg[28]_i_1_n_4\,
      O(2) => \count_cycle_reg[28]_i_1_n_5\,
      O(1) => \count_cycle_reg[28]_i_1_n_6\,
      O(0) => \count_cycle_reg[28]_i_1_n_7\,
      S(3 downto 0) => count_cycle_reg(31 downto 28)
    );
\count_cycle_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[28]_i_1_n_6\,
      Q => count_cycle_reg(29),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[0]_i_1_n_5\,
      Q => count_cycle_reg(2),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[28]_i_1_n_5\,
      Q => count_cycle_reg(30),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[28]_i_1_n_4\,
      Q => count_cycle_reg(31),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[32]_i_1_n_7\,
      Q => count_cycle_reg(32),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[32]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_cycle_reg[28]_i_1_n_0\,
      CO(3) => \count_cycle_reg[32]_i_1_n_0\,
      CO(2) => \count_cycle_reg[32]_i_1_n_1\,
      CO(1) => \count_cycle_reg[32]_i_1_n_2\,
      CO(0) => \count_cycle_reg[32]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_cycle_reg[32]_i_1_n_4\,
      O(2) => \count_cycle_reg[32]_i_1_n_5\,
      O(1) => \count_cycle_reg[32]_i_1_n_6\,
      O(0) => \count_cycle_reg[32]_i_1_n_7\,
      S(3 downto 0) => count_cycle_reg(35 downto 32)
    );
\count_cycle_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[32]_i_1_n_6\,
      Q => count_cycle_reg(33),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[32]_i_1_n_5\,
      Q => count_cycle_reg(34),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[32]_i_1_n_4\,
      Q => count_cycle_reg(35),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[36]_i_1_n_7\,
      Q => count_cycle_reg(36),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[36]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_cycle_reg[32]_i_1_n_0\,
      CO(3) => \count_cycle_reg[36]_i_1_n_0\,
      CO(2) => \count_cycle_reg[36]_i_1_n_1\,
      CO(1) => \count_cycle_reg[36]_i_1_n_2\,
      CO(0) => \count_cycle_reg[36]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_cycle_reg[36]_i_1_n_4\,
      O(2) => \count_cycle_reg[36]_i_1_n_5\,
      O(1) => \count_cycle_reg[36]_i_1_n_6\,
      O(0) => \count_cycle_reg[36]_i_1_n_7\,
      S(3 downto 0) => count_cycle_reg(39 downto 36)
    );
\count_cycle_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[36]_i_1_n_6\,
      Q => count_cycle_reg(37),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[36]_i_1_n_5\,
      Q => count_cycle_reg(38),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[36]_i_1_n_4\,
      Q => count_cycle_reg(39),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[0]_i_1_n_4\,
      Q => count_cycle_reg(3),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[40]_i_1_n_7\,
      Q => count_cycle_reg(40),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[40]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_cycle_reg[36]_i_1_n_0\,
      CO(3) => \count_cycle_reg[40]_i_1_n_0\,
      CO(2) => \count_cycle_reg[40]_i_1_n_1\,
      CO(1) => \count_cycle_reg[40]_i_1_n_2\,
      CO(0) => \count_cycle_reg[40]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_cycle_reg[40]_i_1_n_4\,
      O(2) => \count_cycle_reg[40]_i_1_n_5\,
      O(1) => \count_cycle_reg[40]_i_1_n_6\,
      O(0) => \count_cycle_reg[40]_i_1_n_7\,
      S(3 downto 0) => count_cycle_reg(43 downto 40)
    );
\count_cycle_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[40]_i_1_n_6\,
      Q => count_cycle_reg(41),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[40]_i_1_n_5\,
      Q => count_cycle_reg(42),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[40]_i_1_n_4\,
      Q => count_cycle_reg(43),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[44]_i_1_n_7\,
      Q => count_cycle_reg(44),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[44]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_cycle_reg[40]_i_1_n_0\,
      CO(3) => \count_cycle_reg[44]_i_1_n_0\,
      CO(2) => \count_cycle_reg[44]_i_1_n_1\,
      CO(1) => \count_cycle_reg[44]_i_1_n_2\,
      CO(0) => \count_cycle_reg[44]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_cycle_reg[44]_i_1_n_4\,
      O(2) => \count_cycle_reg[44]_i_1_n_5\,
      O(1) => \count_cycle_reg[44]_i_1_n_6\,
      O(0) => \count_cycle_reg[44]_i_1_n_7\,
      S(3 downto 0) => count_cycle_reg(47 downto 44)
    );
\count_cycle_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[44]_i_1_n_6\,
      Q => count_cycle_reg(45),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[44]_i_1_n_5\,
      Q => count_cycle_reg(46),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[44]_i_1_n_4\,
      Q => count_cycle_reg(47),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[48]_i_1_n_7\,
      Q => count_cycle_reg(48),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[48]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_cycle_reg[44]_i_1_n_0\,
      CO(3) => \count_cycle_reg[48]_i_1_n_0\,
      CO(2) => \count_cycle_reg[48]_i_1_n_1\,
      CO(1) => \count_cycle_reg[48]_i_1_n_2\,
      CO(0) => \count_cycle_reg[48]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_cycle_reg[48]_i_1_n_4\,
      O(2) => \count_cycle_reg[48]_i_1_n_5\,
      O(1) => \count_cycle_reg[48]_i_1_n_6\,
      O(0) => \count_cycle_reg[48]_i_1_n_7\,
      S(3 downto 0) => count_cycle_reg(51 downto 48)
    );
\count_cycle_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[48]_i_1_n_6\,
      Q => count_cycle_reg(49),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[4]_i_1_n_7\,
      Q => count_cycle_reg(4),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_cycle_reg[0]_i_1_n_0\,
      CO(3) => \count_cycle_reg[4]_i_1_n_0\,
      CO(2) => \count_cycle_reg[4]_i_1_n_1\,
      CO(1) => \count_cycle_reg[4]_i_1_n_2\,
      CO(0) => \count_cycle_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_cycle_reg[4]_i_1_n_4\,
      O(2) => \count_cycle_reg[4]_i_1_n_5\,
      O(1) => \count_cycle_reg[4]_i_1_n_6\,
      O(0) => \count_cycle_reg[4]_i_1_n_7\,
      S(3 downto 0) => count_cycle_reg(7 downto 4)
    );
\count_cycle_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[48]_i_1_n_5\,
      Q => count_cycle_reg(50),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[48]_i_1_n_4\,
      Q => count_cycle_reg(51),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[52]_i_1_n_7\,
      Q => count_cycle_reg(52),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[52]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_cycle_reg[48]_i_1_n_0\,
      CO(3) => \count_cycle_reg[52]_i_1_n_0\,
      CO(2) => \count_cycle_reg[52]_i_1_n_1\,
      CO(1) => \count_cycle_reg[52]_i_1_n_2\,
      CO(0) => \count_cycle_reg[52]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_cycle_reg[52]_i_1_n_4\,
      O(2) => \count_cycle_reg[52]_i_1_n_5\,
      O(1) => \count_cycle_reg[52]_i_1_n_6\,
      O(0) => \count_cycle_reg[52]_i_1_n_7\,
      S(3 downto 0) => count_cycle_reg(55 downto 52)
    );
\count_cycle_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[52]_i_1_n_6\,
      Q => count_cycle_reg(53),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[52]_i_1_n_5\,
      Q => count_cycle_reg(54),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[52]_i_1_n_4\,
      Q => count_cycle_reg(55),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[56]_i_1_n_7\,
      Q => count_cycle_reg(56),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[56]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_cycle_reg[52]_i_1_n_0\,
      CO(3) => \count_cycle_reg[56]_i_1_n_0\,
      CO(2) => \count_cycle_reg[56]_i_1_n_1\,
      CO(1) => \count_cycle_reg[56]_i_1_n_2\,
      CO(0) => \count_cycle_reg[56]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_cycle_reg[56]_i_1_n_4\,
      O(2) => \count_cycle_reg[56]_i_1_n_5\,
      O(1) => \count_cycle_reg[56]_i_1_n_6\,
      O(0) => \count_cycle_reg[56]_i_1_n_7\,
      S(3 downto 0) => count_cycle_reg(59 downto 56)
    );
\count_cycle_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[56]_i_1_n_6\,
      Q => count_cycle_reg(57),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[56]_i_1_n_5\,
      Q => count_cycle_reg(58),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[56]_i_1_n_4\,
      Q => count_cycle_reg(59),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[4]_i_1_n_6\,
      Q => count_cycle_reg(5),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[60]_i_1_n_7\,
      Q => count_cycle_reg(60),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[60]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_cycle_reg[56]_i_1_n_0\,
      CO(3) => \NLW_count_cycle_reg[60]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_cycle_reg[60]_i_1_n_1\,
      CO(1) => \count_cycle_reg[60]_i_1_n_2\,
      CO(0) => \count_cycle_reg[60]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_cycle_reg[60]_i_1_n_4\,
      O(2) => \count_cycle_reg[60]_i_1_n_5\,
      O(1) => \count_cycle_reg[60]_i_1_n_6\,
      O(0) => \count_cycle_reg[60]_i_1_n_7\,
      S(3 downto 0) => count_cycle_reg(63 downto 60)
    );
\count_cycle_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[60]_i_1_n_6\,
      Q => count_cycle_reg(61),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[60]_i_1_n_5\,
      Q => count_cycle_reg(62),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[60]_i_1_n_4\,
      Q => count_cycle_reg(63),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[4]_i_1_n_5\,
      Q => count_cycle_reg(6),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[4]_i_1_n_4\,
      Q => count_cycle_reg(7),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[8]_i_1_n_7\,
      Q => count_cycle_reg(8),
      R => pcpi_mul_n_24
    );
\count_cycle_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_cycle_reg[4]_i_1_n_0\,
      CO(3) => \count_cycle_reg[8]_i_1_n_0\,
      CO(2) => \count_cycle_reg[8]_i_1_n_1\,
      CO(1) => \count_cycle_reg[8]_i_1_n_2\,
      CO(0) => \count_cycle_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_cycle_reg[8]_i_1_n_4\,
      O(2) => \count_cycle_reg[8]_i_1_n_5\,
      O(1) => \count_cycle_reg[8]_i_1_n_6\,
      O(0) => \count_cycle_reg[8]_i_1_n_7\,
      S(3 downto 0) => count_cycle_reg(11 downto 8)
    );
\count_cycle_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \count_cycle_reg[8]_i_1_n_6\,
      Q => count_cycle_reg(9),
      R => pcpi_mul_n_24
    );
\count_instr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => decoder_trigger_reg_n_0,
      I1 => \^q\(2),
      O => count_instr
    );
\count_instr[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_instr_reg_n_0_[0]\,
      O => \count_instr[0]_i_3_n_0\
    );
\count_instr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[0]_i_2_n_7\,
      Q => \count_instr_reg_n_0_[0]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_instr_reg[0]_i_2_n_0\,
      CO(2) => \count_instr_reg[0]_i_2_n_1\,
      CO(1) => \count_instr_reg[0]_i_2_n_2\,
      CO(0) => \count_instr_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_instr_reg[0]_i_2_n_4\,
      O(2) => \count_instr_reg[0]_i_2_n_5\,
      O(1) => \count_instr_reg[0]_i_2_n_6\,
      O(0) => \count_instr_reg[0]_i_2_n_7\,
      S(3) => \count_instr_reg_n_0_[3]\,
      S(2) => \count_instr_reg_n_0_[2]\,
      S(1) => \count_instr_reg_n_0_[1]\,
      S(0) => \count_instr[0]_i_3_n_0\
    );
\count_instr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[8]_i_1_n_5\,
      Q => \count_instr_reg_n_0_[10]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[8]_i_1_n_4\,
      Q => \count_instr_reg_n_0_[11]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[12]_i_1_n_7\,
      Q => \count_instr_reg_n_0_[12]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_instr_reg[8]_i_1_n_0\,
      CO(3) => \count_instr_reg[12]_i_1_n_0\,
      CO(2) => \count_instr_reg[12]_i_1_n_1\,
      CO(1) => \count_instr_reg[12]_i_1_n_2\,
      CO(0) => \count_instr_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_instr_reg[12]_i_1_n_4\,
      O(2) => \count_instr_reg[12]_i_1_n_5\,
      O(1) => \count_instr_reg[12]_i_1_n_6\,
      O(0) => \count_instr_reg[12]_i_1_n_7\,
      S(3) => \count_instr_reg_n_0_[15]\,
      S(2) => \count_instr_reg_n_0_[14]\,
      S(1) => \count_instr_reg_n_0_[13]\,
      S(0) => \count_instr_reg_n_0_[12]\
    );
\count_instr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[12]_i_1_n_6\,
      Q => \count_instr_reg_n_0_[13]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[12]_i_1_n_5\,
      Q => \count_instr_reg_n_0_[14]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[12]_i_1_n_4\,
      Q => \count_instr_reg_n_0_[15]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[16]_i_1_n_7\,
      Q => \count_instr_reg_n_0_[16]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_instr_reg[12]_i_1_n_0\,
      CO(3) => \count_instr_reg[16]_i_1_n_0\,
      CO(2) => \count_instr_reg[16]_i_1_n_1\,
      CO(1) => \count_instr_reg[16]_i_1_n_2\,
      CO(0) => \count_instr_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_instr_reg[16]_i_1_n_4\,
      O(2) => \count_instr_reg[16]_i_1_n_5\,
      O(1) => \count_instr_reg[16]_i_1_n_6\,
      O(0) => \count_instr_reg[16]_i_1_n_7\,
      S(3) => \count_instr_reg_n_0_[19]\,
      S(2) => \count_instr_reg_n_0_[18]\,
      S(1) => \count_instr_reg_n_0_[17]\,
      S(0) => \count_instr_reg_n_0_[16]\
    );
\count_instr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[16]_i_1_n_6\,
      Q => \count_instr_reg_n_0_[17]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[16]_i_1_n_5\,
      Q => \count_instr_reg_n_0_[18]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[16]_i_1_n_4\,
      Q => \count_instr_reg_n_0_[19]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[0]_i_2_n_6\,
      Q => \count_instr_reg_n_0_[1]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[20]_i_1_n_7\,
      Q => \count_instr_reg_n_0_[20]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_instr_reg[16]_i_1_n_0\,
      CO(3) => \count_instr_reg[20]_i_1_n_0\,
      CO(2) => \count_instr_reg[20]_i_1_n_1\,
      CO(1) => \count_instr_reg[20]_i_1_n_2\,
      CO(0) => \count_instr_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_instr_reg[20]_i_1_n_4\,
      O(2) => \count_instr_reg[20]_i_1_n_5\,
      O(1) => \count_instr_reg[20]_i_1_n_6\,
      O(0) => \count_instr_reg[20]_i_1_n_7\,
      S(3) => \count_instr_reg_n_0_[23]\,
      S(2) => \count_instr_reg_n_0_[22]\,
      S(1) => \count_instr_reg_n_0_[21]\,
      S(0) => \count_instr_reg_n_0_[20]\
    );
\count_instr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[20]_i_1_n_6\,
      Q => \count_instr_reg_n_0_[21]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[20]_i_1_n_5\,
      Q => \count_instr_reg_n_0_[22]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[20]_i_1_n_4\,
      Q => \count_instr_reg_n_0_[23]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[24]_i_1_n_7\,
      Q => \count_instr_reg_n_0_[24]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_instr_reg[20]_i_1_n_0\,
      CO(3) => \count_instr_reg[24]_i_1_n_0\,
      CO(2) => \count_instr_reg[24]_i_1_n_1\,
      CO(1) => \count_instr_reg[24]_i_1_n_2\,
      CO(0) => \count_instr_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_instr_reg[24]_i_1_n_4\,
      O(2) => \count_instr_reg[24]_i_1_n_5\,
      O(1) => \count_instr_reg[24]_i_1_n_6\,
      O(0) => \count_instr_reg[24]_i_1_n_7\,
      S(3) => \count_instr_reg_n_0_[27]\,
      S(2) => \count_instr_reg_n_0_[26]\,
      S(1) => \count_instr_reg_n_0_[25]\,
      S(0) => \count_instr_reg_n_0_[24]\
    );
\count_instr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[24]_i_1_n_6\,
      Q => \count_instr_reg_n_0_[25]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[24]_i_1_n_5\,
      Q => \count_instr_reg_n_0_[26]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[24]_i_1_n_4\,
      Q => \count_instr_reg_n_0_[27]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[28]_i_1_n_7\,
      Q => \count_instr_reg_n_0_[28]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_instr_reg[24]_i_1_n_0\,
      CO(3) => \count_instr_reg[28]_i_1_n_0\,
      CO(2) => \count_instr_reg[28]_i_1_n_1\,
      CO(1) => \count_instr_reg[28]_i_1_n_2\,
      CO(0) => \count_instr_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_instr_reg[28]_i_1_n_4\,
      O(2) => \count_instr_reg[28]_i_1_n_5\,
      O(1) => \count_instr_reg[28]_i_1_n_6\,
      O(0) => \count_instr_reg[28]_i_1_n_7\,
      S(3) => \count_instr_reg_n_0_[31]\,
      S(2) => \count_instr_reg_n_0_[30]\,
      S(1) => \count_instr_reg_n_0_[29]\,
      S(0) => \count_instr_reg_n_0_[28]\
    );
\count_instr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[28]_i_1_n_6\,
      Q => \count_instr_reg_n_0_[29]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[0]_i_2_n_5\,
      Q => \count_instr_reg_n_0_[2]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[28]_i_1_n_5\,
      Q => \count_instr_reg_n_0_[30]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[28]_i_1_n_4\,
      Q => \count_instr_reg_n_0_[31]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[32]_i_1_n_7\,
      Q => data3(0),
      R => pcpi_mul_n_24
    );
\count_instr_reg[32]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_instr_reg[28]_i_1_n_0\,
      CO(3) => \count_instr_reg[32]_i_1_n_0\,
      CO(2) => \count_instr_reg[32]_i_1_n_1\,
      CO(1) => \count_instr_reg[32]_i_1_n_2\,
      CO(0) => \count_instr_reg[32]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_instr_reg[32]_i_1_n_4\,
      O(2) => \count_instr_reg[32]_i_1_n_5\,
      O(1) => \count_instr_reg[32]_i_1_n_6\,
      O(0) => \count_instr_reg[32]_i_1_n_7\,
      S(3 downto 0) => data3(3 downto 0)
    );
\count_instr_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[32]_i_1_n_6\,
      Q => data3(1),
      R => pcpi_mul_n_24
    );
\count_instr_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[32]_i_1_n_5\,
      Q => data3(2),
      R => pcpi_mul_n_24
    );
\count_instr_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[32]_i_1_n_4\,
      Q => data3(3),
      R => pcpi_mul_n_24
    );
\count_instr_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[36]_i_1_n_7\,
      Q => data3(4),
      R => pcpi_mul_n_24
    );
\count_instr_reg[36]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_instr_reg[32]_i_1_n_0\,
      CO(3) => \count_instr_reg[36]_i_1_n_0\,
      CO(2) => \count_instr_reg[36]_i_1_n_1\,
      CO(1) => \count_instr_reg[36]_i_1_n_2\,
      CO(0) => \count_instr_reg[36]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_instr_reg[36]_i_1_n_4\,
      O(2) => \count_instr_reg[36]_i_1_n_5\,
      O(1) => \count_instr_reg[36]_i_1_n_6\,
      O(0) => \count_instr_reg[36]_i_1_n_7\,
      S(3 downto 0) => data3(7 downto 4)
    );
\count_instr_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[36]_i_1_n_6\,
      Q => data3(5),
      R => pcpi_mul_n_24
    );
\count_instr_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[36]_i_1_n_5\,
      Q => data3(6),
      R => pcpi_mul_n_24
    );
\count_instr_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[36]_i_1_n_4\,
      Q => data3(7),
      R => pcpi_mul_n_24
    );
\count_instr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[0]_i_2_n_4\,
      Q => \count_instr_reg_n_0_[3]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[40]_i_1_n_7\,
      Q => data3(8),
      R => pcpi_mul_n_24
    );
\count_instr_reg[40]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_instr_reg[36]_i_1_n_0\,
      CO(3) => \count_instr_reg[40]_i_1_n_0\,
      CO(2) => \count_instr_reg[40]_i_1_n_1\,
      CO(1) => \count_instr_reg[40]_i_1_n_2\,
      CO(0) => \count_instr_reg[40]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_instr_reg[40]_i_1_n_4\,
      O(2) => \count_instr_reg[40]_i_1_n_5\,
      O(1) => \count_instr_reg[40]_i_1_n_6\,
      O(0) => \count_instr_reg[40]_i_1_n_7\,
      S(3 downto 0) => data3(11 downto 8)
    );
\count_instr_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[40]_i_1_n_6\,
      Q => data3(9),
      R => pcpi_mul_n_24
    );
\count_instr_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[40]_i_1_n_5\,
      Q => data3(10),
      R => pcpi_mul_n_24
    );
\count_instr_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[40]_i_1_n_4\,
      Q => data3(11),
      R => pcpi_mul_n_24
    );
\count_instr_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[44]_i_1_n_7\,
      Q => data3(12),
      R => pcpi_mul_n_24
    );
\count_instr_reg[44]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_instr_reg[40]_i_1_n_0\,
      CO(3) => \count_instr_reg[44]_i_1_n_0\,
      CO(2) => \count_instr_reg[44]_i_1_n_1\,
      CO(1) => \count_instr_reg[44]_i_1_n_2\,
      CO(0) => \count_instr_reg[44]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_instr_reg[44]_i_1_n_4\,
      O(2) => \count_instr_reg[44]_i_1_n_5\,
      O(1) => \count_instr_reg[44]_i_1_n_6\,
      O(0) => \count_instr_reg[44]_i_1_n_7\,
      S(3 downto 0) => data3(15 downto 12)
    );
\count_instr_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[44]_i_1_n_6\,
      Q => data3(13),
      R => pcpi_mul_n_24
    );
\count_instr_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[44]_i_1_n_5\,
      Q => data3(14),
      R => pcpi_mul_n_24
    );
\count_instr_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[44]_i_1_n_4\,
      Q => data3(15),
      R => pcpi_mul_n_24
    );
\count_instr_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[48]_i_1_n_7\,
      Q => data3(16),
      R => pcpi_mul_n_24
    );
\count_instr_reg[48]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_instr_reg[44]_i_1_n_0\,
      CO(3) => \count_instr_reg[48]_i_1_n_0\,
      CO(2) => \count_instr_reg[48]_i_1_n_1\,
      CO(1) => \count_instr_reg[48]_i_1_n_2\,
      CO(0) => \count_instr_reg[48]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_instr_reg[48]_i_1_n_4\,
      O(2) => \count_instr_reg[48]_i_1_n_5\,
      O(1) => \count_instr_reg[48]_i_1_n_6\,
      O(0) => \count_instr_reg[48]_i_1_n_7\,
      S(3 downto 0) => data3(19 downto 16)
    );
\count_instr_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[48]_i_1_n_6\,
      Q => data3(17),
      R => pcpi_mul_n_24
    );
\count_instr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[4]_i_1_n_7\,
      Q => \count_instr_reg_n_0_[4]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_instr_reg[0]_i_2_n_0\,
      CO(3) => \count_instr_reg[4]_i_1_n_0\,
      CO(2) => \count_instr_reg[4]_i_1_n_1\,
      CO(1) => \count_instr_reg[4]_i_1_n_2\,
      CO(0) => \count_instr_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_instr_reg[4]_i_1_n_4\,
      O(2) => \count_instr_reg[4]_i_1_n_5\,
      O(1) => \count_instr_reg[4]_i_1_n_6\,
      O(0) => \count_instr_reg[4]_i_1_n_7\,
      S(3) => \count_instr_reg_n_0_[7]\,
      S(2) => \count_instr_reg_n_0_[6]\,
      S(1) => \count_instr_reg_n_0_[5]\,
      S(0) => \count_instr_reg_n_0_[4]\
    );
\count_instr_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[48]_i_1_n_5\,
      Q => data3(18),
      R => pcpi_mul_n_24
    );
\count_instr_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[48]_i_1_n_4\,
      Q => data3(19),
      R => pcpi_mul_n_24
    );
\count_instr_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[52]_i_1_n_7\,
      Q => data3(20),
      R => pcpi_mul_n_24
    );
\count_instr_reg[52]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_instr_reg[48]_i_1_n_0\,
      CO(3) => \count_instr_reg[52]_i_1_n_0\,
      CO(2) => \count_instr_reg[52]_i_1_n_1\,
      CO(1) => \count_instr_reg[52]_i_1_n_2\,
      CO(0) => \count_instr_reg[52]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_instr_reg[52]_i_1_n_4\,
      O(2) => \count_instr_reg[52]_i_1_n_5\,
      O(1) => \count_instr_reg[52]_i_1_n_6\,
      O(0) => \count_instr_reg[52]_i_1_n_7\,
      S(3 downto 0) => data3(23 downto 20)
    );
\count_instr_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[52]_i_1_n_6\,
      Q => data3(21),
      R => pcpi_mul_n_24
    );
\count_instr_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[52]_i_1_n_5\,
      Q => data3(22),
      R => pcpi_mul_n_24
    );
\count_instr_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[52]_i_1_n_4\,
      Q => data3(23),
      R => pcpi_mul_n_24
    );
\count_instr_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[56]_i_1_n_7\,
      Q => data3(24),
      R => pcpi_mul_n_24
    );
\count_instr_reg[56]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_instr_reg[52]_i_1_n_0\,
      CO(3) => \count_instr_reg[56]_i_1_n_0\,
      CO(2) => \count_instr_reg[56]_i_1_n_1\,
      CO(1) => \count_instr_reg[56]_i_1_n_2\,
      CO(0) => \count_instr_reg[56]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_instr_reg[56]_i_1_n_4\,
      O(2) => \count_instr_reg[56]_i_1_n_5\,
      O(1) => \count_instr_reg[56]_i_1_n_6\,
      O(0) => \count_instr_reg[56]_i_1_n_7\,
      S(3 downto 0) => data3(27 downto 24)
    );
\count_instr_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[56]_i_1_n_6\,
      Q => data3(25),
      R => pcpi_mul_n_24
    );
\count_instr_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[56]_i_1_n_5\,
      Q => data3(26),
      R => pcpi_mul_n_24
    );
\count_instr_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[56]_i_1_n_4\,
      Q => data3(27),
      R => pcpi_mul_n_24
    );
\count_instr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[4]_i_1_n_6\,
      Q => \count_instr_reg_n_0_[5]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[60]_i_1_n_7\,
      Q => data3(28),
      R => pcpi_mul_n_24
    );
\count_instr_reg[60]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_instr_reg[56]_i_1_n_0\,
      CO(3) => \NLW_count_instr_reg[60]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_instr_reg[60]_i_1_n_1\,
      CO(1) => \count_instr_reg[60]_i_1_n_2\,
      CO(0) => \count_instr_reg[60]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_instr_reg[60]_i_1_n_4\,
      O(2) => \count_instr_reg[60]_i_1_n_5\,
      O(1) => \count_instr_reg[60]_i_1_n_6\,
      O(0) => \count_instr_reg[60]_i_1_n_7\,
      S(3 downto 0) => data3(31 downto 28)
    );
\count_instr_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[60]_i_1_n_6\,
      Q => data3(29),
      R => pcpi_mul_n_24
    );
\count_instr_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[60]_i_1_n_5\,
      Q => data3(30),
      R => pcpi_mul_n_24
    );
\count_instr_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[60]_i_1_n_4\,
      Q => data3(31),
      R => pcpi_mul_n_24
    );
\count_instr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[4]_i_1_n_5\,
      Q => \count_instr_reg_n_0_[6]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[4]_i_1_n_4\,
      Q => \count_instr_reg_n_0_[7]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[8]_i_1_n_7\,
      Q => \count_instr_reg_n_0_[8]\,
      R => pcpi_mul_n_24
    );
\count_instr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_instr_reg[4]_i_1_n_0\,
      CO(3) => \count_instr_reg[8]_i_1_n_0\,
      CO(2) => \count_instr_reg[8]_i_1_n_1\,
      CO(1) => \count_instr_reg[8]_i_1_n_2\,
      CO(0) => \count_instr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_instr_reg[8]_i_1_n_4\,
      O(2) => \count_instr_reg[8]_i_1_n_5\,
      O(1) => \count_instr_reg[8]_i_1_n_6\,
      O(0) => \count_instr_reg[8]_i_1_n_7\,
      S(3) => \count_instr_reg_n_0_[11]\,
      S(2) => \count_instr_reg_n_0_[10]\,
      S(1) => \count_instr_reg_n_0_[9]\,
      S(0) => \count_instr_reg_n_0_[8]\
    );
\count_instr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => count_instr,
      D => \count_instr_reg[8]_i_1_n_6\,
      Q => \count_instr_reg_n_0_[9]\,
      R => pcpi_mul_n_24
    );
\cpu_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => is_lb_lh_lw_lbu_lhu,
      I1 => is_lui_auipc_jal,
      I2 => resetn,
      I3 => \cpu_state_reg_n_0_[5]\,
      I4 => pcpi_mul_n_22,
      I5 => \cpu_state[3]_i_3_n_0\,
      O => cpu_state0_out(0)
    );
\cpu_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \cpu_state[2]_i_2_n_0\,
      I1 => is_sb_sh_sw,
      I2 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I3 => is_slli_srli_srai,
      O => cpu_state0_out(1)
    );
\cpu_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F200"
    )
        port map (
      I0 => is_sll_srl_sra,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_slli_srli_srai,
      I3 => \cpu_state[2]_i_2_n_0\,
      O => cpu_state0_out(2)
    );
\cpu_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => is_lb_lh_lw_lbu_lhu,
      I1 => is_lui_auipc_jal,
      I2 => resetn,
      I3 => \cpu_state_reg_n_0_[5]\,
      I4 => pcpi_mul_n_22,
      I5 => \cpu_state[3]_i_3_n_0\,
      O => \cpu_state[2]_i_2_n_0\
    );
\cpu_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040000000400000"
    )
        port map (
      I0 => \cpu_state[3]_i_2_n_0\,
      I1 => \cpu_state[3]_i_3_n_0\,
      I2 => pcpi_mul_n_87,
      I3 => is_lb_lh_lw_lbu_lhu,
      I4 => pcpi_mul_n_22,
      I5 => is_lui_auipc_jal,
      O => cpu_state0_out(3)
    );
\cpu_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45454544"
    )
        port map (
      I0 => is_lui_auipc_jal,
      I1 => is_slli_srli_srai,
      I2 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I3 => is_sll_srl_sra,
      I4 => is_sb_sh_sw,
      O => \cpu_state[3]_i_2_n_0\
    );
\cpu_state[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => instr_rdcycleh,
      I1 => instr_rdinstr,
      I2 => instr_rdcycle,
      I3 => instr_rdinstrh,
      O => \cpu_state[3]_i_3_n_0\
    );
\cpu_state[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => resetn,
      I1 => \^q\(2),
      O => cpu_state0_out(5)
    );
\cpu_state[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \cpu_state_reg_n_0_[0]\,
      O => \cpu_state[6]_i_3_n_0\
    );
\cpu_state[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80AA"
    )
        port map (
      I0 => resetn,
      I1 => mem_do_rinst_reg_n_0,
      I2 => \reg_pc_reg_n_0_[1]\,
      I3 => \cpu_state[7]_i_4_n_0\,
      O => \cpu_state[7]_i_1_n_0\
    );
\cpu_state[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CECFCECFCECFFFFF"
    )
        port map (
      I0 => \mem_wordsize_reg_n_0_[0]\,
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \^reg_op1_reg[31]_0\(0),
      I3 => \^reg_op1_reg[31]_0\(1),
      I4 => \^mem_do_wdata\,
      I5 => \^mem_do_rdata\,
      O => \cpu_state[7]_i_4_n_0\
    );
\cpu_state[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08FF08FFFFFF08FF"
    )
        port map (
      I0 => \^q\(2),
      I1 => decoder_trigger_reg_n_0,
      I2 => instr_jal,
      I3 => resetn,
      I4 => \cpu_state_reg_n_0_[2]\,
      I5 => \cpu_state[7]_i_9_n_0\,
      O => \cpu_state[7]_i_6_n_0\
    );
\cpu_state[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[0]\,
      I1 => \^q\(0),
      I2 => pcpi_mul_n_27,
      I3 => \^mem_do_prefetch_reg_0\,
      O => \cpu_state[7]_i_7_n_0\
    );
\cpu_state[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => instr_rdinstrh,
      I1 => instr_rdcycle,
      I2 => pcpi_mul_n_96,
      I3 => is_slli_srli_srai,
      I4 => is_lui_auipc_jal,
      I5 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      O => \cpu_state[7]_i_8_n_0\
    );
\cpu_state[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \reg_sh_reg_n_0_[1]\,
      I1 => \reg_sh_reg_n_0_[4]\,
      I2 => \reg_sh_reg_n_0_[2]\,
      I3 => \reg_sh_reg_n_0_[3]\,
      I4 => \reg_sh_reg_n_0_[0]\,
      O => \cpu_state[7]_i_9_n_0\
    );
\cpu_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_26,
      D => cpu_state0_out(0),
      Q => \cpu_state_reg_n_0_[0]\,
      R => \cpu_state[7]_i_1_n_0\
    );
\cpu_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_26,
      D => cpu_state0_out(1),
      Q => \^q\(0),
      R => \cpu_state[7]_i_1_n_0\
    );
\cpu_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_26,
      D => cpu_state0_out(2),
      Q => \cpu_state_reg_n_0_[2]\,
      R => \cpu_state[7]_i_1_n_0\
    );
\cpu_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_26,
      D => cpu_state0_out(3),
      Q => \^q\(1),
      R => \cpu_state[7]_i_1_n_0\
    );
\cpu_state_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_26,
      D => cpu_state0_out(5),
      Q => \cpu_state_reg_n_0_[5]\,
      R => \cpu_state[7]_i_1_n_0\
    );
\cpu_state_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_26,
      D => cpu_state0_out(6),
      Q => \^q\(2),
      R => \cpu_state[7]_i_1_n_0\
    );
\cpu_state_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => pcpi_mul_n_26,
      D => cpu_state0_out(7),
      Q => \cpu_state_reg_n_0_[7]\,
      S => \cpu_state[7]_i_1_n_0\
    );
cpuregs_reg_r1_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => decoded_rs2(4 downto 0),
      ADDRB(4 downto 0) => decoded_rs2(4 downto 0),
      ADDRC(4 downto 0) => decoded_rs2(4 downto 0),
      ADDRD(4 downto 0) => latched_rd(4 downto 0),
      DIA(1) => cpuregs_reg_r1_0_31_0_5_i_2_n_0,
      DIA(0) => cpuregs_reg_r1_0_31_0_5_i_3_n_0,
      DIB(1) => cpuregs_reg_r1_0_31_0_5_i_4_n_0,
      DIB(0) => cpuregs_reg_r1_0_31_0_5_i_5_n_0,
      DIC(1) => cpuregs_reg_r1_0_31_0_5_i_6_n_0,
      DIC(0) => cpuregs_reg_r1_0_31_0_5_i_7_n_0,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_sh1(1 downto 0),
      DOB(1 downto 0) => reg_sh1(3 downto 2),
      DOC(1 downto 0) => reg_sh1(5 downto 4),
      DOD(1 downto 0) => NLW_cpuregs_reg_r1_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => cpuregs_reg_r1_0_31_0_5_i_1_n_0
    );
cpuregs_reg_r1_0_31_0_5_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => latched_rd(1),
      I1 => latched_rd(3),
      I2 => latched_rd(4),
      I3 => latched_rd(2),
      I4 => latched_rd(0),
      I5 => cpuregs_reg_r1_0_31_0_5_i_8_n_0,
      O => cpuregs_reg_r1_0_31_0_5_i_1_n_0
    );
cpuregs_reg_r1_0_31_0_5_i_10: unisim.vcomponents.CARRY4
     port map (
      CI => cpuregs_reg_r1_0_31_0_5_i_9_n_0,
      CO(3) => cpuregs_reg_r1_0_31_0_5_i_10_n_0,
      CO(2) => cpuregs_reg_r1_0_31_0_5_i_10_n_1,
      CO(1) => cpuregs_reg_r1_0_31_0_5_i_10_n_2,
      CO(0) => cpuregs_reg_r1_0_31_0_5_i_10_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => cpuregs_reg_r1_0_31_0_5_i_10_n_4,
      O(2) => cpuregs_reg_r1_0_31_0_5_i_10_n_5,
      O(1) => cpuregs_reg_r1_0_31_0_5_i_10_n_6,
      O(0) => cpuregs_reg_r1_0_31_0_5_i_10_n_7,
      S(3) => \reg_pc_reg_n_0_[7]\,
      S(2) => \reg_pc_reg_n_0_[6]\,
      S(1) => \reg_pc_reg_n_0_[5]\,
      S(0) => \reg_pc_reg_n_0_[4]\
    );
cpuregs_reg_r1_0_31_0_5_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[7]\,
      I1 => \cpu_state_reg_n_0_[5]\,
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^q\(1),
      O => cpuregs_reg_r1_0_31_0_5_i_11_n_0
    );
cpuregs_reg_r1_0_31_0_5_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[2]\,
      O => cpuregs_reg_r1_0_31_0_5_i_12_n_0
    );
cpuregs_reg_r1_0_31_0_5_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_0_5_i_9_n_6,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(1),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[1]\,
      O => cpuregs_reg_r1_0_31_0_5_i_2_n_0
    );
cpuregs_reg_r1_0_31_0_5_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
        port map (
      I0 => \reg_out_reg_n_0_[0]\,
      I1 => \^latched_stalu_reg_0\,
      I2 => alu_out_q(0),
      I3 => \^latched_store_reg_0\,
      I4 => \^latched_branch_reg_0\,
      O => cpuregs_reg_r1_0_31_0_5_i_3_n_0
    );
cpuregs_reg_r1_0_31_0_5_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_0_5_i_9_n_4,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(3),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[3]\,
      O => cpuregs_reg_r1_0_31_0_5_i_4_n_0
    );
cpuregs_reg_r1_0_31_0_5_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_0_5_i_9_n_5,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(2),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[2]\,
      O => cpuregs_reg_r1_0_31_0_5_i_5_n_0
    );
cpuregs_reg_r1_0_31_0_5_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_0_5_i_10_n_6,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(5),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[5]\,
      O => cpuregs_reg_r1_0_31_0_5_i_6_n_0
    );
cpuregs_reg_r1_0_31_0_5_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_0_5_i_10_n_7,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(4),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[4]\,
      O => cpuregs_reg_r1_0_31_0_5_i_7_n_0
    );
cpuregs_reg_r1_0_31_0_5_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFF7FFF7FFFF"
    )
        port map (
      I0 => resetn,
      I1 => \^q\(2),
      I2 => \cpu_state[6]_i_3_n_0\,
      I3 => cpuregs_reg_r1_0_31_0_5_i_11_n_0,
      I4 => \^latched_branch_reg_0\,
      I5 => \^latched_store_reg_0\,
      O => cpuregs_reg_r1_0_31_0_5_i_8_n_0
    );
cpuregs_reg_r1_0_31_0_5_i_9: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cpuregs_reg_r1_0_31_0_5_i_9_n_0,
      CO(2) => cpuregs_reg_r1_0_31_0_5_i_9_n_1,
      CO(1) => cpuregs_reg_r1_0_31_0_5_i_9_n_2,
      CO(0) => cpuregs_reg_r1_0_31_0_5_i_9_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \reg_pc_reg_n_0_[2]\,
      DI(1) => \reg_pc_reg_n_0_[1]\,
      DI(0) => '0',
      O(3) => cpuregs_reg_r1_0_31_0_5_i_9_n_4,
      O(2) => cpuregs_reg_r1_0_31_0_5_i_9_n_5,
      O(1) => cpuregs_reg_r1_0_31_0_5_i_9_n_6,
      O(0) => NLW_cpuregs_reg_r1_0_31_0_5_i_9_O_UNCONNECTED(0),
      S(3) => \reg_pc_reg_n_0_[3]\,
      S(2) => cpuregs_reg_r1_0_31_0_5_i_12_n_0,
      S(1) => \reg_pc_reg_n_0_[1]\,
      S(0) => '0'
    );
cpuregs_reg_r1_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => decoded_rs2(4 downto 0),
      ADDRB(4 downto 0) => decoded_rs2(4 downto 0),
      ADDRC(4 downto 0) => decoded_rs2(4 downto 0),
      ADDRD(4 downto 0) => latched_rd(4 downto 0),
      DIA(1) => cpuregs_reg_r1_0_31_12_17_i_1_n_0,
      DIA(0) => cpuregs_reg_r1_0_31_12_17_i_2_n_0,
      DIB(1) => cpuregs_reg_r1_0_31_12_17_i_3_n_0,
      DIB(0) => cpuregs_reg_r1_0_31_12_17_i_4_n_0,
      DIC(1) => cpuregs_reg_r1_0_31_12_17_i_5_n_0,
      DIC(0) => cpuregs_reg_r1_0_31_12_17_i_6_n_0,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_sh1(13 downto 12),
      DOB(1 downto 0) => reg_sh1(15 downto 14),
      DOC(1 downto 0) => reg_sh1(17 downto 16),
      DOD(1 downto 0) => NLW_cpuregs_reg_r1_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => cpuregs_reg_r1_0_31_0_5_i_1_n_0
    );
cpuregs_reg_r1_0_31_12_17_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_12_17_i_7_n_6,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(13),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[13]\,
      O => cpuregs_reg_r1_0_31_12_17_i_1_n_0
    );
cpuregs_reg_r1_0_31_12_17_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_12_17_i_7_n_7,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(12),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[12]\,
      O => cpuregs_reg_r1_0_31_12_17_i_2_n_0
    );
cpuregs_reg_r1_0_31_12_17_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_12_17_i_7_n_4,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(15),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[15]\,
      O => cpuregs_reg_r1_0_31_12_17_i_3_n_0
    );
cpuregs_reg_r1_0_31_12_17_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_12_17_i_7_n_5,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(14),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[14]\,
      O => cpuregs_reg_r1_0_31_12_17_i_4_n_0
    );
cpuregs_reg_r1_0_31_12_17_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_12_17_i_8_n_6,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(17),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[17]\,
      O => cpuregs_reg_r1_0_31_12_17_i_5_n_0
    );
cpuregs_reg_r1_0_31_12_17_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_12_17_i_8_n_7,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(16),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[16]\,
      O => cpuregs_reg_r1_0_31_12_17_i_6_n_0
    );
cpuregs_reg_r1_0_31_12_17_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => cpuregs_reg_r1_0_31_6_11_i_7_n_0,
      CO(3) => cpuregs_reg_r1_0_31_12_17_i_7_n_0,
      CO(2) => cpuregs_reg_r1_0_31_12_17_i_7_n_1,
      CO(1) => cpuregs_reg_r1_0_31_12_17_i_7_n_2,
      CO(0) => cpuregs_reg_r1_0_31_12_17_i_7_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => cpuregs_reg_r1_0_31_12_17_i_7_n_4,
      O(2) => cpuregs_reg_r1_0_31_12_17_i_7_n_5,
      O(1) => cpuregs_reg_r1_0_31_12_17_i_7_n_6,
      O(0) => cpuregs_reg_r1_0_31_12_17_i_7_n_7,
      S(3) => \reg_pc_reg_n_0_[15]\,
      S(2) => \reg_pc_reg_n_0_[14]\,
      S(1) => \reg_pc_reg_n_0_[13]\,
      S(0) => \reg_pc_reg_n_0_[12]\
    );
cpuregs_reg_r1_0_31_12_17_i_8: unisim.vcomponents.CARRY4
     port map (
      CI => cpuregs_reg_r1_0_31_12_17_i_7_n_0,
      CO(3) => cpuregs_reg_r1_0_31_12_17_i_8_n_0,
      CO(2) => cpuregs_reg_r1_0_31_12_17_i_8_n_1,
      CO(1) => cpuregs_reg_r1_0_31_12_17_i_8_n_2,
      CO(0) => cpuregs_reg_r1_0_31_12_17_i_8_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => cpuregs_reg_r1_0_31_12_17_i_8_n_4,
      O(2) => cpuregs_reg_r1_0_31_12_17_i_8_n_5,
      O(1) => cpuregs_reg_r1_0_31_12_17_i_8_n_6,
      O(0) => cpuregs_reg_r1_0_31_12_17_i_8_n_7,
      S(3) => \reg_pc_reg_n_0_[19]\,
      S(2) => \reg_pc_reg_n_0_[18]\,
      S(1) => \reg_pc_reg_n_0_[17]\,
      S(0) => \reg_pc_reg_n_0_[16]\
    );
cpuregs_reg_r1_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => decoded_rs2(4 downto 0),
      ADDRB(4 downto 0) => decoded_rs2(4 downto 0),
      ADDRC(4 downto 0) => decoded_rs2(4 downto 0),
      ADDRD(4 downto 0) => latched_rd(4 downto 0),
      DIA(1) => cpuregs_reg_r1_0_31_18_23_i_1_n_0,
      DIA(0) => cpuregs_reg_r1_0_31_18_23_i_2_n_0,
      DIB(1) => cpuregs_reg_r1_0_31_18_23_i_3_n_0,
      DIB(0) => cpuregs_reg_r1_0_31_18_23_i_4_n_0,
      DIC(1) => cpuregs_reg_r1_0_31_18_23_i_5_n_0,
      DIC(0) => cpuregs_reg_r1_0_31_18_23_i_6_n_0,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_sh1(19 downto 18),
      DOB(1 downto 0) => reg_sh1(21 downto 20),
      DOC(1 downto 0) => reg_sh1(23 downto 22),
      DOD(1 downto 0) => NLW_cpuregs_reg_r1_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => cpuregs_reg_r1_0_31_0_5_i_1_n_0
    );
cpuregs_reg_r1_0_31_18_23_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_12_17_i_8_n_4,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(19),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[19]\,
      O => cpuregs_reg_r1_0_31_18_23_i_1_n_0
    );
cpuregs_reg_r1_0_31_18_23_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_12_17_i_8_n_5,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(18),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[18]\,
      O => cpuregs_reg_r1_0_31_18_23_i_2_n_0
    );
cpuregs_reg_r1_0_31_18_23_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_18_23_i_7_n_6,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(21),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[21]\,
      O => cpuregs_reg_r1_0_31_18_23_i_3_n_0
    );
cpuregs_reg_r1_0_31_18_23_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_18_23_i_7_n_7,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(20),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[20]\,
      O => cpuregs_reg_r1_0_31_18_23_i_4_n_0
    );
cpuregs_reg_r1_0_31_18_23_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_18_23_i_7_n_4,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(23),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[23]\,
      O => cpuregs_reg_r1_0_31_18_23_i_5_n_0
    );
cpuregs_reg_r1_0_31_18_23_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_18_23_i_7_n_5,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(22),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[22]\,
      O => cpuregs_reg_r1_0_31_18_23_i_6_n_0
    );
cpuregs_reg_r1_0_31_18_23_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => cpuregs_reg_r1_0_31_12_17_i_8_n_0,
      CO(3) => cpuregs_reg_r1_0_31_18_23_i_7_n_0,
      CO(2) => cpuregs_reg_r1_0_31_18_23_i_7_n_1,
      CO(1) => cpuregs_reg_r1_0_31_18_23_i_7_n_2,
      CO(0) => cpuregs_reg_r1_0_31_18_23_i_7_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => cpuregs_reg_r1_0_31_18_23_i_7_n_4,
      O(2) => cpuregs_reg_r1_0_31_18_23_i_7_n_5,
      O(1) => cpuregs_reg_r1_0_31_18_23_i_7_n_6,
      O(0) => cpuregs_reg_r1_0_31_18_23_i_7_n_7,
      S(3) => \reg_pc_reg_n_0_[23]\,
      S(2) => \reg_pc_reg_n_0_[22]\,
      S(1) => \reg_pc_reg_n_0_[21]\,
      S(0) => \reg_pc_reg_n_0_[20]\
    );
cpuregs_reg_r1_0_31_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => decoded_rs2(4 downto 0),
      ADDRB(4 downto 0) => decoded_rs2(4 downto 0),
      ADDRC(4 downto 0) => decoded_rs2(4 downto 0),
      ADDRD(4 downto 0) => latched_rd(4 downto 0),
      DIA(1) => cpuregs_reg_r1_0_31_24_29_i_1_n_0,
      DIA(0) => cpuregs_reg_r1_0_31_24_29_i_2_n_0,
      DIB(1) => cpuregs_reg_r1_0_31_24_29_i_3_n_0,
      DIB(0) => cpuregs_reg_r1_0_31_24_29_i_4_n_0,
      DIC(1) => cpuregs_reg_r1_0_31_24_29_i_5_n_0,
      DIC(0) => cpuregs_reg_r1_0_31_24_29_i_6_n_0,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_sh1(25 downto 24),
      DOB(1 downto 0) => reg_sh1(27 downto 26),
      DOC(1 downto 0) => reg_sh1(29 downto 28),
      DOD(1 downto 0) => NLW_cpuregs_reg_r1_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => cpuregs_reg_r1_0_31_0_5_i_1_n_0
    );
cpuregs_reg_r1_0_31_24_29_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_24_29_i_7_n_6,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(25),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[25]\,
      O => cpuregs_reg_r1_0_31_24_29_i_1_n_0
    );
cpuregs_reg_r1_0_31_24_29_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_24_29_i_7_n_7,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(24),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[24]\,
      O => cpuregs_reg_r1_0_31_24_29_i_2_n_0
    );
cpuregs_reg_r1_0_31_24_29_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_24_29_i_7_n_4,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(27),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[27]\,
      O => cpuregs_reg_r1_0_31_24_29_i_3_n_0
    );
cpuregs_reg_r1_0_31_24_29_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_24_29_i_7_n_5,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(26),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[26]\,
      O => cpuregs_reg_r1_0_31_24_29_i_4_n_0
    );
cpuregs_reg_r1_0_31_24_29_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_24_29_i_8_n_6,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(29),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[29]\,
      O => cpuregs_reg_r1_0_31_24_29_i_5_n_0
    );
cpuregs_reg_r1_0_31_24_29_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_24_29_i_8_n_7,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(28),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[28]\,
      O => cpuregs_reg_r1_0_31_24_29_i_6_n_0
    );
cpuregs_reg_r1_0_31_24_29_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => cpuregs_reg_r1_0_31_18_23_i_7_n_0,
      CO(3) => cpuregs_reg_r1_0_31_24_29_i_7_n_0,
      CO(2) => cpuregs_reg_r1_0_31_24_29_i_7_n_1,
      CO(1) => cpuregs_reg_r1_0_31_24_29_i_7_n_2,
      CO(0) => cpuregs_reg_r1_0_31_24_29_i_7_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => cpuregs_reg_r1_0_31_24_29_i_7_n_4,
      O(2) => cpuregs_reg_r1_0_31_24_29_i_7_n_5,
      O(1) => cpuregs_reg_r1_0_31_24_29_i_7_n_6,
      O(0) => cpuregs_reg_r1_0_31_24_29_i_7_n_7,
      S(3) => \reg_pc_reg_n_0_[27]\,
      S(2) => \reg_pc_reg_n_0_[26]\,
      S(1) => \reg_pc_reg_n_0_[25]\,
      S(0) => \reg_pc_reg_n_0_[24]\
    );
cpuregs_reg_r1_0_31_24_29_i_8: unisim.vcomponents.CARRY4
     port map (
      CI => cpuregs_reg_r1_0_31_24_29_i_7_n_0,
      CO(3) => NLW_cpuregs_reg_r1_0_31_24_29_i_8_CO_UNCONNECTED(3),
      CO(2) => cpuregs_reg_r1_0_31_24_29_i_8_n_1,
      CO(1) => cpuregs_reg_r1_0_31_24_29_i_8_n_2,
      CO(0) => cpuregs_reg_r1_0_31_24_29_i_8_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => cpuregs_reg_r1_0_31_24_29_i_8_n_4,
      O(2) => cpuregs_reg_r1_0_31_24_29_i_8_n_5,
      O(1) => cpuregs_reg_r1_0_31_24_29_i_8_n_6,
      O(0) => cpuregs_reg_r1_0_31_24_29_i_8_n_7,
      S(3) => \reg_pc_reg_n_0_[31]\,
      S(2) => \reg_pc_reg_n_0_[30]\,
      S(1) => \reg_pc_reg_n_0_[29]\,
      S(0) => \reg_pc_reg_n_0_[28]\
    );
cpuregs_reg_r1_0_31_30_31: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => decoded_rs2(4 downto 0),
      ADDRB(4 downto 0) => decoded_rs2(4 downto 0),
      ADDRC(4 downto 0) => decoded_rs2(4 downto 0),
      ADDRD(4 downto 0) => latched_rd(4 downto 0),
      DIA(1) => cpuregs_reg_r1_0_31_30_31_i_1_n_0,
      DIA(0) => cpuregs_reg_r1_0_31_30_31_i_2_n_0,
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_sh1(31 downto 30),
      DOB(1 downto 0) => NLW_cpuregs_reg_r1_0_31_30_31_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_cpuregs_reg_r1_0_31_30_31_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_cpuregs_reg_r1_0_31_30_31_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => cpuregs_reg_r1_0_31_0_5_i_1_n_0
    );
cpuregs_reg_r1_0_31_30_31_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_24_29_i_8_n_4,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(31),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[31]\,
      O => cpuregs_reg_r1_0_31_30_31_i_1_n_0
    );
cpuregs_reg_r1_0_31_30_31_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_24_29_i_8_n_5,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(30),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[30]\,
      O => cpuregs_reg_r1_0_31_30_31_i_2_n_0
    );
cpuregs_reg_r1_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => decoded_rs2(4 downto 0),
      ADDRB(4 downto 0) => decoded_rs2(4 downto 0),
      ADDRC(4 downto 0) => decoded_rs2(4 downto 0),
      ADDRD(4 downto 0) => latched_rd(4 downto 0),
      DIA(1) => cpuregs_reg_r1_0_31_6_11_i_1_n_0,
      DIA(0) => cpuregs_reg_r1_0_31_6_11_i_2_n_0,
      DIB(1) => cpuregs_reg_r1_0_31_6_11_i_3_n_0,
      DIB(0) => cpuregs_reg_r1_0_31_6_11_i_4_n_0,
      DIC(1) => cpuregs_reg_r1_0_31_6_11_i_5_n_0,
      DIC(0) => cpuregs_reg_r1_0_31_6_11_i_6_n_0,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_sh1(7 downto 6),
      DOB(1 downto 0) => reg_sh1(9 downto 8),
      DOC(1 downto 0) => reg_sh1(11 downto 10),
      DOD(1 downto 0) => NLW_cpuregs_reg_r1_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => cpuregs_reg_r1_0_31_0_5_i_1_n_0
    );
cpuregs_reg_r1_0_31_6_11_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_0_5_i_10_n_4,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(7),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[7]\,
      O => cpuregs_reg_r1_0_31_6_11_i_1_n_0
    );
cpuregs_reg_r1_0_31_6_11_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_0_5_i_10_n_5,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(6),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[6]\,
      O => cpuregs_reg_r1_0_31_6_11_i_2_n_0
    );
cpuregs_reg_r1_0_31_6_11_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_6_11_i_7_n_6,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(9),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[9]\,
      O => cpuregs_reg_r1_0_31_6_11_i_3_n_0
    );
cpuregs_reg_r1_0_31_6_11_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_6_11_i_7_n_7,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(8),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[8]\,
      O => cpuregs_reg_r1_0_31_6_11_i_4_n_0
    );
cpuregs_reg_r1_0_31_6_11_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_6_11_i_7_n_4,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(11),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[11]\,
      O => cpuregs_reg_r1_0_31_6_11_i_5_n_0
    );
cpuregs_reg_r1_0_31_6_11_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B8B8B8888888"
    )
        port map (
      I0 => cpuregs_reg_r1_0_31_6_11_i_7_n_5,
      I1 => \^latched_branch_reg_0\,
      I2 => \^latched_store_reg_0\,
      I3 => alu_out_q(10),
      I4 => \^latched_stalu_reg_0\,
      I5 => \reg_out_reg_n_0_[10]\,
      O => cpuregs_reg_r1_0_31_6_11_i_6_n_0
    );
cpuregs_reg_r1_0_31_6_11_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => cpuregs_reg_r1_0_31_0_5_i_10_n_0,
      CO(3) => cpuregs_reg_r1_0_31_6_11_i_7_n_0,
      CO(2) => cpuregs_reg_r1_0_31_6_11_i_7_n_1,
      CO(1) => cpuregs_reg_r1_0_31_6_11_i_7_n_2,
      CO(0) => cpuregs_reg_r1_0_31_6_11_i_7_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => cpuregs_reg_r1_0_31_6_11_i_7_n_4,
      O(2) => cpuregs_reg_r1_0_31_6_11_i_7_n_5,
      O(1) => cpuregs_reg_r1_0_31_6_11_i_7_n_6,
      O(0) => cpuregs_reg_r1_0_31_6_11_i_7_n_7,
      S(3) => \reg_pc_reg_n_0_[11]\,
      S(2) => \reg_pc_reg_n_0_[10]\,
      S(1) => \reg_pc_reg_n_0_[9]\,
      S(0) => \reg_pc_reg_n_0_[8]\
    );
cpuregs_reg_r2_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \decoded_rs1__0\(4 downto 0),
      ADDRB(4 downto 0) => \decoded_rs1__0\(4 downto 0),
      ADDRC(4 downto 0) => \decoded_rs1__0\(4 downto 0),
      ADDRD(4 downto 0) => latched_rd(4 downto 0),
      DIA(1) => cpuregs_reg_r1_0_31_0_5_i_2_n_0,
      DIA(0) => cpuregs_reg_r1_0_31_0_5_i_3_n_0,
      DIB(1) => cpuregs_reg_r1_0_31_0_5_i_4_n_0,
      DIB(0) => cpuregs_reg_r1_0_31_0_5_i_5_n_0,
      DIC(1) => cpuregs_reg_r1_0_31_0_5_i_6_n_0,
      DIC(0) => cpuregs_reg_r1_0_31_0_5_i_7_n_0,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_out1(1 downto 0),
      DOB(1 downto 0) => reg_out1(3 downto 2),
      DOC(1 downto 0) => reg_out1(5 downto 4),
      DOD(1 downto 0) => NLW_cpuregs_reg_r2_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => cpuregs_reg_r1_0_31_0_5_i_1_n_0
    );
cpuregs_reg_r2_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \decoded_rs1__0\(4 downto 0),
      ADDRB(4 downto 0) => \decoded_rs1__0\(4 downto 0),
      ADDRC(4 downto 0) => \decoded_rs1__0\(4 downto 0),
      ADDRD(4 downto 0) => latched_rd(4 downto 0),
      DIA(1) => cpuregs_reg_r1_0_31_12_17_i_1_n_0,
      DIA(0) => cpuregs_reg_r1_0_31_12_17_i_2_n_0,
      DIB(1) => cpuregs_reg_r1_0_31_12_17_i_3_n_0,
      DIB(0) => cpuregs_reg_r1_0_31_12_17_i_4_n_0,
      DIC(1) => cpuregs_reg_r1_0_31_12_17_i_5_n_0,
      DIC(0) => cpuregs_reg_r1_0_31_12_17_i_6_n_0,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_out1(13 downto 12),
      DOB(1 downto 0) => reg_out1(15 downto 14),
      DOC(1 downto 0) => reg_out1(17 downto 16),
      DOD(1 downto 0) => NLW_cpuregs_reg_r2_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => cpuregs_reg_r1_0_31_0_5_i_1_n_0
    );
cpuregs_reg_r2_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \decoded_rs1__0\(4 downto 0),
      ADDRB(4 downto 0) => \decoded_rs1__0\(4 downto 0),
      ADDRC(4 downto 0) => \decoded_rs1__0\(4 downto 0),
      ADDRD(4 downto 0) => latched_rd(4 downto 0),
      DIA(1) => cpuregs_reg_r1_0_31_18_23_i_1_n_0,
      DIA(0) => cpuregs_reg_r1_0_31_18_23_i_2_n_0,
      DIB(1) => cpuregs_reg_r1_0_31_18_23_i_3_n_0,
      DIB(0) => cpuregs_reg_r1_0_31_18_23_i_4_n_0,
      DIC(1) => cpuregs_reg_r1_0_31_18_23_i_5_n_0,
      DIC(0) => cpuregs_reg_r1_0_31_18_23_i_6_n_0,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_out1(19 downto 18),
      DOB(1 downto 0) => reg_out1(21 downto 20),
      DOC(1 downto 0) => reg_out1(23 downto 22),
      DOD(1 downto 0) => NLW_cpuregs_reg_r2_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => cpuregs_reg_r1_0_31_0_5_i_1_n_0
    );
cpuregs_reg_r2_0_31_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \decoded_rs1__0\(4 downto 0),
      ADDRB(4 downto 0) => \decoded_rs1__0\(4 downto 0),
      ADDRC(4 downto 0) => \decoded_rs1__0\(4 downto 0),
      ADDRD(4 downto 0) => latched_rd(4 downto 0),
      DIA(1) => cpuregs_reg_r1_0_31_24_29_i_1_n_0,
      DIA(0) => cpuregs_reg_r1_0_31_24_29_i_2_n_0,
      DIB(1) => cpuregs_reg_r1_0_31_24_29_i_3_n_0,
      DIB(0) => cpuregs_reg_r1_0_31_24_29_i_4_n_0,
      DIC(1) => cpuregs_reg_r1_0_31_24_29_i_5_n_0,
      DIC(0) => cpuregs_reg_r1_0_31_24_29_i_6_n_0,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_out1(25 downto 24),
      DOB(1 downto 0) => reg_out1(27 downto 26),
      DOC(1 downto 0) => reg_out1(29 downto 28),
      DOD(1 downto 0) => NLW_cpuregs_reg_r2_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => cpuregs_reg_r1_0_31_0_5_i_1_n_0
    );
cpuregs_reg_r2_0_31_30_31: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \decoded_rs1__0\(4 downto 0),
      ADDRB(4 downto 0) => \decoded_rs1__0\(4 downto 0),
      ADDRC(4 downto 0) => \decoded_rs1__0\(4 downto 0),
      ADDRD(4 downto 0) => latched_rd(4 downto 0),
      DIA(1) => cpuregs_reg_r1_0_31_30_31_i_1_n_0,
      DIA(0) => cpuregs_reg_r1_0_31_30_31_i_2_n_0,
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_out1(31 downto 30),
      DOB(1 downto 0) => NLW_cpuregs_reg_r2_0_31_30_31_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_cpuregs_reg_r2_0_31_30_31_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_cpuregs_reg_r2_0_31_30_31_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => cpuregs_reg_r1_0_31_0_5_i_1_n_0
    );
cpuregs_reg_r2_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \decoded_rs1__0\(4 downto 0),
      ADDRB(4 downto 0) => \decoded_rs1__0\(4 downto 0),
      ADDRC(4 downto 0) => \decoded_rs1__0\(4 downto 0),
      ADDRD(4 downto 0) => latched_rd(4 downto 0),
      DIA(1) => cpuregs_reg_r1_0_31_6_11_i_1_n_0,
      DIA(0) => cpuregs_reg_r1_0_31_6_11_i_2_n_0,
      DIB(1) => cpuregs_reg_r1_0_31_6_11_i_3_n_0,
      DIB(0) => cpuregs_reg_r1_0_31_6_11_i_4_n_0,
      DIC(1) => cpuregs_reg_r1_0_31_6_11_i_5_n_0,
      DIC(0) => cpuregs_reg_r1_0_31_6_11_i_6_n_0,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => reg_out1(7 downto 6),
      DOB(1 downto 0) => reg_out1(9 downto 8),
      DOC(1 downto 0) => reg_out1(11 downto 10),
      DOD(1 downto 0) => NLW_cpuregs_reg_r2_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => cpuregs_reg_r1_0_31_0_5_i_1_n_0
    );
\decoded_imm[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022E22222"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[20]\,
      I1 => \decoded_imm[4]_i_2_n_0\,
      I2 => is_sb_sh_sw,
      I3 => \^is_beq_bne_blt_bge_bltu_bgeu\,
      I4 => \mem_rdata_q_reg_n_0_[7]\,
      I5 => \^instr_jal_reg_0\,
      O => decoded_imm(0)
    );
\decoded_imm[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => decoded_imm_uj(10),
      I1 => instr_jal,
      I2 => \decoded_imm[11]_i_2_n_0\,
      I3 => \mem_rdata_q_reg_n_0_[30]\,
      O => decoded_imm(10)
    );
\decoded_imm[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F8F888888"
    )
        port map (
      I0 => \decoded_rs2__0\(0),
      I1 => instr_jal,
      I2 => \decoded_imm[11]_i_2_n_0\,
      I3 => \mem_rdata_q_reg_n_0_[7]\,
      I4 => \decoded_imm[11]_i_3_n_0\,
      I5 => \mem_rdata_q_reg_n_0_[31]\,
      O => decoded_imm(11)
    );
\decoded_imm[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAB"
    )
        port map (
      I0 => \^instr_jal_reg_0\,
      I1 => \^is_beq_bne_blt_bge_bltu_bgeu\,
      I2 => is_sb_sh_sw,
      I3 => is_alu_reg_imm,
      I4 => is_lb_lh_lw_lbu_lhu,
      I5 => \^instr_jalr\,
      O => \decoded_imm[11]_i_2_n_0\
    );
\decoded_imm[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \^instr_jalr\,
      I1 => is_lb_lh_lw_lbu_lhu,
      I2 => is_alu_reg_imm,
      I3 => \^is_beq_bne_blt_bge_bltu_bgeu\,
      O => \decoded_imm[11]_i_3_n_0\
    );
\decoded_imm[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE000E0"
    )
        port map (
      I0 => instr_lui,
      I1 => instr_auipc,
      I2 => p_0_in(0),
      I3 => instr_jal,
      I4 => decoded_imm_uj(12),
      O => \decoded_imm[12]_i_1_n_0\
    );
\decoded_imm[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB88888"
    )
        port map (
      I0 => decoded_imm_uj(13),
      I1 => instr_jal,
      I2 => instr_auipc,
      I3 => instr_lui,
      I4 => p_0_in(1),
      O => \decoded_imm[13]_i_1_n_0\
    );
\decoded_imm[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE000E0"
    )
        port map (
      I0 => instr_lui,
      I1 => instr_auipc,
      I2 => p_0_in(2),
      I3 => instr_jal,
      I4 => decoded_imm_uj(14),
      O => \decoded_imm[14]_i_1_n_0\
    );
\decoded_imm[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B888"
    )
        port map (
      I0 => decoded_rs1(0),
      I1 => instr_jal,
      I2 => \mem_rdata_q_reg_n_0_[15]\,
      I3 => instr_auipc,
      I4 => instr_lui,
      O => \decoded_imm[15]_i_1_n_0\
    );
\decoded_imm[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE000E0"
    )
        port map (
      I0 => instr_lui,
      I1 => instr_auipc,
      I2 => \mem_rdata_q_reg_n_0_[16]\,
      I3 => instr_jal,
      I4 => decoded_rs1(1),
      O => \decoded_imm[16]_i_1_n_0\
    );
\decoded_imm[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE000E0"
    )
        port map (
      I0 => instr_lui,
      I1 => instr_auipc,
      I2 => \mem_rdata_q_reg_n_0_[17]\,
      I3 => instr_jal,
      I4 => decoded_rs1(2),
      O => \decoded_imm[17]_i_1_n_0\
    );
\decoded_imm[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B888"
    )
        port map (
      I0 => decoded_rs1(3),
      I1 => instr_jal,
      I2 => \mem_rdata_q_reg_n_0_[18]\,
      I3 => instr_auipc,
      I4 => instr_lui,
      O => \decoded_imm[18]_i_1_n_0\
    );
\decoded_imm[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B888"
    )
        port map (
      I0 => decoded_rs1(4),
      I1 => instr_jal,
      I2 => \mem_rdata_q_reg_n_0_[19]\,
      I3 => instr_auipc,
      I4 => instr_lui,
      O => \decoded_imm[19]_i_1_n_0\
    );
\decoded_imm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F8F888888"
    )
        port map (
      I0 => \decoded_rs2__0\(1),
      I1 => instr_jal,
      I2 => \decoded_imm[11]_i_2_n_0\,
      I3 => \mem_rdata_q_reg_n_0_[8]\,
      I4 => \decoded_imm[4]_i_2_n_0\,
      I5 => \mem_rdata_q_reg_n_0_[21]\,
      O => decoded_imm(1)
    );
\decoded_imm[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE000E0"
    )
        port map (
      I0 => instr_lui,
      I1 => instr_auipc,
      I2 => \mem_rdata_q_reg_n_0_[20]\,
      I3 => instr_jal,
      I4 => decoded_imm_uj(31),
      O => \decoded_imm[20]_i_1_n_0\
    );
\decoded_imm[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE000E0"
    )
        port map (
      I0 => instr_lui,
      I1 => instr_auipc,
      I2 => \mem_rdata_q_reg_n_0_[21]\,
      I3 => instr_jal,
      I4 => decoded_imm_uj(31),
      O => \decoded_imm[21]_i_1_n_0\
    );
\decoded_imm[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE000E0"
    )
        port map (
      I0 => instr_lui,
      I1 => instr_auipc,
      I2 => \mem_rdata_q_reg_n_0_[22]\,
      I3 => instr_jal,
      I4 => decoded_imm_uj(31),
      O => \decoded_imm[22]_i_1_n_0\
    );
\decoded_imm[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE000E0"
    )
        port map (
      I0 => instr_lui,
      I1 => instr_auipc,
      I2 => \mem_rdata_q_reg_n_0_[23]\,
      I3 => instr_jal,
      I4 => decoded_imm_uj(31),
      O => \decoded_imm[23]_i_1_n_0\
    );
\decoded_imm[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE000E0"
    )
        port map (
      I0 => instr_lui,
      I1 => instr_auipc,
      I2 => \mem_rdata_q_reg_n_0_[24]\,
      I3 => instr_jal,
      I4 => decoded_imm_uj(31),
      O => \decoded_imm[24]_i_1_n_0\
    );
\decoded_imm[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE000E0"
    )
        port map (
      I0 => instr_lui,
      I1 => instr_auipc,
      I2 => \mem_rdata_q_reg_n_0_[25]\,
      I3 => instr_jal,
      I4 => decoded_imm_uj(31),
      O => \decoded_imm[25]_i_1_n_0\
    );
\decoded_imm[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE000E0"
    )
        port map (
      I0 => instr_lui,
      I1 => instr_auipc,
      I2 => \mem_rdata_q_reg_n_0_[26]\,
      I3 => instr_jal,
      I4 => decoded_imm_uj(31),
      O => \decoded_imm[26]_i_1_n_0\
    );
\decoded_imm[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE000E0"
    )
        port map (
      I0 => instr_lui,
      I1 => instr_auipc,
      I2 => \mem_rdata_q_reg_n_0_[27]\,
      I3 => instr_jal,
      I4 => decoded_imm_uj(31),
      O => \decoded_imm[27]_i_1_n_0\
    );
\decoded_imm[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE000E0"
    )
        port map (
      I0 => instr_lui,
      I1 => instr_auipc,
      I2 => \mem_rdata_q_reg_n_0_[28]\,
      I3 => instr_jal,
      I4 => decoded_imm_uj(31),
      O => \decoded_imm[28]_i_1_n_0\
    );
\decoded_imm[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE000E0"
    )
        port map (
      I0 => instr_lui,
      I1 => instr_auipc,
      I2 => \mem_rdata_q_reg_n_0_[29]\,
      I3 => instr_jal,
      I4 => decoded_imm_uj(31),
      O => \decoded_imm[29]_i_1_n_0\
    );
\decoded_imm[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F8F888888"
    )
        port map (
      I0 => \decoded_rs2__0\(2),
      I1 => instr_jal,
      I2 => \decoded_imm[11]_i_2_n_0\,
      I3 => \mem_rdata_q_reg_n_0_[9]\,
      I4 => \decoded_imm[4]_i_2_n_0\,
      I5 => \mem_rdata_q_reg_n_0_[22]\,
      O => decoded_imm(2)
    );
\decoded_imm[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE000E0"
    )
        port map (
      I0 => instr_lui,
      I1 => instr_auipc,
      I2 => \mem_rdata_q_reg_n_0_[30]\,
      I3 => instr_jal,
      I4 => decoded_imm_uj(31),
      O => \decoded_imm[30]_i_1_n_0\
    );
\decoded_imm[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \decoded_imm[11]_i_2_n_0\,
      I1 => \mem_rdata_q_reg_n_0_[31]\,
      I2 => decoder_pseudo_trigger_reg_n_0,
      I3 => decoder_trigger_reg_n_0,
      O => \decoded_imm[31]_i_1_n_0\
    );
\decoded_imm[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE000E0"
    )
        port map (
      I0 => instr_lui,
      I1 => instr_auipc,
      I2 => \mem_rdata_q_reg_n_0_[31]\,
      I3 => instr_jal,
      I4 => decoded_imm_uj(31),
      O => \decoded_imm[31]_i_2_n_0\
    );
\decoded_imm[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F8F888888"
    )
        port map (
      I0 => \decoded_rs2__0\(3),
      I1 => instr_jal,
      I2 => \decoded_imm[11]_i_2_n_0\,
      I3 => \mem_rdata_q_reg_n_0_[10]\,
      I4 => \decoded_imm[4]_i_2_n_0\,
      I5 => \mem_rdata_q_reg_n_0_[23]\,
      O => decoded_imm(3)
    );
\decoded_imm[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F8F888888"
    )
        port map (
      I0 => \decoded_rs2__0\(4),
      I1 => instr_jal,
      I2 => \decoded_imm[11]_i_2_n_0\,
      I3 => \mem_rdata_q_reg_n_0_[11]\,
      I4 => \decoded_imm[4]_i_2_n_0\,
      I5 => \mem_rdata_q_reg_n_0_[24]\,
      O => decoded_imm(4)
    );
\decoded_imm[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => is_alu_reg_imm,
      I1 => is_lb_lh_lw_lbu_lhu,
      I2 => \^instr_jalr\,
      O => \decoded_imm[4]_i_2_n_0\
    );
\decoded_imm[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => decoded_imm_uj(5),
      I1 => instr_jal,
      I2 => \decoded_imm[11]_i_2_n_0\,
      I3 => \mem_rdata_q_reg_n_0_[25]\,
      O => decoded_imm(5)
    );
\decoded_imm[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => decoded_imm_uj(6),
      I1 => instr_jal,
      I2 => \decoded_imm[11]_i_2_n_0\,
      I3 => \mem_rdata_q_reg_n_0_[26]\,
      O => decoded_imm(6)
    );
\decoded_imm[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => decoded_imm_uj(7),
      I1 => instr_jal,
      I2 => \decoded_imm[11]_i_2_n_0\,
      I3 => \mem_rdata_q_reg_n_0_[27]\,
      O => decoded_imm(7)
    );
\decoded_imm[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => decoded_imm_uj(8),
      I1 => instr_jal,
      I2 => \decoded_imm[11]_i_2_n_0\,
      I3 => \mem_rdata_q_reg_n_0_[28]\,
      O => decoded_imm(8)
    );
\decoded_imm[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => decoded_imm_uj(9),
      I1 => instr_jal,
      I2 => \decoded_imm[11]_i_2_n_0\,
      I3 => \mem_rdata_q_reg_n_0_[29]\,
      O => decoded_imm(9)
    );
\decoded_imm_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => decoded_imm(0),
      Q => \decoded_imm_reg_n_0_[0]\,
      R => '0'
    );
\decoded_imm_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => decoded_imm(10),
      Q => \decoded_imm_reg_n_0_[10]\,
      R => '0'
    );
\decoded_imm_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => decoded_imm(11),
      Q => \decoded_imm_reg_n_0_[11]\,
      R => '0'
    );
\decoded_imm_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \decoded_imm[12]_i_1_n_0\,
      Q => \decoded_imm_reg_n_0_[12]\,
      S => \decoded_imm[31]_i_1_n_0\
    );
\decoded_imm_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \decoded_imm[13]_i_1_n_0\,
      Q => \decoded_imm_reg_n_0_[13]\,
      S => \decoded_imm[31]_i_1_n_0\
    );
\decoded_imm_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \decoded_imm[14]_i_1_n_0\,
      Q => \decoded_imm_reg_n_0_[14]\,
      S => \decoded_imm[31]_i_1_n_0\
    );
\decoded_imm_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \decoded_imm[15]_i_1_n_0\,
      Q => \decoded_imm_reg_n_0_[15]\,
      S => \decoded_imm[31]_i_1_n_0\
    );
\decoded_imm_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \decoded_imm[16]_i_1_n_0\,
      Q => \decoded_imm_reg_n_0_[16]\,
      S => \decoded_imm[31]_i_1_n_0\
    );
\decoded_imm_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \decoded_imm[17]_i_1_n_0\,
      Q => \decoded_imm_reg_n_0_[17]\,
      S => \decoded_imm[31]_i_1_n_0\
    );
\decoded_imm_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \decoded_imm[18]_i_1_n_0\,
      Q => \decoded_imm_reg_n_0_[18]\,
      S => \decoded_imm[31]_i_1_n_0\
    );
\decoded_imm_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \decoded_imm[19]_i_1_n_0\,
      Q => \decoded_imm_reg_n_0_[19]\,
      S => \decoded_imm[31]_i_1_n_0\
    );
\decoded_imm_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => decoded_imm(1),
      Q => \decoded_imm_reg_n_0_[1]\,
      R => '0'
    );
\decoded_imm_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \decoded_imm[20]_i_1_n_0\,
      Q => \decoded_imm_reg_n_0_[20]\,
      S => \decoded_imm[31]_i_1_n_0\
    );
\decoded_imm_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \decoded_imm[21]_i_1_n_0\,
      Q => \decoded_imm_reg_n_0_[21]\,
      S => \decoded_imm[31]_i_1_n_0\
    );
\decoded_imm_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \decoded_imm[22]_i_1_n_0\,
      Q => \decoded_imm_reg_n_0_[22]\,
      S => \decoded_imm[31]_i_1_n_0\
    );
\decoded_imm_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \decoded_imm[23]_i_1_n_0\,
      Q => \decoded_imm_reg_n_0_[23]\,
      S => \decoded_imm[31]_i_1_n_0\
    );
\decoded_imm_reg[24]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \decoded_imm[24]_i_1_n_0\,
      Q => \decoded_imm_reg_n_0_[24]\,
      S => \decoded_imm[31]_i_1_n_0\
    );
\decoded_imm_reg[25]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \decoded_imm[25]_i_1_n_0\,
      Q => \decoded_imm_reg_n_0_[25]\,
      S => \decoded_imm[31]_i_1_n_0\
    );
\decoded_imm_reg[26]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \decoded_imm[26]_i_1_n_0\,
      Q => \decoded_imm_reg_n_0_[26]\,
      S => \decoded_imm[31]_i_1_n_0\
    );
\decoded_imm_reg[27]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \decoded_imm[27]_i_1_n_0\,
      Q => \decoded_imm_reg_n_0_[27]\,
      S => \decoded_imm[31]_i_1_n_0\
    );
\decoded_imm_reg[28]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \decoded_imm[28]_i_1_n_0\,
      Q => \decoded_imm_reg_n_0_[28]\,
      S => \decoded_imm[31]_i_1_n_0\
    );
\decoded_imm_reg[29]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \decoded_imm[29]_i_1_n_0\,
      Q => \decoded_imm_reg_n_0_[29]\,
      S => \decoded_imm[31]_i_1_n_0\
    );
\decoded_imm_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => decoded_imm(2),
      Q => \decoded_imm_reg_n_0_[2]\,
      R => '0'
    );
\decoded_imm_reg[30]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \decoded_imm[30]_i_1_n_0\,
      Q => \decoded_imm_reg_n_0_[30]\,
      S => \decoded_imm[31]_i_1_n_0\
    );
\decoded_imm_reg[31]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \decoded_imm[31]_i_2_n_0\,
      Q => \decoded_imm_reg_n_0_[31]\,
      S => \decoded_imm[31]_i_1_n_0\
    );
\decoded_imm_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => decoded_imm(3),
      Q => \decoded_imm_reg_n_0_[3]\,
      R => '0'
    );
\decoded_imm_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => decoded_imm(4),
      Q => \decoded_imm_reg_n_0_[4]\,
      R => '0'
    );
\decoded_imm_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => decoded_imm(5),
      Q => \decoded_imm_reg_n_0_[5]\,
      R => '0'
    );
\decoded_imm_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => decoded_imm(6),
      Q => \decoded_imm_reg_n_0_[6]\,
      R => '0'
    );
\decoded_imm_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => decoded_imm(7),
      Q => \decoded_imm_reg_n_0_[7]\,
      R => '0'
    );
\decoded_imm_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => decoded_imm(8),
      Q => \decoded_imm_reg_n_0_[8]\,
      R => '0'
    );
\decoded_imm_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => decoded_imm(9),
      Q => \decoded_imm_reg_n_0_[9]\,
      R => '0'
    );
\decoded_imm_uj[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[30]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(30),
      O => \decoded_imm_uj[10]_i_1_n_0\
    );
\decoded_imm_uj[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[31]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(31),
      O => p_0_in0
    );
\decoded_imm_uj[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[25]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(25),
      O => \decoded_imm_uj[5]_i_1_n_0\
    );
\decoded_imm_uj[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[26]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(26),
      O => \decoded_imm_uj[6]_i_1_n_0\
    );
\decoded_imm_uj[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[27]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(27),
      O => \decoded_imm_uj[7]_i_1_n_0\
    );
\decoded_imm_uj[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[28]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(28),
      O => \decoded_imm_uj[8]_i_1_n_0\
    );
\decoded_imm_uj[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[29]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(29),
      O => \decoded_imm_uj[9]_i_1_n_0\
    );
\decoded_imm_uj_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \decoded_imm_uj[10]_i_1_n_0\,
      Q => decoded_imm_uj(10),
      R => '0'
    );
\decoded_imm_uj_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \mem_rdata_q[12]_i_1_n_0\,
      Q => decoded_imm_uj(12),
      R => '0'
    );
\decoded_imm_uj_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \mem_rdata_q[13]_i_1_n_0\,
      Q => decoded_imm_uj(13),
      R => '0'
    );
\decoded_imm_uj_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \mem_rdata_q[14]_i_1_n_0\,
      Q => decoded_imm_uj(14),
      R => '0'
    );
\decoded_imm_uj_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => p_0_in0,
      Q => decoded_imm_uj(31),
      R => '0'
    );
\decoded_imm_uj_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \decoded_imm_uj[5]_i_1_n_0\,
      Q => decoded_imm_uj(5),
      R => '0'
    );
\decoded_imm_uj_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \decoded_imm_uj[6]_i_1_n_0\,
      Q => decoded_imm_uj(6),
      R => '0'
    );
\decoded_imm_uj_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \decoded_imm_uj[7]_i_1_n_0\,
      Q => decoded_imm_uj(7),
      R => '0'
    );
\decoded_imm_uj_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \decoded_imm_uj[8]_i_1_n_0\,
      Q => decoded_imm_uj(8),
      R => '0'
    );
\decoded_imm_uj_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \decoded_imm_uj[9]_i_1_n_0\,
      Q => decoded_imm_uj(9),
      R => '0'
    );
\decoded_rd[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[7]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(7),
      O => \decoded_rd[0]_i_1_n_0\
    );
\decoded_rd[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[8]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(8),
      O => \decoded_rd[1]_i_1_n_0\
    );
\decoded_rd[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[9]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(9),
      O => \decoded_rd[2]_i_1_n_0\
    );
\decoded_rd[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[10]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(10),
      O => \decoded_rd[3]_i_1_n_0\
    );
\decoded_rd[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[11]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(11),
      O => \decoded_rd[4]_i_1_n_0\
    );
\decoded_rd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \decoded_rd[0]_i_1_n_0\,
      Q => decoded_rd(0),
      R => '0'
    );
\decoded_rd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \decoded_rd[1]_i_1_n_0\,
      Q => decoded_rd(1),
      R => '0'
    );
\decoded_rd_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \decoded_rd[2]_i_1_n_0\,
      Q => decoded_rd(2),
      R => '0'
    );
\decoded_rd_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \decoded_rd[3]_i_1_n_0\,
      Q => decoded_rd(3),
      R => '0'
    );
\decoded_rd_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \decoded_rd[4]_i_1_n_0\,
      Q => decoded_rd(4),
      R => '0'
    );
\decoded_rs1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \decoded_rs1_rep[0]_i_1_n_0\,
      Q => decoded_rs1(0),
      R => '0'
    );
\decoded_rs1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \decoded_rs1_rep[1]_i_1_n_0\,
      Q => decoded_rs1(1),
      R => '0'
    );
\decoded_rs1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \decoded_rs1_rep[2]_i_1_n_0\,
      Q => decoded_rs1(2),
      R => '0'
    );
\decoded_rs1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \decoded_rs1_rep[3]_i_1_n_0\,
      Q => decoded_rs1(3),
      R => '0'
    );
\decoded_rs1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \decoded_rs1_rep[4]_i_1_n_0\,
      Q => decoded_rs1(4),
      R => '0'
    );
\decoded_rs1_reg_rep[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \decoded_rs1_rep[0]_i_1_n_0\,
      Q => \decoded_rs1__0\(0),
      R => '0'
    );
\decoded_rs1_reg_rep[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \decoded_rs1_rep[1]_i_1_n_0\,
      Q => \decoded_rs1__0\(1),
      R => '0'
    );
\decoded_rs1_reg_rep[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \decoded_rs1_rep[2]_i_1_n_0\,
      Q => \decoded_rs1__0\(2),
      R => '0'
    );
\decoded_rs1_reg_rep[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \decoded_rs1_rep[3]_i_1_n_0\,
      Q => \decoded_rs1__0\(3),
      R => '0'
    );
\decoded_rs1_reg_rep[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => \decoded_rs1_rep[4]_i_1_n_0\,
      Q => \decoded_rs1__0\(4),
      R => '0'
    );
\decoded_rs1_rep[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[15]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(15),
      O => \decoded_rs1_rep[0]_i_1_n_0\
    );
\decoded_rs1_rep[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[16]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(16),
      O => \decoded_rs1_rep[1]_i_1_n_0\
    );
\decoded_rs1_rep[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[17]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(17),
      O => \decoded_rs1_rep[2]_i_1_n_0\
    );
\decoded_rs1_rep[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[18]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(18),
      O => \decoded_rs1_rep[3]_i_1_n_0\
    );
\decoded_rs1_rep[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[19]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(19),
      O => \decoded_rs1_rep[4]_i_1_n_0\
    );
\decoded_rs2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => p_1_in(0),
      Q => \decoded_rs2__0\(0),
      R => '0'
    );
\decoded_rs2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => p_1_in(1),
      Q => \decoded_rs2__0\(1),
      R => '0'
    );
\decoded_rs2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => p_1_in(2),
      Q => \decoded_rs2__0\(2),
      R => '0'
    );
\decoded_rs2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => p_1_in(3),
      Q => \decoded_rs2__0\(3),
      R => '0'
    );
\decoded_rs2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => p_1_in(4),
      Q => \decoded_rs2__0\(4),
      R => '0'
    );
\decoded_rs2_reg_rep[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => p_1_in(0),
      Q => decoded_rs2(0),
      R => '0'
    );
\decoded_rs2_reg_rep[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => p_1_in(1),
      Q => decoded_rs2(1),
      R => '0'
    );
\decoded_rs2_reg_rep[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => p_1_in(2),
      Q => decoded_rs2(2),
      R => '0'
    );
\decoded_rs2_reg_rep[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => p_1_in(3),
      Q => decoded_rs2(3),
      R => '0'
    );
\decoded_rs2_reg_rep[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => p_1_in(4),
      Q => decoded_rs2(4),
      R => '0'
    );
\decoded_rs2_rep[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[20]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(20),
      O => p_1_in(0)
    );
\decoded_rs2_rep[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[21]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(21),
      O => p_1_in(1)
    );
\decoded_rs2_rep[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[22]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(22),
      O => p_1_in(2)
    );
\decoded_rs2_rep[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[23]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(23),
      O => p_1_in(3)
    );
\decoded_rs2_rep[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[24]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(24),
      O => p_1_in(4)
    );
decoder_pseudo_trigger_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[7]\,
      I1 => \cpu_state_reg_n_0_[5]\,
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => decoder_pseudo_trigger_i_2_n_0,
      O => decoder_pseudo_trigger
    );
decoder_pseudo_trigger_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^mem_do_prefetch_reg_0\,
      I1 => pcpi_mul_n_27,
      O => decoder_pseudo_trigger_i_2_n_0
    );
decoder_pseudo_trigger_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => decoder_pseudo_trigger,
      Q => decoder_pseudo_trigger_reg_n_0,
      R => pcpi_mul_n_24
    );
decoder_trigger_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00FE000000FC00"
    )
        port map (
      I0 => decoder_trigger_i_2_n_0,
      I1 => \cpu_state_reg_n_0_[0]\,
      I2 => \^q\(0),
      I3 => pcpi_mul_n_27,
      I4 => \^mem_do_prefetch_reg_0\,
      I5 => mem_do_rinst_reg_n_0,
      O => decoder_trigger_i_1_n_0
    );
decoder_trigger_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(27),
      I1 => \^reg_op2_reg[31]_0\(27),
      I2 => \^reg_op2_reg[31]_0\(26),
      I3 => \^reg_op1_reg[31]_0\(26),
      O => decoder_trigger_i_10_n_0
    );
decoder_trigger_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(25),
      I1 => \^reg_op2_reg[31]_0\(25),
      I2 => \^reg_op2_reg[31]_0\(24),
      I3 => \^reg_op1_reg[31]_0\(24),
      O => decoder_trigger_i_11_n_0
    );
decoder_trigger_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(31),
      I1 => \^reg_op1_reg[31]_0\(31),
      I2 => \^reg_op2_reg[31]_0\(30),
      I3 => \^reg_op1_reg[31]_0\(30),
      O => decoder_trigger_i_12_n_0
    );
decoder_trigger_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(29),
      I1 => \^reg_op1_reg[31]_0\(29),
      I2 => \^reg_op2_reg[31]_0\(28),
      I3 => \^reg_op1_reg[31]_0\(28),
      O => decoder_trigger_i_13_n_0
    );
decoder_trigger_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(26),
      I1 => \^reg_op1_reg[31]_0\(26),
      I2 => \^reg_op2_reg[31]_0\(27),
      I3 => \^reg_op1_reg[31]_0\(27),
      O => decoder_trigger_i_14_n_0
    );
decoder_trigger_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(24),
      I1 => \^reg_op1_reg[31]_0\(24),
      I2 => \^reg_op2_reg[31]_0\(25),
      I3 => \^reg_op1_reg[31]_0\(25),
      O => decoder_trigger_i_15_n_0
    );
decoder_trigger_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(23),
      I1 => \^reg_op2_reg[31]_0\(23),
      I2 => \^reg_op2_reg[31]_0\(22),
      I3 => \^reg_op1_reg[31]_0\(22),
      O => decoder_trigger_i_17_n_0
    );
decoder_trigger_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(21),
      I1 => \^reg_op2_reg[31]_0\(21),
      I2 => \^reg_op2_reg[31]_0\(20),
      I3 => \^reg_op1_reg[31]_0\(20),
      O => decoder_trigger_i_18_n_0
    );
decoder_trigger_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(19),
      I1 => \^reg_op2_reg[31]_0\(19),
      I2 => \^reg_op2_reg[31]_0\(18),
      I3 => \^reg_op1_reg[31]_0\(18),
      O => decoder_trigger_i_19_n_0
    );
decoder_trigger_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFD5FFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => decoder_trigger_i_3_n_0,
      I2 => decoder_trigger_i_4_n_0,
      I3 => decoder_trigger_i_5_n_0,
      I4 => \^is_beq_bne_blt_bge_bltu_bgeu\,
      O => decoder_trigger_i_2_n_0
    );
decoder_trigger_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(17),
      I1 => \^reg_op2_reg[31]_0\(17),
      I2 => \^reg_op2_reg[31]_0\(16),
      I3 => \^reg_op1_reg[31]_0\(16),
      O => decoder_trigger_i_20_n_0
    );
decoder_trigger_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(23),
      I1 => \^reg_op1_reg[31]_0\(23),
      I2 => \^reg_op2_reg[31]_0\(22),
      I3 => \^reg_op1_reg[31]_0\(22),
      O => decoder_trigger_i_21_n_0
    );
decoder_trigger_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(20),
      I1 => \^reg_op1_reg[31]_0\(20),
      I2 => \^reg_op2_reg[31]_0\(21),
      I3 => \^reg_op1_reg[31]_0\(21),
      O => decoder_trigger_i_22_n_0
    );
decoder_trigger_i_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(18),
      I1 => \^reg_op1_reg[31]_0\(18),
      I2 => \^reg_op2_reg[31]_0\(19),
      I3 => \^reg_op1_reg[31]_0\(19),
      O => decoder_trigger_i_23_n_0
    );
decoder_trigger_i_24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(17),
      I1 => \^reg_op1_reg[31]_0\(17),
      I2 => \^reg_op2_reg[31]_0\(16),
      I3 => \^reg_op1_reg[31]_0\(16),
      O => decoder_trigger_i_24_n_0
    );
decoder_trigger_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(15),
      I1 => \^reg_op2_reg[31]_0\(15),
      I2 => \^reg_op2_reg[31]_0\(14),
      I3 => \^reg_op1_reg[31]_0\(14),
      O => decoder_trigger_i_26_n_0
    );
decoder_trigger_i_27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(13),
      I1 => \^reg_op2_reg[31]_0\(13),
      I2 => \^reg_op2_reg[31]_0\(12),
      I3 => \^reg_op1_reg[31]_0\(12),
      O => decoder_trigger_i_27_n_0
    );
decoder_trigger_i_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(11),
      I1 => \^reg_op2_reg[31]_0\(11),
      I2 => \^reg_op2_reg[31]_0\(10),
      I3 => \^reg_op1_reg[31]_0\(10),
      O => decoder_trigger_i_28_n_0
    );
decoder_trigger_i_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(9),
      I1 => \^reg_op2_reg[31]_0\(9),
      I2 => \^reg_op2_reg[31]_0\(8),
      I3 => \^reg_op1_reg[31]_0\(8),
      O => decoder_trigger_i_29_n_0
    );
decoder_trigger_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"33CA"
    )
        port map (
      I0 => data4,
      I1 => \alu_out_q_reg[0]_i_6_n_1\,
      I2 => instr_bne,
      I3 => instr_beq,
      O => decoder_trigger_i_3_n_0
    );
decoder_trigger_i_30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(14),
      I1 => \^reg_op1_reg[31]_0\(14),
      I2 => \^reg_op2_reg[31]_0\(15),
      I3 => \^reg_op1_reg[31]_0\(15),
      O => decoder_trigger_i_30_n_0
    );
decoder_trigger_i_31: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(12),
      I1 => \^reg_op1_reg[31]_0\(12),
      I2 => \^reg_op2_reg[31]_0\(13),
      I3 => \^reg_op1_reg[31]_0\(13),
      O => decoder_trigger_i_31_n_0
    );
decoder_trigger_i_32: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(11),
      I1 => \^reg_op1_reg[31]_0\(11),
      I2 => \^reg_op2_reg[31]_0\(10),
      I3 => \^reg_op1_reg[31]_0\(10),
      O => decoder_trigger_i_32_n_0
    );
decoder_trigger_i_33: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(8),
      I1 => \^reg_op1_reg[31]_0\(8),
      I2 => \^reg_op2_reg[31]_0\(9),
      I3 => \^reg_op1_reg[31]_0\(9),
      O => decoder_trigger_i_33_n_0
    );
decoder_trigger_i_34: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(7),
      I1 => \^reg_op2_reg[31]_0\(7),
      I2 => \^reg_op2_reg[31]_0\(6),
      I3 => \^reg_op1_reg[31]_0\(6),
      O => decoder_trigger_i_34_n_0
    );
decoder_trigger_i_35: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(5),
      I1 => \^reg_op2_reg[31]_0\(5),
      I2 => \^reg_op2_reg[31]_0\(4),
      I3 => \^reg_op1_reg[31]_0\(4),
      O => decoder_trigger_i_35_n_0
    );
decoder_trigger_i_36: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(3),
      I1 => \^reg_op2_reg[31]_0\(3),
      I2 => \^reg_op2_reg[31]_0\(2),
      I3 => \^reg_op1_reg[31]_0\(2),
      O => decoder_trigger_i_36_n_0
    );
decoder_trigger_i_37: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(1),
      I1 => \^reg_op2_reg[31]_0\(1),
      I2 => \^reg_op2_reg[31]_0\(0),
      I3 => \^reg_op1_reg[31]_0\(0),
      O => decoder_trigger_i_37_n_0
    );
decoder_trigger_i_38: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(6),
      I1 => \^reg_op1_reg[31]_0\(6),
      I2 => \^reg_op2_reg[31]_0\(7),
      I3 => \^reg_op1_reg[31]_0\(7),
      O => decoder_trigger_i_38_n_0
    );
decoder_trigger_i_39: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(5),
      I1 => \^reg_op1_reg[31]_0\(5),
      I2 => \^reg_op2_reg[31]_0\(4),
      I3 => \^reg_op1_reg[31]_0\(4),
      O => decoder_trigger_i_39_n_0
    );
decoder_trigger_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => instr_bge,
      I1 => instr_bne,
      I2 => instr_beq,
      O => decoder_trigger_i_4_n_0
    );
decoder_trigger_i_40: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(2),
      I1 => \^reg_op1_reg[31]_0\(2),
      I2 => \^reg_op2_reg[31]_0\(3),
      I3 => \^reg_op1_reg[31]_0\(3),
      O => decoder_trigger_i_40_n_0
    );
decoder_trigger_i_41: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(0),
      I1 => \^reg_op1_reg[31]_0\(0),
      I2 => \^reg_op2_reg[31]_0\(1),
      I3 => \^reg_op1_reg[31]_0\(1),
      O => decoder_trigger_i_41_n_0
    );
decoder_trigger_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF004777"
    )
        port map (
      I0 => data4,
      I1 => is_slti_blt_slt,
      I2 => is_sltiu_bltu_sltu,
      I3 => data5,
      I4 => instr_bgeu,
      O => decoder_trigger_i_5_n_0
    );
decoder_trigger_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(30),
      I1 => \^reg_op1_reg[31]_0\(30),
      I2 => \^reg_op1_reg[31]_0\(31),
      I3 => \^reg_op2_reg[31]_0\(31),
      O => decoder_trigger_i_8_n_0
    );
decoder_trigger_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(29),
      I1 => \^reg_op2_reg[31]_0\(29),
      I2 => \^reg_op2_reg[31]_0\(28),
      I3 => \^reg_op1_reg[31]_0\(28),
      O => decoder_trigger_i_9_n_0
    );
decoder_trigger_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => decoder_trigger_i_1_n_0,
      Q => decoder_trigger_reg_n_0,
      R => '0'
    );
decoder_trigger_reg_i_16: unisim.vcomponents.CARRY4
     port map (
      CI => decoder_trigger_reg_i_25_n_0,
      CO(3) => decoder_trigger_reg_i_16_n_0,
      CO(2) => decoder_trigger_reg_i_16_n_1,
      CO(1) => decoder_trigger_reg_i_16_n_2,
      CO(0) => decoder_trigger_reg_i_16_n_3,
      CYINIT => '0',
      DI(3) => decoder_trigger_i_26_n_0,
      DI(2) => decoder_trigger_i_27_n_0,
      DI(1) => decoder_trigger_i_28_n_0,
      DI(0) => decoder_trigger_i_29_n_0,
      O(3 downto 0) => NLW_decoder_trigger_reg_i_16_O_UNCONNECTED(3 downto 0),
      S(3) => decoder_trigger_i_30_n_0,
      S(2) => decoder_trigger_i_31_n_0,
      S(1) => decoder_trigger_i_32_n_0,
      S(0) => decoder_trigger_i_33_n_0
    );
decoder_trigger_reg_i_25: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => decoder_trigger_reg_i_25_n_0,
      CO(2) => decoder_trigger_reg_i_25_n_1,
      CO(1) => decoder_trigger_reg_i_25_n_2,
      CO(0) => decoder_trigger_reg_i_25_n_3,
      CYINIT => '0',
      DI(3) => decoder_trigger_i_34_n_0,
      DI(2) => decoder_trigger_i_35_n_0,
      DI(1) => decoder_trigger_i_36_n_0,
      DI(0) => decoder_trigger_i_37_n_0,
      O(3 downto 0) => NLW_decoder_trigger_reg_i_25_O_UNCONNECTED(3 downto 0),
      S(3) => decoder_trigger_i_38_n_0,
      S(2) => decoder_trigger_i_39_n_0,
      S(1) => decoder_trigger_i_40_n_0,
      S(0) => decoder_trigger_i_41_n_0
    );
decoder_trigger_reg_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => decoder_trigger_reg_i_7_n_0,
      CO(3) => data5,
      CO(2) => decoder_trigger_reg_i_6_n_1,
      CO(1) => decoder_trigger_reg_i_6_n_2,
      CO(0) => decoder_trigger_reg_i_6_n_3,
      CYINIT => '0',
      DI(3) => decoder_trigger_i_8_n_0,
      DI(2) => decoder_trigger_i_9_n_0,
      DI(1) => decoder_trigger_i_10_n_0,
      DI(0) => decoder_trigger_i_11_n_0,
      O(3 downto 0) => NLW_decoder_trigger_reg_i_6_O_UNCONNECTED(3 downto 0),
      S(3) => decoder_trigger_i_12_n_0,
      S(2) => decoder_trigger_i_13_n_0,
      S(1) => decoder_trigger_i_14_n_0,
      S(0) => decoder_trigger_i_15_n_0
    );
decoder_trigger_reg_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => decoder_trigger_reg_i_16_n_0,
      CO(3) => decoder_trigger_reg_i_7_n_0,
      CO(2) => decoder_trigger_reg_i_7_n_1,
      CO(1) => decoder_trigger_reg_i_7_n_2,
      CO(0) => decoder_trigger_reg_i_7_n_3,
      CYINIT => '0',
      DI(3) => decoder_trigger_i_17_n_0,
      DI(2) => decoder_trigger_i_18_n_0,
      DI(1) => decoder_trigger_i_19_n_0,
      DI(0) => decoder_trigger_i_20_n_0,
      O(3 downto 0) => NLW_decoder_trigger_reg_i_7_O_UNCONNECTED(3 downto 0),
      S(3) => decoder_trigger_i_21_n_0,
      S(2) => decoder_trigger_i_22_n_0,
      S(1) => decoder_trigger_i_23_n_0,
      S(0) => decoder_trigger_i_24_n_0
    );
instr_add_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => instr_and_i_2_n_0,
      I1 => is_alu_reg_reg,
      I2 => p_0_in(2),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      O => instr_add0
    );
instr_add_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_add0,
      Q => \^instr_add\,
      R => pcpi_mul_n_24
    );
instr_addi_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => is_alu_reg_imm,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => instr_addi0
    );
instr_addi_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_addi0,
      Q => \^instr_addi\,
      R => pcpi_mul_n_24
    );
instr_and_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => instr_and_i_2_n_0,
      I1 => is_alu_reg_reg,
      I2 => p_0_in(2),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      O => instr_and0
    );
instr_and_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[30]\,
      I1 => \mem_rdata_q_reg_n_0_[26]\,
      I2 => \mem_rdata_q_reg_n_0_[25]\,
      I3 => \mem_rdata_q_reg_n_0_[27]\,
      I4 => \mem_rdata_q_reg_n_0_[31]\,
      I5 => instr_rdinstr_i_3_n_0,
      O => instr_and_i_2_n_0
    );
instr_and_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_and0,
      Q => instr_and,
      R => pcpi_mul_n_24
    );
instr_andi_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => is_alu_reg_imm,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => instr_andi0
    );
instr_andi_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_andi0,
      Q => instr_andi,
      R => pcpi_mul_n_24
    );
instr_auipc_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888000"
    )
        port map (
      I0 => instr_auipc_i_2_n_0,
      I1 => instr_auipc_i_3_n_0,
      I2 => \mem_rdata_q_reg_n_0_[2]\,
      I3 => pcpi_mul_n_31,
      I4 => mem_axi_rdata(2),
      O => instr_auipc_i_1_n_0
    );
instr_auipc_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A800A0080800000"
    )
        port map (
      I0 => \mem_rdata_q[4]_i_1_n_0\,
      I1 => \mem_rdata_q_reg_n_0_[0]\,
      I2 => pcpi_mul_n_31,
      I3 => mem_axi_rdata(0),
      I4 => \mem_rdata_q_reg_n_0_[1]\,
      I5 => mem_axi_rdata(1),
      O => instr_auipc_i_2_n_0
    );
instr_auipc_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000101000051015"
    )
        port map (
      I0 => \mem_rdata_q[5]_i_1_n_0\,
      I1 => \mem_rdata_q_reg_n_0_[3]\,
      I2 => pcpi_mul_n_31,
      I3 => mem_axi_rdata(3),
      I4 => \mem_rdata_q_reg_n_0_[6]\,
      I5 => mem_axi_rdata(6),
      O => instr_auipc_i_3_n_0
    );
instr_auipc_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => instr_auipc_i_1_n_0,
      Q => instr_auipc,
      R => '0'
    );
instr_beq_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^is_beq_bne_blt_bge_bltu_bgeu\,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => instr_beq0
    );
instr_beq_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_beq0,
      Q => instr_beq,
      R => pcpi_mul_n_24
    );
instr_bge_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => \^is_beq_bne_blt_bge_bltu_bgeu\,
      O => instr_bge_i_1_n_0
    );
instr_bge_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_bge_i_1_n_0,
      Q => instr_bge,
      R => pcpi_mul_n_24
    );
instr_bgeu_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^is_beq_bne_blt_bge_bltu_bgeu\,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => instr_bgeu0
    );
instr_bgeu_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_bgeu0,
      Q => instr_bgeu,
      R => pcpi_mul_n_24
    );
instr_blt_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \^is_beq_bne_blt_bge_bltu_bgeu\,
      I1 => p_0_in(0),
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      O => instr_blt0
    );
instr_blt_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_blt0,
      Q => instr_blt,
      R => pcpi_mul_n_24
    );
instr_bltu_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^is_beq_bne_blt_bge_bltu_bgeu\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      O => instr_bltu0
    );
instr_bltu_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_bltu0,
      Q => instr_bltu,
      R => pcpi_mul_n_24
    );
instr_bne_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^is_beq_bne_blt_bge_bltu_bgeu\,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      O => instr_bne0
    );
instr_bne_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_bne0,
      Q => instr_bne,
      R => pcpi_mul_n_24
    );
instr_ecall_ebreak_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => instr_ecall_ebreak_i_2_n_0,
      I1 => \mem_rdata_q_reg_n_0_[17]\,
      I2 => \mem_rdata_q_reg_n_0_[16]\,
      I3 => \mem_rdata_q_reg_n_0_[19]\,
      I4 => \mem_rdata_q_reg_n_0_[18]\,
      I5 => instr_ecall_ebreak_i_3_n_0,
      O => instr_ecall_ebreak0
    );
instr_ecall_ebreak_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[25]\,
      I1 => \mem_rdata_q_reg_n_0_[24]\,
      I2 => \mem_rdata_q_reg_n_0_[27]\,
      I3 => \mem_rdata_q_reg_n_0_[26]\,
      O => instr_ecall_ebreak_i_2_n_0
    );
instr_ecall_ebreak_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => instr_rdcycleh_i_5_n_0,
      I1 => \mem_rdata_q_reg_n_0_[9]\,
      I2 => \mem_rdata_q_reg_n_0_[31]\,
      I3 => \mem_rdata_q_reg_n_0_[30]\,
      I4 => instr_ecall_ebreak_i_4_n_0,
      I5 => instr_ecall_ebreak_i_5_n_0,
      O => instr_ecall_ebreak_i_3_n_0
    );
instr_ecall_ebreak_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => p_0_in(2),
      O => instr_ecall_ebreak_i_4_n_0
    );
instr_ecall_ebreak_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => instr_rdcycleh_i_6_n_0,
      I1 => instr_rdinstr_i_3_n_0,
      I2 => \mem_rdata_q_reg_n_0_[11]\,
      I3 => \mem_rdata_q_reg_n_0_[7]\,
      I4 => \mem_rdata_q_reg_n_0_[10]\,
      I5 => \mem_rdata_q_reg_n_0_[8]\,
      O => instr_ecall_ebreak_i_5_n_0
    );
instr_ecall_ebreak_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_ecall_ebreak0,
      Q => \^instr_ecall_ebreak\,
      R => '0'
    );
instr_jal_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mem_do_rinst_reg_n_0,
      I1 => pcpi_mul_n_27,
      O => instr_lui0
    );
instr_jal_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A800A0080800000"
    )
        port map (
      I0 => instr_jal_i_4_n_0,
      I1 => \mem_rdata_q_reg_n_0_[3]\,
      I2 => pcpi_mul_n_31,
      I3 => mem_axi_rdata(3),
      I4 => \mem_rdata_q_reg_n_0_[2]\,
      I5 => mem_axi_rdata(2),
      O => instr_jal_i_2_n_0
    );
instr_jal_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888AAAAA88800000"
    )
        port map (
      I0 => instr_jalr_i_2_n_0,
      I1 => mem_axi_rdata(5),
      I2 => mem_axi_bvalid,
      I3 => mem_axi_rvalid,
      I4 => \^mem_valid\,
      I5 => \mem_rdata_q_reg_n_0_[5]\,
      O => instr_jal_i_4_n_0
    );
instr_jal_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => instr_jal_i_2_n_0,
      Q => instr_jal,
      R => '0'
    );
instr_jalr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => instr_jalr_i_2_n_0,
      I1 => \mem_rdata_q[13]_i_1_n_0\,
      I2 => \mem_rdata_q[12]_i_1_n_0\,
      I3 => \mem_rdata_q[14]_i_1_n_0\,
      I4 => instr_jalr_i_3_n_0,
      O => instr_jalr0
    );
instr_jalr_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000080800A008A80"
    )
        port map (
      I0 => instr_lui_i_3_n_0,
      I1 => \mem_rdata_q_reg_n_0_[6]\,
      I2 => pcpi_mul_n_31,
      I3 => mem_axi_rdata(6),
      I4 => \mem_rdata_q_reg_n_0_[4]\,
      I5 => mem_axi_rdata(4),
      O => instr_jalr_i_2_n_0
    );
instr_jalr_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C0000000C0A0A0"
    )
        port map (
      I0 => mem_axi_rdata(2),
      I1 => \mem_rdata_q_reg_n_0_[2]\,
      I2 => \mem_rdata_q[5]_i_1_n_0\,
      I3 => \mem_rdata_q_reg_n_0_[3]\,
      I4 => pcpi_mul_n_31,
      I5 => mem_axi_rdata(3),
      O => instr_jalr_i_3_n_0
    );
instr_jalr_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => instr_jalr0,
      Q => \^instr_jalr\,
      R => '0'
    );
instr_lb_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      O => instr_lb_i_1_n_0
    );
instr_lb_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_lb_i_1_n_0,
      Q => \^instr_lb\,
      R => instr_lhu_i_1_n_0
    );
instr_lbu_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      O => instr_lbu_i_1_n_0
    );
instr_lbu_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_lbu_i_1_n_0,
      Q => instr_lbu,
      R => instr_lhu_i_1_n_0
    );
instr_lh_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      O => instr_lh_i_1_n_0
    );
instr_lh_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_lh_i_1_n_0,
      Q => \^instr_lh\,
      R => instr_lhu_i_1_n_0
    );
instr_lhu_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => decoder_pseudo_trigger_reg_n_0,
      I1 => decoder_trigger_reg_n_0,
      I2 => is_lb_lh_lw_lbu_lhu,
      O => instr_lhu_i_1_n_0
    );
instr_lhu_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => p_0_in(2),
      O => instr_lhu_i_2_n_0
    );
instr_lhu_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_lhu_i_2_n_0,
      Q => instr_lhu,
      R => instr_lhu_i_1_n_0
    );
instr_lui_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D00000000000000"
    )
        port map (
      I0 => mem_axi_rdata(3),
      I1 => pcpi_mul_n_31,
      I2 => \mem_rdata_q_reg_n_0_[3]\,
      I3 => \mem_rdata_q[5]_i_1_n_0\,
      I4 => \mem_rdata_q[2]_i_1_n_0\,
      I5 => instr_lui_i_2_n_0,
      O => instr_lui_i_1_n_0
    );
instr_lui_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A0888800A0"
    )
        port map (
      I0 => instr_lui_i_3_n_0,
      I1 => \mem_rdata_q_reg_n_0_[4]\,
      I2 => mem_axi_rdata(4),
      I3 => mem_axi_rdata(6),
      I4 => pcpi_mul_n_31,
      I5 => \mem_rdata_q_reg_n_0_[6]\,
      O => instr_lui_i_2_n_0
    );
instr_lui_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => mem_axi_rdata(1),
      I1 => \mem_rdata_q_reg_n_0_[1]\,
      I2 => mem_axi_rdata(0),
      I3 => pcpi_mul_n_31,
      I4 => \mem_rdata_q_reg_n_0_[0]\,
      O => instr_lui_i_3_n_0
    );
instr_lui_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => instr_lui_i_1_n_0,
      Q => instr_lui,
      R => '0'
    );
instr_lw_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      O => instr_lw_i_1_n_0
    );
instr_lw_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_lw_i_1_n_0,
      Q => instr_lw,
      R => instr_lhu_i_1_n_0
    );
instr_or_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => instr_and_i_2_n_0,
      I1 => is_alu_reg_reg,
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      O => instr_or0
    );
instr_or_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_or0,
      Q => instr_or,
      R => pcpi_mul_n_24
    );
instr_ori_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => is_alu_reg_imm,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      O => instr_ori0
    );
instr_ori_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_ori0,
      Q => instr_ori,
      R => pcpi_mul_n_24
    );
instr_rdcycle_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => instr_rdcycle_i_2_n_0,
      I1 => \mem_rdata_q_reg_n_0_[30]\,
      I2 => \mem_rdata_q_reg_n_0_[31]\,
      I3 => p_0_in(1),
      I4 => instr_rdcycleh_i_5_n_0,
      I5 => instr_rdcycle_i_3_n_0,
      O => instr_rdcycle0
    );
instr_rdcycle_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(0),
      O => instr_rdcycle_i_2_n_0
    );
instr_rdcycle_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[26]\,
      I1 => \mem_rdata_q_reg_n_0_[27]\,
      I2 => \mem_rdata_q_reg_n_0_[24]\,
      I3 => \mem_rdata_q_reg_n_0_[25]\,
      I4 => instr_rdinstrh_i_2_n_0,
      I5 => instr_rdcycleh_i_6_n_0,
      O => instr_rdcycle_i_3_n_0
    );
instr_rdcycle_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_rdcycle0,
      Q => instr_rdcycle,
      R => '0'
    );
instr_rdcycleh_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => instr_rdcycleh_i_2_n_0,
      I1 => instr_rdcycleh_i_3_n_0,
      I2 => \mem_rdata_q_reg_n_0_[27]\,
      I3 => instr_rdcycleh_i_4_n_0,
      I4 => instr_rdcycleh_i_5_n_0,
      I5 => instr_rdcycleh_i_6_n_0,
      O => instr_rdcycleh0
    );
instr_rdcycleh_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => instr_rdinstrh_i_2_n_0,
      I1 => \mem_rdata_q_reg_n_0_[30]\,
      I2 => p_0_in(0),
      O => instr_rdcycleh_i_2_n_0
    );
instr_rdcycleh_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[25]\,
      I1 => \mem_rdata_q_reg_n_0_[24]\,
      I2 => \mem_rdata_q_reg_n_0_[26]\,
      I3 => p_0_in(2),
      O => instr_rdcycleh_i_3_n_0
    );
instr_rdcycleh_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[31]\,
      I1 => p_0_in(1),
      O => instr_rdcycleh_i_4_n_0
    );
instr_rdcycleh_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[23]\,
      I1 => \mem_rdata_q_reg_n_0_[22]\,
      I2 => \mem_rdata_q_reg_n_0_[21]\,
      I3 => \mem_rdata_q_reg_n_0_[15]\,
      O => instr_rdcycleh_i_5_n_0
    );
instr_rdcycleh_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[5]\,
      I1 => \mem_rdata_q_reg_n_0_[2]\,
      I2 => \mem_rdata_q_reg_n_0_[4]\,
      I3 => instr_rdcycleh_i_7_n_0,
      O => instr_rdcycleh_i_6_n_0
    );
instr_rdcycleh_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[1]\,
      I1 => \mem_rdata_q_reg_n_0_[0]\,
      I2 => \mem_rdata_q_reg_n_0_[6]\,
      I3 => \mem_rdata_q_reg_n_0_[3]\,
      O => instr_rdcycleh_i_7_n_0
    );
instr_rdcycleh_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_rdcycleh0,
      Q => instr_rdcycleh,
      R => '0'
    );
instr_rdinstr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => instr_rdinstrh_i_4_n_0,
      I1 => instr_rdinstr_i_2_n_0,
      I2 => instr_rdinstr_i_3_n_0,
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      I5 => instr_rdinstr_i_4_n_0,
      O => instr_rdinstr0
    );
instr_rdinstr_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[30]\,
      I1 => \mem_rdata_q_reg_n_0_[20]\,
      I2 => \mem_rdata_q_reg_n_0_[21]\,
      I3 => \mem_rdata_q_reg_n_0_[15]\,
      O => instr_rdinstr_i_2_n_0
    );
instr_rdinstr_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[28]\,
      I1 => \mem_rdata_q_reg_n_0_[29]\,
      O => instr_rdinstr_i_3_n_0
    );
instr_rdinstr_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[18]\,
      I1 => \mem_rdata_q_reg_n_0_[19]\,
      I2 => \mem_rdata_q_reg_n_0_[16]\,
      I3 => \mem_rdata_q_reg_n_0_[17]\,
      I4 => instr_ecall_ebreak_i_2_n_0,
      O => instr_rdinstr_i_4_n_0
    );
instr_rdinstr_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_rdinstr0,
      Q => instr_rdinstr,
      R => '0'
    );
instr_rdinstrh_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \mem_rdata_q_reg_n_0_[30]\,
      I2 => instr_rdinstrh_i_2_n_0,
      I3 => instr_rdinstrh_i_3_n_0,
      I4 => instr_rdinstrh_i_4_n_0,
      O => instr_rdinstrh0
    );
instr_rdinstrh_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[29]\,
      I1 => \mem_rdata_q_reg_n_0_[28]\,
      I2 => \mem_rdata_q_reg_n_0_[18]\,
      I3 => \mem_rdata_q_reg_n_0_[19]\,
      I4 => \mem_rdata_q_reg_n_0_[16]\,
      I5 => \mem_rdata_q_reg_n_0_[17]\,
      O => instr_rdinstrh_i_2_n_0
    );
instr_rdinstrh_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => instr_rdcycleh_i_3_n_0,
      I1 => \mem_rdata_q_reg_n_0_[15]\,
      I2 => \mem_rdata_q_reg_n_0_[27]\,
      I3 => \mem_rdata_q_reg_n_0_[20]\,
      I4 => \mem_rdata_q_reg_n_0_[21]\,
      O => instr_rdinstrh_i_3_n_0
    );
instr_rdinstrh_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => instr_rdcycleh_i_6_n_0,
      I1 => \mem_rdata_q_reg_n_0_[31]\,
      I2 => p_0_in(1),
      I3 => \mem_rdata_q_reg_n_0_[22]\,
      I4 => \mem_rdata_q_reg_n_0_[23]\,
      O => instr_rdinstrh_i_4_n_0
    );
instr_rdinstrh_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_rdinstrh0,
      Q => instr_rdinstrh,
      R => '0'
    );
instr_sb_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => is_sb_sh_sw,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => instr_sb0
    );
instr_sb_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_sb0,
      Q => instr_sb,
      R => '0'
    );
instr_sh_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => is_sb_sh_sw,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      O => instr_sh0
    );
instr_sh_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_sh0,
      Q => instr_sh,
      R => '0'
    );
instr_sll_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => is_alu_reg_reg,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => instr_and_i_2_n_0,
      O => instr_sll0
    );
instr_sll_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_sll0,
      Q => instr_sll,
      R => pcpi_mul_n_24
    );
instr_slli_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => is_alu_reg_imm,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => instr_and_i_2_n_0,
      O => instr_slli0
    );
instr_slli_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_slli0,
      Q => instr_slli,
      R => '0'
    );
instr_slt_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => instr_and_i_2_n_0,
      I1 => is_alu_reg_reg,
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => p_0_in(0),
      O => instr_slt0
    );
instr_slt_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_slt0,
      Q => instr_slt,
      R => pcpi_mul_n_24
    );
instr_slti_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => is_alu_reg_imm,
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => p_0_in(0),
      O => instr_slti0
    );
instr_slti_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_slti0,
      Q => instr_slti,
      R => pcpi_mul_n_24
    );
instr_sltiu_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => is_alu_reg_imm,
      O => instr_sltiu_i_1_n_0
    );
instr_sltiu_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_sltiu_i_1_n_0,
      Q => instr_sltiu,
      R => pcpi_mul_n_24
    );
instr_sltu_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => instr_and_i_2_n_0,
      I1 => is_alu_reg_reg,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => p_0_in(2),
      O => instr_sltu0
    );
instr_sltu_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_sltu0,
      Q => instr_sltu,
      R => pcpi_mul_n_24
    );
instr_sra_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => is_alu_reg_reg,
      I1 => instr_sra_i_2_n_0,
      I2 => p_0_in(2),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      O => instr_sra_i_1_n_0
    );
instr_sra_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[25]\,
      I1 => \mem_rdata_q_reg_n_0_[30]\,
      I2 => \mem_rdata_q_reg_n_0_[26]\,
      I3 => \mem_rdata_q_reg_n_0_[27]\,
      I4 => instr_rdinstr_i_3_n_0,
      I5 => \mem_rdata_q_reg_n_0_[31]\,
      O => instr_sra_i_2_n_0
    );
instr_sra_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_sra_i_1_n_0,
      Q => instr_sra,
      R => pcpi_mul_n_24
    );
instr_srai_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => instr_sra_i_2_n_0,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => is_alu_reg_imm,
      O => instr_srai0
    );
instr_srai_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_srai0,
      Q => instr_srai,
      R => '0'
    );
instr_srl_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => instr_and_i_2_n_0,
      I1 => is_alu_reg_reg,
      I2 => p_0_in(2),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      O => instr_srl_i_1_n_0
    );
instr_srl_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_srl_i_1_n_0,
      Q => instr_srl,
      R => pcpi_mul_n_24
    );
instr_srli_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => instr_and_i_2_n_0,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => is_alu_reg_imm,
      O => instr_srli0
    );
instr_srli_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_srli0,
      Q => instr_srli,
      R => '0'
    );
instr_sub_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => is_alu_reg_reg,
      I1 => instr_sra_i_2_n_0,
      I2 => p_0_in(2),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      O => instr_sub0
    );
instr_sub_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_sub0,
      Q => \^instr_sub\,
      R => pcpi_mul_n_24
    );
instr_sw_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => is_sb_sh_sw,
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => p_0_in(0),
      O => instr_sw0
    );
instr_sw_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_sw0,
      Q => instr_sw,
      R => '0'
    );
instr_xor_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => instr_and_i_2_n_0,
      I1 => is_alu_reg_reg,
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => instr_xor0
    );
instr_xor_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_xor0,
      Q => instr_xor,
      R => pcpi_mul_n_24
    );
instr_xori_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => is_alu_reg_imm,
      I1 => p_0_in(0),
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      O => instr_xori0
    );
instr_xori_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => instr_xori0,
      Q => instr_xori,
      R => pcpi_mul_n_24
    );
is_alu_reg_imm_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000888"
    )
        port map (
      I0 => instr_auipc_i_2_n_0,
      I1 => instr_auipc_i_3_n_0,
      I2 => \mem_rdata_q_reg_n_0_[2]\,
      I3 => pcpi_mul_n_31,
      I4 => mem_axi_rdata(2),
      O => is_alu_reg_imm_i_1_n_0
    );
is_alu_reg_imm_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => is_alu_reg_imm_i_1_n_0,
      Q => is_alu_reg_imm,
      R => '0'
    );
is_alu_reg_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047000000"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[6]\,
      I1 => pcpi_mul_n_31,
      I2 => mem_axi_rdata(6),
      I3 => instr_auipc_i_2_n_0,
      I4 => \mem_rdata_q[5]_i_1_n_0\,
      I5 => is_alu_reg_reg_i_2_n_0,
      O => is_alu_reg_reg_i_1_n_0
    );
is_alu_reg_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => mem_axi_rdata(2),
      I1 => \mem_rdata_q_reg_n_0_[2]\,
      I2 => mem_axi_rdata(3),
      I3 => pcpi_mul_n_31,
      I4 => \mem_rdata_q_reg_n_0_[3]\,
      O => is_alu_reg_reg_i_2_n_0
    );
is_alu_reg_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => is_alu_reg_reg_i_1_n_0,
      Q => is_alu_reg_reg,
      R => '0'
    );
is_beq_bne_blt_bge_bltu_bgeu_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777F77700008000"
    )
        port map (
      I0 => mem_do_rinst_reg_n_0,
      I1 => pcpi_mul_n_27,
      I2 => \mem_rdata_q[5]_i_1_n_0\,
      I3 => instr_jalr_i_2_n_0,
      I4 => is_alu_reg_reg_i_2_n_0,
      I5 => \^is_beq_bne_blt_bge_bltu_bgeu\,
      O => is_beq_bne_blt_bge_bltu_bgeu_i_1_n_0
    );
is_beq_bne_blt_bge_bltu_bgeu_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => is_beq_bne_blt_bge_bltu_bgeu_i_1_n_0,
      Q => \^is_beq_bne_blt_bge_bltu_bgeu\,
      R => pcpi_mul_n_24
    );
is_compare_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0000"
    )
        port map (
      I0 => instr_sltiu,
      I1 => instr_slti,
      I2 => \^is_beq_bne_blt_bge_bltu_bgeu\,
      I3 => is_compare_i_2_n_0,
      I4 => resetn,
      I5 => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      O => is_compare_i_1_n_0
    );
is_compare_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => instr_slt,
      I1 => instr_sltu,
      O => is_compare_i_2_n_0
    );
is_compare_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => is_compare_i_1_n_0,
      Q => is_compare,
      R => '0'
    );
is_jalr_addi_slti_sltiu_xori_ori_andi_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBAA"
    )
        port map (
      I0 => \^instr_jalr\,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => is_alu_reg_imm,
      O => is_jalr_addi_slti_sltiu_xori_ori_andi0
    );
is_jalr_addi_slti_sltiu_xori_ori_andi_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => is_jalr_addi_slti_sltiu_xori_ori_andi0,
      Q => is_jalr_addi_slti_sltiu_xori_ori_andi,
      R => '0'
    );
is_lb_lh_lw_lbu_lhu_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000540057FF"
    )
        port map (
      I0 => mem_axi_rdata(5),
      I1 => mem_axi_bvalid,
      I2 => mem_axi_rvalid,
      I3 => \^mem_valid\,
      I4 => \mem_rdata_q_reg_n_0_[5]\,
      I5 => is_sb_sh_sw_i_2_n_0,
      O => is_lb_lh_lw_lbu_lhu_i_1_n_0
    );
is_lb_lh_lw_lbu_lhu_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => is_lb_lh_lw_lbu_lhu_i_1_n_0,
      Q => is_lb_lh_lw_lbu_lhu,
      R => '0'
    );
is_lbu_lhu_lw_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => instr_lw,
      I1 => instr_lbu,
      I2 => instr_lhu,
      O => is_lbu_lhu_lw_i_1_n_0
    );
is_lbu_lhu_lw_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => is_lbu_lhu_lw_i_1_n_0,
      Q => is_lbu_lhu_lw,
      R => '0'
    );
is_lui_auipc_jal_jalr_addi_add_sub_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => is_lui_auipc_jal_jalr_addi_add_sub_reg_0,
      Q => is_lui_auipc_jal_jalr_addi_add_sub,
      R => '0'
    );
is_lui_auipc_jal_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^instr_jal_reg_0\,
      Q => is_lui_auipc_jal,
      R => '0'
    );
is_sb_sh_sw_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000ABFFA800"
    )
        port map (
      I0 => mem_axi_rdata(5),
      I1 => mem_axi_bvalid,
      I2 => mem_axi_rvalid,
      I3 => \^mem_valid\,
      I4 => \mem_rdata_q_reg_n_0_[5]\,
      I5 => is_sb_sh_sw_i_2_n_0,
      O => is_sb_sh_sw_i_1_n_0
    );
is_sb_sh_sw_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFD5D"
    )
        port map (
      I0 => instr_lui_i_3_n_0,
      I1 => mem_axi_rdata(4),
      I2 => pcpi_mul_n_31,
      I3 => \mem_rdata_q_reg_n_0_[4]\,
      I4 => \mem_rdata_q[6]_i_1_n_0\,
      I5 => is_alu_reg_reg_i_2_n_0,
      O => is_sb_sh_sw_i_2_n_0
    );
is_sb_sh_sw_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instr_lui0,
      D => is_sb_sh_sw_i_1_n_0,
      Q => is_sb_sh_sw,
      R => '0'
    );
is_sll_srl_sra_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000008800"
    )
        port map (
      I0 => is_alu_reg_reg,
      I1 => is_slli_srli_srai_i_2_n_0,
      I2 => p_0_in(2),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \mem_rdata_q_reg_n_0_[30]\,
      O => is_sll_srl_sra0
    );
is_sll_srl_sra_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => is_sll_srl_sra0,
      Q => is_sll_srl_sra,
      R => '0'
    );
is_slli_srli_srai_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000008800"
    )
        port map (
      I0 => is_alu_reg_imm,
      I1 => is_slli_srli_srai_i_2_n_0,
      I2 => p_0_in(2),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \mem_rdata_q_reg_n_0_[30]\,
      O => is_slli_srli_srai0
    );
is_slli_srli_srai_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[29]\,
      I1 => \mem_rdata_q_reg_n_0_[28]\,
      I2 => \mem_rdata_q_reg_n_0_[31]\,
      I3 => \mem_rdata_q_reg_n_0_[27]\,
      I4 => \mem_rdata_q_reg_n_0_[25]\,
      I5 => \mem_rdata_q_reg_n_0_[26]\,
      O => is_slli_srli_srai_i_2_n_0
    );
is_slli_srli_srai_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => is_slli_srli_srai0,
      Q => is_slli_srli_srai,
      R => '0'
    );
is_slti_blt_slt_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => instr_slt,
      I1 => instr_slti,
      I2 => instr_blt,
      O => is_slti_blt_slt_i_1_n_0
    );
is_slti_blt_slt_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => is_slti_blt_slt_i_1_n_0,
      Q => is_slti_blt_slt,
      R => '0'
    );
is_sltiu_bltu_sltu_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => instr_sltu,
      I1 => instr_sltiu,
      I2 => instr_bltu,
      O => is_sltiu_bltu_sltu_i_1_n_0
    );
is_sltiu_bltu_sltu_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => is_sltiu_bltu_sltu_i_1_n_0,
      Q => is_sltiu_bltu_sltu,
      R => '0'
    );
latched_branch_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF770F77"
    )
        port map (
      I0 => decoder_trigger_reg_n_0,
      I1 => instr_jal,
      I2 => \^instr_jalr\,
      I3 => \^q\(1),
      I4 => \^is_beq_bne_blt_bge_bltu_bgeu\,
      O => decoder_trigger_reg_0
    );
latched_branch_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => latched_branch_reg_1,
      Q => \^latched_branch_reg_0\,
      R => pcpi_mul_n_24
    );
latched_is_lb_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => latched_is_lb_reg_1,
      Q => \^latched_is_lb_reg_0\,
      R => pcpi_mul_n_24
    );
latched_is_lh_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => latched_is_lh_reg_1,
      Q => \^latched_is_lh_reg_0\,
      R => pcpi_mul_n_24
    );
latched_is_lu_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => latched_is_lu_reg_1,
      Q => \^latched_is_lu_reg_0\,
      R => pcpi_mul_n_24
    );
\latched_rd[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^is_beq_bne_blt_bge_bltu_bgeu\,
      I2 => resetn,
      I3 => \^q\(2),
      O => \latched_rd[4]_i_1_n_0\
    );
\latched_rd[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => resetn,
      I1 => \^is_beq_bne_blt_bge_bltu_bgeu\,
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \latched_rd[4]_i_2_n_0\
    );
\latched_rd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \latched_rd[4]_i_2_n_0\,
      D => decoded_rd(0),
      Q => latched_rd(0),
      R => \latched_rd[4]_i_1_n_0\
    );
\latched_rd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \latched_rd[4]_i_2_n_0\,
      D => decoded_rd(1),
      Q => latched_rd(1),
      R => \latched_rd[4]_i_1_n_0\
    );
\latched_rd_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \latched_rd[4]_i_2_n_0\,
      D => decoded_rd(2),
      Q => latched_rd(2),
      R => \latched_rd[4]_i_1_n_0\
    );
\latched_rd_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \latched_rd[4]_i_2_n_0\,
      D => decoded_rd(3),
      Q => latched_rd(3),
      R => \latched_rd[4]_i_1_n_0\
    );
\latched_rd_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \latched_rd[4]_i_2_n_0\,
      D => decoded_rd(4),
      Q => latched_rd(4),
      R => \latched_rd[4]_i_1_n_0\
    );
latched_stalu_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => latched_stalu_reg_1,
      Q => \^latched_stalu_reg_0\,
      R => pcpi_mul_n_24
    );
latched_store_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0002FFFFFFFF"
    )
        port map (
      I0 => decoder_trigger_i_5_n_0,
      I1 => instr_beq,
      I2 => instr_bne,
      I3 => instr_bge,
      I4 => decoder_trigger_i_3_n_0,
      I5 => \^q\(1),
      O => instr_beq_reg_0
    );
latched_store_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \cpu_state_reg_n_0_[2]\,
      O => \cpu_state_reg[3]_0\
    );
latched_store_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      O => latched_store_i_6_n_0
    );
latched_store_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^is_beq_bne_blt_bge_bltu_bgeu\,
      O => latched_store_i_7_n_0
    );
latched_store_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => latched_store_reg_1,
      Q => \^latched_store_reg_0\,
      R => pcpi_mul_n_24
    );
\mem_addr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(10),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[10]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[10]\,
      O => \mem_addr[10]_i_1_n_0\
    );
\mem_addr[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(11),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[11]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[11]\,
      O => \mem_addr[11]_i_1_n_0\
    );
\mem_addr[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(12),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[12]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[12]\,
      O => \mem_addr[12]_i_1_n_0\
    );
\mem_addr[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(13),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[13]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[13]\,
      O => \mem_addr[13]_i_1_n_0\
    );
\mem_addr[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(14),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[14]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[14]\,
      O => \mem_addr[14]_i_1_n_0\
    );
\mem_addr[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(15),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[15]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[15]\,
      O => \mem_addr[15]_i_1_n_0\
    );
\mem_addr[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(16),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[16]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[16]\,
      O => \mem_addr[16]_i_1_n_0\
    );
\mem_addr[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(17),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[17]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[17]\,
      O => \mem_addr[17]_i_1_n_0\
    );
\mem_addr[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(18),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[18]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[18]\,
      O => \mem_addr[18]_i_1_n_0\
    );
\mem_addr[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(19),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[19]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[19]\,
      O => \mem_addr[19]_i_1_n_0\
    );
\mem_addr[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(20),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[20]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[20]\,
      O => \mem_addr[20]_i_1_n_0\
    );
\mem_addr[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(21),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[21]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[21]\,
      O => \mem_addr[21]_i_1_n_0\
    );
\mem_addr[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(22),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[22]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[22]\,
      O => \mem_addr[22]_i_1_n_0\
    );
\mem_addr[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(23),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[23]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[23]\,
      O => \mem_addr[23]_i_1_n_0\
    );
\mem_addr[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(24),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[24]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[24]\,
      O => \mem_addr[24]_i_1_n_0\
    );
\mem_addr[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(25),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[25]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[25]\,
      O => \mem_addr[25]_i_1_n_0\
    );
\mem_addr[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(26),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[26]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[26]\,
      O => \mem_addr[26]_i_1_n_0\
    );
\mem_addr[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(27),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[27]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[27]\,
      O => \mem_addr[27]_i_1_n_0\
    );
\mem_addr[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(28),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[28]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[28]\,
      O => \mem_addr[28]_i_1_n_0\
    );
\mem_addr[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(29),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[29]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[29]\,
      O => \mem_addr[29]_i_1_n_0\
    );
\mem_addr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(2),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[2]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[2]\,
      O => \mem_addr[2]_i_1_n_0\
    );
\mem_addr[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(30),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[30]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[30]\,
      O => \mem_addr[30]_i_1_n_0\
    );
\mem_addr[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202020002020202"
    )
        port map (
      I0 => \mem_addr[31]_i_3_n_0\,
      I1 => \mem_state_reg_n_0_[1]\,
      I2 => \mem_state_reg_n_0_[0]\,
      I3 => \^mem_do_wdata\,
      I4 => \^mem_do_rdata\,
      I5 => \mem_addr[31]_i_4_n_0\,
      O => \mem_addr[31]_i_1_n_0\
    );
\mem_addr[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(31),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[31]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[31]\,
      O => \mem_addr[31]_i_2_n_0\
    );
\mem_addr[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => resetn,
      I1 => \^trap_reg_0\,
      O => \mem_addr[31]_i_3_n_0\
    );
\mem_addr[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mem_do_rinst_reg_n_0,
      I1 => \^mem_do_prefetch_reg_0\,
      O => \mem_addr[31]_i_4_n_0\
    );
\mem_addr[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^latched_branch_reg_0\,
      I1 => \^latched_store_reg_0\,
      O => \mem_addr[31]_i_5_n_0\
    );
\mem_addr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(3),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[3]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[3]\,
      O => \mem_addr[3]_i_1_n_0\
    );
\mem_addr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(4),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[4]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[4]\,
      O => \mem_addr[4]_i_1_n_0\
    );
\mem_addr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(5),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[5]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[5]\,
      O => \mem_addr[5]_i_1_n_0\
    );
\mem_addr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(6),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[6]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[6]\,
      O => \mem_addr[6]_i_1_n_0\
    );
\mem_addr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(7),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[7]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[7]\,
      O => \mem_addr[7]_i_1_n_0\
    );
\mem_addr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(8),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[8]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[8]\,
      O => \mem_addr[8]_i_1_n_0\
    );
\mem_addr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE02FEFEFE020202"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(9),
      I1 => mem_do_rinst_reg_n_0,
      I2 => \^mem_do_prefetch_reg_0\,
      I3 => \reg_out_reg_n_0_[9]\,
      I4 => \mem_addr[31]_i_5_n_0\,
      I5 => \reg_next_pc_reg_n_0_[9]\,
      O => \mem_addr[9]_i_1_n_0\
    );
\mem_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[10]_i_1_n_0\,
      Q => mem_axi_awaddr(8),
      R => '0'
    );
\mem_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[11]_i_1_n_0\,
      Q => mem_axi_awaddr(9),
      R => '0'
    );
\mem_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[12]_i_1_n_0\,
      Q => mem_axi_awaddr(10),
      R => '0'
    );
\mem_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[13]_i_1_n_0\,
      Q => mem_axi_awaddr(11),
      R => '0'
    );
\mem_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[14]_i_1_n_0\,
      Q => mem_axi_awaddr(12),
      R => '0'
    );
\mem_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[15]_i_1_n_0\,
      Q => mem_axi_awaddr(13),
      R => '0'
    );
\mem_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[16]_i_1_n_0\,
      Q => mem_axi_awaddr(14),
      R => '0'
    );
\mem_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[17]_i_1_n_0\,
      Q => mem_axi_awaddr(15),
      R => '0'
    );
\mem_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[18]_i_1_n_0\,
      Q => mem_axi_awaddr(16),
      R => '0'
    );
\mem_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[19]_i_1_n_0\,
      Q => mem_axi_awaddr(17),
      R => '0'
    );
\mem_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[20]_i_1_n_0\,
      Q => mem_axi_awaddr(18),
      R => '0'
    );
\mem_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[21]_i_1_n_0\,
      Q => mem_axi_awaddr(19),
      R => '0'
    );
\mem_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[22]_i_1_n_0\,
      Q => mem_axi_awaddr(20),
      R => '0'
    );
\mem_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[23]_i_1_n_0\,
      Q => mem_axi_awaddr(21),
      R => '0'
    );
\mem_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[24]_i_1_n_0\,
      Q => mem_axi_awaddr(22),
      R => '0'
    );
\mem_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[25]_i_1_n_0\,
      Q => mem_axi_awaddr(23),
      R => '0'
    );
\mem_addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[26]_i_1_n_0\,
      Q => mem_axi_awaddr(24),
      R => '0'
    );
\mem_addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[27]_i_1_n_0\,
      Q => mem_axi_awaddr(25),
      R => '0'
    );
\mem_addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[28]_i_1_n_0\,
      Q => mem_axi_awaddr(26),
      R => '0'
    );
\mem_addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[29]_i_1_n_0\,
      Q => mem_axi_awaddr(27),
      R => '0'
    );
\mem_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[2]_i_1_n_0\,
      Q => mem_axi_awaddr(0),
      R => '0'
    );
\mem_addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[30]_i_1_n_0\,
      Q => mem_axi_awaddr(28),
      R => '0'
    );
\mem_addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[31]_i_2_n_0\,
      Q => mem_axi_awaddr(29),
      R => '0'
    );
\mem_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[3]_i_1_n_0\,
      Q => mem_axi_awaddr(1),
      R => '0'
    );
\mem_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[4]_i_1_n_0\,
      Q => mem_axi_awaddr(2),
      R => '0'
    );
\mem_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[5]_i_1_n_0\,
      Q => mem_axi_awaddr(3),
      R => '0'
    );
\mem_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[6]_i_1_n_0\,
      Q => mem_axi_awaddr(4),
      R => '0'
    );
\mem_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[7]_i_1_n_0\,
      Q => mem_axi_awaddr(5),
      R => '0'
    );
\mem_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[8]_i_1_n_0\,
      Q => mem_axi_awaddr(6),
      R => '0'
    );
\mem_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_addr[9]_i_1_n_0\,
      Q => mem_axi_awaddr(7),
      R => '0'
    );
mem_axi_arvalid_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \^mem_wstrb_reg[1]_0\,
      I1 => \^mem_wstrb_reg[0]_0\,
      I2 => \^mem_wstrb_reg[3]_0\,
      I3 => \^mem_wstrb_reg[2]_0\,
      I4 => \^mem_valid\,
      I5 => mem_axi_arvalid_0,
      O => mem_axi_arvalid
    );
mem_axi_awvalid_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0000"
    )
        port map (
      I0 => \^mem_wstrb_reg[1]_0\,
      I1 => \^mem_wstrb_reg[0]_0\,
      I2 => \^mem_wstrb_reg[3]_0\,
      I3 => \^mem_wstrb_reg[2]_0\,
      I4 => \^mem_valid\,
      I5 => ack_awvalid,
      O => mem_axi_awvalid
    );
mem_axi_bready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \^mem_valid\,
      I1 => \^mem_wstrb_reg[2]_0\,
      I2 => \^mem_wstrb_reg[3]_0\,
      I3 => \^mem_wstrb_reg[0]_0\,
      I4 => \^mem_wstrb_reg[1]_0\,
      O => mem_axi_bready
    );
mem_axi_rready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^mem_valid\,
      I1 => \^mem_wstrb_reg[2]_0\,
      I2 => \^mem_wstrb_reg[3]_0\,
      I3 => \^mem_wstrb_reg[0]_0\,
      I4 => \^mem_wstrb_reg[1]_0\,
      O => mem_axi_rready
    );
mem_axi_wvalid_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0000"
    )
        port map (
      I0 => \^mem_wstrb_reg[1]_0\,
      I1 => \^mem_wstrb_reg[0]_0\,
      I2 => \^mem_wstrb_reg[3]_0\,
      I3 => \^mem_wstrb_reg[2]_0\,
      I4 => \^mem_valid\,
      I5 => mem_axi_wvalid_0,
      O => mem_axi_wvalid
    );
mem_do_prefetch_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAAEAAA"
    )
        port map (
      I0 => \^mem_do_prefetch_reg_0\,
      I1 => mem_do_prefetch_i_2_n_0,
      I2 => resetn,
      I3 => \^q\(2),
      I4 => \^instr_jalr\,
      I5 => mem_do_rinst0,
      O => mem_do_prefetch_i_1_n_0
    );
mem_do_prefetch_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decoder_trigger_reg_n_0,
      I1 => instr_jal,
      O => mem_do_prefetch_i_2_n_0
    );
mem_do_prefetch_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => resetn,
      I1 => \^mem_state_reg[0]_0\,
      O => mem_do_rinst0
    );
mem_do_prefetch_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mem_do_prefetch_i_1_n_0,
      Q => \^mem_do_prefetch_reg_0\,
      R => '0'
    );
mem_do_rdata_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[5]\,
      I1 => \cpu_state_reg_n_0_[2]\,
      I2 => \^q\(0),
      I3 => \cpu_state_reg_n_0_[7]\,
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => \cpu_state_reg[5]_0\
    );
mem_do_rdata_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mem_do_rdata_reg_0,
      Q => \^mem_do_rdata\,
      R => '0'
    );
mem_do_rinst_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00000008"
    )
        port map (
      I0 => resetn,
      I1 => \cpu_state_reg_n_0_[2]\,
      I2 => \reg_sh_reg_n_0_[0]\,
      I3 => pcpi_mul_n_82,
      I4 => \reg_sh_reg_n_0_[1]\,
      I5 => \^q\(2),
      O => mem_do_rinst_i_10_n_0
    );
mem_do_rinst_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5504"
    )
        port map (
      I0 => is_slli_srli_srai,
      I1 => is_sb_sh_sw,
      I2 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I3 => \^mem_do_prefetch_reg_0\,
      O => mem_do_rinst_i_11_n_0
    );
mem_do_rinst_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => is_lui_auipc_jal,
      I1 => \^mem_do_prefetch_reg_0\,
      O => mem_do_rinst_i_12_n_0
    );
mem_do_rinst_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002FFFFFFFF"
    )
        port map (
      I0 => pcpi_mul_n_0,
      I1 => pcpi_mul_n_1,
      I2 => pcpi_mul_n_2,
      I3 => pcpi_mul_n_3,
      I4 => mem_do_rinst_i_15_n_0,
      I5 => \cpu_state[3]_i_3_n_0\,
      O => mem_do_rinst_i_13_n_0
    );
mem_do_rinst_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => mem_do_rinst_i_15_n_0,
      I1 => mem_do_rinst_i_16_n_0,
      I2 => pcpi_mul_n_90,
      I3 => pcpi_mul_n_94,
      I4 => instr_srl,
      I5 => instr_sra,
      O => mem_do_rinst_i_14_n_0
    );
mem_do_rinst_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^instr_jalr\,
      I1 => instr_lui,
      I2 => instr_auipc,
      I3 => instr_jal,
      O => mem_do_rinst_i_15_n_0
    );
mem_do_rinst_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => instr_rdinstrh,
      I1 => instr_rdcycle,
      O => mem_do_rinst_i_16_n_0
    );
mem_do_rinst_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8F8888"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[2]\,
      I1 => \^mem_do_prefetch_reg_0\,
      I2 => decoder_trigger_reg_n_0,
      I3 => instr_jal,
      I4 => \^q\(2),
      O => mem_do_rinst_i_4_n_0
    );
mem_do_rinst_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008880800000000"
    )
        port map (
      I0 => resetn,
      I1 => \^is_beq_bne_blt_bge_bltu_bgeu\,
      I2 => decoder_trigger_i_5_n_0,
      I3 => decoder_trigger_i_4_n_0,
      I4 => decoder_trigger_i_3_n_0,
      I5 => \^q\(1),
      O => mem_do_rinst_i_5_n_0
    );
mem_do_rinst_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55575555FFFFFFFF"
    )
        port map (
      I0 => \cpu_state[3]_i_3_n_0\,
      I1 => mem_do_rinst_i_14_n_0,
      I2 => pcpi_mul_n_2,
      I3 => pcpi_mul_n_1,
      I4 => pcpi_mul_n_0,
      I5 => pcpi_mul_n_87,
      O => mem_do_rinst_i_6_n_0
    );
mem_do_rinst_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFAAAAAAAA"
    )
        port map (
      I0 => is_lui_auipc_jal,
      I1 => mem_do_rinst_i_14_n_0,
      I2 => pcpi_mul_n_2,
      I3 => pcpi_mul_n_1,
      I4 => pcpi_mul_n_0,
      I5 => is_lb_lh_lw_lbu_lhu,
      O => mem_do_rinst_i_7_n_0
    );
mem_do_rinst_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5545"
    )
        port map (
      I0 => is_slli_srli_srai,
      I1 => is_sb_sh_sw,
      I2 => is_sll_srl_sra,
      I3 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      O => mem_do_rinst_i_8_n_0
    );
mem_do_rinst_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_25,
      Q => mem_do_rinst_reg_n_0,
      R => '0'
    );
mem_do_wdata_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mem_do_wdata_reg_0,
      Q => \^mem_do_wdata\,
      R => '0'
    );
mem_instr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \^mem_do_wdata\,
      I1 => \^mem_do_prefetch_reg_0\,
      I2 => mem_do_rinst_reg_n_0,
      O => mem_instr_i_1_n_0
    );
mem_instr_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => mem_instr_i_1_n_0,
      Q => mem_axi_arprot(0),
      R => '0'
    );
\mem_rdata_q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[0]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(0),
      O => \mem_rdata_q[0]_i_1_n_0\
    );
\mem_rdata_q[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(12),
      O => \mem_rdata_q[12]_i_1_n_0\
    );
\mem_rdata_q[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(13),
      O => \mem_rdata_q[13]_i_1_n_0\
    );
\mem_rdata_q[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => p_0_in(2),
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(14),
      O => \mem_rdata_q[14]_i_1_n_0\
    );
\mem_rdata_q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[1]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(1),
      O => \mem_rdata_q[1]_i_1_n_0\
    );
\mem_rdata_q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[2]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(2),
      O => \mem_rdata_q[2]_i_1_n_0\
    );
\mem_rdata_q[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => mem_axi_bvalid,
      I1 => mem_axi_rvalid,
      I2 => \^mem_valid\,
      O => \mem_rdata_q[31]_i_1_n_0\
    );
\mem_rdata_q[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[3]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(3),
      O => \mem_rdata_q[3]_i_1_n_0\
    );
\mem_rdata_q[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[4]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(4),
      O => \mem_rdata_q[4]_i_1_n_0\
    );
\mem_rdata_q[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[5]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(5),
      O => \mem_rdata_q[5]_i_1_n_0\
    );
\mem_rdata_q[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEA222A"
    )
        port map (
      I0 => \mem_rdata_q_reg_n_0_[6]\,
      I1 => \^mem_valid\,
      I2 => mem_axi_rvalid,
      I3 => mem_axi_bvalid,
      I4 => mem_axi_rdata(6),
      O => \mem_rdata_q[6]_i_1_n_0\
    );
\mem_rdata_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_rdata_q[0]_i_1_n_0\,
      Q => \mem_rdata_q_reg_n_0_[0]\,
      R => '0'
    );
\mem_rdata_q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_rdata_q[31]_i_1_n_0\,
      D => mem_axi_rdata(10),
      Q => \mem_rdata_q_reg_n_0_[10]\,
      R => '0'
    );
\mem_rdata_q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_rdata_q[31]_i_1_n_0\,
      D => mem_axi_rdata(11),
      Q => \mem_rdata_q_reg_n_0_[11]\,
      R => '0'
    );
\mem_rdata_q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_rdata_q[12]_i_1_n_0\,
      Q => p_0_in(0),
      R => '0'
    );
\mem_rdata_q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_rdata_q[13]_i_1_n_0\,
      Q => p_0_in(1),
      R => '0'
    );
\mem_rdata_q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_rdata_q[14]_i_1_n_0\,
      Q => p_0_in(2),
      R => '0'
    );
\mem_rdata_q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_rdata_q[31]_i_1_n_0\,
      D => mem_axi_rdata(15),
      Q => \mem_rdata_q_reg_n_0_[15]\,
      R => '0'
    );
\mem_rdata_q_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_rdata_q[31]_i_1_n_0\,
      D => mem_axi_rdata(16),
      Q => \mem_rdata_q_reg_n_0_[16]\,
      R => '0'
    );
\mem_rdata_q_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_rdata_q[31]_i_1_n_0\,
      D => mem_axi_rdata(17),
      Q => \mem_rdata_q_reg_n_0_[17]\,
      R => '0'
    );
\mem_rdata_q_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_rdata_q[31]_i_1_n_0\,
      D => mem_axi_rdata(18),
      Q => \mem_rdata_q_reg_n_0_[18]\,
      R => '0'
    );
\mem_rdata_q_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_rdata_q[31]_i_1_n_0\,
      D => mem_axi_rdata(19),
      Q => \mem_rdata_q_reg_n_0_[19]\,
      R => '0'
    );
\mem_rdata_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_rdata_q[1]_i_1_n_0\,
      Q => \mem_rdata_q_reg_n_0_[1]\,
      R => '0'
    );
\mem_rdata_q_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_rdata_q[31]_i_1_n_0\,
      D => mem_axi_rdata(20),
      Q => \mem_rdata_q_reg_n_0_[20]\,
      R => '0'
    );
\mem_rdata_q_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_rdata_q[31]_i_1_n_0\,
      D => mem_axi_rdata(21),
      Q => \mem_rdata_q_reg_n_0_[21]\,
      R => '0'
    );
\mem_rdata_q_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_rdata_q[31]_i_1_n_0\,
      D => mem_axi_rdata(22),
      Q => \mem_rdata_q_reg_n_0_[22]\,
      R => '0'
    );
\mem_rdata_q_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_rdata_q[31]_i_1_n_0\,
      D => mem_axi_rdata(23),
      Q => \mem_rdata_q_reg_n_0_[23]\,
      R => '0'
    );
\mem_rdata_q_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_rdata_q[31]_i_1_n_0\,
      D => mem_axi_rdata(24),
      Q => \mem_rdata_q_reg_n_0_[24]\,
      R => '0'
    );
\mem_rdata_q_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_rdata_q[31]_i_1_n_0\,
      D => mem_axi_rdata(25),
      Q => \mem_rdata_q_reg_n_0_[25]\,
      R => '0'
    );
\mem_rdata_q_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_rdata_q[31]_i_1_n_0\,
      D => mem_axi_rdata(26),
      Q => \mem_rdata_q_reg_n_0_[26]\,
      R => '0'
    );
\mem_rdata_q_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_rdata_q[31]_i_1_n_0\,
      D => mem_axi_rdata(27),
      Q => \mem_rdata_q_reg_n_0_[27]\,
      R => '0'
    );
\mem_rdata_q_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_rdata_q[31]_i_1_n_0\,
      D => mem_axi_rdata(28),
      Q => \mem_rdata_q_reg_n_0_[28]\,
      R => '0'
    );
\mem_rdata_q_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_rdata_q[31]_i_1_n_0\,
      D => mem_axi_rdata(29),
      Q => \mem_rdata_q_reg_n_0_[29]\,
      R => '0'
    );
\mem_rdata_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_rdata_q[2]_i_1_n_0\,
      Q => \mem_rdata_q_reg_n_0_[2]\,
      R => '0'
    );
\mem_rdata_q_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_rdata_q[31]_i_1_n_0\,
      D => mem_axi_rdata(30),
      Q => \mem_rdata_q_reg_n_0_[30]\,
      R => '0'
    );
\mem_rdata_q_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_rdata_q[31]_i_1_n_0\,
      D => mem_axi_rdata(31),
      Q => \mem_rdata_q_reg_n_0_[31]\,
      R => '0'
    );
\mem_rdata_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_rdata_q[3]_i_1_n_0\,
      Q => \mem_rdata_q_reg_n_0_[3]\,
      R => '0'
    );
\mem_rdata_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_rdata_q[4]_i_1_n_0\,
      Q => \mem_rdata_q_reg_n_0_[4]\,
      R => '0'
    );
\mem_rdata_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_rdata_q[5]_i_1_n_0\,
      Q => \mem_rdata_q_reg_n_0_[5]\,
      R => '0'
    );
\mem_rdata_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_rdata_q[6]_i_1_n_0\,
      Q => \mem_rdata_q_reg_n_0_[6]\,
      R => '0'
    );
\mem_rdata_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_rdata_q[31]_i_1_n_0\,
      D => mem_axi_rdata(7),
      Q => \mem_rdata_q_reg_n_0_[7]\,
      R => '0'
    );
\mem_rdata_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_rdata_q[31]_i_1_n_0\,
      D => mem_axi_rdata(8),
      Q => \mem_rdata_q_reg_n_0_[8]\,
      R => '0'
    );
\mem_rdata_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_rdata_q[31]_i_1_n_0\,
      D => mem_axi_rdata(9),
      Q => \mem_rdata_q_reg_n_0_[9]\,
      R => '0'
    );
\mem_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101FFFF000F0000"
    )
        port map (
      I0 => \^mem_do_rdata\,
      I1 => mem_do_rinst_reg_n_0,
      I2 => \mem_state_reg_n_0_[1]\,
      I3 => \^mem_do_wdata\,
      I4 => mem_state,
      I5 => \mem_state_reg_n_0_[0]\,
      O => \mem_state[0]_i_1_n_0\
    );
\mem_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF1F100000"
    )
        port map (
      I0 => \^mem_do_rdata\,
      I1 => mem_do_rinst_reg_n_0,
      I2 => \mem_state_reg_n_0_[0]\,
      I3 => \^mem_do_wdata\,
      I4 => mem_state,
      I5 => \mem_state_reg_n_0_[1]\,
      O => \mem_state[1]_i_1_n_0\
    );
\mem_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAAAAAAAAAAAAA"
    )
        port map (
      I0 => mem_valid13_out,
      I1 => resetn,
      I2 => \^trap_reg_0\,
      I3 => mem_do_rinst_reg_n_0,
      I4 => \mem_state_reg_n_0_[0]\,
      I5 => \mem_state_reg_n_0_[1]\,
      O => mem_state
    );
\mem_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_state[0]_i_1_n_0\,
      Q => \mem_state_reg_n_0_[0]\,
      R => pcpi_mul_n_24
    );
\mem_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_state[1]_i_1_n_0\,
      Q => \mem_state_reg_n_0_[1]\,
      R => pcpi_mul_n_24
    );
mem_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7077700000000000"
    )
        port map (
      I0 => mem_ready,
      I1 => \^trap_reg_0\,
      I2 => mem_valid_i_3_n_0,
      I3 => mem_valid13_out,
      I4 => \^mem_valid\,
      I5 => resetn,
      O => mem_valid_i_1_n_0
    );
mem_valid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => mem_axi_bvalid,
      I1 => mem_axi_rvalid,
      O => mem_ready
    );
mem_valid_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111110"
    )
        port map (
      I0 => \mem_state_reg_n_0_[0]\,
      I1 => \mem_state_reg_n_0_[1]\,
      I2 => \^mem_do_wdata\,
      I3 => \^mem_do_rdata\,
      I4 => mem_do_rinst_reg_n_0,
      I5 => \^mem_do_prefetch_reg_0\,
      O => mem_valid_i_3_n_0
    );
mem_valid_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404440444040"
    )
        port map (
      I0 => \^trap_reg_0\,
      I1 => resetn,
      I2 => mem_valid_i_3_n_0,
      I3 => pcpi_mul_n_31,
      I4 => \mem_state_reg_n_0_[0]\,
      I5 => \mem_state_reg_n_0_[1]\,
      O => mem_valid13_out
    );
mem_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mem_valid_i_1_n_0,
      Q => \^mem_valid\,
      R => '0'
    );
\mem_wdata[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(2),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \^reg_op2_reg[31]_0\(10),
      O => \mem_wdata[10]_i_1_n_0\
    );
\mem_wdata[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(3),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \^reg_op2_reg[31]_0\(11),
      O => \mem_wdata[11]_i_1_n_0\
    );
\mem_wdata[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(4),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \^reg_op2_reg[31]_0\(12),
      O => \mem_wdata[12]_i_1_n_0\
    );
\mem_wdata[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(5),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \^reg_op2_reg[31]_0\(13),
      O => \mem_wdata[13]_i_1_n_0\
    );
\mem_wdata[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(6),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \^reg_op2_reg[31]_0\(14),
      O => \mem_wdata[14]_i_1_n_0\
    );
\mem_wdata[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(7),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \^reg_op2_reg[31]_0\(15),
      O => \mem_wdata[15]_i_1_n_0\
    );
\mem_wdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(16),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \mem_wordsize_reg_n_0_[0]\,
      I3 => \^reg_op2_reg[31]_0\(0),
      O => \mem_wdata[16]_i_1_n_0\
    );
\mem_wdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(17),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \mem_wordsize_reg_n_0_[0]\,
      I3 => \^reg_op2_reg[31]_0\(1),
      O => \mem_wdata[17]_i_1_n_0\
    );
\mem_wdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(18),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \mem_wordsize_reg_n_0_[0]\,
      I3 => \^reg_op2_reg[31]_0\(2),
      O => \mem_wdata[18]_i_1_n_0\
    );
\mem_wdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(19),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \mem_wordsize_reg_n_0_[0]\,
      I3 => \^reg_op2_reg[31]_0\(3),
      O => \mem_wdata[19]_i_1_n_0\
    );
\mem_wdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(20),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \mem_wordsize_reg_n_0_[0]\,
      I3 => \^reg_op2_reg[31]_0\(4),
      O => \mem_wdata[20]_i_1_n_0\
    );
\mem_wdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(21),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \mem_wordsize_reg_n_0_[0]\,
      I3 => \^reg_op2_reg[31]_0\(5),
      O => \mem_wdata[21]_i_1_n_0\
    );
\mem_wdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(22),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \mem_wordsize_reg_n_0_[0]\,
      I3 => \^reg_op2_reg[31]_0\(6),
      O => \mem_wdata[22]_i_1_n_0\
    );
\mem_wdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(23),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \mem_wordsize_reg_n_0_[0]\,
      I3 => \^reg_op2_reg[31]_0\(7),
      O => \mem_wdata[23]_i_1_n_0\
    );
\mem_wdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(0),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \^reg_op2_reg[31]_0\(8),
      I3 => \mem_wordsize_reg_n_0_[0]\,
      I4 => \^reg_op2_reg[31]_0\(24),
      O => \mem_wdata[24]_i_1_n_0\
    );
\mem_wdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(1),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \^reg_op2_reg[31]_0\(9),
      I3 => \mem_wordsize_reg_n_0_[0]\,
      I4 => \^reg_op2_reg[31]_0\(25),
      O => \mem_wdata[25]_i_1_n_0\
    );
\mem_wdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(2),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \^reg_op2_reg[31]_0\(10),
      I3 => \mem_wordsize_reg_n_0_[0]\,
      I4 => \^reg_op2_reg[31]_0\(26),
      O => \mem_wdata[26]_i_1_n_0\
    );
\mem_wdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(3),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \^reg_op2_reg[31]_0\(11),
      I3 => \mem_wordsize_reg_n_0_[0]\,
      I4 => \^reg_op2_reg[31]_0\(27),
      O => \mem_wdata[27]_i_1_n_0\
    );
\mem_wdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(4),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \^reg_op2_reg[31]_0\(12),
      I3 => \mem_wordsize_reg_n_0_[0]\,
      I4 => \^reg_op2_reg[31]_0\(28),
      O => \mem_wdata[28]_i_1_n_0\
    );
\mem_wdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(5),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \^reg_op2_reg[31]_0\(13),
      I3 => \mem_wordsize_reg_n_0_[0]\,
      I4 => \^reg_op2_reg[31]_0\(29),
      O => \mem_wdata[29]_i_1_n_0\
    );
\mem_wdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(6),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \^reg_op2_reg[31]_0\(14),
      I3 => \mem_wordsize_reg_n_0_[0]\,
      I4 => \^reg_op2_reg[31]_0\(30),
      O => \mem_wdata[30]_i_1_n_0\
    );
\mem_wdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \^trap_reg_0\,
      I1 => resetn,
      I2 => \^mem_do_wdata\,
      I3 => \mem_state_reg_n_0_[1]\,
      I4 => \mem_state_reg_n_0_[0]\,
      O => \mem_wdata[31]_i_1_n_0\
    );
\mem_wdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(7),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \^reg_op2_reg[31]_0\(15),
      I3 => \mem_wordsize_reg_n_0_[0]\,
      I4 => \^reg_op2_reg[31]_0\(31),
      O => \mem_wdata[31]_i_2_n_0\
    );
\mem_wdata[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(0),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \^reg_op2_reg[31]_0\(8),
      O => \mem_wdata[8]_i_1_n_0\
    );
\mem_wdata[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_op2_reg[31]_0\(1),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \^reg_op2_reg[31]_0\(9),
      O => \mem_wdata[9]_i_1_n_0\
    );
\mem_wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \^reg_op2_reg[31]_0\(0),
      Q => mem_axi_wdata(0),
      R => '0'
    );
\mem_wdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[10]_i_1_n_0\,
      Q => mem_axi_wdata(10),
      R => '0'
    );
\mem_wdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[11]_i_1_n_0\,
      Q => mem_axi_wdata(11),
      R => '0'
    );
\mem_wdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[12]_i_1_n_0\,
      Q => mem_axi_wdata(12),
      R => '0'
    );
\mem_wdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[13]_i_1_n_0\,
      Q => mem_axi_wdata(13),
      R => '0'
    );
\mem_wdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[14]_i_1_n_0\,
      Q => mem_axi_wdata(14),
      R => '0'
    );
\mem_wdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[15]_i_1_n_0\,
      Q => mem_axi_wdata(15),
      R => '0'
    );
\mem_wdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[16]_i_1_n_0\,
      Q => mem_axi_wdata(16),
      R => '0'
    );
\mem_wdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[17]_i_1_n_0\,
      Q => mem_axi_wdata(17),
      R => '0'
    );
\mem_wdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[18]_i_1_n_0\,
      Q => mem_axi_wdata(18),
      R => '0'
    );
\mem_wdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[19]_i_1_n_0\,
      Q => mem_axi_wdata(19),
      R => '0'
    );
\mem_wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \^reg_op2_reg[31]_0\(1),
      Q => mem_axi_wdata(1),
      R => '0'
    );
\mem_wdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[20]_i_1_n_0\,
      Q => mem_axi_wdata(20),
      R => '0'
    );
\mem_wdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[21]_i_1_n_0\,
      Q => mem_axi_wdata(21),
      R => '0'
    );
\mem_wdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[22]_i_1_n_0\,
      Q => mem_axi_wdata(22),
      R => '0'
    );
\mem_wdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[23]_i_1_n_0\,
      Q => mem_axi_wdata(23),
      R => '0'
    );
\mem_wdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[24]_i_1_n_0\,
      Q => mem_axi_wdata(24),
      R => '0'
    );
\mem_wdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[25]_i_1_n_0\,
      Q => mem_axi_wdata(25),
      R => '0'
    );
\mem_wdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[26]_i_1_n_0\,
      Q => mem_axi_wdata(26),
      R => '0'
    );
\mem_wdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[27]_i_1_n_0\,
      Q => mem_axi_wdata(27),
      R => '0'
    );
\mem_wdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[28]_i_1_n_0\,
      Q => mem_axi_wdata(28),
      R => '0'
    );
\mem_wdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[29]_i_1_n_0\,
      Q => mem_axi_wdata(29),
      R => '0'
    );
\mem_wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \^reg_op2_reg[31]_0\(2),
      Q => mem_axi_wdata(2),
      R => '0'
    );
\mem_wdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[30]_i_1_n_0\,
      Q => mem_axi_wdata(30),
      R => '0'
    );
\mem_wdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[31]_i_2_n_0\,
      Q => mem_axi_wdata(31),
      R => '0'
    );
\mem_wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \^reg_op2_reg[31]_0\(3),
      Q => mem_axi_wdata(3),
      R => '0'
    );
\mem_wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \^reg_op2_reg[31]_0\(4),
      Q => mem_axi_wdata(4),
      R => '0'
    );
\mem_wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \^reg_op2_reg[31]_0\(5),
      Q => mem_axi_wdata(5),
      R => '0'
    );
\mem_wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \^reg_op2_reg[31]_0\(6),
      Q => mem_axi_wdata(6),
      R => '0'
    );
\mem_wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \^reg_op2_reg[31]_0\(7),
      Q => mem_axi_wdata(7),
      R => '0'
    );
\mem_wdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[8]_i_1_n_0\,
      Q => mem_axi_wdata(8),
      R => '0'
    );
\mem_wdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_wdata[31]_i_1_n_0\,
      D => \mem_wdata[9]_i_1_n_0\,
      Q => mem_axi_wdata(9),
      R => '0'
    );
\mem_wordsize[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => mem_wordsize(0),
      I1 => pcpi_mul_n_29,
      I2 => resetn,
      I3 => \^latched_is_lu\,
      I4 => \mem_wordsize_reg_n_0_[0]\,
      O => \mem_wordsize[0]_i_1_n_0\
    );
\mem_wordsize[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0E0EFE0"
    )
        port map (
      I0 => instr_lhu,
      I1 => \^instr_lh\,
      I2 => \cpu_state_reg_n_0_[0]\,
      I3 => instr_sh,
      I4 => \^q\(2),
      O => mem_wordsize(0)
    );
\mem_wordsize[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => mem_wordsize(1),
      I1 => pcpi_mul_n_29,
      I2 => resetn,
      I3 => \^latched_is_lu\,
      I4 => \mem_wordsize_reg_n_0_[1]\,
      O => \mem_wordsize[1]_i_1_n_0\
    );
\mem_wordsize[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0E0EFE0"
    )
        port map (
      I0 => instr_lbu,
      I1 => \^instr_lb\,
      I2 => \cpu_state_reg_n_0_[0]\,
      I3 => instr_sb,
      I4 => \^q\(2),
      O => mem_wordsize(1)
    );
\mem_wordsize[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBAAAA"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^mem_do_rdata\,
      I2 => pcpi_mul_n_27,
      I3 => \^mem_do_prefetch_reg_0\,
      I4 => \cpu_state_reg_n_0_[0]\,
      O => \^latched_is_lu\
    );
\mem_wordsize_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_wordsize[0]_i_1_n_0\,
      Q => \mem_wordsize_reg_n_0_[0]\,
      R => '0'
    );
\mem_wordsize_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \mem_wordsize[1]_i_1_n_0\,
      Q => \mem_wordsize_reg_n_0_[1]\,
      R => '0'
    );
\mem_wstrb[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"03F7"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(0),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \mem_wordsize_reg_n_0_[0]\,
      I3 => \^reg_op1_reg[31]_0\(1),
      O => \mem_wstrb[0]_i_1_n_0\
    );
\mem_wstrb[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"03FB"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(0),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \mem_wordsize_reg_n_0_[0]\,
      I3 => \^reg_op1_reg[31]_0\(1),
      O => \mem_wstrb[1]_i_1_n_0\
    );
\mem_wstrb[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D1F1"
    )
        port map (
      I0 => \mem_wordsize_reg_n_0_[1]\,
      I1 => \mem_wordsize_reg_n_0_[0]\,
      I2 => \^reg_op1_reg[31]_0\(1),
      I3 => \^reg_op1_reg[31]_0\(0),
      O => \mem_wstrb[2]_i_1_n_0\
    );
\mem_wstrb[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010000000100"
    )
        port map (
      I0 => \mem_state_reg_n_0_[1]\,
      I1 => \mem_state_reg_n_0_[0]\,
      I2 => \^trap_reg_0\,
      I3 => resetn,
      I4 => \mem_addr[31]_i_4_n_0\,
      I5 => \^mem_do_rdata\,
      O => \mem_wstrb[3]_i_1_n_0\
    );
\mem_wstrb[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB03"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(0),
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => \mem_wordsize_reg_n_0_[0]\,
      I3 => \^reg_op1_reg[31]_0\(1),
      O => \mem_wstrb[3]_i_2_n_0\
    );
\mem_wstrb_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_wstrb[0]_i_1_n_0\,
      Q => \^mem_wstrb_reg[0]_0\,
      R => \mem_wstrb[3]_i_1_n_0\
    );
\mem_wstrb_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_wstrb[1]_i_1_n_0\,
      Q => \^mem_wstrb_reg[1]_0\,
      R => \mem_wstrb[3]_i_1_n_0\
    );
\mem_wstrb_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_wstrb[2]_i_1_n_0\,
      Q => \^mem_wstrb_reg[2]_0\,
      R => \mem_wstrb[3]_i_1_n_0\
    );
\mem_wstrb_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_addr[31]_i_1_n_0\,
      D => \mem_wstrb[3]_i_2_n_0\,
      Q => \^mem_wstrb_reg[3]_0\,
      R => \mem_wstrb[3]_i_1_n_0\
    );
\pcpi_insn[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => decoder_trigger_reg_n_0,
      I1 => decoder_pseudo_trigger_reg_n_0,
      O => \^is_lui_auipc_jal_jalr_addi_add_sub0\
    );
\pcpi_insn_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[0]\,
      Q => \^pcpi_insn_reg[31]_0\(0),
      R => '0'
    );
\pcpi_insn_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[10]\,
      Q => \^pcpi_insn_reg[31]_0\(10),
      R => '0'
    );
\pcpi_insn_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[11]\,
      Q => \^pcpi_insn_reg[31]_0\(11),
      R => '0'
    );
\pcpi_insn_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => p_0_in(0),
      Q => \^pcpi_insn_reg[31]_0\(12),
      R => '0'
    );
\pcpi_insn_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => p_0_in(1),
      Q => \^pcpi_insn_reg[31]_0\(13),
      R => '0'
    );
\pcpi_insn_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => p_0_in(2),
      Q => \^pcpi_insn_reg[31]_0\(14),
      R => '0'
    );
\pcpi_insn_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[15]\,
      Q => \^pcpi_insn_reg[31]_0\(15),
      R => '0'
    );
\pcpi_insn_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[16]\,
      Q => \^pcpi_insn_reg[31]_0\(16),
      R => '0'
    );
\pcpi_insn_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[17]\,
      Q => \^pcpi_insn_reg[31]_0\(17),
      R => '0'
    );
\pcpi_insn_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[18]\,
      Q => \^pcpi_insn_reg[31]_0\(18),
      R => '0'
    );
\pcpi_insn_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[19]\,
      Q => \^pcpi_insn_reg[31]_0\(19),
      R => '0'
    );
\pcpi_insn_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[1]\,
      Q => \^pcpi_insn_reg[31]_0\(1),
      R => '0'
    );
\pcpi_insn_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[20]\,
      Q => \^pcpi_insn_reg[31]_0\(20),
      R => '0'
    );
\pcpi_insn_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[21]\,
      Q => \^pcpi_insn_reg[31]_0\(21),
      R => '0'
    );
\pcpi_insn_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[22]\,
      Q => \^pcpi_insn_reg[31]_0\(22),
      R => '0'
    );
\pcpi_insn_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[23]\,
      Q => \^pcpi_insn_reg[31]_0\(23),
      R => '0'
    );
\pcpi_insn_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[24]\,
      Q => \^pcpi_insn_reg[31]_0\(24),
      R => '0'
    );
\pcpi_insn_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[25]\,
      Q => \^pcpi_insn_reg[31]_0\(25),
      R => '0'
    );
\pcpi_insn_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[26]\,
      Q => \^pcpi_insn_reg[31]_0\(26),
      R => '0'
    );
\pcpi_insn_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[27]\,
      Q => \^pcpi_insn_reg[31]_0\(27),
      R => '0'
    );
\pcpi_insn_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[28]\,
      Q => \^pcpi_insn_reg[31]_0\(28),
      R => '0'
    );
\pcpi_insn_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[29]\,
      Q => \^pcpi_insn_reg[31]_0\(29),
      R => '0'
    );
\pcpi_insn_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[2]\,
      Q => \^pcpi_insn_reg[31]_0\(2),
      R => '0'
    );
\pcpi_insn_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[30]\,
      Q => \^pcpi_insn_reg[31]_0\(30),
      R => '0'
    );
\pcpi_insn_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[31]\,
      Q => \^pcpi_insn_reg[31]_0\(31),
      R => '0'
    );
\pcpi_insn_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[3]\,
      Q => \^pcpi_insn_reg[31]_0\(3),
      R => '0'
    );
\pcpi_insn_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[4]\,
      Q => \^pcpi_insn_reg[31]_0\(4),
      R => '0'
    );
\pcpi_insn_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[5]\,
      Q => \^pcpi_insn_reg[31]_0\(5),
      R => '0'
    );
\pcpi_insn_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[6]\,
      Q => \^pcpi_insn_reg[31]_0\(6),
      R => '0'
    );
\pcpi_insn_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[7]\,
      Q => \^pcpi_insn_reg[31]_0\(7),
      R => '0'
    );
\pcpi_insn_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[8]\,
      Q => \^pcpi_insn_reg[31]_0\(8),
      R => '0'
    );
\pcpi_insn_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^is_lui_auipc_jal_jalr_addi_add_sub0\,
      D => \mem_rdata_q_reg_n_0_[9]\,
      Q => \^pcpi_insn_reg[31]_0\(9),
      R => '0'
    );
pcpi_mul: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32_pcpi_fast_mul
     port map (
      CO(0) => pcpi_mul_n_97,
      D(31) => pcpi_mul_n_32,
      D(30) => pcpi_mul_n_33,
      D(29) => pcpi_mul_n_34,
      D(28) => pcpi_mul_n_35,
      D(27) => pcpi_mul_n_36,
      D(26) => pcpi_mul_n_37,
      D(25) => pcpi_mul_n_38,
      D(24) => pcpi_mul_n_39,
      D(23) => pcpi_mul_n_40,
      D(22) => pcpi_mul_n_41,
      D(21) => pcpi_mul_n_42,
      D(20) => pcpi_mul_n_43,
      D(19) => pcpi_mul_n_44,
      D(18) => pcpi_mul_n_45,
      D(17) => pcpi_mul_n_46,
      D(16) => pcpi_mul_n_47,
      D(15) => pcpi_mul_n_48,
      D(14) => pcpi_mul_n_49,
      D(13) => pcpi_mul_n_50,
      D(12) => pcpi_mul_n_51,
      D(11) => pcpi_mul_n_52,
      D(10) => pcpi_mul_n_53,
      D(9) => pcpi_mul_n_54,
      D(8) => pcpi_mul_n_55,
      D(7) => pcpi_mul_n_56,
      D(6) => pcpi_mul_n_57,
      D(5) => pcpi_mul_n_58,
      D(4) => pcpi_mul_n_59,
      D(3) => pcpi_mul_n_60,
      D(2) => pcpi_mul_n_61,
      D(1) => pcpi_mul_n_62,
      D(0) => pcpi_mul_n_63,
      DI(0) => \^instr_sub\,
      E(0) => pcpi_mul_n_26,
      O(2) => pcpi_mul_n_98,
      O(1) => pcpi_mul_n_99,
      O(0) => pcpi_mul_n_100,
      Q(6) => \cpu_state_reg_n_0_[7]\,
      Q(5) => \^q\(2),
      Q(4) => \cpu_state_reg_n_0_[5]\,
      Q(3) => \^q\(1),
      Q(2) => \cpu_state_reg_n_0_[2]\,
      Q(1) => \^q\(0),
      Q(0) => \cpu_state_reg_n_0_[0]\,
      SS(0) => SS(0),
      \active_reg[1]_0\ => \active_reg[1]_0\,
      clk => clk,
      \cpu_state_reg[0]\ => \^is_beq_bne_blt_bge_bltu_bgeu\,
      \cpu_state_reg[0]_0\ => \cpu_state[7]_i_6_n_0\,
      \cpu_state_reg[0]_1\ => \cpu_state[7]_i_7_n_0\,
      \cpu_state_reg[0]_2\ => \cpu_state[7]_i_8_n_0\,
      \cpu_state_reg[6]\ => \cpu_state[6]_i_3_n_0\,
      \cpu_state_reg[7]\ => \cpu_state_reg[7]_0\,
      \cpu_state_reg[7]_0\ => \^instr_jalr\,
      decoded_rs1(4 downto 0) => decoded_rs1(4 downto 0),
      \decoded_rs2__0\(4 downto 0) => \decoded_rs2__0\(4 downto 0),
      \decoded_rs2_reg[4]\ => pcpi_mul_n_23,
      instr_add => \^instr_add\,
      instr_addi => \^instr_addi\,
      instr_and => instr_and,
      instr_andi => instr_andi,
      instr_auipc => instr_auipc,
      instr_beq => instr_beq,
      instr_bge => instr_bge,
      instr_bgeu => instr_bgeu,
      instr_blt => instr_blt,
      instr_bltu => instr_bltu,
      instr_bne => instr_bne,
      instr_ecall_ebreak => \^instr_ecall_ebreak\,
      instr_jal => instr_jal,
      instr_jal_reg => \^instr_jal_reg_0\,
      instr_jal_reg_0 => \^mem_valid\,
      instr_jalr_reg => pcpi_mul_n_22,
      instr_lb => \^instr_lb\,
      instr_lb_reg => pcpi_mul_n_1,
      instr_lbu => instr_lbu,
      instr_lh => \^instr_lh\,
      instr_lhu => instr_lhu,
      instr_lui => instr_lui,
      instr_lw => instr_lw,
      instr_or => instr_or,
      instr_or_reg => pcpi_mul_n_94,
      instr_ori => instr_ori,
      instr_rdcycle => instr_rdcycle,
      instr_rdcycleh => instr_rdcycleh,
      instr_rdinstr => instr_rdinstr,
      instr_rdinstr_reg => pcpi_mul_n_96,
      instr_rdinstrh => instr_rdinstrh,
      instr_sb => instr_sb,
      instr_sh => instr_sh,
      instr_sll => instr_sll,
      instr_sll_reg => pcpi_mul_n_90,
      instr_slli => instr_slli,
      instr_slt => instr_slt,
      instr_slti => instr_slti,
      instr_slti_reg => pcpi_mul_n_0,
      instr_sltiu => instr_sltiu,
      instr_sltu => instr_sltu,
      instr_sra => instr_sra,
      instr_sra_reg => pcpi_mul_n_3,
      instr_srai => instr_srai,
      instr_srai_reg => pcpi_mul_n_2,
      instr_srl => instr_srl,
      instr_srli => instr_srli,
      instr_srli_reg => pcpi_mul_n_92,
      instr_sw => instr_sw,
      instr_xor => instr_xor,
      instr_xor_reg => pcpi_mul_n_95,
      instr_xori => instr_xori,
      is_jalr_addi_slti_sltiu_xori_ori_andi => is_jalr_addi_slti_sltiu_xori_ori_andi,
      is_lui_auipc_jal => is_lui_auipc_jal,
      is_lui_auipc_jal_reg => pcpi_mul_n_81,
      latched_store_reg => \cpu_state[3]_i_3_n_0\,
      latched_store_reg_0 => latched_store_i_6_n_0,
      latched_store_reg_1 => latched_store_i_7_n_0,
      mem_axi_bvalid => mem_axi_bvalid,
      mem_axi_rvalid => mem_axi_rvalid,
      mem_do_prefetch_reg => pcpi_mul_n_29,
      mem_do_rdata_reg => \^mem_do_rdata\,
      mem_do_rdata_reg_0 => \^mem_do_wdata\,
      mem_do_rdata_reg_1 => \mem_state_reg_n_0_[0]\,
      mem_do_rdata_reg_2 => \mem_state_reg_n_0_[1]\,
      mem_do_rinst0 => mem_do_rinst0,
      mem_do_rinst_i_2_0 => mem_do_rinst_i_15_n_0,
      mem_do_rinst_reg => pcpi_mul_n_25,
      mem_do_rinst_reg_0 => mem_do_rinst_reg_n_0,
      mem_do_rinst_reg_1 => mem_do_rinst_i_4_n_0,
      mem_do_rinst_reg_2 => mem_do_rinst_i_5_n_0,
      mem_do_rinst_reg_3 => mem_do_rinst_i_6_n_0,
      mem_do_rinst_reg_4 => mem_do_rinst_i_7_n_0,
      mem_do_rinst_reg_5 => mem_do_rinst_i_8_n_0,
      mem_do_rinst_reg_6 => mem_do_rinst_i_10_n_0,
      mem_do_rinst_reg_7 => mem_do_rinst_i_11_n_0,
      mem_do_rinst_reg_8 => mem_do_rinst_i_12_n_0,
      mem_do_rinst_reg_9 => mem_do_rinst_i_13_n_0,
      \mem_state_reg[0]\ => \^mem_state_reg[0]_0\,
      mem_valid_reg => pcpi_mul_n_31,
      pcpi_ready => \active_reg[1]\(0),
      pcpi_rs1(16) => pcpi_mul_n_64,
      pcpi_rs1(15) => pcpi_mul_n_65,
      pcpi_rs1(14) => pcpi_mul_n_66,
      pcpi_rs1(13) => pcpi_mul_n_67,
      pcpi_rs1(12) => pcpi_mul_n_68,
      pcpi_rs1(11) => pcpi_mul_n_69,
      pcpi_rs1(10) => pcpi_mul_n_70,
      pcpi_rs1(9) => pcpi_mul_n_71,
      pcpi_rs1(8) => pcpi_mul_n_72,
      pcpi_rs1(7) => pcpi_mul_n_73,
      pcpi_rs1(6) => pcpi_mul_n_74,
      pcpi_rs1(5) => pcpi_mul_n_75,
      pcpi_rs1(4) => pcpi_mul_n_76,
      pcpi_rs1(3) => pcpi_mul_n_77,
      pcpi_rs1(2) => pcpi_mul_n_78,
      pcpi_rs1(1) => pcpi_mul_n_79,
      pcpi_rs1(0) => pcpi_mul_n_80,
      pcpi_rs2(16 downto 0) => reg_op2(16 downto 0),
      pcpi_timeout => \^pcpi_timeout\,
      rd0_0 => \decoded_imm_reg_n_0_[16]\,
      rd0_1 => \decoded_imm_reg_n_0_[15]\,
      rd0_2 => \decoded_imm_reg_n_0_[14]\,
      rd0_3 => \decoded_imm_reg_n_0_[13]\,
      rd0_4 => \decoded_imm_reg_n_0_[12]\,
      rd0_5(11) => \decoded_imm_reg_n_0_[11]\,
      rd0_5(10) => \decoded_imm_reg_n_0_[10]\,
      rd0_5(9) => \decoded_imm_reg_n_0_[9]\,
      rd0_5(8) => \decoded_imm_reg_n_0_[8]\,
      rd0_5(7) => \decoded_imm_reg_n_0_[7]\,
      rd0_5(6) => \decoded_imm_reg_n_0_[6]\,
      rd0_5(5) => \decoded_imm_reg_n_0_[5]\,
      rd0_5(4) => \decoded_imm_reg_n_0_[4]\,
      rd0_5(3) => \decoded_imm_reg_n_0_[3]\,
      rd0_5(2) => \decoded_imm_reg_n_0_[2]\,
      rd0_5(1) => \decoded_imm_reg_n_0_[1]\,
      rd0_5(0) => \decoded_imm_reg_n_0_[0]\,
      \rd0__0_0\ => \^mem_do_prefetch_reg_0\,
      \rd0__0_1\(15) => \reg_pc_reg_n_0_[16]\,
      \rd0__0_1\(14) => \reg_pc_reg_n_0_[15]\,
      \rd0__0_1\(13) => \reg_pc_reg_n_0_[14]\,
      \rd0__0_1\(12) => \reg_pc_reg_n_0_[13]\,
      \rd0__0_1\(11) => \reg_pc_reg_n_0_[12]\,
      \rd0__0_1\(10) => \reg_pc_reg_n_0_[11]\,
      \rd0__0_1\(9) => \reg_pc_reg_n_0_[10]\,
      \rd0__0_1\(8) => \reg_pc_reg_n_0_[9]\,
      \rd0__0_1\(7) => \reg_pc_reg_n_0_[8]\,
      \rd0__0_1\(6) => \reg_pc_reg_n_0_[7]\,
      \rd0__0_1\(5) => \reg_pc_reg_n_0_[6]\,
      \rd0__0_1\(4) => \reg_pc_reg_n_0_[5]\,
      \rd0__0_1\(3) => \reg_pc_reg_n_0_[4]\,
      \rd0__0_1\(2) => \reg_pc_reg_n_0_[3]\,
      \rd0__0_1\(1) => \reg_pc_reg_n_0_[2]\,
      \rd0__0_1\(0) => \reg_pc_reg_n_0_[1]\,
      rd_reg_0(31 downto 0) => \^reg_op1_reg[31]_0\(31 downto 0),
      \rd_reg__0_0\(16 downto 10) => \^pcpi_insn_reg[31]_0\(31 downto 25),
      \rd_reg__0_0\(9 downto 7) => \^pcpi_insn_reg[31]_0\(14 downto 12),
      \rd_reg__0_0\(6 downto 0) => \^pcpi_insn_reg[31]_0\(6 downto 0),
      \rd_reg__0_1\(14 downto 0) => \^reg_op2_reg[31]_0\(31 downto 17),
      \reg_op1_reg[18]\ => pcpi_mul_n_93,
      \reg_op1_reg[19]\ => pcpi_mul_n_91,
      \reg_op1_reg[19]_i_5_0\ => \decoded_imm_reg_n_0_[17]\,
      \reg_op1_reg[19]_i_5_1\ => \decoded_imm_reg_n_0_[18]\,
      \reg_op1_reg[19]_i_5_2\ => \decoded_imm_reg_n_0_[19]\,
      \reg_op1_reg[20]\ => pcpi_mul_n_89,
      reg_out1(16 downto 0) => reg_out1(16 downto 0),
      \reg_out_reg[0]\ => \reg_out[0]_i_2_n_0\,
      \reg_out_reg[0]_0\ => \reg_out[0]_i_3_n_0\,
      \reg_out_reg[10]\ => \reg_out[10]_i_2_n_0\,
      \reg_out_reg[10]_0\ => \reg_out[10]_i_4_n_0\,
      \reg_out_reg[10]_1\ => \reg_out[10]_i_5_n_0\,
      \reg_out_reg[11]\ => \reg_out[11]_i_2_n_0\,
      \reg_out_reg[11]_0\ => \reg_out[11]_i_4_n_0\,
      \reg_out_reg[11]_1\ => \reg_out[11]_i_5_n_0\,
      \reg_out_reg[12]\ => \reg_out[12]_i_2_n_0\,
      \reg_out_reg[12]_0\ => \reg_out[12]_i_4_n_0\,
      \reg_out_reg[12]_1\ => \reg_out[12]_i_5_n_0\,
      \reg_out_reg[13]\ => \reg_out[13]_i_2_n_0\,
      \reg_out_reg[13]_0\ => \reg_out[13]_i_4_n_0\,
      \reg_out_reg[13]_1\ => \reg_out[13]_i_5_n_0\,
      \reg_out_reg[14]\ => \reg_out[14]_i_2_n_0\,
      \reg_out_reg[14]_0\ => \reg_out[14]_i_4_n_0\,
      \reg_out_reg[14]_1\ => \reg_out[14]_i_5_n_0\,
      \reg_out_reg[15]\ => \reg_out[15]_i_2_n_0\,
      \reg_out_reg[15]_0\ => \reg_out[15]_i_4_n_0\,
      \reg_out_reg[15]_1\ => \reg_out[15]_i_5_n_0\,
      \reg_out_reg[16]\ => \reg_out[16]_i_2_n_0\,
      \reg_out_reg[16]_0\ => \reg_out[16]_i_4_n_0\,
      \reg_out_reg[16]_1\ => \reg_out[16]_i_5_n_0\,
      \reg_out_reg[17]\ => \reg_out[17]_i_2_n_0\,
      \reg_out_reg[17]_0\ => \reg_out[17]_i_4_n_0\,
      \reg_out_reg[17]_1\ => \reg_out[17]_i_5_n_0\,
      \reg_out_reg[18]\ => \reg_out[18]_i_2_n_0\,
      \reg_out_reg[18]_0\ => \reg_out[18]_i_4_n_0\,
      \reg_out_reg[18]_1\ => \reg_out[18]_i_5_n_0\,
      \reg_out_reg[19]\ => \reg_out[19]_i_2_n_0\,
      \reg_out_reg[19]_0\ => \reg_out[19]_i_4_n_0\,
      \reg_out_reg[19]_1\ => \reg_out[19]_i_5_n_0\,
      \reg_out_reg[1]\ => \reg_out[1]_i_2_n_0\,
      \reg_out_reg[1]_0\ => \reg_out[1]_i_3_n_0\,
      \reg_out_reg[20]\ => \reg_out[20]_i_2_n_0\,
      \reg_out_reg[20]_0\ => \reg_out[20]_i_3_n_0\,
      \reg_out_reg[20]_1\ => \reg_out[20]_i_5_n_0\,
      \reg_out_reg[21]\ => \reg_out[21]_i_2_n_0\,
      \reg_out_reg[21]_0\ => \reg_out[21]_i_4_n_0\,
      \reg_out_reg[21]_1\ => \reg_out[21]_i_5_n_0\,
      \reg_out_reg[22]\ => \reg_out[22]_i_2_n_0\,
      \reg_out_reg[22]_0\ => \reg_out[22]_i_4_n_0\,
      \reg_out_reg[22]_1\ => \reg_out[22]_i_5_n_0\,
      \reg_out_reg[23]\ => \reg_out[23]_i_2_n_0\,
      \reg_out_reg[23]_0\ => \reg_out[23]_i_4_n_0\,
      \reg_out_reg[23]_1\ => \reg_out[23]_i_5_n_0\,
      \reg_out_reg[24]\ => \reg_out[24]_i_2_n_0\,
      \reg_out_reg[24]_0\ => \reg_out[24]_i_4_n_0\,
      \reg_out_reg[24]_1\ => \reg_out[24]_i_5_n_0\,
      \reg_out_reg[25]\ => \reg_out[25]_i_2_n_0\,
      \reg_out_reg[25]_0\ => \reg_out[25]_i_4_n_0\,
      \reg_out_reg[25]_1\ => \reg_out[25]_i_5_n_0\,
      \reg_out_reg[26]\ => \reg_out[26]_i_2_n_0\,
      \reg_out_reg[26]_0\ => \reg_out[26]_i_4_n_0\,
      \reg_out_reg[26]_1\ => \reg_out[26]_i_5_n_0\,
      \reg_out_reg[27]\ => \reg_out[27]_i_2_n_0\,
      \reg_out_reg[27]_0\ => \reg_out[27]_i_4_n_0\,
      \reg_out_reg[27]_1\ => \reg_out[27]_i_5_n_0\,
      \reg_out_reg[28]\ => \reg_out[28]_i_2_n_0\,
      \reg_out_reg[28]_0\ => \reg_out[28]_i_4_n_0\,
      \reg_out_reg[28]_1\ => \reg_out[28]_i_5_n_0\,
      \reg_out_reg[29]\ => \reg_out[29]_i_2_n_0\,
      \reg_out_reg[29]_0\ => \reg_out[29]_i_4_n_0\,
      \reg_out_reg[29]_1\ => \reg_out[29]_i_5_n_0\,
      \reg_out_reg[2]\ => \reg_out[2]_i_2_n_0\,
      \reg_out_reg[2]_0\ => \reg_out[2]_i_3_n_0\,
      \reg_out_reg[30]\ => \reg_out[30]_i_2_n_0\,
      \reg_out_reg[30]_0\ => \reg_out[30]_i_4_n_0\,
      \reg_out_reg[30]_1\ => \reg_out[30]_i_5_n_0\,
      \reg_out_reg[31]\ => \^cpu_state_reg[5]_1\,
      \reg_out_reg[31]_0\ => \reg_out[31]_i_2_n_0\,
      \reg_out_reg[31]_1\ => \reg_out[31]_i_4_n_0\,
      \reg_out_reg[31]_2\ => \reg_out[31]_i_5_n_0\,
      \reg_out_reg[3]\ => \reg_out[3]_i_2_n_0\,
      \reg_out_reg[3]_0\ => \reg_out[3]_i_3_n_0\,
      \reg_out_reg[4]\ => \reg_out[4]_i_2_n_0\,
      \reg_out_reg[4]_0\ => \reg_out[4]_i_3_n_0\,
      \reg_out_reg[5]\ => \reg_out[5]_i_2_n_0\,
      \reg_out_reg[5]_0\ => \reg_out[5]_i_3_n_0\,
      \reg_out_reg[6]\ => \reg_out[6]_i_2_n_0\,
      \reg_out_reg[6]_0\ => \reg_out[6]_i_3_n_0\,
      \reg_out_reg[7]\ => \reg_out[7]_i_2_n_0\,
      \reg_out_reg[7]_0\ => \reg_out[7]_i_3_n_0\,
      \reg_out_reg[8]\ => \reg_out[8]_i_2_n_0\,
      \reg_out_reg[8]_0\ => \reg_out[8]_i_4_n_0\,
      \reg_out_reg[8]_1\ => \reg_out[8]_i_5_n_0\,
      \reg_out_reg[9]\ => \reg_out[9]_i_2_n_0\,
      \reg_out_reg[9]_0\ => \reg_out[9]_i_4_n_0\,
      \reg_out_reg[9]_1\ => \reg_out[9]_i_5_n_0\,
      reg_sh1(16 downto 0) => reg_sh1(16 downto 0),
      \reg_sh_reg[0]\(4) => \reg_sh_reg_n_0_[4]\,
      \reg_sh_reg[0]\(3) => \reg_sh_reg_n_0_[3]\,
      \reg_sh_reg[0]\(2) => \reg_sh_reg_n_0_[2]\,
      \reg_sh_reg[0]\(1) => \reg_sh_reg_n_0_[1]\,
      \reg_sh_reg[0]\(0) => \reg_sh_reg_n_0_[0]\,
      \reg_sh_reg[4]\ => pcpi_mul_n_82,
      resetn => resetn,
      resetn_0 => pcpi_mul_n_24,
      resetn_1 => pcpi_mul_n_27,
      resetn_2(0) => pcpi_mul_n_28,
      resetn_3(1 downto 0) => cpu_state0_out(7 downto 6),
      resetn_4 => pcpi_mul_n_87
    );
\pcpi_timeout_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pcpi_timeout_counter_reg(0),
      O => pcpi_timeout_counter0(0)
    );
\pcpi_timeout_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pcpi_timeout_counter_reg(0),
      I1 => pcpi_timeout_counter_reg(1),
      O => \pcpi_timeout_counter[1]_i_1_n_0\
    );
\pcpi_timeout_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => pcpi_timeout_counter_reg(2),
      I1 => pcpi_timeout_counter_reg(1),
      I2 => pcpi_timeout_counter_reg(0),
      O => pcpi_timeout_counter0(2)
    );
\pcpi_timeout_counter[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pcpi_timeout_counter_reg(3),
      I1 => pcpi_timeout_counter_reg(1),
      I2 => pcpi_timeout_counter_reg(0),
      I3 => pcpi_timeout_counter_reg(2),
      O => \pcpi_timeout_counter[3]_i_2_n_0\
    );
\pcpi_timeout_counter[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => pcpi_timeout_counter_reg(3),
      I1 => pcpi_timeout_counter_reg(2),
      I2 => pcpi_timeout_counter_reg(0),
      I3 => pcpi_timeout_counter_reg(1),
      O => pcpi_timeout_counter0(3)
    );
\pcpi_timeout_counter_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pcpi_timeout_counter[3]_i_2_n_0\,
      D => pcpi_timeout_counter0(0),
      Q => pcpi_timeout_counter_reg(0),
      S => SS(0)
    );
\pcpi_timeout_counter_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pcpi_timeout_counter[3]_i_2_n_0\,
      D => \pcpi_timeout_counter[1]_i_1_n_0\,
      Q => pcpi_timeout_counter_reg(1),
      S => SS(0)
    );
\pcpi_timeout_counter_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pcpi_timeout_counter[3]_i_2_n_0\,
      D => pcpi_timeout_counter0(2),
      Q => pcpi_timeout_counter_reg(2),
      S => SS(0)
    );
\pcpi_timeout_counter_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \pcpi_timeout_counter[3]_i_2_n_0\,
      D => pcpi_timeout_counter0(3),
      Q => pcpi_timeout_counter_reg(3),
      S => SS(0)
    );
pcpi_timeout_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => pcpi_timeout_counter_reg(2),
      I1 => pcpi_timeout_counter_reg(0),
      I2 => pcpi_timeout_counter_reg(1),
      I3 => pcpi_timeout_counter_reg(3),
      O => pcpi_timeout_i_1_n_0
    );
pcpi_timeout_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_timeout_i_1_n_0,
      Q => \^pcpi_timeout\,
      R => pcpi_mul_n_24
    );
pcpi_valid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => pcpi_mul_n_22,
      I1 => \cpu_state_reg_n_0_[5]\,
      O => \^cpu_state_reg[5]_1\
    );
pcpi_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_valid_reg_0,
      Q => pcpi_valid,
      R => pcpi_mul_n_24
    );
\reg_next_pc[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => current_pc(12),
      I1 => decoder_trigger_reg_n_0,
      I2 => instr_jal,
      I3 => decoded_imm_uj(12),
      O => \reg_next_pc[12]_i_2_n_0\
    );
\reg_next_pc[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => current_pc(11),
      I1 => decoder_trigger_reg_n_0,
      I2 => instr_jal,
      I3 => \decoded_rs2__0\(0),
      O => \reg_next_pc[12]_i_3_n_0\
    );
\reg_next_pc[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => current_pc(10),
      I1 => decoder_trigger_reg_n_0,
      I2 => instr_jal,
      I3 => decoded_imm_uj(10),
      O => \reg_next_pc[12]_i_4_n_0\
    );
\reg_next_pc[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => current_pc(9),
      I1 => decoder_trigger_reg_n_0,
      I2 => instr_jal,
      I3 => decoded_imm_uj(9),
      O => \reg_next_pc[12]_i_5_n_0\
    );
\reg_next_pc[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => current_pc(16),
      I1 => decoder_trigger_reg_n_0,
      I2 => instr_jal,
      I3 => decoded_rs1(1),
      O => \reg_next_pc[16]_i_2_n_0\
    );
\reg_next_pc[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => current_pc(15),
      I1 => decoder_trigger_reg_n_0,
      I2 => instr_jal,
      I3 => decoded_rs1(0),
      O => \reg_next_pc[16]_i_3_n_0\
    );
\reg_next_pc[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => current_pc(14),
      I1 => decoder_trigger_reg_n_0,
      I2 => instr_jal,
      I3 => decoded_imm_uj(14),
      O => \reg_next_pc[16]_i_4_n_0\
    );
\reg_next_pc[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => current_pc(13),
      I1 => decoder_trigger_reg_n_0,
      I2 => instr_jal,
      I3 => decoded_imm_uj(13),
      O => \reg_next_pc[16]_i_5_n_0\
    );
\reg_next_pc[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => current_pc(1),
      I1 => decoder_trigger_reg_n_0,
      I2 => instr_jal,
      I3 => \decoded_rs2__0\(1),
      O => reg_next_pc1_in(1)
    );
\reg_next_pc[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \reg_next_pc_reg_n_0_[20]\,
      I1 => \mem_addr[31]_i_5_n_0\,
      I2 => \reg_out_reg_n_0_[20]\,
      I3 => \^latched_stalu_reg_0\,
      I4 => alu_out_q(20),
      I5 => \reg_next_pc[31]_i_2_n_0\,
      O => \reg_next_pc[20]_i_2_n_0\
    );
\reg_next_pc[20]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => current_pc(19),
      I1 => decoder_trigger_reg_n_0,
      I2 => instr_jal,
      I3 => decoded_rs1(4),
      O => \reg_next_pc[20]_i_3_n_0\
    );
\reg_next_pc[20]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => current_pc(18),
      I1 => decoder_trigger_reg_n_0,
      I2 => instr_jal,
      I3 => decoded_rs1(3),
      O => \reg_next_pc[20]_i_4_n_0\
    );
\reg_next_pc[20]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => current_pc(17),
      I1 => decoder_trigger_reg_n_0,
      I2 => instr_jal,
      I3 => decoded_rs1(2),
      O => \reg_next_pc[20]_i_5_n_0\
    );
\reg_next_pc[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \reg_next_pc_reg_n_0_[24]\,
      I1 => \mem_addr[31]_i_5_n_0\,
      I2 => \reg_out_reg_n_0_[24]\,
      I3 => \^latched_stalu_reg_0\,
      I4 => alu_out_q(24),
      I5 => \reg_next_pc[31]_i_2_n_0\,
      O => \reg_next_pc[24]_i_2_n_0\
    );
\reg_next_pc[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \reg_next_pc_reg_n_0_[23]\,
      I1 => \mem_addr[31]_i_5_n_0\,
      I2 => \reg_out_reg_n_0_[23]\,
      I3 => \^latched_stalu_reg_0\,
      I4 => alu_out_q(23),
      I5 => \reg_next_pc[31]_i_2_n_0\,
      O => \reg_next_pc[24]_i_3_n_0\
    );
\reg_next_pc[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \reg_next_pc_reg_n_0_[22]\,
      I1 => \mem_addr[31]_i_5_n_0\,
      I2 => \reg_out_reg_n_0_[22]\,
      I3 => \^latched_stalu_reg_0\,
      I4 => alu_out_q(22),
      I5 => \reg_next_pc[31]_i_2_n_0\,
      O => \reg_next_pc[24]_i_4_n_0\
    );
\reg_next_pc[24]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \reg_next_pc_reg_n_0_[21]\,
      I1 => \mem_addr[31]_i_5_n_0\,
      I2 => \reg_out_reg_n_0_[21]\,
      I3 => \^latched_stalu_reg_0\,
      I4 => alu_out_q(21),
      I5 => \reg_next_pc[31]_i_2_n_0\,
      O => \reg_next_pc[24]_i_5_n_0\
    );
\reg_next_pc[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \reg_next_pc_reg_n_0_[28]\,
      I1 => \mem_addr[31]_i_5_n_0\,
      I2 => \reg_out_reg_n_0_[28]\,
      I3 => \^latched_stalu_reg_0\,
      I4 => alu_out_q(28),
      I5 => \reg_next_pc[31]_i_2_n_0\,
      O => \reg_next_pc[28]_i_2_n_0\
    );
\reg_next_pc[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \reg_next_pc_reg_n_0_[27]\,
      I1 => \mem_addr[31]_i_5_n_0\,
      I2 => \reg_out_reg_n_0_[27]\,
      I3 => \^latched_stalu_reg_0\,
      I4 => alu_out_q(27),
      I5 => \reg_next_pc[31]_i_2_n_0\,
      O => \reg_next_pc[28]_i_3_n_0\
    );
\reg_next_pc[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \reg_next_pc_reg_n_0_[26]\,
      I1 => \mem_addr[31]_i_5_n_0\,
      I2 => \reg_out_reg_n_0_[26]\,
      I3 => \^latched_stalu_reg_0\,
      I4 => alu_out_q(26),
      I5 => \reg_next_pc[31]_i_2_n_0\,
      O => \reg_next_pc[28]_i_4_n_0\
    );
\reg_next_pc[28]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \reg_next_pc_reg_n_0_[25]\,
      I1 => \mem_addr[31]_i_5_n_0\,
      I2 => \reg_out_reg_n_0_[25]\,
      I3 => \^latched_stalu_reg_0\,
      I4 => alu_out_q(25),
      I5 => \reg_next_pc[31]_i_2_n_0\,
      O => \reg_next_pc[28]_i_5_n_0\
    );
\reg_next_pc[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => decoded_imm_uj(31),
      I1 => instr_jal,
      I2 => decoder_trigger_reg_n_0,
      O => \reg_next_pc[31]_i_2_n_0\
    );
\reg_next_pc[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \reg_next_pc[31]_i_2_n_0\,
      I1 => \reg_next_pc_reg_n_0_[31]\,
      I2 => \mem_addr[31]_i_5_n_0\,
      I3 => \reg_out_reg_n_0_[31]\,
      I4 => \^latched_stalu_reg_0\,
      I5 => alu_out_q(31),
      O => \reg_next_pc[31]_i_3_n_0\
    );
\reg_next_pc[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \reg_next_pc_reg_n_0_[30]\,
      I1 => \mem_addr[31]_i_5_n_0\,
      I2 => \reg_out_reg_n_0_[30]\,
      I3 => \^latched_stalu_reg_0\,
      I4 => alu_out_q(30),
      I5 => \reg_next_pc[31]_i_2_n_0\,
      O => \reg_next_pc[31]_i_4_n_0\
    );
\reg_next_pc[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => \reg_next_pc_reg_n_0_[29]\,
      I1 => \mem_addr[31]_i_5_n_0\,
      I2 => \reg_out_reg_n_0_[29]\,
      I3 => \^latched_stalu_reg_0\,
      I4 => alu_out_q(29),
      I5 => \reg_next_pc[31]_i_2_n_0\,
      O => \reg_next_pc[31]_i_5_n_0\
    );
\reg_next_pc[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => current_pc(4),
      I1 => decoder_trigger_reg_n_0,
      I2 => instr_jal,
      I3 => \decoded_rs2__0\(4),
      O => \reg_next_pc[4]_i_2_n_0\
    );
\reg_next_pc[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => current_pc(3),
      I1 => decoder_trigger_reg_n_0,
      I2 => instr_jal,
      I3 => \decoded_rs2__0\(3),
      O => \reg_next_pc[4]_i_3_n_0\
    );
\reg_next_pc[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59AA"
    )
        port map (
      I0 => current_pc(2),
      I1 => instr_jal,
      I2 => \decoded_rs2__0\(2),
      I3 => decoder_trigger_reg_n_0,
      O => \reg_next_pc[4]_i_4_n_0\
    );
\reg_next_pc[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => current_pc(1),
      I1 => decoder_trigger_reg_n_0,
      I2 => instr_jal,
      I3 => \decoded_rs2__0\(1),
      O => \reg_next_pc[4]_i_5_n_0\
    );
\reg_next_pc[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => current_pc(8),
      I1 => decoder_trigger_reg_n_0,
      I2 => instr_jal,
      I3 => decoded_imm_uj(8),
      O => \reg_next_pc[8]_i_2_n_0\
    );
\reg_next_pc[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => current_pc(7),
      I1 => decoder_trigger_reg_n_0,
      I2 => instr_jal,
      I3 => decoded_imm_uj(7),
      O => \reg_next_pc[8]_i_3_n_0\
    );
\reg_next_pc[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => current_pc(6),
      I1 => decoder_trigger_reg_n_0,
      I2 => instr_jal,
      I3 => decoded_imm_uj(6),
      O => \reg_next_pc[8]_i_4_n_0\
    );
\reg_next_pc[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => current_pc(5),
      I1 => decoder_trigger_reg_n_0,
      I2 => instr_jal,
      I3 => decoded_imm_uj(5),
      O => \reg_next_pc[8]_i_5_n_0\
    );
\reg_next_pc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(10),
      Q => \reg_next_pc_reg_n_0_[10]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(11),
      Q => \reg_next_pc_reg_n_0_[11]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(12),
      Q => \reg_next_pc_reg_n_0_[12]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_next_pc_reg[8]_i_1_n_0\,
      CO(3) => \reg_next_pc_reg[12]_i_1_n_0\,
      CO(2) => \reg_next_pc_reg[12]_i_1_n_1\,
      CO(1) => \reg_next_pc_reg[12]_i_1_n_2\,
      CO(0) => \reg_next_pc_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => current_pc(12 downto 9),
      O(3 downto 0) => reg_next_pc1_in(12 downto 9),
      S(3) => \reg_next_pc[12]_i_2_n_0\,
      S(2) => \reg_next_pc[12]_i_3_n_0\,
      S(1) => \reg_next_pc[12]_i_4_n_0\,
      S(0) => \reg_next_pc[12]_i_5_n_0\
    );
\reg_next_pc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(13),
      Q => \reg_next_pc_reg_n_0_[13]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(14),
      Q => \reg_next_pc_reg_n_0_[14]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(15),
      Q => \reg_next_pc_reg_n_0_[15]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(16),
      Q => \reg_next_pc_reg_n_0_[16]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_next_pc_reg[12]_i_1_n_0\,
      CO(3) => \reg_next_pc_reg[16]_i_1_n_0\,
      CO(2) => \reg_next_pc_reg[16]_i_1_n_1\,
      CO(1) => \reg_next_pc_reg[16]_i_1_n_2\,
      CO(0) => \reg_next_pc_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => current_pc(16 downto 13),
      O(3 downto 0) => reg_next_pc1_in(16 downto 13),
      S(3) => \reg_next_pc[16]_i_2_n_0\,
      S(2) => \reg_next_pc[16]_i_3_n_0\,
      S(1) => \reg_next_pc[16]_i_4_n_0\,
      S(0) => \reg_next_pc[16]_i_5_n_0\
    );
\reg_next_pc_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(17),
      Q => \reg_next_pc_reg_n_0_[17]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(18),
      Q => \reg_next_pc_reg_n_0_[18]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(19),
      Q => \reg_next_pc_reg_n_0_[19]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(1),
      Q => \reg_next_pc_reg_n_0_[1]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(20),
      Q => \reg_next_pc_reg_n_0_[20]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_next_pc_reg[16]_i_1_n_0\,
      CO(3) => \reg_next_pc_reg[20]_i_1_n_0\,
      CO(2) => \reg_next_pc_reg[20]_i_1_n_1\,
      CO(1) => \reg_next_pc_reg[20]_i_1_n_2\,
      CO(0) => \reg_next_pc_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \reg_next_pc[31]_i_2_n_0\,
      DI(2 downto 0) => current_pc(19 downto 17),
      O(3 downto 0) => reg_next_pc1_in(20 downto 17),
      S(3) => \reg_next_pc[20]_i_2_n_0\,
      S(2) => \reg_next_pc[20]_i_3_n_0\,
      S(1) => \reg_next_pc[20]_i_4_n_0\,
      S(0) => \reg_next_pc[20]_i_5_n_0\
    );
\reg_next_pc_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(21),
      Q => \reg_next_pc_reg_n_0_[21]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(22),
      Q => \reg_next_pc_reg_n_0_[22]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(23),
      Q => \reg_next_pc_reg_n_0_[23]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(24),
      Q => \reg_next_pc_reg_n_0_[24]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_next_pc_reg[20]_i_1_n_0\,
      CO(3) => \reg_next_pc_reg[24]_i_1_n_0\,
      CO(2) => \reg_next_pc_reg[24]_i_1_n_1\,
      CO(1) => \reg_next_pc_reg[24]_i_1_n_2\,
      CO(0) => \reg_next_pc_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \reg_next_pc[31]_i_2_n_0\,
      DI(2) => \reg_next_pc[31]_i_2_n_0\,
      DI(1) => \reg_next_pc[31]_i_2_n_0\,
      DI(0) => \reg_next_pc[31]_i_2_n_0\,
      O(3 downto 0) => reg_next_pc1_in(24 downto 21),
      S(3) => \reg_next_pc[24]_i_2_n_0\,
      S(2) => \reg_next_pc[24]_i_3_n_0\,
      S(1) => \reg_next_pc[24]_i_4_n_0\,
      S(0) => \reg_next_pc[24]_i_5_n_0\
    );
\reg_next_pc_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(25),
      Q => \reg_next_pc_reg_n_0_[25]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(26),
      Q => \reg_next_pc_reg_n_0_[26]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(27),
      Q => \reg_next_pc_reg_n_0_[27]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(28),
      Q => \reg_next_pc_reg_n_0_[28]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_next_pc_reg[24]_i_1_n_0\,
      CO(3) => \reg_next_pc_reg[28]_i_1_n_0\,
      CO(2) => \reg_next_pc_reg[28]_i_1_n_1\,
      CO(1) => \reg_next_pc_reg[28]_i_1_n_2\,
      CO(0) => \reg_next_pc_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \reg_next_pc[31]_i_2_n_0\,
      DI(2) => \reg_next_pc[31]_i_2_n_0\,
      DI(1) => \reg_next_pc[31]_i_2_n_0\,
      DI(0) => \reg_next_pc[31]_i_2_n_0\,
      O(3 downto 0) => reg_next_pc1_in(28 downto 25),
      S(3) => \reg_next_pc[28]_i_2_n_0\,
      S(2) => \reg_next_pc[28]_i_3_n_0\,
      S(1) => \reg_next_pc[28]_i_4_n_0\,
      S(0) => \reg_next_pc[28]_i_5_n_0\
    );
\reg_next_pc_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(29),
      Q => \reg_next_pc_reg_n_0_[29]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(2),
      Q => \reg_next_pc_reg_n_0_[2]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(30),
      Q => \reg_next_pc_reg_n_0_[30]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(31),
      Q => \reg_next_pc_reg_n_0_[31]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_next_pc_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_reg_next_pc_reg[31]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \reg_next_pc_reg[31]_i_1_n_2\,
      CO(0) => \reg_next_pc_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \reg_next_pc[31]_i_2_n_0\,
      DI(0) => \reg_next_pc[31]_i_2_n_0\,
      O(3) => \NLW_reg_next_pc_reg[31]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => reg_next_pc1_in(31 downto 29),
      S(3) => '0',
      S(2) => \reg_next_pc[31]_i_3_n_0\,
      S(1) => \reg_next_pc[31]_i_4_n_0\,
      S(0) => \reg_next_pc[31]_i_5_n_0\
    );
\reg_next_pc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(3),
      Q => \reg_next_pc_reg_n_0_[3]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(4),
      Q => \reg_next_pc_reg_n_0_[4]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \reg_next_pc_reg[4]_i_1_n_0\,
      CO(2) => \reg_next_pc_reg[4]_i_1_n_1\,
      CO(1) => \reg_next_pc_reg[4]_i_1_n_2\,
      CO(0) => \reg_next_pc_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => current_pc(4 downto 1),
      O(3 downto 1) => reg_next_pc1_in(4 downto 2),
      O(0) => \NLW_reg_next_pc_reg[4]_i_1_O_UNCONNECTED\(0),
      S(3) => \reg_next_pc[4]_i_2_n_0\,
      S(2) => \reg_next_pc[4]_i_3_n_0\,
      S(1) => \reg_next_pc[4]_i_4_n_0\,
      S(0) => \reg_next_pc[4]_i_5_n_0\
    );
\reg_next_pc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(5),
      Q => \reg_next_pc_reg_n_0_[5]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(6),
      Q => \reg_next_pc_reg_n_0_[6]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(7),
      Q => \reg_next_pc_reg_n_0_[7]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(8),
      Q => \reg_next_pc_reg_n_0_[8]\,
      R => pcpi_mul_n_24
    );
\reg_next_pc_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_next_pc_reg[4]_i_1_n_0\,
      CO(3) => \reg_next_pc_reg[8]_i_1_n_0\,
      CO(2) => \reg_next_pc_reg[8]_i_1_n_1\,
      CO(1) => \reg_next_pc_reg[8]_i_1_n_2\,
      CO(0) => \reg_next_pc_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => current_pc(8 downto 5),
      O(3 downto 0) => reg_next_pc1_in(8 downto 5),
      S(3) => \reg_next_pc[8]_i_2_n_0\,
      S(2) => \reg_next_pc[8]_i_3_n_0\,
      S(1) => \reg_next_pc[8]_i_4_n_0\,
      S(0) => \reg_next_pc[8]_i_5_n_0\
    );
\reg_next_pc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => reg_next_pc1_in(9),
      Q => \reg_next_pc_reg_n_0_[9]\,
      R => pcpi_mul_n_24
    );
\reg_op1[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \reg_pc_reg_n_0_[17]\,
      I2 => \reg_op1[17]_i_2_n_0\,
      I3 => pcpi_mul_n_81,
      I4 => \cpu_state_reg_n_0_[5]\,
      I5 => \reg_op1[17]_i_3_n_0\,
      O => \reg_op1[17]_i_1_n_0\
    );
\reg_op1[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(17),
      O => \reg_op1[17]_i_2_n_0\
    );
\reg_op1[17]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[17]_i_4_n_0\,
      I1 => \cpu_state_reg_n_0_[2]\,
      I2 => pcpi_mul_n_100,
      O => \reg_op1[17]_i_3_n_0\
    );
\reg_op1[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \reg_op1[20]_i_5_n_0\,
      I1 => \^reg_op1_reg[31]_0\(13),
      I2 => pcpi_mul_n_82,
      I3 => pcpi_mul_n_90,
      I4 => \^reg_op1_reg[31]_0\(16),
      I5 => pcpi_mul_n_93,
      O => \reg_op1[17]_i_4_n_0\
    );
\reg_op1[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \reg_pc_reg_n_0_[18]\,
      I2 => \reg_op1[18]_i_2_n_0\,
      I3 => pcpi_mul_n_81,
      I4 => \cpu_state_reg_n_0_[5]\,
      I5 => \reg_op1[18]_i_3_n_0\,
      O => \reg_op1[18]_i_1_n_0\
    );
\reg_op1[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(18),
      O => \reg_op1[18]_i_2_n_0\
    );
\reg_op1[18]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[18]_i_4_n_0\,
      I1 => \cpu_state_reg_n_0_[2]\,
      I2 => pcpi_mul_n_99,
      O => \reg_op1[18]_i_3_n_0\
    );
\reg_op1[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \reg_op1[21]_i_5_n_0\,
      I1 => \^reg_op1_reg[31]_0\(14),
      I2 => pcpi_mul_n_82,
      I3 => pcpi_mul_n_90,
      I4 => \^reg_op1_reg[31]_0\(17),
      I5 => pcpi_mul_n_91,
      O => \reg_op1[18]_i_4_n_0\
    );
\reg_op1[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \reg_pc_reg_n_0_[19]\,
      I2 => \reg_op1[19]_i_2_n_0\,
      I3 => pcpi_mul_n_81,
      I4 => \cpu_state_reg_n_0_[5]\,
      I5 => \reg_op1[19]_i_3_n_0\,
      O => \reg_op1[19]_i_1_n_0\
    );
\reg_op1[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(19),
      O => \reg_op1[19]_i_2_n_0\
    );
\reg_op1[19]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[19]_i_4_n_0\,
      I1 => \cpu_state_reg_n_0_[2]\,
      I2 => pcpi_mul_n_98,
      O => \reg_op1[19]_i_3_n_0\
    );
\reg_op1[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \reg_op1[22]_i_5_n_0\,
      I1 => \^reg_op1_reg[31]_0\(15),
      I2 => pcpi_mul_n_82,
      I3 => pcpi_mul_n_90,
      I4 => \^reg_op1_reg[31]_0\(18),
      I5 => pcpi_mul_n_89,
      O => \reg_op1[19]_i_4_n_0\
    );
\reg_op1[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \reg_pc_reg_n_0_[20]\,
      I2 => \reg_op1[20]_i_2_n_0\,
      I3 => pcpi_mul_n_81,
      I4 => \cpu_state_reg_n_0_[5]\,
      I5 => \reg_op1[20]_i_3_n_0\,
      O => \reg_op1[20]_i_1_n_0\
    );
\reg_op1[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(20),
      O => \reg_op1[20]_i_2_n_0\
    );
\reg_op1[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[20]_i_4_n_0\,
      I1 => \cpu_state_reg_n_0_[2]\,
      I2 => \reg_op1_reg[23]_i_5_n_7\,
      O => \reg_op1[20]_i_3_n_0\
    );
\reg_op1[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \reg_op1[23]_i_6_n_0\,
      I1 => \^reg_op1_reg[31]_0\(16),
      I2 => pcpi_mul_n_82,
      I3 => pcpi_mul_n_90,
      I4 => \^reg_op1_reg[31]_0\(19),
      I5 => \reg_op1[20]_i_5_n_0\,
      O => \reg_op1[20]_i_4_n_0\
    );
\reg_op1[20]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(21),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[20]_i_5_n_0\
    );
\reg_op1[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \reg_pc_reg_n_0_[21]\,
      I2 => \reg_op1[21]_i_2_n_0\,
      I3 => pcpi_mul_n_81,
      I4 => \cpu_state_reg_n_0_[5]\,
      I5 => \reg_op1[21]_i_3_n_0\,
      O => \reg_op1[21]_i_1_n_0\
    );
\reg_op1[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(21),
      O => \reg_op1[21]_i_2_n_0\
    );
\reg_op1[21]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[21]_i_4_n_0\,
      I1 => \cpu_state_reg_n_0_[2]\,
      I2 => \reg_op1_reg[23]_i_5_n_6\,
      O => \reg_op1[21]_i_3_n_0\
    );
\reg_op1[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \reg_op1[24]_i_5_n_0\,
      I1 => \^reg_op1_reg[31]_0\(17),
      I2 => pcpi_mul_n_82,
      I3 => pcpi_mul_n_90,
      I4 => \^reg_op1_reg[31]_0\(20),
      I5 => \reg_op1[21]_i_5_n_0\,
      O => \reg_op1[21]_i_4_n_0\
    );
\reg_op1[21]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(22),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[21]_i_5_n_0\
    );
\reg_op1[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \reg_pc_reg_n_0_[22]\,
      I2 => \reg_op1[22]_i_2_n_0\,
      I3 => pcpi_mul_n_81,
      I4 => \cpu_state_reg_n_0_[5]\,
      I5 => \reg_op1[22]_i_3_n_0\,
      O => \reg_op1[22]_i_1_n_0\
    );
\reg_op1[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(22),
      O => \reg_op1[22]_i_2_n_0\
    );
\reg_op1[22]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[22]_i_4_n_0\,
      I1 => \cpu_state_reg_n_0_[2]\,
      I2 => \reg_op1_reg[23]_i_5_n_5\,
      O => \reg_op1[22]_i_3_n_0\
    );
\reg_op1[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \reg_op1[25]_i_6_n_0\,
      I1 => \^reg_op1_reg[31]_0\(18),
      I2 => pcpi_mul_n_82,
      I3 => pcpi_mul_n_90,
      I4 => \^reg_op1_reg[31]_0\(21),
      I5 => \reg_op1[22]_i_5_n_0\,
      O => \reg_op1[22]_i_4_n_0\
    );
\reg_op1[22]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(23),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[22]_i_5_n_0\
    );
\reg_op1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \reg_pc_reg_n_0_[23]\,
      I2 => \reg_op1[23]_i_2_n_0\,
      I3 => pcpi_mul_n_81,
      I4 => \cpu_state_reg_n_0_[5]\,
      I5 => \reg_op1[23]_i_3_n_0\,
      O => \reg_op1[23]_i_1_n_0\
    );
\reg_op1[23]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(20),
      I1 => \decoded_imm_reg_n_0_[20]\,
      O => \reg_op1[23]_i_10_n_0\
    );
\reg_op1[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(23),
      O => \reg_op1[23]_i_2_n_0\
    );
\reg_op1[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[23]_i_4_n_0\,
      I1 => \cpu_state_reg_n_0_[2]\,
      I2 => \reg_op1_reg[23]_i_5_n_4\,
      O => \reg_op1[23]_i_3_n_0\
    );
\reg_op1[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \reg_op1[26]_i_6_n_0\,
      I1 => \^reg_op1_reg[31]_0\(19),
      I2 => pcpi_mul_n_82,
      I3 => pcpi_mul_n_90,
      I4 => \^reg_op1_reg[31]_0\(22),
      I5 => \reg_op1[23]_i_6_n_0\,
      O => \reg_op1[23]_i_4_n_0\
    );
\reg_op1[23]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(24),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[23]_i_6_n_0\
    );
\reg_op1[23]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(23),
      I1 => \decoded_imm_reg_n_0_[23]\,
      O => \reg_op1[23]_i_7_n_0\
    );
\reg_op1[23]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(22),
      I1 => \decoded_imm_reg_n_0_[22]\,
      O => \reg_op1[23]_i_8_n_0\
    );
\reg_op1[23]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(21),
      I1 => \decoded_imm_reg_n_0_[21]\,
      O => \reg_op1[23]_i_9_n_0\
    );
\reg_op1[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \reg_pc_reg_n_0_[24]\,
      I2 => \reg_op1[24]_i_2_n_0\,
      I3 => pcpi_mul_n_81,
      I4 => \cpu_state_reg_n_0_[5]\,
      I5 => \reg_op1[24]_i_3_n_0\,
      O => \reg_op1[24]_i_1_n_0\
    );
\reg_op1[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(24),
      O => \reg_op1[24]_i_2_n_0\
    );
\reg_op1[24]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[24]_i_4_n_0\,
      I1 => \cpu_state_reg_n_0_[2]\,
      I2 => \reg_op1_reg[31]_i_11_n_7\,
      O => \reg_op1[24]_i_3_n_0\
    );
\reg_op1[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \reg_op1[27]_i_7_n_0\,
      I1 => \^reg_op1_reg[31]_0\(20),
      I2 => pcpi_mul_n_82,
      I3 => pcpi_mul_n_90,
      I4 => \^reg_op1_reg[31]_0\(23),
      I5 => \reg_op1[24]_i_5_n_0\,
      O => \reg_op1[24]_i_4_n_0\
    );
\reg_op1[24]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(25),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[24]_i_5_n_0\
    );
\reg_op1[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \reg_pc_reg_n_0_[25]\,
      I2 => \reg_op1[25]_i_2_n_0\,
      I3 => pcpi_mul_n_81,
      I4 => \cpu_state_reg_n_0_[5]\,
      I5 => \reg_op1[25]_i_3_n_0\,
      O => \reg_op1[25]_i_1_n_0\
    );
\reg_op1[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(25),
      O => \reg_op1[25]_i_2_n_0\
    );
\reg_op1[25]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[25]_i_4_n_0\,
      I1 => \cpu_state_reg_n_0_[2]\,
      I2 => \reg_op1_reg[31]_i_11_n_6\,
      O => \reg_op1[25]_i_3_n_0\
    );
\reg_op1[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \reg_op1[25]_i_5_n_0\,
      I1 => \^reg_op1_reg[31]_0\(21),
      I2 => pcpi_mul_n_82,
      I3 => pcpi_mul_n_90,
      I4 => \^reg_op1_reg[31]_0\(24),
      I5 => \reg_op1[25]_i_6_n_0\,
      O => \reg_op1[25]_i_4_n_0\
    );
\reg_op1[25]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(29),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[25]_i_5_n_0\
    );
\reg_op1[25]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(26),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[25]_i_6_n_0\
    );
\reg_op1[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \reg_pc_reg_n_0_[26]\,
      I2 => \reg_op1[26]_i_2_n_0\,
      I3 => pcpi_mul_n_81,
      I4 => \cpu_state_reg_n_0_[5]\,
      I5 => \reg_op1[26]_i_3_n_0\,
      O => \reg_op1[26]_i_1_n_0\
    );
\reg_op1[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(26),
      O => \reg_op1[26]_i_2_n_0\
    );
\reg_op1[26]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[26]_i_4_n_0\,
      I1 => \cpu_state_reg_n_0_[2]\,
      I2 => \reg_op1_reg[31]_i_11_n_5\,
      O => \reg_op1[26]_i_3_n_0\
    );
\reg_op1[26]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \reg_op1[26]_i_5_n_0\,
      I1 => \^reg_op1_reg[31]_0\(22),
      I2 => pcpi_mul_n_82,
      I3 => pcpi_mul_n_90,
      I4 => \^reg_op1_reg[31]_0\(25),
      I5 => \reg_op1[26]_i_6_n_0\,
      O => \reg_op1[26]_i_4_n_0\
    );
\reg_op1[26]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(30),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[26]_i_5_n_0\
    );
\reg_op1[26]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(27),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[26]_i_6_n_0\
    );
\reg_op1[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \reg_pc_reg_n_0_[27]\,
      I2 => \reg_op1[27]_i_2_n_0\,
      I3 => pcpi_mul_n_81,
      I4 => \cpu_state_reg_n_0_[5]\,
      I5 => \reg_op1[27]_i_3_n_0\,
      O => \reg_op1[27]_i_1_n_0\
    );
\reg_op1[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(27),
      O => \reg_op1[27]_i_2_n_0\
    );
\reg_op1[27]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_op1[27]_i_4_n_0\,
      I1 => \cpu_state_reg_n_0_[2]\,
      I2 => \reg_op1_reg[31]_i_11_n_4\,
      O => \reg_op1[27]_i_3_n_0\
    );
\reg_op1[27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEFAFEFA0EFA0E0"
    )
        port map (
      I0 => \reg_op1[27]_i_5_n_0\,
      I1 => \^reg_op1_reg[31]_0\(23),
      I2 => pcpi_mul_n_82,
      I3 => pcpi_mul_n_90,
      I4 => \^reg_op1_reg[31]_0\(26),
      I5 => \reg_op1[27]_i_7_n_0\,
      O => \reg_op1[27]_i_4_n_0\
    );
\reg_op1[27]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(31),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[27]_i_5_n_0\
    );
\reg_op1[27]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(28),
      I1 => instr_sra,
      I2 => instr_srl,
      I3 => instr_srai,
      I4 => instr_srli,
      O => \reg_op1[27]_i_7_n_0\
    );
\reg_op1[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \reg_pc_reg_n_0_[28]\,
      I2 => \reg_op1[28]_i_2_n_0\,
      I3 => pcpi_mul_n_81,
      I4 => \cpu_state_reg_n_0_[5]\,
      I5 => \reg_op1[28]_i_3_n_0\,
      O => \reg_op1[28]_i_1_n_0\
    );
\reg_op1[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(28),
      O => \reg_op1[28]_i_2_n_0\
    );
\reg_op1[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5455FFFF54550000"
    )
        port map (
      I0 => \reg_op1[28]_i_4_n_0\,
      I1 => \reg_op1[28]_i_5_n_0\,
      I2 => \reg_op1[31]_i_10_n_0\,
      I3 => pcpi_mul_n_82,
      I4 => \cpu_state_reg_n_0_[2]\,
      I5 => \reg_op1_reg[31]_i_8_n_7\,
      O => \reg_op1[28]_i_3_n_0\
    );
\reg_op1[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0057000000570057"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(27),
      I1 => instr_slli,
      I2 => instr_sll,
      I3 => pcpi_mul_n_82,
      I4 => pcpi_mul_n_92,
      I5 => \^reg_op1_reg[31]_0\(29),
      O => \reg_op1[28]_i_4_n_0\
    );
\reg_op1[28]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(24),
      I1 => instr_slli,
      I2 => instr_sll,
      O => \reg_op1[28]_i_5_n_0\
    );
\reg_op1[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F44FFFF0F440000"
    )
        port map (
      I0 => instr_lui,
      I1 => \reg_pc_reg_n_0_[29]\,
      I2 => \reg_op1[29]_i_2_n_0\,
      I3 => pcpi_mul_n_81,
      I4 => \cpu_state_reg_n_0_[5]\,
      I5 => \reg_op1[29]_i_3_n_0\,
      O => \reg_op1[29]_i_1_n_0\
    );
\reg_op1[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => decoded_rs1(1),
      I1 => decoded_rs1(4),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(0),
      I4 => decoded_rs1(3),
      I5 => reg_out1(29),
      O => \reg_op1[29]_i_2_n_0\
    );
\reg_op1[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5455FFFF54550000"
    )
        port map (
      I0 => \reg_op1[29]_i_4_n_0\,
      I1 => \reg_op1[29]_i_5_n_0\,
      I2 => \reg_op1[31]_i_10_n_0\,
      I3 => pcpi_mul_n_82,
      I4 => \cpu_state_reg_n_0_[2]\,
      I5 => \reg_op1_reg[31]_i_8_n_6\,
      O => \reg_op1[29]_i_3_n_0\
    );
\reg_op1[29]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0057000000570057"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(28),
      I1 => instr_slli,
      I2 => instr_sll,
      I3 => pcpi_mul_n_82,
      I4 => pcpi_mul_n_92,
      I5 => \^reg_op1_reg[31]_0\(30),
      O => \reg_op1[29]_i_4_n_0\
    );
\reg_op1[29]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(25),
      I1 => instr_slli,
      I2 => instr_sll,
      O => \reg_op1[29]_i_5_n_0\
    );
\reg_op1[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0040FF40"
    )
        port map (
      I0 => instr_lui,
      I1 => \cpu_state_reg_n_0_[5]\,
      I2 => \reg_pc_reg_n_0_[30]\,
      I3 => pcpi_mul_n_81,
      I4 => \reg_op1[30]_i_3_n_0\,
      I5 => \reg_op1[30]_i_4_n_0\,
      O => \reg_op1[30]_i_1_n_0\
    );
\reg_op1[30]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[5]\,
      I1 => \reg_op1[31]_i_9_n_0\,
      I2 => reg_out1(30),
      O => \reg_op1[30]_i_3_n_0\
    );
\reg_op1[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"004500FF00450000"
    )
        port map (
      I0 => \reg_op1[30]_i_5_n_0\,
      I1 => \reg_op1[30]_i_6_n_0\,
      I2 => pcpi_mul_n_82,
      I3 => \cpu_state_reg_n_0_[5]\,
      I4 => \cpu_state_reg_n_0_[2]\,
      I5 => \reg_op1_reg[31]_i_8_n_5\,
      O => \reg_op1[30]_i_4_n_0\
    );
\reg_op1[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0057000000570057"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(29),
      I1 => instr_slli,
      I2 => instr_sll,
      I3 => pcpi_mul_n_82,
      I4 => pcpi_mul_n_92,
      I5 => \^reg_op1_reg[31]_0\(31),
      O => \reg_op1[30]_i_5_n_0\
    );
\reg_op1[30]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE0E0E0E0E0"
    )
        port map (
      I0 => instr_sra,
      I1 => instr_srai,
      I2 => \^reg_op1_reg[31]_0\(31),
      I3 => instr_sll,
      I4 => instr_slli,
      I5 => \^reg_op1_reg[31]_0\(26),
      O => \reg_op1[30]_i_6_n_0\
    );
\reg_op1[31]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(31),
      I1 => instr_srai,
      I2 => instr_sra,
      O => \reg_op1[31]_i_10_n_0\
    );
\reg_op1[31]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \decoded_imm_reg_n_0_[31]\,
      I1 => \^reg_op1_reg[31]_0\(31),
      O => \reg_op1[31]_i_12_n_0\
    );
\reg_op1[31]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(30),
      I1 => \decoded_imm_reg_n_0_[30]\,
      O => \reg_op1[31]_i_13_n_0\
    );
\reg_op1[31]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(29),
      I1 => \decoded_imm_reg_n_0_[29]\,
      O => \reg_op1[31]_i_14_n_0\
    );
\reg_op1[31]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(28),
      I1 => \decoded_imm_reg_n_0_[28]\,
      O => \reg_op1[31]_i_15_n_0\
    );
\reg_op1[31]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(27),
      I1 => \decoded_imm_reg_n_0_[27]\,
      O => \reg_op1[31]_i_16_n_0\
    );
\reg_op1[31]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(26),
      I1 => \decoded_imm_reg_n_0_[26]\,
      O => \reg_op1[31]_i_17_n_0\
    );
\reg_op1[31]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(25),
      I1 => \decoded_imm_reg_n_0_[25]\,
      O => \reg_op1[31]_i_18_n_0\
    );
\reg_op1[31]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(24),
      I1 => \decoded_imm_reg_n_0_[24]\,
      O => \reg_op1[31]_i_19_n_0\
    );
\reg_op1[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \reg_op1[31]_i_6_n_0\,
      I1 => \cpu_state_reg_n_0_[5]\,
      I2 => \reg_op1[31]_i_7_n_0\,
      I3 => \cpu_state_reg_n_0_[2]\,
      I4 => \reg_op1_reg[31]_i_8_n_4\,
      O => \reg_op1[31]_i_2_n_0\
    );
\reg_op1[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02220222F2220222"
    )
        port map (
      I0 => reg_out1(31),
      I1 => \reg_op1[31]_i_9_n_0\,
      I2 => is_lui_auipc_jal,
      I3 => pcpi_mul_n_22,
      I4 => \reg_pc_reg_n_0_[31]\,
      I5 => instr_lui,
      O => \reg_op1[31]_i_6_n_0\
    );
\reg_op1[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBBB08880"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(27),
      I1 => pcpi_mul_n_82,
      I2 => instr_sll,
      I3 => instr_slli,
      I4 => \^reg_op1_reg[31]_0\(30),
      I5 => \reg_op1[31]_i_10_n_0\,
      O => \reg_op1[31]_i_7_n_0\
    );
\reg_op1[31]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => decoded_rs1(3),
      I1 => decoded_rs1(0),
      I2 => decoded_rs1(2),
      I3 => decoded_rs1(4),
      I4 => decoded_rs1(1),
      O => \reg_op1[31]_i_9_n_0\
    );
\reg_op1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => pcpi_mul_n_80,
      Q => \^reg_op1_reg[31]_0\(0),
      R => '0'
    );
\reg_op1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => pcpi_mul_n_70,
      Q => \^reg_op1_reg[31]_0\(10),
      R => '0'
    );
\reg_op1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => pcpi_mul_n_69,
      Q => \^reg_op1_reg[31]_0\(11),
      R => '0'
    );
\reg_op1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => pcpi_mul_n_68,
      Q => \^reg_op1_reg[31]_0\(12),
      R => '0'
    );
\reg_op1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => pcpi_mul_n_67,
      Q => \^reg_op1_reg[31]_0\(13),
      R => '0'
    );
\reg_op1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => pcpi_mul_n_66,
      Q => \^reg_op1_reg[31]_0\(14),
      R => '0'
    );
\reg_op1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => pcpi_mul_n_65,
      Q => \^reg_op1_reg[31]_0\(15),
      R => '0'
    );
\reg_op1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => pcpi_mul_n_64,
      Q => \^reg_op1_reg[31]_0\(16),
      R => '0'
    );
\reg_op1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => \reg_op1[17]_i_1_n_0\,
      Q => \^reg_op1_reg[31]_0\(17),
      R => '0'
    );
\reg_op1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => \reg_op1[18]_i_1_n_0\,
      Q => \^reg_op1_reg[31]_0\(18),
      R => '0'
    );
\reg_op1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => \reg_op1[19]_i_1_n_0\,
      Q => \^reg_op1_reg[31]_0\(19),
      R => '0'
    );
\reg_op1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => pcpi_mul_n_79,
      Q => \^reg_op1_reg[31]_0\(1),
      R => '0'
    );
\reg_op1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => \reg_op1[20]_i_1_n_0\,
      Q => \^reg_op1_reg[31]_0\(20),
      R => '0'
    );
\reg_op1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => \reg_op1[21]_i_1_n_0\,
      Q => \^reg_op1_reg[31]_0\(21),
      R => '0'
    );
\reg_op1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => \reg_op1[22]_i_1_n_0\,
      Q => \^reg_op1_reg[31]_0\(22),
      R => '0'
    );
\reg_op1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => \reg_op1[23]_i_1_n_0\,
      Q => \^reg_op1_reg[31]_0\(23),
      R => '0'
    );
\reg_op1_reg[23]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => pcpi_mul_n_97,
      CO(3) => \reg_op1_reg[23]_i_5_n_0\,
      CO(2) => \reg_op1_reg[23]_i_5_n_1\,
      CO(1) => \reg_op1_reg[23]_i_5_n_2\,
      CO(0) => \reg_op1_reg[23]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^reg_op1_reg[31]_0\(23 downto 20),
      O(3) => \reg_op1_reg[23]_i_5_n_4\,
      O(2) => \reg_op1_reg[23]_i_5_n_5\,
      O(1) => \reg_op1_reg[23]_i_5_n_6\,
      O(0) => \reg_op1_reg[23]_i_5_n_7\,
      S(3) => \reg_op1[23]_i_7_n_0\,
      S(2) => \reg_op1[23]_i_8_n_0\,
      S(1) => \reg_op1[23]_i_9_n_0\,
      S(0) => \reg_op1[23]_i_10_n_0\
    );
\reg_op1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => \reg_op1[24]_i_1_n_0\,
      Q => \^reg_op1_reg[31]_0\(24),
      R => '0'
    );
\reg_op1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => \reg_op1[25]_i_1_n_0\,
      Q => \^reg_op1_reg[31]_0\(25),
      R => '0'
    );
\reg_op1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => \reg_op1[26]_i_1_n_0\,
      Q => \^reg_op1_reg[31]_0\(26),
      R => '0'
    );
\reg_op1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => \reg_op1[27]_i_1_n_0\,
      Q => \^reg_op1_reg[31]_0\(27),
      R => '0'
    );
\reg_op1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => \reg_op1[28]_i_1_n_0\,
      Q => \^reg_op1_reg[31]_0\(28),
      R => '0'
    );
\reg_op1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => \reg_op1[29]_i_1_n_0\,
      Q => \^reg_op1_reg[31]_0\(29),
      R => '0'
    );
\reg_op1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => pcpi_mul_n_78,
      Q => \^reg_op1_reg[31]_0\(2),
      R => '0'
    );
\reg_op1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => \reg_op1[30]_i_1_n_0\,
      Q => \^reg_op1_reg[31]_0\(30),
      R => '0'
    );
\reg_op1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => \reg_op1[31]_i_2_n_0\,
      Q => \^reg_op1_reg[31]_0\(31),
      R => '0'
    );
\reg_op1_reg[31]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_op1_reg[23]_i_5_n_0\,
      CO(3) => \reg_op1_reg[31]_i_11_n_0\,
      CO(2) => \reg_op1_reg[31]_i_11_n_1\,
      CO(1) => \reg_op1_reg[31]_i_11_n_2\,
      CO(0) => \reg_op1_reg[31]_i_11_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^reg_op1_reg[31]_0\(27 downto 24),
      O(3) => \reg_op1_reg[31]_i_11_n_4\,
      O(2) => \reg_op1_reg[31]_i_11_n_5\,
      O(1) => \reg_op1_reg[31]_i_11_n_6\,
      O(0) => \reg_op1_reg[31]_i_11_n_7\,
      S(3) => \reg_op1[31]_i_16_n_0\,
      S(2) => \reg_op1[31]_i_17_n_0\,
      S(1) => \reg_op1[31]_i_18_n_0\,
      S(0) => \reg_op1[31]_i_19_n_0\
    );
\reg_op1_reg[31]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_op1_reg[31]_i_11_n_0\,
      CO(3) => \NLW_reg_op1_reg[31]_i_8_CO_UNCONNECTED\(3),
      CO(2) => \reg_op1_reg[31]_i_8_n_1\,
      CO(1) => \reg_op1_reg[31]_i_8_n_2\,
      CO(0) => \reg_op1_reg[31]_i_8_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^reg_op1_reg[31]_0\(30 downto 28),
      O(3) => \reg_op1_reg[31]_i_8_n_4\,
      O(2) => \reg_op1_reg[31]_i_8_n_5\,
      O(1) => \reg_op1_reg[31]_i_8_n_6\,
      O(0) => \reg_op1_reg[31]_i_8_n_7\,
      S(3) => \reg_op1[31]_i_12_n_0\,
      S(2) => \reg_op1[31]_i_13_n_0\,
      S(1) => \reg_op1[31]_i_14_n_0\,
      S(0) => \reg_op1[31]_i_15_n_0\
    );
\reg_op1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => pcpi_mul_n_77,
      Q => \^reg_op1_reg[31]_0\(3),
      R => '0'
    );
\reg_op1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => pcpi_mul_n_76,
      Q => \^reg_op1_reg[31]_0\(4),
      R => '0'
    );
\reg_op1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => pcpi_mul_n_75,
      Q => \^reg_op1_reg[31]_0\(5),
      R => '0'
    );
\reg_op1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => pcpi_mul_n_74,
      Q => \^reg_op1_reg[31]_0\(6),
      R => '0'
    );
\reg_op1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => pcpi_mul_n_73,
      Q => \^reg_op1_reg[31]_0\(7),
      R => '0'
    );
\reg_op1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => pcpi_mul_n_72,
      Q => \^reg_op1_reg[31]_0\(8),
      R => '0'
    );
\reg_op1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_28,
      D => pcpi_mul_n_71,
      Q => \^reg_op1_reg[31]_0\(9),
      R => '0'
    );
\reg_op2[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => pcpi_mul_n_22,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => \decoded_imm_reg_n_0_[17]\,
      I4 => reg_sh1(17),
      I5 => pcpi_mul_n_23,
      O => reg_op2(17)
    );
\reg_op2[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => pcpi_mul_n_22,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => \decoded_imm_reg_n_0_[18]\,
      I4 => reg_sh1(18),
      I5 => pcpi_mul_n_23,
      O => reg_op2(18)
    );
\reg_op2[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => pcpi_mul_n_22,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => \decoded_imm_reg_n_0_[19]\,
      I4 => reg_sh1(19),
      I5 => pcpi_mul_n_23,
      O => reg_op2(19)
    );
\reg_op2[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => pcpi_mul_n_22,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => \decoded_imm_reg_n_0_[20]\,
      I4 => reg_sh1(20),
      I5 => pcpi_mul_n_23,
      O => reg_op2(20)
    );
\reg_op2[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => pcpi_mul_n_22,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => \decoded_imm_reg_n_0_[21]\,
      I4 => reg_sh1(21),
      I5 => pcpi_mul_n_23,
      O => reg_op2(21)
    );
\reg_op2[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => pcpi_mul_n_22,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => \decoded_imm_reg_n_0_[22]\,
      I4 => reg_sh1(22),
      I5 => pcpi_mul_n_23,
      O => reg_op2(22)
    );
\reg_op2[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => pcpi_mul_n_22,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => \decoded_imm_reg_n_0_[23]\,
      I4 => reg_sh1(23),
      I5 => pcpi_mul_n_23,
      O => reg_op2(23)
    );
\reg_op2[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => pcpi_mul_n_22,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => \decoded_imm_reg_n_0_[24]\,
      I4 => reg_sh1(24),
      I5 => pcpi_mul_n_23,
      O => reg_op2(24)
    );
\reg_op2[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => pcpi_mul_n_22,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => \decoded_imm_reg_n_0_[25]\,
      I4 => reg_sh1(25),
      I5 => pcpi_mul_n_23,
      O => reg_op2(25)
    );
\reg_op2[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => pcpi_mul_n_22,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => \decoded_imm_reg_n_0_[26]\,
      I4 => reg_sh1(26),
      I5 => pcpi_mul_n_23,
      O => reg_op2(26)
    );
\reg_op2[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => pcpi_mul_n_22,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => \decoded_imm_reg_n_0_[27]\,
      I4 => reg_sh1(27),
      I5 => pcpi_mul_n_23,
      O => reg_op2(27)
    );
\reg_op2[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => pcpi_mul_n_22,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => \decoded_imm_reg_n_0_[28]\,
      I4 => reg_sh1(28),
      I5 => pcpi_mul_n_23,
      O => reg_op2(28)
    );
\reg_op2[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => pcpi_mul_n_22,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => \decoded_imm_reg_n_0_[29]\,
      I4 => reg_sh1(29),
      I5 => pcpi_mul_n_23,
      O => reg_op2(29)
    );
\reg_op2[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => pcpi_mul_n_22,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => \decoded_imm_reg_n_0_[30]\,
      I4 => reg_sh1(30),
      I5 => pcpi_mul_n_23,
      O => reg_op2(30)
    );
\reg_op2[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800A800FF57A800"
    )
        port map (
      I0 => pcpi_mul_n_22,
      I1 => is_jalr_addi_slti_sltiu_xori_ori_andi,
      I2 => is_lui_auipc_jal,
      I3 => \decoded_imm_reg_n_0_[31]\,
      I4 => reg_sh1(31),
      I5 => pcpi_mul_n_23,
      O => reg_op2(31)
    );
\reg_op2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(0),
      Q => \^reg_op2_reg[31]_0\(0),
      R => '0'
    );
\reg_op2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(10),
      Q => \^reg_op2_reg[31]_0\(10),
      R => '0'
    );
\reg_op2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(11),
      Q => \^reg_op2_reg[31]_0\(11),
      R => '0'
    );
\reg_op2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(12),
      Q => \^reg_op2_reg[31]_0\(12),
      R => '0'
    );
\reg_op2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(13),
      Q => \^reg_op2_reg[31]_0\(13),
      R => '0'
    );
\reg_op2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(14),
      Q => \^reg_op2_reg[31]_0\(14),
      R => '0'
    );
\reg_op2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(15),
      Q => \^reg_op2_reg[31]_0\(15),
      R => '0'
    );
\reg_op2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(16),
      Q => \^reg_op2_reg[31]_0\(16),
      R => '0'
    );
\reg_op2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(17),
      Q => \^reg_op2_reg[31]_0\(17),
      R => '0'
    );
\reg_op2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(18),
      Q => \^reg_op2_reg[31]_0\(18),
      R => '0'
    );
\reg_op2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(19),
      Q => \^reg_op2_reg[31]_0\(19),
      R => '0'
    );
\reg_op2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(1),
      Q => \^reg_op2_reg[31]_0\(1),
      R => '0'
    );
\reg_op2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(20),
      Q => \^reg_op2_reg[31]_0\(20),
      R => '0'
    );
\reg_op2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(21),
      Q => \^reg_op2_reg[31]_0\(21),
      R => '0'
    );
\reg_op2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(22),
      Q => \^reg_op2_reg[31]_0\(22),
      R => '0'
    );
\reg_op2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(23),
      Q => \^reg_op2_reg[31]_0\(23),
      R => '0'
    );
\reg_op2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(24),
      Q => \^reg_op2_reg[31]_0\(24),
      R => '0'
    );
\reg_op2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(25),
      Q => \^reg_op2_reg[31]_0\(25),
      R => '0'
    );
\reg_op2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(26),
      Q => \^reg_op2_reg[31]_0\(26),
      R => '0'
    );
\reg_op2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(27),
      Q => \^reg_op2_reg[31]_0\(27),
      R => '0'
    );
\reg_op2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(28),
      Q => \^reg_op2_reg[31]_0\(28),
      R => '0'
    );
\reg_op2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(29),
      Q => \^reg_op2_reg[31]_0\(29),
      R => '0'
    );
\reg_op2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(2),
      Q => \^reg_op2_reg[31]_0\(2),
      R => '0'
    );
\reg_op2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(30),
      Q => \^reg_op2_reg[31]_0\(30),
      R => '0'
    );
\reg_op2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(31),
      Q => \^reg_op2_reg[31]_0\(31),
      R => '0'
    );
\reg_op2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(3),
      Q => \^reg_op2_reg[31]_0\(3),
      R => '0'
    );
\reg_op2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(4),
      Q => \^reg_op2_reg[31]_0\(4),
      R => '0'
    );
\reg_op2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(5),
      Q => \^reg_op2_reg[31]_0\(5),
      R => '0'
    );
\reg_op2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(6),
      Q => \^reg_op2_reg[31]_0\(6),
      R => '0'
    );
\reg_op2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(7),
      Q => \^reg_op2_reg[31]_0\(7),
      R => '0'
    );
\reg_op2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(8),
      Q => \^reg_op2_reg[31]_0\(8),
      R => '0'
    );
\reg_op2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => pcpi_mul_n_87,
      D => reg_op2(9),
      Q => \^reg_op2_reg[31]_0\(9),
      R => '0'
    );
\reg_out[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A202"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[5]\,
      I1 => \reg_out[0]_i_4_n_0\,
      I2 => instr_rdcycle,
      I3 => count_cycle_reg(0),
      O => \reg_out[0]_i_2_n_0\
    );
\reg_out[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \reg_out[0]_i_5_n_0\,
      I1 => \^reg_op1_reg[31]_0\(0),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^q\(1),
      I4 => \decoded_imm_reg_n_0_[0]\,
      O => \reg_out[0]_i_3_n_0\
    );
\reg_out[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055003FFF55FF3F"
    )
        port map (
      I0 => \count_instr_reg_n_0_[0]\,
      I1 => data3(0),
      I2 => instr_rdinstrh,
      I3 => instr_rdcycleh,
      I4 => instr_rdinstr,
      I5 => count_cycle_reg(32),
      O => \reg_out[0]_i_4_n_0\
    );
\reg_out[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBB888B8"
    )
        port map (
      I0 => \reg_out[0]_i_6_n_0\,
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => mem_axi_rdata(16),
      I3 => \reg_out[15]_i_6_n_0\,
      I4 => mem_axi_rdata(0),
      I5 => \reg_out[7]_i_6_n_0\,
      O => \reg_out[0]_i_5_n_0\
    );
\reg_out[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => mem_axi_rdata(8),
      I1 => mem_axi_rdata(0),
      I2 => mem_axi_rdata(16),
      I3 => \^reg_op1_reg[31]_0\(1),
      I4 => \^reg_op1_reg[31]_0\(0),
      I5 => mem_axi_rdata(24),
      O => \reg_out[0]_i_6_n_0\
    );
\reg_out[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888A8A8AAA8A8A8A"
    )
        port map (
      I0 => \reg_out[31]_i_7_n_0\,
      I1 => \reg_out[14]_i_6_n_0\,
      I2 => mem_axi_rdata(10),
      I3 => \^reg_op1_reg[31]_0\(1),
      I4 => \mem_wordsize_reg_n_0_[0]\,
      I5 => mem_axi_rdata(26),
      O => \reg_out[10]_i_2_n_0\
    );
\reg_out[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg_out_reg[12]_i_6_n_6\,
      I1 => \^q\(1),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^reg_op1_reg[31]_0\(10),
      O => \reg_out[10]_i_4_n_0\
    );
\reg_out[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[10]_i_6_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(10),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[10]_i_5_n_0\
    );
\reg_out[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FF880088"
    )
        port map (
      I0 => data3(10),
      I1 => instr_rdinstrh,
      I2 => count_cycle_reg(42),
      I3 => instr_rdinstr,
      I4 => \count_instr_reg_n_0_[10]\,
      I5 => instr_rdcycleh,
      O => \reg_out[10]_i_6_n_0\
    );
\reg_out[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888A8A8AAA8A8A8A"
    )
        port map (
      I0 => \reg_out[31]_i_7_n_0\,
      I1 => \reg_out[14]_i_6_n_0\,
      I2 => mem_axi_rdata(11),
      I3 => \^reg_op1_reg[31]_0\(1),
      I4 => \mem_wordsize_reg_n_0_[0]\,
      I5 => mem_axi_rdata(27),
      O => \reg_out[11]_i_2_n_0\
    );
\reg_out[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[2]\,
      I1 => \^reg_op1_reg[31]_0\(11),
      I2 => \reg_out_reg[12]_i_6_n_5\,
      I3 => \^q\(1),
      O => \reg_out[11]_i_4_n_0\
    );
\reg_out[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[11]_i_7_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(11),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[11]_i_5_n_0\
    );
\reg_out[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FF880088"
    )
        port map (
      I0 => data3(11),
      I1 => instr_rdinstrh,
      I2 => count_cycle_reg(43),
      I3 => instr_rdinstr,
      I4 => \count_instr_reg_n_0_[11]\,
      I5 => instr_rdcycleh,
      O => \reg_out[11]_i_7_n_0\
    );
\reg_out[12]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[10]\,
      I1 => \decoded_imm_reg_n_0_[10]\,
      O => \reg_out[12]_i_10_n_0\
    );
\reg_out[12]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[9]\,
      I1 => \decoded_imm_reg_n_0_[9]\,
      O => \reg_out[12]_i_11_n_0\
    );
\reg_out[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888A8A8AAA8A8A8A"
    )
        port map (
      I0 => \reg_out[31]_i_7_n_0\,
      I1 => \reg_out[14]_i_6_n_0\,
      I2 => mem_axi_rdata(12),
      I3 => \^reg_op1_reg[31]_0\(1),
      I4 => \mem_wordsize_reg_n_0_[0]\,
      I5 => mem_axi_rdata(28),
      O => \reg_out[12]_i_2_n_0\
    );
\reg_out[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg_out_reg[12]_i_6_n_4\,
      I1 => \^q\(1),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^reg_op1_reg[31]_0\(12),
      O => \reg_out[12]_i_4_n_0\
    );
\reg_out[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[12]_i_7_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(12),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[12]_i_5_n_0\
    );
\reg_out[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FF880088"
    )
        port map (
      I0 => data3(12),
      I1 => instr_rdinstrh,
      I2 => count_cycle_reg(44),
      I3 => instr_rdinstr,
      I4 => \count_instr_reg_n_0_[12]\,
      I5 => instr_rdcycleh,
      O => \reg_out[12]_i_7_n_0\
    );
\reg_out[12]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[12]\,
      I1 => \decoded_imm_reg_n_0_[12]\,
      O => \reg_out[12]_i_8_n_0\
    );
\reg_out[12]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[11]\,
      I1 => \decoded_imm_reg_n_0_[11]\,
      O => \reg_out[12]_i_9_n_0\
    );
\reg_out[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888A8A8AAA8A8A8A"
    )
        port map (
      I0 => \reg_out[31]_i_7_n_0\,
      I1 => \reg_out[14]_i_6_n_0\,
      I2 => mem_axi_rdata(13),
      I3 => \^reg_op1_reg[31]_0\(1),
      I4 => \mem_wordsize_reg_n_0_[0]\,
      I5 => mem_axi_rdata(29),
      O => \reg_out[13]_i_2_n_0\
    );
\reg_out[13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg_out_reg[16]_i_6_n_7\,
      I1 => \^q\(1),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^reg_op1_reg[31]_0\(13),
      O => \reg_out[13]_i_4_n_0\
    );
\reg_out[13]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[13]_i_6_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(13),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[13]_i_5_n_0\
    );
\reg_out[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FF880088"
    )
        port map (
      I0 => data3(13),
      I1 => instr_rdinstrh,
      I2 => count_cycle_reg(45),
      I3 => instr_rdinstr,
      I4 => \count_instr_reg_n_0_[13]\,
      I5 => instr_rdcycleh,
      O => \reg_out[13]_i_6_n_0\
    );
\reg_out[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888A8A8AAA8A8A8A"
    )
        port map (
      I0 => \reg_out[31]_i_7_n_0\,
      I1 => \reg_out[14]_i_6_n_0\,
      I2 => mem_axi_rdata(14),
      I3 => \^reg_op1_reg[31]_0\(1),
      I4 => \mem_wordsize_reg_n_0_[0]\,
      I5 => mem_axi_rdata(30),
      O => \reg_out[14]_i_2_n_0\
    );
\reg_out[14]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg_out_reg[16]_i_6_n_6\,
      I1 => \^q\(1),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^reg_op1_reg[31]_0\(14),
      O => \reg_out[14]_i_4_n_0\
    );
\reg_out[14]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[14]_i_7_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(14),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[14]_i_5_n_0\
    );
\reg_out[14]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \mem_wordsize_reg_n_0_[1]\,
      I1 => \^latched_is_lu_reg_0\,
      I2 => \^latched_is_lh_reg_0\,
      O => \reg_out[14]_i_6_n_0\
    );
\reg_out[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FF880088"
    )
        port map (
      I0 => data3(14),
      I1 => instr_rdinstrh,
      I2 => count_cycle_reg(46),
      I3 => instr_rdinstr,
      I4 => \count_instr_reg_n_0_[14]\,
      I5 => instr_rdcycleh,
      O => \reg_out[14]_i_7_n_0\
    );
\reg_out[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA220AAAAAAAAA"
    )
        port map (
      I0 => \reg_out[31]_i_7_n_0\,
      I1 => mem_axi_rdata(15),
      I2 => mem_axi_rdata(31),
      I3 => \reg_out[15]_i_6_n_0\,
      I4 => \mem_wordsize_reg_n_0_[1]\,
      I5 => \reg_out[15]_i_7_n_0\,
      O => \reg_out[15]_i_2_n_0\
    );
\reg_out[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg_out_reg[16]_i_6_n_5\,
      I1 => \^q\(1),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^reg_op1_reg[31]_0\(15),
      O => \reg_out[15]_i_4_n_0\
    );
\reg_out[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[15]_i_9_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(15),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[15]_i_5_n_0\
    );
\reg_out[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^reg_op1_reg[31]_0\(1),
      I1 => \mem_wordsize_reg_n_0_[0]\,
      O => \reg_out[15]_i_6_n_0\
    );
\reg_out[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^latched_is_lh_reg_0\,
      I1 => \^latched_is_lu_reg_0\,
      O => \reg_out[15]_i_7_n_0\
    );
\reg_out[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FF880088"
    )
        port map (
      I0 => data3(15),
      I1 => instr_rdinstrh,
      I2 => count_cycle_reg(47),
      I3 => instr_rdinstr,
      I4 => \count_instr_reg_n_0_[15]\,
      I5 => instr_rdcycleh,
      O => \reg_out[15]_i_9_n_0\
    );
\reg_out[16]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[14]\,
      I1 => \decoded_imm_reg_n_0_[14]\,
      O => \reg_out[16]_i_10_n_0\
    );
\reg_out[16]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[13]\,
      I1 => \decoded_imm_reg_n_0_[13]\,
      O => \reg_out[16]_i_11_n_0\
    );
\reg_out[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08AA08AA"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[0]\,
      I1 => mem_axi_rdata(16),
      I2 => \reg_out[31]_i_6_n_0\,
      I3 => \reg_out[31]_i_7_n_0\,
      I4 => \reg_out[31]_i_8_n_0\,
      I5 => \^latched_is_lh_reg_0\,
      O => \reg_out[16]_i_2_n_0\
    );
\reg_out[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg_out_reg[16]_i_6_n_4\,
      I1 => \^q\(1),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^reg_op1_reg[31]_0\(16),
      O => \reg_out[16]_i_4_n_0\
    );
\reg_out[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[16]_i_7_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(16),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[16]_i_5_n_0\
    );
\reg_out[16]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FF880088"
    )
        port map (
      I0 => data3(16),
      I1 => instr_rdinstrh,
      I2 => count_cycle_reg(48),
      I3 => instr_rdinstr,
      I4 => \count_instr_reg_n_0_[16]\,
      I5 => instr_rdcycleh,
      O => \reg_out[16]_i_7_n_0\
    );
\reg_out[16]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[16]\,
      I1 => \decoded_imm_reg_n_0_[16]\,
      O => \reg_out[16]_i_8_n_0\
    );
\reg_out[16]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[15]\,
      I1 => \decoded_imm_reg_n_0_[15]\,
      O => \reg_out[16]_i_9_n_0\
    );
\reg_out[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08AA08AA"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[0]\,
      I1 => mem_axi_rdata(17),
      I2 => \reg_out[31]_i_6_n_0\,
      I3 => \reg_out[31]_i_7_n_0\,
      I4 => \reg_out[31]_i_8_n_0\,
      I5 => \^latched_is_lh_reg_0\,
      O => \reg_out[17]_i_2_n_0\
    );
\reg_out[17]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg_out_reg[20]_i_6_n_7\,
      I1 => \^q\(1),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^reg_op1_reg[31]_0\(17),
      O => \reg_out[17]_i_4_n_0\
    );
\reg_out[17]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[17]_i_6_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(17),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[17]_i_5_n_0\
    );
\reg_out[17]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000B888B888"
    )
        port map (
      I0 => \count_instr_reg_n_0_[17]\,
      I1 => instr_rdinstr,
      I2 => data3(17),
      I3 => instr_rdinstrh,
      I4 => count_cycle_reg(49),
      I5 => instr_rdcycleh,
      O => \reg_out[17]_i_6_n_0\
    );
\reg_out[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08AA08AA"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[0]\,
      I1 => mem_axi_rdata(18),
      I2 => \reg_out[31]_i_6_n_0\,
      I3 => \reg_out[31]_i_7_n_0\,
      I4 => \reg_out[31]_i_8_n_0\,
      I5 => \^latched_is_lh_reg_0\,
      O => \reg_out[18]_i_2_n_0\
    );
\reg_out[18]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg_out_reg[20]_i_6_n_6\,
      I1 => \^q\(1),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^reg_op1_reg[31]_0\(18),
      O => \reg_out[18]_i_4_n_0\
    );
\reg_out[18]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[18]_i_6_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(18),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[18]_i_5_n_0\
    );
\reg_out[18]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FF880088"
    )
        port map (
      I0 => data3(18),
      I1 => instr_rdinstrh,
      I2 => count_cycle_reg(50),
      I3 => instr_rdinstr,
      I4 => \count_instr_reg_n_0_[18]\,
      I5 => instr_rdcycleh,
      O => \reg_out[18]_i_6_n_0\
    );
\reg_out[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08AA08AA"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[0]\,
      I1 => mem_axi_rdata(19),
      I2 => \reg_out[31]_i_6_n_0\,
      I3 => \reg_out[31]_i_7_n_0\,
      I4 => \reg_out[31]_i_8_n_0\,
      I5 => \^latched_is_lh_reg_0\,
      O => \reg_out[19]_i_2_n_0\
    );
\reg_out[19]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg_out_reg[20]_i_6_n_5\,
      I1 => \^q\(1),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^reg_op1_reg[31]_0\(19),
      O => \reg_out[19]_i_4_n_0\
    );
\reg_out[19]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[19]_i_8_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(19),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[19]_i_5_n_0\
    );
\reg_out[19]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FF880088"
    )
        port map (
      I0 => data3(19),
      I1 => instr_rdinstrh,
      I2 => count_cycle_reg(51),
      I3 => instr_rdinstr,
      I4 => \count_instr_reg_n_0_[19]\,
      I5 => instr_rdcycleh,
      O => \reg_out[19]_i_8_n_0\
    );
\reg_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0E0000000E000"
    )
        port map (
      I0 => pcpi_mul_n_96,
      I1 => instr_rdinstrh,
      I2 => \cpu_state_reg_n_0_[5]\,
      I3 => \reg_out[1]_i_4_n_0\,
      I4 => instr_rdcycle,
      I5 => count_cycle_reg(1),
      O => \reg_out[1]_i_2_n_0\
    );
\reg_out[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAFFEAFFEAEAEA"
    )
        port map (
      I0 => \reg_out[1]_i_5_n_0\,
      I1 => \^reg_op1_reg[31]_0\(1),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^q\(1),
      I4 => \decoded_imm_reg_n_0_[1]\,
      I5 => \reg_pc_reg_n_0_[1]\,
      O => \reg_out[1]_i_3_n_0\
    );
\reg_out[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000B888B888"
    )
        port map (
      I0 => \count_instr_reg_n_0_[1]\,
      I1 => instr_rdinstr,
      I2 => data3(1),
      I3 => instr_rdinstrh,
      I4 => count_cycle_reg(33),
      I5 => instr_rdcycleh,
      O => \reg_out[1]_i_4_n_0\
    );
\reg_out[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBB888B8"
    )
        port map (
      I0 => \reg_out[1]_i_6_n_0\,
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => mem_axi_rdata(17),
      I3 => \reg_out[15]_i_6_n_0\,
      I4 => mem_axi_rdata(1),
      I5 => \reg_out[7]_i_6_n_0\,
      O => \reg_out[1]_i_5_n_0\
    );
\reg_out[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => mem_axi_rdata(1),
      I1 => mem_axi_rdata(9),
      I2 => mem_axi_rdata(17),
      I3 => \^reg_op1_reg[31]_0\(1),
      I4 => \^reg_op1_reg[31]_0\(0),
      I5 => mem_axi_rdata(25),
      O => \reg_out[1]_i_6_n_0\
    );
\reg_out[20]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[19]\,
      I1 => \decoded_imm_reg_n_0_[19]\,
      O => \reg_out[20]_i_10_n_0\
    );
\reg_out[20]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[18]\,
      I1 => \decoded_imm_reg_n_0_[18]\,
      O => \reg_out[20]_i_11_n_0\
    );
\reg_out[20]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[17]\,
      I1 => \decoded_imm_reg_n_0_[17]\,
      O => \reg_out[20]_i_12_n_0\
    );
\reg_out[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08AA08AA"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[0]\,
      I1 => mem_axi_rdata(20),
      I2 => \reg_out[31]_i_6_n_0\,
      I3 => \reg_out[31]_i_7_n_0\,
      I4 => \reg_out[31]_i_8_n_0\,
      I5 => \^latched_is_lh_reg_0\,
      O => \reg_out[20]_i_2_n_0\
    );
\reg_out[20]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[2]\,
      I1 => \^reg_op1_reg[31]_0\(20),
      I2 => \reg_out_reg[20]_i_6_n_4\,
      I3 => \^q\(1),
      O => \reg_out[20]_i_3_n_0\
    );
\reg_out[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0E0000000E000"
    )
        port map (
      I0 => pcpi_mul_n_96,
      I1 => instr_rdinstrh,
      I2 => \cpu_state_reg_n_0_[5]\,
      I3 => \reg_out[20]_i_8_n_0\,
      I4 => instr_rdcycle,
      I5 => count_cycle_reg(20),
      O => \reg_out[20]_i_5_n_0\
    );
\reg_out[20]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000B888B888"
    )
        port map (
      I0 => \count_instr_reg_n_0_[20]\,
      I1 => instr_rdinstr,
      I2 => data3(20),
      I3 => instr_rdinstrh,
      I4 => count_cycle_reg(52),
      I5 => instr_rdcycleh,
      O => \reg_out[20]_i_8_n_0\
    );
\reg_out[20]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[20]\,
      I1 => \decoded_imm_reg_n_0_[20]\,
      O => \reg_out[20]_i_9_n_0\
    );
\reg_out[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08AA08AA"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[0]\,
      I1 => mem_axi_rdata(21),
      I2 => \reg_out[31]_i_6_n_0\,
      I3 => \reg_out[31]_i_7_n_0\,
      I4 => \reg_out[31]_i_8_n_0\,
      I5 => \^latched_is_lh_reg_0\,
      O => \reg_out[21]_i_2_n_0\
    );
\reg_out[21]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg_out_reg[24]_i_6_n_7\,
      I1 => \^q\(1),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^reg_op1_reg[31]_0\(21),
      O => \reg_out[21]_i_4_n_0\
    );
\reg_out[21]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[21]_i_6_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(21),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[21]_i_5_n_0\
    );
\reg_out[21]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FF880088"
    )
        port map (
      I0 => data3(21),
      I1 => instr_rdinstrh,
      I2 => count_cycle_reg(53),
      I3 => instr_rdinstr,
      I4 => \count_instr_reg_n_0_[21]\,
      I5 => instr_rdcycleh,
      O => \reg_out[21]_i_6_n_0\
    );
\reg_out[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08AA08AA"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[0]\,
      I1 => mem_axi_rdata(22),
      I2 => \reg_out[31]_i_6_n_0\,
      I3 => \reg_out[31]_i_7_n_0\,
      I4 => \reg_out[31]_i_8_n_0\,
      I5 => \^latched_is_lh_reg_0\,
      O => \reg_out[22]_i_2_n_0\
    );
\reg_out[22]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg_out_reg[24]_i_6_n_6\,
      I1 => \^q\(1),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^reg_op1_reg[31]_0\(22),
      O => \reg_out[22]_i_4_n_0\
    );
\reg_out[22]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[22]_i_6_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(22),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[22]_i_5_n_0\
    );
\reg_out[22]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FF880088"
    )
        port map (
      I0 => data3(22),
      I1 => instr_rdinstrh,
      I2 => count_cycle_reg(54),
      I3 => instr_rdinstr,
      I4 => \count_instr_reg_n_0_[22]\,
      I5 => instr_rdcycleh,
      O => \reg_out[22]_i_6_n_0\
    );
\reg_out[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08AA08AA"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[0]\,
      I1 => mem_axi_rdata(23),
      I2 => \reg_out[31]_i_6_n_0\,
      I3 => \reg_out[31]_i_7_n_0\,
      I4 => \reg_out[31]_i_8_n_0\,
      I5 => \^latched_is_lh_reg_0\,
      O => \reg_out[23]_i_2_n_0\
    );
\reg_out[23]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg_out_reg[24]_i_6_n_5\,
      I1 => \^q\(1),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^reg_op1_reg[31]_0\(23),
      O => \reg_out[23]_i_4_n_0\
    );
\reg_out[23]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[23]_i_8_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(23),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[23]_i_5_n_0\
    );
\reg_out[23]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FF880088"
    )
        port map (
      I0 => data3(23),
      I1 => instr_rdinstrh,
      I2 => count_cycle_reg(55),
      I3 => instr_rdinstr,
      I4 => \count_instr_reg_n_0_[23]\,
      I5 => instr_rdcycleh,
      O => \reg_out[23]_i_8_n_0\
    );
\reg_out[24]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[22]\,
      I1 => \decoded_imm_reg_n_0_[22]\,
      O => \reg_out[24]_i_10_n_0\
    );
\reg_out[24]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[21]\,
      I1 => \decoded_imm_reg_n_0_[21]\,
      O => \reg_out[24]_i_11_n_0\
    );
\reg_out[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08AA08AA"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[0]\,
      I1 => mem_axi_rdata(24),
      I2 => \reg_out[31]_i_6_n_0\,
      I3 => \reg_out[31]_i_7_n_0\,
      I4 => \reg_out[31]_i_8_n_0\,
      I5 => \^latched_is_lh_reg_0\,
      O => \reg_out[24]_i_2_n_0\
    );
\reg_out[24]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg_out_reg[24]_i_6_n_4\,
      I1 => \^q\(1),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^reg_op1_reg[31]_0\(24),
      O => \reg_out[24]_i_4_n_0\
    );
\reg_out[24]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[24]_i_7_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(24),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[24]_i_5_n_0\
    );
\reg_out[24]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FF880088"
    )
        port map (
      I0 => data3(24),
      I1 => instr_rdinstrh,
      I2 => count_cycle_reg(56),
      I3 => instr_rdinstr,
      I4 => \count_instr_reg_n_0_[24]\,
      I5 => instr_rdcycleh,
      O => \reg_out[24]_i_7_n_0\
    );
\reg_out[24]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[24]\,
      I1 => \decoded_imm_reg_n_0_[24]\,
      O => \reg_out[24]_i_8_n_0\
    );
\reg_out[24]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[23]\,
      I1 => \decoded_imm_reg_n_0_[23]\,
      O => \reg_out[24]_i_9_n_0\
    );
\reg_out[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08AA08AA"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[0]\,
      I1 => mem_axi_rdata(25),
      I2 => \reg_out[31]_i_6_n_0\,
      I3 => \reg_out[31]_i_7_n_0\,
      I4 => \reg_out[31]_i_8_n_0\,
      I5 => \^latched_is_lh_reg_0\,
      O => \reg_out[25]_i_2_n_0\
    );
\reg_out[25]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg_out_reg[28]_i_6_n_7\,
      I1 => \^q\(1),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^reg_op1_reg[31]_0\(25),
      O => \reg_out[25]_i_4_n_0\
    );
\reg_out[25]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[25]_i_6_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(25),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[25]_i_5_n_0\
    );
\reg_out[25]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FF880088"
    )
        port map (
      I0 => data3(25),
      I1 => instr_rdinstrh,
      I2 => count_cycle_reg(57),
      I3 => instr_rdinstr,
      I4 => \count_instr_reg_n_0_[25]\,
      I5 => instr_rdcycleh,
      O => \reg_out[25]_i_6_n_0\
    );
\reg_out[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08AA08AA"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[0]\,
      I1 => mem_axi_rdata(26),
      I2 => \reg_out[31]_i_6_n_0\,
      I3 => \reg_out[31]_i_7_n_0\,
      I4 => \reg_out[31]_i_8_n_0\,
      I5 => \^latched_is_lh_reg_0\,
      O => \reg_out[26]_i_2_n_0\
    );
\reg_out[26]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg_out_reg[28]_i_6_n_6\,
      I1 => \^q\(1),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^reg_op1_reg[31]_0\(26),
      O => \reg_out[26]_i_4_n_0\
    );
\reg_out[26]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[26]_i_6_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(26),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[26]_i_5_n_0\
    );
\reg_out[26]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000B888B888"
    )
        port map (
      I0 => \count_instr_reg_n_0_[26]\,
      I1 => instr_rdinstr,
      I2 => data3(26),
      I3 => instr_rdinstrh,
      I4 => count_cycle_reg(58),
      I5 => instr_rdcycleh,
      O => \reg_out[26]_i_6_n_0\
    );
\reg_out[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08AA08AA"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[0]\,
      I1 => mem_axi_rdata(27),
      I2 => \reg_out[31]_i_6_n_0\,
      I3 => \reg_out[31]_i_7_n_0\,
      I4 => \reg_out[31]_i_8_n_0\,
      I5 => \^latched_is_lh_reg_0\,
      O => \reg_out[27]_i_2_n_0\
    );
\reg_out[27]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg_out_reg[28]_i_6_n_5\,
      I1 => \^q\(1),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^reg_op1_reg[31]_0\(27),
      O => \reg_out[27]_i_4_n_0\
    );
\reg_out[27]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[27]_i_8_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(27),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[27]_i_5_n_0\
    );
\reg_out[27]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => count_cycle_reg(59),
      I1 => instr_rdcycleh,
      I2 => \count_instr_reg_n_0_[27]\,
      I3 => instr_rdinstr,
      I4 => data3(27),
      I5 => instr_rdinstrh,
      O => \reg_out[27]_i_8_n_0\
    );
\reg_out[28]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[26]\,
      I1 => \decoded_imm_reg_n_0_[26]\,
      O => \reg_out[28]_i_10_n_0\
    );
\reg_out[28]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[25]\,
      I1 => \decoded_imm_reg_n_0_[25]\,
      O => \reg_out[28]_i_11_n_0\
    );
\reg_out[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08AA08AA"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[0]\,
      I1 => mem_axi_rdata(28),
      I2 => \reg_out[31]_i_6_n_0\,
      I3 => \reg_out[31]_i_7_n_0\,
      I4 => \reg_out[31]_i_8_n_0\,
      I5 => \^latched_is_lh_reg_0\,
      O => \reg_out[28]_i_2_n_0\
    );
\reg_out[28]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg_out_reg[28]_i_6_n_4\,
      I1 => \^q\(1),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^reg_op1_reg[31]_0\(28),
      O => \reg_out[28]_i_4_n_0\
    );
\reg_out[28]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[28]_i_7_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(28),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[28]_i_5_n_0\
    );
\reg_out[28]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => count_cycle_reg(60),
      I1 => instr_rdcycleh,
      I2 => \count_instr_reg_n_0_[28]\,
      I3 => instr_rdinstr,
      I4 => data3(28),
      I5 => instr_rdinstrh,
      O => \reg_out[28]_i_7_n_0\
    );
\reg_out[28]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[28]\,
      I1 => \decoded_imm_reg_n_0_[28]\,
      O => \reg_out[28]_i_8_n_0\
    );
\reg_out[28]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[27]\,
      I1 => \decoded_imm_reg_n_0_[27]\,
      O => \reg_out[28]_i_9_n_0\
    );
\reg_out[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08AA08AA"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[0]\,
      I1 => mem_axi_rdata(29),
      I2 => \reg_out[31]_i_6_n_0\,
      I3 => \reg_out[31]_i_7_n_0\,
      I4 => \reg_out[31]_i_8_n_0\,
      I5 => \^latched_is_lh_reg_0\,
      O => \reg_out[29]_i_2_n_0\
    );
\reg_out[29]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg_out_reg[31]_i_11_n_7\,
      I1 => \^q\(1),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^reg_op1_reg[31]_0\(29),
      O => \reg_out[29]_i_4_n_0\
    );
\reg_out[29]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7077707077777777"
    )
        port map (
      I0 => count_cycle_reg(29),
      I1 => instr_rdcycle,
      I2 => \reg_out[31]_i_12_n_0\,
      I3 => count_cycle_reg(61),
      I4 => instr_rdcycleh,
      I5 => \reg_out[29]_i_6_n_0\,
      O => \reg_out[29]_i_5_n_0\
    );
\reg_out[29]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => instr_rdcycleh,
      I1 => data3(29),
      I2 => instr_rdinstrh,
      I3 => instr_rdinstr,
      I4 => \count_instr_reg_n_0_[29]\,
      O => \reg_out[29]_i_6_n_0\
    );
\reg_out[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[2]_i_4_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(2),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[2]_i_2_n_0\
    );
\reg_out[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \reg_out[2]_i_5_n_0\,
      I1 => \^reg_op1_reg[31]_0\(2),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^q\(1),
      I4 => \reg_out_reg[4]_i_6_n_6\,
      O => \reg_out[2]_i_3_n_0\
    );
\reg_out[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000B888B888"
    )
        port map (
      I0 => \count_instr_reg_n_0_[2]\,
      I1 => instr_rdinstr,
      I2 => data3(2),
      I3 => instr_rdinstrh,
      I4 => count_cycle_reg(34),
      I5 => instr_rdcycleh,
      O => \reg_out[2]_i_4_n_0\
    );
\reg_out[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBB888B8"
    )
        port map (
      I0 => \reg_out[2]_i_6_n_0\,
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => mem_axi_rdata(18),
      I3 => \reg_out[15]_i_6_n_0\,
      I4 => mem_axi_rdata(2),
      I5 => \reg_out[7]_i_6_n_0\,
      O => \reg_out[2]_i_5_n_0\
    );
\reg_out[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => mem_axi_rdata(2),
      I1 => mem_axi_rdata(10),
      I2 => mem_axi_rdata(18),
      I3 => \^reg_op1_reg[31]_0\(1),
      I4 => \^reg_op1_reg[31]_0\(0),
      I5 => mem_axi_rdata(26),
      O => \reg_out[2]_i_6_n_0\
    );
\reg_out[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08AA08AA"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[0]\,
      I1 => mem_axi_rdata(30),
      I2 => \reg_out[31]_i_6_n_0\,
      I3 => \reg_out[31]_i_7_n_0\,
      I4 => \reg_out[31]_i_8_n_0\,
      I5 => \^latched_is_lh_reg_0\,
      O => \reg_out[30]_i_2_n_0\
    );
\reg_out[30]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg_out_reg[31]_i_11_n_6\,
      I1 => \^q\(1),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^reg_op1_reg[31]_0\(30),
      O => \reg_out[30]_i_4_n_0\
    );
\reg_out[30]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[30]_i_6_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(30),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[30]_i_5_n_0\
    );
\reg_out[30]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => count_cycle_reg(62),
      I1 => instr_rdcycleh,
      I2 => \count_instr_reg_n_0_[30]\,
      I3 => instr_rdinstr,
      I4 => data3(30),
      I5 => instr_rdinstrh,
      O => \reg_out[30]_i_6_n_0\
    );
\reg_out[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAB"
    )
        port map (
      I0 => instr_rdcycle,
      I1 => instr_rdinstr,
      I2 => instr_rdcycleh,
      I3 => instr_rdinstrh,
      O => \reg_out[31]_i_12_n_0\
    );
\reg_out[31]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAAEA"
    )
        port map (
      I0 => instr_rdcycleh,
      I1 => data3(31),
      I2 => instr_rdinstrh,
      I3 => instr_rdinstr,
      I4 => \count_instr_reg_n_0_[31]\,
      O => \reg_out[31]_i_13_n_0\
    );
\reg_out[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08AAAAAA08AA08AA"
    )
        port map (
      I0 => \cpu_state_reg_n_0_[0]\,
      I1 => mem_axi_rdata(31),
      I2 => \reg_out[31]_i_6_n_0\,
      I3 => \reg_out[31]_i_7_n_0\,
      I4 => \reg_out[31]_i_8_n_0\,
      I5 => \^latched_is_lh_reg_0\,
      O => \reg_out[31]_i_2_n_0\
    );
\reg_out[31]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \decoded_imm_reg_n_0_[31]\,
      I1 => \reg_pc_reg_n_0_[31]\,
      O => \reg_out[31]_i_22_n_0\
    );
\reg_out[31]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[30]\,
      I1 => \decoded_imm_reg_n_0_[30]\,
      O => \reg_out[31]_i_23_n_0\
    );
\reg_out[31]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[29]\,
      I1 => \decoded_imm_reg_n_0_[29]\,
      O => \reg_out[31]_i_24_n_0\
    );
\reg_out[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg_out_reg[31]_i_11_n_5\,
      I1 => \^q\(1),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^reg_op1_reg[31]_0\(31),
      O => \reg_out[31]_i_4_n_0\
    );
\reg_out[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7077707077777777"
    )
        port map (
      I0 => count_cycle_reg(31),
      I1 => instr_rdcycle,
      I2 => \reg_out[31]_i_12_n_0\,
      I3 => count_cycle_reg(63),
      I4 => instr_rdcycleh,
      I5 => \reg_out[31]_i_13_n_0\,
      O => \reg_out[31]_i_5_n_0\
    );
\reg_out[31]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \^latched_is_lu_reg_0\,
      I1 => \mem_wordsize_reg_n_0_[0]\,
      I2 => \mem_wordsize_reg_n_0_[1]\,
      O => \reg_out[31]_i_6_n_0\
    );
\reg_out[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \reg_out[7]_i_7_n_0\,
      I1 => \^latched_is_lb_reg_0\,
      O => \reg_out[31]_i_7_n_0\
    );
\reg_out[31]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF3555"
    )
        port map (
      I0 => mem_axi_rdata(15),
      I1 => mem_axi_rdata(31),
      I2 => \mem_wordsize_reg_n_0_[0]\,
      I3 => \^reg_op1_reg[31]_0\(1),
      I4 => \mem_wordsize_reg_n_0_[1]\,
      O => \reg_out[31]_i_8_n_0\
    );
\reg_out[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => mem_axi_rdata(3),
      I1 => mem_axi_rdata(11),
      I2 => mem_axi_rdata(19),
      I3 => \^reg_op1_reg[31]_0\(1),
      I4 => \^reg_op1_reg[31]_0\(0),
      I5 => mem_axi_rdata(27),
      O => \reg_out[3]_i_11_n_0\
    );
\reg_out[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[3]_i_5_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(3),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[3]_i_2_n_0\
    );
\reg_out[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \reg_out[3]_i_6_n_0\,
      I1 => \^reg_op1_reg[31]_0\(3),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^q\(1),
      I4 => \reg_out_reg[4]_i_6_n_5\,
      O => \reg_out[3]_i_3_n_0\
    );
\reg_out[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FF880088"
    )
        port map (
      I0 => data3(3),
      I1 => instr_rdinstrh,
      I2 => count_cycle_reg(35),
      I3 => instr_rdinstr,
      I4 => \count_instr_reg_n_0_[3]\,
      I5 => instr_rdcycleh,
      O => \reg_out[3]_i_5_n_0\
    );
\reg_out[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBB888B8"
    )
        port map (
      I0 => \reg_out[3]_i_11_n_0\,
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => mem_axi_rdata(19),
      I3 => \reg_out[15]_i_6_n_0\,
      I4 => mem_axi_rdata(3),
      I5 => \reg_out[7]_i_6_n_0\,
      O => \reg_out[3]_i_6_n_0\
    );
\reg_out[4]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[2]\,
      I1 => \decoded_imm_reg_n_0_[2]\,
      O => \reg_out[4]_i_10_n_0\
    );
\reg_out[4]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[1]\,
      I1 => \decoded_imm_reg_n_0_[1]\,
      O => \reg_out[4]_i_11_n_0\
    );
\reg_out[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[4]_i_4_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(4),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[4]_i_2_n_0\
    );
\reg_out[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \reg_out[4]_i_5_n_0\,
      I1 => \^reg_op1_reg[31]_0\(4),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^q\(1),
      I4 => \reg_out_reg[4]_i_6_n_4\,
      O => \reg_out[4]_i_3_n_0\
    );
\reg_out[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FF880088"
    )
        port map (
      I0 => data3(4),
      I1 => instr_rdinstrh,
      I2 => count_cycle_reg(36),
      I3 => instr_rdinstr,
      I4 => \count_instr_reg_n_0_[4]\,
      I5 => instr_rdcycleh,
      O => \reg_out[4]_i_4_n_0\
    );
\reg_out[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBB888B8"
    )
        port map (
      I0 => \reg_out[4]_i_7_n_0\,
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => mem_axi_rdata(20),
      I3 => \reg_out[15]_i_6_n_0\,
      I4 => mem_axi_rdata(4),
      I5 => \reg_out[7]_i_6_n_0\,
      O => \reg_out[4]_i_5_n_0\
    );
\reg_out[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => mem_axi_rdata(4),
      I1 => mem_axi_rdata(12),
      I2 => mem_axi_rdata(20),
      I3 => \^reg_op1_reg[31]_0\(1),
      I4 => \^reg_op1_reg[31]_0\(0),
      I5 => mem_axi_rdata(28),
      O => \reg_out[4]_i_7_n_0\
    );
\reg_out[4]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[4]\,
      I1 => \decoded_imm_reg_n_0_[4]\,
      O => \reg_out[4]_i_8_n_0\
    );
\reg_out[4]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[3]\,
      I1 => \decoded_imm_reg_n_0_[3]\,
      O => \reg_out[4]_i_9_n_0\
    );
\reg_out[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[5]_i_4_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(5),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[5]_i_2_n_0\
    );
\reg_out[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \reg_out[5]_i_5_n_0\,
      I1 => \^reg_op1_reg[31]_0\(5),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^q\(1),
      I4 => \reg_out_reg[8]_i_6_n_7\,
      O => \reg_out[5]_i_3_n_0\
    );
\reg_out[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FF880088"
    )
        port map (
      I0 => data3(5),
      I1 => instr_rdinstrh,
      I2 => count_cycle_reg(37),
      I3 => instr_rdinstr,
      I4 => \count_instr_reg_n_0_[5]\,
      I5 => instr_rdcycleh,
      O => \reg_out[5]_i_4_n_0\
    );
\reg_out[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBB888B8"
    )
        port map (
      I0 => \reg_out[5]_i_6_n_0\,
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => mem_axi_rdata(21),
      I3 => \reg_out[15]_i_6_n_0\,
      I4 => mem_axi_rdata(5),
      I5 => \reg_out[7]_i_6_n_0\,
      O => \reg_out[5]_i_5_n_0\
    );
\reg_out[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => mem_axi_rdata(5),
      I1 => mem_axi_rdata(13),
      I2 => mem_axi_rdata(21),
      I3 => \^reg_op1_reg[31]_0\(1),
      I4 => \^reg_op1_reg[31]_0\(0),
      I5 => mem_axi_rdata(29),
      O => \reg_out[5]_i_6_n_0\
    );
\reg_out[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[6]_i_4_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(6),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[6]_i_2_n_0\
    );
\reg_out[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \reg_out[6]_i_5_n_0\,
      I1 => \^reg_op1_reg[31]_0\(6),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^q\(1),
      I4 => \reg_out_reg[8]_i_6_n_6\,
      O => \reg_out[6]_i_3_n_0\
    );
\reg_out[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000B888B888"
    )
        port map (
      I0 => \count_instr_reg_n_0_[6]\,
      I1 => instr_rdinstr,
      I2 => data3(6),
      I3 => instr_rdinstrh,
      I4 => count_cycle_reg(38),
      I5 => instr_rdcycleh,
      O => \reg_out[6]_i_4_n_0\
    );
\reg_out[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBB888B8"
    )
        port map (
      I0 => \reg_out[6]_i_6_n_0\,
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => mem_axi_rdata(22),
      I3 => \reg_out[15]_i_6_n_0\,
      I4 => mem_axi_rdata(6),
      I5 => \reg_out[7]_i_6_n_0\,
      O => \reg_out[6]_i_5_n_0\
    );
\reg_out[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => mem_axi_rdata(6),
      I1 => mem_axi_rdata(14),
      I2 => mem_axi_rdata(22),
      I3 => \^reg_op1_reg[31]_0\(1),
      I4 => \^reg_op1_reg[31]_0\(0),
      I5 => mem_axi_rdata(30),
      O => \reg_out[6]_i_6_n_0\
    );
\reg_out[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3300550F33FF550F"
    )
        port map (
      I0 => mem_axi_rdata(23),
      I1 => mem_axi_rdata(31),
      I2 => mem_axi_rdata(7),
      I3 => \^reg_op1_reg[31]_0\(1),
      I4 => \^reg_op1_reg[31]_0\(0),
      I5 => mem_axi_rdata(15),
      O => \reg_out[7]_i_12_n_0\
    );
\reg_out[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[7]_i_5_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(7),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[7]_i_2_n_0\
    );
\reg_out[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF111F111F111"
    )
        port map (
      I0 => \reg_out[7]_i_6_n_0\,
      I1 => \reg_out[7]_i_7_n_0\,
      I2 => \^reg_op1_reg[31]_0\(7),
      I3 => \cpu_state_reg_n_0_[2]\,
      I4 => \^q\(1),
      I5 => \reg_out_reg[8]_i_6_n_5\,
      O => \reg_out[7]_i_3_n_0\
    );
\reg_out[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FF880088"
    )
        port map (
      I0 => data3(7),
      I1 => instr_rdinstrh,
      I2 => count_cycle_reg(39),
      I3 => instr_rdinstr,
      I4 => \count_instr_reg_n_0_[7]\,
      I5 => instr_rdcycleh,
      O => \reg_out[7]_i_5_n_0\
    );
\reg_out[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \^latched_is_lh_reg_0\,
      I1 => \^latched_is_lu_reg_0\,
      I2 => \^latched_is_lb_reg_0\,
      I3 => \cpu_state_reg_n_0_[0]\,
      O => \reg_out[7]_i_6_n_0\
    );
\reg_out[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888B8B8BBB8B8B8B"
    )
        port map (
      I0 => \reg_out[7]_i_12_n_0\,
      I1 => \mem_wordsize_reg_n_0_[1]\,
      I2 => mem_axi_rdata(7),
      I3 => \^reg_op1_reg[31]_0\(1),
      I4 => \mem_wordsize_reg_n_0_[0]\,
      I5 => mem_axi_rdata(23),
      O => \reg_out[7]_i_7_n_0\
    );
\reg_out[8]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[6]\,
      I1 => \decoded_imm_reg_n_0_[6]\,
      O => \reg_out[8]_i_10_n_0\
    );
\reg_out[8]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[5]\,
      I1 => \decoded_imm_reg_n_0_[5]\,
      O => \reg_out[8]_i_11_n_0\
    );
\reg_out[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888A8A8AAA8A8A8A"
    )
        port map (
      I0 => \reg_out[31]_i_7_n_0\,
      I1 => \reg_out[14]_i_6_n_0\,
      I2 => mem_axi_rdata(8),
      I3 => \^reg_op1_reg[31]_0\(1),
      I4 => \mem_wordsize_reg_n_0_[0]\,
      I5 => mem_axi_rdata(24),
      O => \reg_out[8]_i_2_n_0\
    );
\reg_out[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg_out_reg[8]_i_6_n_4\,
      I1 => \^q\(1),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^reg_op1_reg[31]_0\(8),
      O => \reg_out[8]_i_4_n_0\
    );
\reg_out[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[8]_i_7_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(8),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[8]_i_5_n_0\
    );
\reg_out[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FF880088"
    )
        port map (
      I0 => data3(8),
      I1 => instr_rdinstrh,
      I2 => count_cycle_reg(40),
      I3 => instr_rdinstr,
      I4 => \count_instr_reg_n_0_[8]\,
      I5 => instr_rdcycleh,
      O => \reg_out[8]_i_7_n_0\
    );
\reg_out[8]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[8]\,
      I1 => \decoded_imm_reg_n_0_[8]\,
      O => \reg_out[8]_i_8_n_0\
    );
\reg_out[8]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reg_pc_reg_n_0_[7]\,
      I1 => \decoded_imm_reg_n_0_[7]\,
      O => \reg_out[8]_i_9_n_0\
    );
\reg_out[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888A8A8AAA8A8A8A"
    )
        port map (
      I0 => \reg_out[31]_i_7_n_0\,
      I1 => \reg_out[14]_i_6_n_0\,
      I2 => mem_axi_rdata(9),
      I3 => \^reg_op1_reg[31]_0\(1),
      I4 => \mem_wordsize_reg_n_0_[0]\,
      I5 => mem_axi_rdata(25),
      O => \reg_out[9]_i_2_n_0\
    );
\reg_out[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg_out_reg[12]_i_6_n_7\,
      I1 => \^q\(1),
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \^reg_op1_reg[31]_0\(9),
      O => \reg_out[9]_i_4_n_0\
    );
\reg_out[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \reg_out[9]_i_6_n_0\,
      I1 => instr_rdcycle,
      I2 => count_cycle_reg(9),
      I3 => \cpu_state_reg_n_0_[5]\,
      O => \reg_out[9]_i_5_n_0\
    );
\reg_out[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000B888B888"
    )
        port map (
      I0 => \count_instr_reg_n_0_[9]\,
      I1 => instr_rdinstr,
      I2 => data3(9),
      I3 => instr_rdinstrh,
      I4 => count_cycle_reg(41),
      I5 => instr_rdcycleh,
      O => \reg_out[9]_i_6_n_0\
    );
\reg_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_63,
      Q => \reg_out_reg_n_0_[0]\,
      R => '0'
    );
\reg_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_53,
      Q => \reg_out_reg_n_0_[10]\,
      R => '0'
    );
\reg_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_52,
      Q => \reg_out_reg_n_0_[11]\,
      R => '0'
    );
\reg_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_51,
      Q => \reg_out_reg_n_0_[12]\,
      R => '0'
    );
\reg_out_reg[12]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_out_reg[8]_i_6_n_0\,
      CO(3) => \reg_out_reg[12]_i_6_n_0\,
      CO(2) => \reg_out_reg[12]_i_6_n_1\,
      CO(1) => \reg_out_reg[12]_i_6_n_2\,
      CO(0) => \reg_out_reg[12]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \reg_pc_reg_n_0_[12]\,
      DI(2) => \reg_pc_reg_n_0_[11]\,
      DI(1) => \reg_pc_reg_n_0_[10]\,
      DI(0) => \reg_pc_reg_n_0_[9]\,
      O(3) => \reg_out_reg[12]_i_6_n_4\,
      O(2) => \reg_out_reg[12]_i_6_n_5\,
      O(1) => \reg_out_reg[12]_i_6_n_6\,
      O(0) => \reg_out_reg[12]_i_6_n_7\,
      S(3) => \reg_out[12]_i_8_n_0\,
      S(2) => \reg_out[12]_i_9_n_0\,
      S(1) => \reg_out[12]_i_10_n_0\,
      S(0) => \reg_out[12]_i_11_n_0\
    );
\reg_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_50,
      Q => \reg_out_reg_n_0_[13]\,
      R => '0'
    );
\reg_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_49,
      Q => \reg_out_reg_n_0_[14]\,
      R => '0'
    );
\reg_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_48,
      Q => \reg_out_reg_n_0_[15]\,
      R => '0'
    );
\reg_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_47,
      Q => \reg_out_reg_n_0_[16]\,
      R => '0'
    );
\reg_out_reg[16]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_out_reg[12]_i_6_n_0\,
      CO(3) => \reg_out_reg[16]_i_6_n_0\,
      CO(2) => \reg_out_reg[16]_i_6_n_1\,
      CO(1) => \reg_out_reg[16]_i_6_n_2\,
      CO(0) => \reg_out_reg[16]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \reg_pc_reg_n_0_[16]\,
      DI(2) => \reg_pc_reg_n_0_[15]\,
      DI(1) => \reg_pc_reg_n_0_[14]\,
      DI(0) => \reg_pc_reg_n_0_[13]\,
      O(3) => \reg_out_reg[16]_i_6_n_4\,
      O(2) => \reg_out_reg[16]_i_6_n_5\,
      O(1) => \reg_out_reg[16]_i_6_n_6\,
      O(0) => \reg_out_reg[16]_i_6_n_7\,
      S(3) => \reg_out[16]_i_8_n_0\,
      S(2) => \reg_out[16]_i_9_n_0\,
      S(1) => \reg_out[16]_i_10_n_0\,
      S(0) => \reg_out[16]_i_11_n_0\
    );
\reg_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_46,
      Q => \reg_out_reg_n_0_[17]\,
      R => '0'
    );
\reg_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_45,
      Q => \reg_out_reg_n_0_[18]\,
      R => '0'
    );
\reg_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_44,
      Q => \reg_out_reg_n_0_[19]\,
      R => '0'
    );
\reg_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_62,
      Q => \reg_out_reg_n_0_[1]\,
      R => '0'
    );
\reg_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_43,
      Q => \reg_out_reg_n_0_[20]\,
      R => '0'
    );
\reg_out_reg[20]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_out_reg[16]_i_6_n_0\,
      CO(3) => \reg_out_reg[20]_i_6_n_0\,
      CO(2) => \reg_out_reg[20]_i_6_n_1\,
      CO(1) => \reg_out_reg[20]_i_6_n_2\,
      CO(0) => \reg_out_reg[20]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \reg_pc_reg_n_0_[20]\,
      DI(2) => \reg_pc_reg_n_0_[19]\,
      DI(1) => \reg_pc_reg_n_0_[18]\,
      DI(0) => \reg_pc_reg_n_0_[17]\,
      O(3) => \reg_out_reg[20]_i_6_n_4\,
      O(2) => \reg_out_reg[20]_i_6_n_5\,
      O(1) => \reg_out_reg[20]_i_6_n_6\,
      O(0) => \reg_out_reg[20]_i_6_n_7\,
      S(3) => \reg_out[20]_i_9_n_0\,
      S(2) => \reg_out[20]_i_10_n_0\,
      S(1) => \reg_out[20]_i_11_n_0\,
      S(0) => \reg_out[20]_i_12_n_0\
    );
\reg_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_42,
      Q => \reg_out_reg_n_0_[21]\,
      R => '0'
    );
\reg_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_41,
      Q => \reg_out_reg_n_0_[22]\,
      R => '0'
    );
\reg_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_40,
      Q => \reg_out_reg_n_0_[23]\,
      R => '0'
    );
\reg_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_39,
      Q => \reg_out_reg_n_0_[24]\,
      R => '0'
    );
\reg_out_reg[24]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_out_reg[20]_i_6_n_0\,
      CO(3) => \reg_out_reg[24]_i_6_n_0\,
      CO(2) => \reg_out_reg[24]_i_6_n_1\,
      CO(1) => \reg_out_reg[24]_i_6_n_2\,
      CO(0) => \reg_out_reg[24]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \reg_pc_reg_n_0_[24]\,
      DI(2) => \reg_pc_reg_n_0_[23]\,
      DI(1) => \reg_pc_reg_n_0_[22]\,
      DI(0) => \reg_pc_reg_n_0_[21]\,
      O(3) => \reg_out_reg[24]_i_6_n_4\,
      O(2) => \reg_out_reg[24]_i_6_n_5\,
      O(1) => \reg_out_reg[24]_i_6_n_6\,
      O(0) => \reg_out_reg[24]_i_6_n_7\,
      S(3) => \reg_out[24]_i_8_n_0\,
      S(2) => \reg_out[24]_i_9_n_0\,
      S(1) => \reg_out[24]_i_10_n_0\,
      S(0) => \reg_out[24]_i_11_n_0\
    );
\reg_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_38,
      Q => \reg_out_reg_n_0_[25]\,
      R => '0'
    );
\reg_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_37,
      Q => \reg_out_reg_n_0_[26]\,
      R => '0'
    );
\reg_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_36,
      Q => \reg_out_reg_n_0_[27]\,
      R => '0'
    );
\reg_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_35,
      Q => \reg_out_reg_n_0_[28]\,
      R => '0'
    );
\reg_out_reg[28]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_out_reg[24]_i_6_n_0\,
      CO(3) => \reg_out_reg[28]_i_6_n_0\,
      CO(2) => \reg_out_reg[28]_i_6_n_1\,
      CO(1) => \reg_out_reg[28]_i_6_n_2\,
      CO(0) => \reg_out_reg[28]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \reg_pc_reg_n_0_[28]\,
      DI(2) => \reg_pc_reg_n_0_[27]\,
      DI(1) => \reg_pc_reg_n_0_[26]\,
      DI(0) => \reg_pc_reg_n_0_[25]\,
      O(3) => \reg_out_reg[28]_i_6_n_4\,
      O(2) => \reg_out_reg[28]_i_6_n_5\,
      O(1) => \reg_out_reg[28]_i_6_n_6\,
      O(0) => \reg_out_reg[28]_i_6_n_7\,
      S(3) => \reg_out[28]_i_8_n_0\,
      S(2) => \reg_out[28]_i_9_n_0\,
      S(1) => \reg_out[28]_i_10_n_0\,
      S(0) => \reg_out[28]_i_11_n_0\
    );
\reg_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_34,
      Q => \reg_out_reg_n_0_[29]\,
      R => '0'
    );
\reg_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_61,
      Q => \reg_out_reg_n_0_[2]\,
      R => '0'
    );
\reg_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_33,
      Q => \reg_out_reg_n_0_[30]\,
      R => '0'
    );
\reg_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_32,
      Q => \reg_out_reg_n_0_[31]\,
      R => '0'
    );
\reg_out_reg[31]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_out_reg[28]_i_6_n_0\,
      CO(3 downto 2) => \NLW_reg_out_reg[31]_i_11_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \reg_out_reg[31]_i_11_n_2\,
      CO(0) => \reg_out_reg[31]_i_11_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \reg_pc_reg_n_0_[30]\,
      DI(0) => \reg_pc_reg_n_0_[29]\,
      O(3) => \NLW_reg_out_reg[31]_i_11_O_UNCONNECTED\(3),
      O(2) => \reg_out_reg[31]_i_11_n_5\,
      O(1) => \reg_out_reg[31]_i_11_n_6\,
      O(0) => \reg_out_reg[31]_i_11_n_7\,
      S(3) => '0',
      S(2) => \reg_out[31]_i_22_n_0\,
      S(1) => \reg_out[31]_i_23_n_0\,
      S(0) => \reg_out[31]_i_24_n_0\
    );
\reg_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_60,
      Q => \reg_out_reg_n_0_[3]\,
      R => '0'
    );
\reg_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_59,
      Q => \reg_out_reg_n_0_[4]\,
      R => '0'
    );
\reg_out_reg[4]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \reg_out_reg[4]_i_6_n_0\,
      CO(2) => \reg_out_reg[4]_i_6_n_1\,
      CO(1) => \reg_out_reg[4]_i_6_n_2\,
      CO(0) => \reg_out_reg[4]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \reg_pc_reg_n_0_[4]\,
      DI(2) => \reg_pc_reg_n_0_[3]\,
      DI(1) => \reg_pc_reg_n_0_[2]\,
      DI(0) => \reg_pc_reg_n_0_[1]\,
      O(3) => \reg_out_reg[4]_i_6_n_4\,
      O(2) => \reg_out_reg[4]_i_6_n_5\,
      O(1) => \reg_out_reg[4]_i_6_n_6\,
      O(0) => \NLW_reg_out_reg[4]_i_6_O_UNCONNECTED\(0),
      S(3) => \reg_out[4]_i_8_n_0\,
      S(2) => \reg_out[4]_i_9_n_0\,
      S(1) => \reg_out[4]_i_10_n_0\,
      S(0) => \reg_out[4]_i_11_n_0\
    );
\reg_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_58,
      Q => \reg_out_reg_n_0_[5]\,
      R => '0'
    );
\reg_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_57,
      Q => \reg_out_reg_n_0_[6]\,
      R => '0'
    );
\reg_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_56,
      Q => \reg_out_reg_n_0_[7]\,
      R => '0'
    );
\reg_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_55,
      Q => \reg_out_reg_n_0_[8]\,
      R => '0'
    );
\reg_out_reg[8]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_out_reg[4]_i_6_n_0\,
      CO(3) => \reg_out_reg[8]_i_6_n_0\,
      CO(2) => \reg_out_reg[8]_i_6_n_1\,
      CO(1) => \reg_out_reg[8]_i_6_n_2\,
      CO(0) => \reg_out_reg[8]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \reg_pc_reg_n_0_[8]\,
      DI(2) => \reg_pc_reg_n_0_[7]\,
      DI(1) => \reg_pc_reg_n_0_[6]\,
      DI(0) => \reg_pc_reg_n_0_[5]\,
      O(3) => \reg_out_reg[8]_i_6_n_4\,
      O(2) => \reg_out_reg[8]_i_6_n_5\,
      O(1) => \reg_out_reg[8]_i_6_n_6\,
      O(0) => \reg_out_reg[8]_i_6_n_7\,
      S(3) => \reg_out[8]_i_8_n_0\,
      S(2) => \reg_out[8]_i_9_n_0\,
      S(1) => \reg_out[8]_i_10_n_0\,
      S(0) => \reg_out[8]_i_11_n_0\
    );
\reg_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pcpi_mul_n_54,
      Q => \reg_out_reg_n_0_[9]\,
      R => '0'
    );
\reg_pc[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(10),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[10]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[10]\,
      O => current_pc(10)
    );
\reg_pc[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(11),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[11]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[11]\,
      O => current_pc(11)
    );
\reg_pc[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(12),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[12]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[12]\,
      O => current_pc(12)
    );
\reg_pc[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(13),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[13]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[13]\,
      O => current_pc(13)
    );
\reg_pc[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(14),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[14]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[14]\,
      O => current_pc(14)
    );
\reg_pc[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(15),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[15]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[15]\,
      O => current_pc(15)
    );
\reg_pc[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(16),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[16]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[16]\,
      O => current_pc(16)
    );
\reg_pc[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(17),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[17]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[17]\,
      O => current_pc(17)
    );
\reg_pc[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(18),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[18]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[18]\,
      O => current_pc(18)
    );
\reg_pc[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(19),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[19]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[19]\,
      O => current_pc(19)
    );
\reg_pc[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(1),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[1]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[1]\,
      O => current_pc(1)
    );
\reg_pc[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(20),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[20]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[20]\,
      O => current_pc(20)
    );
\reg_pc[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(21),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[21]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[21]\,
      O => current_pc(21)
    );
\reg_pc[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(22),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[22]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[22]\,
      O => current_pc(22)
    );
\reg_pc[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(23),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[23]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[23]\,
      O => current_pc(23)
    );
\reg_pc[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(24),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[24]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[24]\,
      O => current_pc(24)
    );
\reg_pc[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(25),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[25]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[25]\,
      O => current_pc(25)
    );
\reg_pc[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(26),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[26]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[26]\,
      O => current_pc(26)
    );
\reg_pc[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(27),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[27]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[27]\,
      O => current_pc(27)
    );
\reg_pc[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(28),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[28]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[28]\,
      O => current_pc(28)
    );
\reg_pc[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(29),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[29]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[29]\,
      O => current_pc(29)
    );
\reg_pc[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(2),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[2]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[2]\,
      O => current_pc(2)
    );
\reg_pc[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(30),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[30]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[30]\,
      O => current_pc(30)
    );
\reg_pc[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(31),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[31]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[31]\,
      O => current_pc(31)
    );
\reg_pc[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(3),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[3]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[3]\,
      O => current_pc(3)
    );
\reg_pc[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(4),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[4]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[4]\,
      O => current_pc(4)
    );
\reg_pc[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(5),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[5]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[5]\,
      O => current_pc(5)
    );
\reg_pc[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(6),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[6]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[6]\,
      O => current_pc(6)
    );
\reg_pc[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(7),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[7]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[7]\,
      O => current_pc(7)
    );
\reg_pc[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(8),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[8]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[8]\,
      O => current_pc(8)
    );
\reg_pc[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => alu_out_q(9),
      I1 => \^latched_stalu_reg_0\,
      I2 => \reg_out_reg_n_0_[9]\,
      I3 => \^latched_branch_reg_0\,
      I4 => \^latched_store_reg_0\,
      I5 => \reg_next_pc_reg_n_0_[9]\,
      O => current_pc(9)
    );
\reg_pc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(10),
      Q => \reg_pc_reg_n_0_[10]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(11),
      Q => \reg_pc_reg_n_0_[11]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(12),
      Q => \reg_pc_reg_n_0_[12]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(13),
      Q => \reg_pc_reg_n_0_[13]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(14),
      Q => \reg_pc_reg_n_0_[14]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(15),
      Q => \reg_pc_reg_n_0_[15]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(16),
      Q => \reg_pc_reg_n_0_[16]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(17),
      Q => \reg_pc_reg_n_0_[17]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(18),
      Q => \reg_pc_reg_n_0_[18]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(19),
      Q => \reg_pc_reg_n_0_[19]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(1),
      Q => \reg_pc_reg_n_0_[1]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(20),
      Q => \reg_pc_reg_n_0_[20]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(21),
      Q => \reg_pc_reg_n_0_[21]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(22),
      Q => \reg_pc_reg_n_0_[22]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(23),
      Q => \reg_pc_reg_n_0_[23]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(24),
      Q => \reg_pc_reg_n_0_[24]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(25),
      Q => \reg_pc_reg_n_0_[25]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(26),
      Q => \reg_pc_reg_n_0_[26]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(27),
      Q => \reg_pc_reg_n_0_[27]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(28),
      Q => \reg_pc_reg_n_0_[28]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(29),
      Q => \reg_pc_reg_n_0_[29]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(2),
      Q => \reg_pc_reg_n_0_[2]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(30),
      Q => \reg_pc_reg_n_0_[30]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(31),
      Q => \reg_pc_reg_n_0_[31]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(3),
      Q => \reg_pc_reg_n_0_[3]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(4),
      Q => \reg_pc_reg_n_0_[4]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(5),
      Q => \reg_pc_reg_n_0_[5]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(6),
      Q => \reg_pc_reg_n_0_[6]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(7),
      Q => \reg_pc_reg_n_0_[7]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(8),
      Q => \reg_pc_reg_n_0_[8]\,
      R => pcpi_mul_n_24
    );
\reg_pc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^q\(2),
      D => current_pc(9),
      Q => \reg_pc_reg_n_0_[9]\,
      R => pcpi_mul_n_24
    );
\reg_sh[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F909F9F9F909090"
    )
        port map (
      I0 => \reg_sh_reg_n_0_[0]\,
      I1 => pcpi_mul_n_82,
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \decoded_rs2__0\(0),
      I4 => \reg_sh[4]_i_3_n_0\,
      I5 => \reg_sh[0]_i_3_n_0\,
      O => \reg_sh[0]_i_1_n_0\
    );
\reg_sh[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => reg_sh1(0),
      I1 => \decoded_rs2__0\(0),
      I2 => \decoded_rs2__0\(1),
      I3 => \decoded_rs2__0\(2),
      I4 => \decoded_rs2__0\(3),
      I5 => \decoded_rs2__0\(4),
      O => \reg_sh[0]_i_3_n_0\
    );
\reg_sh[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F909F9F9F909090"
    )
        port map (
      I0 => \reg_sh[1]_i_2_n_0\,
      I1 => \reg_sh_reg_n_0_[1]\,
      I2 => \cpu_state_reg_n_0_[2]\,
      I3 => \decoded_rs2__0\(1),
      I4 => \reg_sh[4]_i_3_n_0\,
      I5 => \reg_sh[1]_i_3_n_0\,
      O => \reg_sh[1]_i_1_n_0\
    );
\reg_sh[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \reg_sh_reg_n_0_[0]\,
      I1 => \reg_sh_reg_n_0_[3]\,
      I2 => \reg_sh_reg_n_0_[2]\,
      I3 => \reg_sh_reg_n_0_[4]\,
      O => \reg_sh[1]_i_2_n_0\
    );
\reg_sh[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => reg_sh1(1),
      I1 => \decoded_rs2__0\(0),
      I2 => \decoded_rs2__0\(1),
      I3 => \decoded_rs2__0\(2),
      I4 => \decoded_rs2__0\(3),
      I5 => \decoded_rs2__0\(4),
      O => \reg_sh[1]_i_3_n_0\
    );
\reg_sh[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \reg_sh[2]_i_2_n_0\,
      I1 => \cpu_state_reg_n_0_[2]\,
      I2 => \decoded_rs2__0\(2),
      I3 => \reg_sh[4]_i_3_n_0\,
      I4 => reg_sh1(2),
      I5 => pcpi_mul_n_23,
      O => \reg_sh[2]_i_1_n_0\
    );
\reg_sh[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0C0F0D"
    )
        port map (
      I0 => \reg_sh_reg_n_0_[0]\,
      I1 => \reg_sh_reg_n_0_[3]\,
      I2 => \reg_sh_reg_n_0_[2]\,
      I3 => \reg_sh_reg_n_0_[4]\,
      I4 => \reg_sh_reg_n_0_[1]\,
      O => \reg_sh[2]_i_2_n_0\
    );
\reg_sh[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \reg_sh[3]_i_2_n_0\,
      I1 => \cpu_state_reg_n_0_[2]\,
      I2 => \decoded_rs2__0\(3),
      I3 => \reg_sh[4]_i_3_n_0\,
      I4 => reg_sh1(3),
      I5 => pcpi_mul_n_23,
      O => \reg_sh[3]_i_1_n_0\
    );
\reg_sh[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0000F1"
    )
        port map (
      I0 => \reg_sh_reg_n_0_[0]\,
      I1 => \reg_sh_reg_n_0_[1]\,
      I2 => \reg_sh_reg_n_0_[4]\,
      I3 => \reg_sh_reg_n_0_[2]\,
      I4 => \reg_sh_reg_n_0_[3]\,
      O => \reg_sh[3]_i_2_n_0\
    );
\reg_sh[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \reg_sh[4]_i_2_n_0\,
      I1 => \cpu_state_reg_n_0_[2]\,
      I2 => \decoded_rs2__0\(4),
      I3 => \reg_sh[4]_i_3_n_0\,
      I4 => reg_sh1(4),
      I5 => pcpi_mul_n_23,
      O => \reg_sh[4]_i_1_n_0\
    );
\reg_sh[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF00001"
    )
        port map (
      I0 => \reg_sh_reg_n_0_[0]\,
      I1 => \reg_sh_reg_n_0_[1]\,
      I2 => \reg_sh_reg_n_0_[3]\,
      I3 => \reg_sh_reg_n_0_[2]\,
      I4 => \reg_sh_reg_n_0_[4]\,
      O => \reg_sh[4]_i_2_n_0\
    );
\reg_sh[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pcpi_mul_n_22,
      I1 => is_slli_srli_srai,
      O => \reg_sh[4]_i_3_n_0\
    );
\reg_sh_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_sh[0]_i_1_n_0\,
      Q => \reg_sh_reg_n_0_[0]\,
      R => '0'
    );
\reg_sh_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_sh[1]_i_1_n_0\,
      Q => \reg_sh_reg_n_0_[1]\,
      R => '0'
    );
\reg_sh_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_sh[2]_i_1_n_0\,
      Q => \reg_sh_reg_n_0_[2]\,
      R => '0'
    );
\reg_sh_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_sh[3]_i_1_n_0\,
      Q => \reg_sh_reg_n_0_[3]\,
      R => '0'
    );
\reg_sh_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_sh[4]_i_1_n_0\,
      Q => \reg_sh_reg_n_0_[4]\,
      R => '0'
    );
trap_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cpu_state_reg_n_0_[7]\,
      Q => \^trap_reg_0\,
      R => pcpi_mul_n_24
    );
xfer_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE000"
    )
        port map (
      I0 => mem_axi_bvalid,
      I1 => mem_axi_rvalid,
      I2 => \^mem_valid\,
      I3 => resetn,
      I4 => xfer_done,
      O => mem_axi_bvalid_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32_axi is
  port (
    mem_axi_rready : out STD_LOGIC;
    \mem_wstrb_reg[2]\ : out STD_LOGIC;
    \mem_wstrb_reg[3]\ : out STD_LOGIC;
    \mem_wstrb_reg[0]\ : out STD_LOGIC;
    \mem_wstrb_reg[1]\ : out STD_LOGIC;
    pcpi_rs1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pcpi_insn : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pcpi_rs2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    trap : out STD_LOGIC;
    mem_axi_bready : out STD_LOGIC;
    mem_axi_awvalid : out STD_LOGIC;
    mem_axi_wvalid : out STD_LOGIC;
    mem_axi_arvalid : out STD_LOGIC;
    mem_axi_awaddr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    mem_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_axi_arprot : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcpi_valid : out STD_LOGIC;
    mem_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_axi_bvalid : in STD_LOGIC;
    mem_axi_rvalid : in STD_LOGIC;
    resetn : in STD_LOGIC;
    mem_axi_awready : in STD_LOGIC;
    mem_axi_arready : in STD_LOGIC;
    mem_axi_wready : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32_axi is
  signal ack_awvalid : STD_LOGIC;
  signal axi_adapter_n_2 : STD_LOGIC;
  signal axi_adapter_n_3 : STD_LOGIC;
  signal instr_add : STD_LOGIC;
  signal instr_addi : STD_LOGIC;
  signal instr_ecall_ebreak : STD_LOGIC;
  signal instr_jalr : STD_LOGIC;
  signal instr_lb : STD_LOGIC;
  signal instr_lh : STD_LOGIC;
  signal instr_sub : STD_LOGIC;
  signal is_beq_bne_blt_bge_bltu_bgeu : STD_LOGIC;
  signal is_lbu_lhu_lw : STD_LOGIC;
  signal is_lui_auipc_jal_jalr_addi_add_sub0 : STD_LOGIC;
  signal is_lui_auipc_jal_jalr_addi_add_sub_i_1_n_0 : STD_LOGIC;
  signal latched_branch_i_1_n_0 : STD_LOGIC;
  signal latched_is_lb_i_1_n_0 : STD_LOGIC;
  signal latched_is_lh_i_1_n_0 : STD_LOGIC;
  signal latched_is_lu : STD_LOGIC;
  signal latched_is_lu_i_1_n_0 : STD_LOGIC;
  signal latched_stalu_i_1_n_0 : STD_LOGIC;
  signal latched_store_i_1_n_0 : STD_LOGIC;
  signal \^mem_axi_arvalid\ : STD_LOGIC;
  signal \^mem_axi_bready\ : STD_LOGIC;
  signal mem_do_rdata : STD_LOGIC;
  signal mem_do_rdata_i_1_n_0 : STD_LOGIC;
  signal mem_do_wdata : STD_LOGIC;
  signal mem_do_wdata_i_1_n_0 : STD_LOGIC;
  signal mem_valid : STD_LOGIC;
  signal pcpi_mul_ready : STD_LOGIC;
  signal pcpi_timeout : STD_LOGIC;
  signal \pcpi_timeout_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \^pcpi_valid\ : STD_LOGIC;
  signal pcpi_valid_i_1_n_0 : STD_LOGIC;
  signal picorv32_core_n_1 : STD_LOGIC;
  signal picorv32_core_n_137 : STD_LOGIC;
  signal picorv32_core_n_17 : STD_LOGIC;
  signal picorv32_core_n_18 : STD_LOGIC;
  signal picorv32_core_n_19 : STD_LOGIC;
  signal picorv32_core_n_20 : STD_LOGIC;
  signal picorv32_core_n_201 : STD_LOGIC;
  signal picorv32_core_n_202 : STD_LOGIC;
  signal picorv32_core_n_203 : STD_LOGIC;
  signal picorv32_core_n_204 : STD_LOGIC;
  signal picorv32_core_n_205 : STD_LOGIC;
  signal picorv32_core_n_206 : STD_LOGIC;
  signal picorv32_core_n_21 : STD_LOGIC;
  signal picorv32_core_n_22 : STD_LOGIC;
  signal picorv32_core_n_23 : STD_LOGIC;
  signal picorv32_core_n_30 : STD_LOGIC;
  signal picorv32_core_n_32 : STD_LOGIC;
  signal picorv32_core_n_33 : STD_LOGIC;
  signal picorv32_core_n_34 : STD_LOGIC;
  signal picorv32_core_n_35 : STD_LOGIC;
  signal reg_next_pc : STD_LOGIC;
  signal xfer_done : STD_LOGIC;
begin
  mem_axi_arvalid <= \^mem_axi_arvalid\;
  mem_axi_bready <= \^mem_axi_bready\;
  pcpi_valid <= \^pcpi_valid\;
axi_adapter: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32_axi_adapter
     port map (
      ack_arvalid_reg_0 => axi_adapter_n_3,
      ack_awvalid => ack_awvalid,
      ack_wvalid_reg_0 => axi_adapter_n_2,
      clk => clk,
      mem_axi_arready => mem_axi_arready,
      mem_axi_arvalid => \^mem_axi_arvalid\,
      mem_axi_awready => mem_axi_awready,
      mem_axi_bready => \^mem_axi_bready\,
      mem_axi_wready => mem_axi_wready,
      mem_valid => mem_valid,
      resetn => resetn,
      xfer_done => xfer_done,
      xfer_done_reg_0 => picorv32_core_n_137
    );
is_lui_auipc_jal_jalr_addi_add_sub_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => instr_add,
      I1 => instr_addi,
      I2 => instr_sub,
      I3 => instr_jalr,
      I4 => picorv32_core_n_1,
      I5 => is_lui_auipc_jal_jalr_addi_add_sub0,
      O => is_lui_auipc_jal_jalr_addi_add_sub_i_1_n_0
    );
latched_branch_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202F202FEFEFEFE"
    )
        port map (
      I0 => picorv32_core_n_17,
      I1 => reg_next_pc,
      I2 => picorv32_core_n_32,
      I3 => is_beq_bne_blt_bge_bltu_bgeu,
      I4 => picorv32_core_n_204,
      I5 => picorv32_core_n_205,
      O => latched_branch_i_1_n_0
    );
latched_is_lb_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => instr_lb,
      I1 => reg_next_pc,
      I2 => latched_is_lu,
      I3 => picorv32_core_n_19,
      O => latched_is_lb_i_1_n_0
    );
latched_is_lh_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => instr_lh,
      I1 => reg_next_pc,
      I2 => latched_is_lu,
      I3 => picorv32_core_n_20,
      O => latched_is_lh_i_1_n_0
    );
latched_is_lu_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => is_lbu_lhu_lw,
      I1 => reg_next_pc,
      I2 => latched_is_lu,
      I3 => picorv32_core_n_21,
      O => latched_is_lu_i_1_n_0
    );
latched_stalu_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5510"
    )
        port map (
      I0 => reg_next_pc,
      I1 => is_beq_bne_blt_bge_bltu_bgeu,
      I2 => picorv32_core_n_32,
      I3 => picorv32_core_n_18,
      O => latched_stalu_i_1_n_0
    );
latched_store_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777FFF777770007"
    )
        port map (
      I0 => picorv32_core_n_34,
      I1 => picorv32_core_n_203,
      I2 => picorv32_core_n_206,
      I3 => picorv32_core_n_33,
      I4 => picorv32_core_n_202,
      I5 => picorv32_core_n_22,
      O => latched_store_i_1_n_0
    );
mem_do_rdata_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808084C4"
    )
        port map (
      I0 => mem_do_rdata,
      I1 => resetn,
      I2 => picorv32_core_n_201,
      I3 => picorv32_core_n_23,
      I4 => picorv32_core_n_30,
      O => mem_do_rdata_i_1_n_0
    );
mem_do_wdata_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AE440000"
    )
        port map (
      I0 => mem_do_wdata,
      I1 => picorv32_core_n_33,
      I2 => picorv32_core_n_23,
      I3 => picorv32_core_n_201,
      I4 => resetn,
      O => mem_do_wdata_i_1_n_0
    );
\pcpi_timeout_counter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => resetn,
      I1 => \^pcpi_valid\,
      O => \pcpi_timeout_counter[3]_i_1_n_0\
    );
pcpi_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888888B"
    )
        port map (
      I0 => \^pcpi_valid\,
      I1 => picorv32_core_n_35,
      I2 => pcpi_timeout,
      I3 => instr_ecall_ebreak,
      I4 => pcpi_mul_ready,
      O => pcpi_valid_i_1_n_0
    );
picorv32_core: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32
     port map (
      Q(2) => reg_next_pc,
      Q(1) => picorv32_core_n_32,
      Q(0) => picorv32_core_n_33,
      SS(0) => \pcpi_timeout_counter[3]_i_1_n_0\,
      ack_awvalid => ack_awvalid,
      \active_reg[1]\(0) => pcpi_mul_ready,
      \active_reg[1]_0\ => picorv32_core_n_203,
      clk => clk,
      \cpu_state_reg[3]_0\ => picorv32_core_n_206,
      \cpu_state_reg[5]_0\ => picorv32_core_n_30,
      \cpu_state_reg[5]_1\ => picorv32_core_n_35,
      \cpu_state_reg[7]_0\ => picorv32_core_n_202,
      decoder_trigger_reg_0 => picorv32_core_n_205,
      instr_add => instr_add,
      instr_addi => instr_addi,
      instr_beq_reg_0 => picorv32_core_n_34,
      instr_bge_reg_0 => picorv32_core_n_204,
      instr_ecall_ebreak => instr_ecall_ebreak,
      instr_jal_reg_0 => picorv32_core_n_1,
      instr_jalr => instr_jalr,
      instr_lb => instr_lb,
      instr_lh => instr_lh,
      instr_sub => instr_sub,
      is_beq_bne_blt_bge_bltu_bgeu => is_beq_bne_blt_bge_bltu_bgeu,
      is_lbu_lhu_lw => is_lbu_lhu_lw,
      is_lui_auipc_jal_jalr_addi_add_sub0 => is_lui_auipc_jal_jalr_addi_add_sub0,
      is_lui_auipc_jal_jalr_addi_add_sub_reg_0 => is_lui_auipc_jal_jalr_addi_add_sub_i_1_n_0,
      latched_branch_reg_0 => picorv32_core_n_17,
      latched_branch_reg_1 => latched_branch_i_1_n_0,
      latched_is_lb_reg_0 => picorv32_core_n_19,
      latched_is_lb_reg_1 => latched_is_lb_i_1_n_0,
      latched_is_lh_reg_0 => picorv32_core_n_20,
      latched_is_lh_reg_1 => latched_is_lh_i_1_n_0,
      latched_is_lu => latched_is_lu,
      latched_is_lu_reg_0 => picorv32_core_n_21,
      latched_is_lu_reg_1 => latched_is_lu_i_1_n_0,
      latched_stalu_reg_0 => picorv32_core_n_18,
      latched_stalu_reg_1 => latched_stalu_i_1_n_0,
      latched_store_reg_0 => picorv32_core_n_22,
      latched_store_reg_1 => latched_store_i_1_n_0,
      mem_axi_arprot(0) => mem_axi_arprot(0),
      mem_axi_arvalid => \^mem_axi_arvalid\,
      mem_axi_arvalid_0 => axi_adapter_n_3,
      mem_axi_awaddr(29 downto 0) => mem_axi_awaddr(29 downto 0),
      mem_axi_awvalid => mem_axi_awvalid,
      mem_axi_bready => \^mem_axi_bready\,
      mem_axi_bvalid => mem_axi_bvalid,
      mem_axi_bvalid_0 => picorv32_core_n_137,
      mem_axi_rdata(31 downto 0) => mem_axi_rdata(31 downto 0),
      mem_axi_rready => mem_axi_rready,
      mem_axi_rvalid => mem_axi_rvalid,
      mem_axi_wdata(31 downto 0) => mem_axi_wdata(31 downto 0),
      mem_axi_wvalid => mem_axi_wvalid,
      mem_axi_wvalid_0 => axi_adapter_n_2,
      mem_do_prefetch_reg_0 => picorv32_core_n_23,
      mem_do_rdata => mem_do_rdata,
      mem_do_rdata_reg_0 => mem_do_rdata_i_1_n_0,
      mem_do_wdata => mem_do_wdata,
      mem_do_wdata_reg_0 => mem_do_wdata_i_1_n_0,
      \mem_state_reg[0]_0\ => picorv32_core_n_201,
      mem_valid => mem_valid,
      \mem_wstrb_reg[0]_0\ => \mem_wstrb_reg[0]\,
      \mem_wstrb_reg[1]_0\ => \mem_wstrb_reg[1]\,
      \mem_wstrb_reg[2]_0\ => \mem_wstrb_reg[2]\,
      \mem_wstrb_reg[3]_0\ => \mem_wstrb_reg[3]\,
      \pcpi_insn_reg[31]_0\(31 downto 0) => pcpi_insn(31 downto 0),
      pcpi_timeout => pcpi_timeout,
      pcpi_valid => \^pcpi_valid\,
      pcpi_valid_reg_0 => pcpi_valid_i_1_n_0,
      \reg_op1_reg[31]_0\(31 downto 0) => pcpi_rs1(31 downto 0),
      \reg_op2_reg[31]_0\(31 downto 0) => pcpi_rs2(31 downto 0),
      resetn => resetn,
      trap_reg_0 => trap,
      xfer_done => xfer_done
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    trap : out STD_LOGIC;
    mem_axi_awvalid : out STD_LOGIC;
    mem_axi_awready : in STD_LOGIC;
    mem_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mem_axi_wvalid : out STD_LOGIC;
    mem_axi_wready : in STD_LOGIC;
    mem_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_axi_bvalid : in STD_LOGIC;
    mem_axi_bready : out STD_LOGIC;
    mem_axi_arvalid : out STD_LOGIC;
    mem_axi_arready : in STD_LOGIC;
    mem_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mem_axi_rvalid : in STD_LOGIC;
    mem_axi_rready : out STD_LOGIC;
    mem_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pcpi_valid : out STD_LOGIC;
    pcpi_insn : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pcpi_rs1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pcpi_rs2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pcpi_wr : in STD_LOGIC;
    pcpi_rd : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pcpi_wait : in STD_LOGIC;
    pcpi_ready : in STD_LOGIC;
    irq : in STD_LOGIC_VECTOR ( 31 downto 0 );
    eoi : out STD_LOGIC_VECTOR ( 31 downto 0 );
    trace_valid : out STD_LOGIC;
    trace_data : out STD_LOGIC_VECTOR ( 35 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_picorv32_tut_0_0,picorv32_axi,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "picorv32_axi,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^mem_axi_arprot\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^mem_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_subprocessorClk_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of mem_axi_arready : signal is "xilinx.com:interface:aximm:1.0 mem_axi ARREADY";
  attribute X_INTERFACE_INFO of mem_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 mem_axi ARVALID";
  attribute X_INTERFACE_INFO of mem_axi_awready : signal is "xilinx.com:interface:aximm:1.0 mem_axi AWREADY";
  attribute X_INTERFACE_INFO of mem_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 mem_axi AWVALID";
  attribute X_INTERFACE_INFO of mem_axi_bready : signal is "xilinx.com:interface:aximm:1.0 mem_axi BREADY";
  attribute X_INTERFACE_INFO of mem_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 mem_axi BVALID";
  attribute X_INTERFACE_INFO of mem_axi_rready : signal is "xilinx.com:interface:aximm:1.0 mem_axi RREADY";
  attribute X_INTERFACE_INFO of mem_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 mem_axi RVALID";
  attribute X_INTERFACE_INFO of mem_axi_wready : signal is "xilinx.com:interface:aximm:1.0 mem_axi WREADY";
  attribute X_INTERFACE_INFO of mem_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 mem_axi WVALID";
  attribute X_INTERFACE_INFO of pcpi_ready : signal is "cliffordwolf:ip:PicoBram:1.0 pcpi READY, cliffordwolf:ip:pcpi:1.0 ip_pcpi pcpi_ready";
  attribute X_INTERFACE_INFO of pcpi_valid : signal is "cliffordwolf:ip:PicoBram:1.0 pcpi VALID, cliffordwolf:ip:pcpi:1.0 ip_pcpi pcpi_valid";
  attribute X_INTERFACE_INFO of pcpi_wait : signal is "cliffordwolf:ip:pcpi:1.0 ip_pcpi pcpi_wait";
  attribute X_INTERFACE_INFO of pcpi_wr : signal is "cliffordwolf:ip:pcpi:1.0 ip_pcpi pcpi_wr";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 irq INTERRUPT";
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of mem_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 mem_axi ARADDR";
  attribute X_INTERFACE_INFO of mem_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 mem_axi ARPROT";
  attribute X_INTERFACE_INFO of mem_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 mem_axi AWADDR";
  attribute X_INTERFACE_INFO of mem_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 mem_axi AWPROT";
  attribute X_INTERFACE_INFO of mem_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 mem_axi RDATA";
  attribute X_INTERFACE_PARAMETER of mem_axi_rdata : signal is "XIL_INTERFACENAME mem_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of mem_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 mem_axi WDATA";
  attribute X_INTERFACE_INFO of mem_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 mem_axi WSTRB";
  attribute X_INTERFACE_INFO of pcpi_insn : signal is "cliffordwolf:ip:pcpi:1.0 ip_pcpi pcpi_insn";
  attribute X_INTERFACE_INFO of pcpi_rd : signal is "cliffordwolf:ip:pcpi:1.0 ip_pcpi pcpi_rd";
  attribute X_INTERFACE_INFO of pcpi_rs1 : signal is "cliffordwolf:ip:pcpi:1.0 ip_pcpi pcpi_rs1";
  attribute X_INTERFACE_INFO of pcpi_rs2 : signal is "cliffordwolf:ip:pcpi:1.0 ip_pcpi pcpi_rs2";
begin
  eoi(31) <= \<const0>\;
  eoi(30) <= \<const0>\;
  eoi(29) <= \<const0>\;
  eoi(28) <= \<const0>\;
  eoi(27) <= \<const0>\;
  eoi(26) <= \<const0>\;
  eoi(25) <= \<const0>\;
  eoi(24) <= \<const0>\;
  eoi(23) <= \<const0>\;
  eoi(22) <= \<const0>\;
  eoi(21) <= \<const0>\;
  eoi(20) <= \<const0>\;
  eoi(19) <= \<const0>\;
  eoi(18) <= \<const0>\;
  eoi(17) <= \<const0>\;
  eoi(16) <= \<const0>\;
  eoi(15) <= \<const0>\;
  eoi(14) <= \<const0>\;
  eoi(13) <= \<const0>\;
  eoi(12) <= \<const0>\;
  eoi(11) <= \<const0>\;
  eoi(10) <= \<const0>\;
  eoi(9) <= \<const0>\;
  eoi(8) <= \<const0>\;
  eoi(7) <= \<const0>\;
  eoi(6) <= \<const0>\;
  eoi(5) <= \<const0>\;
  eoi(4) <= \<const0>\;
  eoi(3) <= \<const0>\;
  eoi(2) <= \<const0>\;
  eoi(1) <= \<const0>\;
  eoi(0) <= \<const0>\;
  mem_axi_araddr(31 downto 2) <= \^mem_axi_awaddr\(31 downto 2);
  mem_axi_araddr(1) <= \<const0>\;
  mem_axi_araddr(0) <= \<const0>\;
  mem_axi_arprot(2) <= \^mem_axi_arprot\(2);
  mem_axi_arprot(1) <= \<const0>\;
  mem_axi_arprot(0) <= \<const0>\;
  mem_axi_awaddr(31 downto 2) <= \^mem_axi_awaddr\(31 downto 2);
  mem_axi_awaddr(1) <= \<const0>\;
  mem_axi_awaddr(0) <= \<const0>\;
  mem_axi_awprot(2) <= \<const0>\;
  mem_axi_awprot(1) <= \<const0>\;
  mem_axi_awprot(0) <= \<const0>\;
  trace_valid <= \<const0>\;
  trace_data(0) <= 'Z';
  trace_data(1) <= 'Z';
  trace_data(2) <= 'Z';
  trace_data(3) <= 'Z';
  trace_data(4) <= 'Z';
  trace_data(5) <= 'Z';
  trace_data(6) <= 'Z';
  trace_data(7) <= 'Z';
  trace_data(8) <= 'Z';
  trace_data(9) <= 'Z';
  trace_data(10) <= 'Z';
  trace_data(11) <= 'Z';
  trace_data(12) <= 'Z';
  trace_data(13) <= 'Z';
  trace_data(14) <= 'Z';
  trace_data(15) <= 'Z';
  trace_data(16) <= 'Z';
  trace_data(17) <= 'Z';
  trace_data(18) <= 'Z';
  trace_data(19) <= 'Z';
  trace_data(20) <= 'Z';
  trace_data(21) <= 'Z';
  trace_data(22) <= 'Z';
  trace_data(23) <= 'Z';
  trace_data(24) <= 'Z';
  trace_data(25) <= 'Z';
  trace_data(26) <= 'Z';
  trace_data(27) <= 'Z';
  trace_data(28) <= 'Z';
  trace_data(29) <= 'Z';
  trace_data(30) <= 'Z';
  trace_data(31) <= 'Z';
  trace_data(32) <= 'Z';
  trace_data(33) <= 'Z';
  trace_data(34) <= 'Z';
  trace_data(35) <= 'Z';
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_picorv32_axi
     port map (
      clk => clk,
      mem_axi_arprot(0) => \^mem_axi_arprot\(2),
      mem_axi_arready => mem_axi_arready,
      mem_axi_arvalid => mem_axi_arvalid,
      mem_axi_awaddr(29 downto 0) => \^mem_axi_awaddr\(31 downto 2),
      mem_axi_awready => mem_axi_awready,
      mem_axi_awvalid => mem_axi_awvalid,
      mem_axi_bready => mem_axi_bready,
      mem_axi_bvalid => mem_axi_bvalid,
      mem_axi_rdata(31 downto 0) => mem_axi_rdata(31 downto 0),
      mem_axi_rready => mem_axi_rready,
      mem_axi_rvalid => mem_axi_rvalid,
      mem_axi_wdata(31 downto 0) => mem_axi_wdata(31 downto 0),
      mem_axi_wready => mem_axi_wready,
      mem_axi_wvalid => mem_axi_wvalid,
      \mem_wstrb_reg[0]\ => mem_axi_wstrb(0),
      \mem_wstrb_reg[1]\ => mem_axi_wstrb(1),
      \mem_wstrb_reg[2]\ => mem_axi_wstrb(2),
      \mem_wstrb_reg[3]\ => mem_axi_wstrb(3),
      pcpi_insn(31 downto 0) => pcpi_insn(31 downto 0),
      pcpi_rs1(31 downto 0) => pcpi_rs1(31 downto 0),
      pcpi_rs2(31 downto 0) => pcpi_rs2(31 downto 0),
      pcpi_valid => pcpi_valid,
      resetn => resetn,
      trap => trap
    );
end STRUCTURE;
