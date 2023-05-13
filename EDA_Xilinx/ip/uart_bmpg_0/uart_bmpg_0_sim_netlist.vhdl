-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue May  9 02:24:28 2023
-- Host        : Xpro running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/VivadoProj/CS202_Pro/CS202_Pro.srcs/sources_1/ip/uart_bmpg_0/uart_bmpg_0_sim_netlist.vhdl
-- Design      : uart_bmpg_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_bmpg_0_axi_uart_baudrate is
  port (
    en_16x_Baud : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_bmpg_0_axi_uart_baudrate : entity is "baudrate";
end uart_bmpg_0_axi_uart_baudrate;

architecture STRUCTURE of uart_bmpg_0_axi_uart_baudrate is
  signal EN_16x_Baud_i_1_n_0 : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of EN_16x_Baud_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair10";
begin
EN_16x_Baud_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => count(1),
      I1 => count(0),
      I2 => count(2),
      O => EN_16x_Baud_i_1_n_0
    );
EN_16x_Baud_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => EN_16x_Baud_i_1_n_0,
      Q => en_16x_Baud,
      R => SR(0)
    );
\count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => count(2),
      I1 => count(0),
      I2 => count(1),
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C2"
    )
        port map (
      I0 => count(2),
      I1 => count(0),
      I2 => count(1),
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => count(2),
      I1 => count(0),
      I2 => count(1),
      O => \count[2]_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \count[0]_i_1_n_0\,
      Q => count(0),
      R => SR(0)
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \count[1]_i_1_n_0\,
      Q => count(1),
      R => SR(0)
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \count[2]_i_1_n_0\,
      Q => count(2),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_bmpg_0_axi_uart_cdc_sync is
  port (
    EN_16x_Baud_reg : in STD_LOGIC;
    p_26_out : out STD_LOGIC;
    rx : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    scndry_out : out STD_LOGIC;
    start_Edge_Detected : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_bmpg_0_axi_uart_cdc_sync : entity is "cdc_sync";
end uart_bmpg_0_axi_uart_cdc_sync;

architecture STRUCTURE of uart_bmpg_0_axi_uart_cdc_sync is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
  scndry_out <= \^scndry_out\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rx,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => \^scndry_out\,
      R => '0'
    );
\SERIAL_TO_PARALLEL[1].fifo_din[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00CE00"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => start_Edge_Detected,
      I2 => EN_16x_Baud_reg,
      I3 => s_axi_aresetn,
      I4 => \in\(0),
      O => p_26_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_bmpg_0_axi_uart_cntr_incr_decr_addn_f is
  port (
    Bus_RNW_reg : in STD_LOGIC;
    \^gen_bkend_ce_registers[1].ce_out_i_reg\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : in STD_LOGIC_VECTOR ( 1 to 1 );
    fifo_Read : in STD_LOGIC;
    fifo_full_p1 : out STD_LOGIC;
    reset_TX_FIFO_reg : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    tx_Buffer_Full : in STD_LOGIC;
    tx_DataBits : in STD_LOGIC;
    tx_Data_Enable_reg : in STD_LOGIC;
    tx_Start : in STD_LOGIC;
    tx_Start0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    SS : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_bmpg_0_axi_uart_cntr_incr_decr_addn_f : entity is "cntr_incr_decr_addn_f";
end uart_bmpg_0_axi_uart_cntr_incr_decr_addn_f;

architecture STRUCTURE of uart_bmpg_0_axi_uart_cntr_incr_decr_addn_f is
  signal \FIFO_Full_i_2__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.cnt_i[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.cnt_i[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.cnt_i[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[1]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[3]_i_2__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[4]_i_3__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[4]_i_4__0\ : label is "soft_lutpair18";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  SS(0) <= \^ss\(0);
\FIFO_Full_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004090000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\(1),
      I1 => \^q\(0),
      I2 => \^q\(4),
      I3 => fifo_Read,
      I4 => \^q\(3),
      I5 => \FIFO_Full_i_2__0_n_0\,
      O => fifo_full_p1
    );
\FIFO_Full_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => \FIFO_Full_i_2__0_n_0\
    );
\INFERRED_GEN.cnt_i[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB4BBBB444B4444"
    )
        port map (
      I0 => \^q\(4),
      I1 => fifo_Read,
      I2 => tx_Buffer_Full,
      I3 => Bus_RNW_reg,
      I4 => \^gen_bkend_ce_registers[1].ce_out_i_reg\,
      I5 => \^q\(0),
      O => addr_i_p1(0)
    );
\INFERRED_GEN.cnt_i[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA9A65AA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(4),
      I2 => fifo_Read,
      I3 => \^q\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\(1),
      O => addr_i_p1(1)
    );
\INFERRED_GEN.cnt_i[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FF0B00FFBF0040"
    )
        port map (
      I0 => \^q\(4),
      I1 => fifo_Read,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => addr_i_p1(2)
    );
\INFERRED_GEN.cnt_i[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAAAA9AAAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \INFERRED_GEN.cnt_i[3]_i_2__0_n_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\(1),
      I5 => \^q\(0),
      O => addr_i_p1(3)
    );
\INFERRED_GEN.cnt_i[3]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(4),
      I1 => fifo_Read,
      O => \INFERRED_GEN.cnt_i[3]_i_2__0_n_0\
    );
\INFERRED_GEN.cnt_i[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => reset_TX_FIFO_reg,
      I1 => s_axi_aresetn,
      O => \^ss\(0)
    );
\INFERRED_GEN.cnt_i[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FAFAF003F0F0"
    )
        port map (
      I0 => \INFERRED_GEN.cnt_i[4]_i_3__0_n_0\,
      I1 => fifo_Read,
      I2 => \^q\(4),
      I3 => \INFERRED_GEN.cnt_i[4]_i_4__0_n_0\,
      I4 => \^q\(0),
      I5 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\(1),
      O => addr_i_p1(4)
    );
\INFERRED_GEN.cnt_i[4]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^q\(3),
      I1 => fifo_Read,
      I2 => \^q\(2),
      I3 => \^q\(1),
      O => \INFERRED_GEN.cnt_i[4]_i_3__0_n_0\
    );
\INFERRED_GEN.cnt_i[4]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(3),
      O => \INFERRED_GEN.cnt_i[4]_i_4__0_n_0\
    );
\INFERRED_GEN.cnt_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(0),
      Q => \^q\(0),
      S => \^ss\(0)
    );
\INFERRED_GEN.cnt_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(1),
      Q => \^q\(1),
      S => \^ss\(0)
    );
\INFERRED_GEN.cnt_i_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(2),
      Q => \^q\(2),
      S => \^ss\(0)
    );
\INFERRED_GEN.cnt_i_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(3),
      Q => \^q\(3),
      S => \^ss\(0)
    );
\INFERRED_GEN.cnt_i_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(4),
      Q => \^q\(4),
      S => \^ss\(0)
    );
tx_Start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F02"
    )
        port map (
      I0 => tx_Data_Enable_reg,
      I1 => \^q\(4),
      I2 => tx_DataBits,
      I3 => tx_Start,
      O => tx_Start0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_bmpg_0_axi_uart_cntr_incr_decr_addn_f_2 is
  port (
    Bus_RNW_reg : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    FIFO_Full_reg : in STD_LOGIC;
    \^gen_bkend_ce_registers[0].ce_out_i_reg\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Interrupt0 : out STD_LOGIC;
    enable_interrupts : in STD_LOGIC;
    fifo_Write : in STD_LOGIC;
    fifo_full_p1 : out STD_LOGIC;
    reset_RX_FIFO_reg : in STD_LOGIC;
    rx_Data_Present_Pre : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    tx_Buffer_Empty_Pre : in STD_LOGIC;
    valid_rx : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    SS : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_bmpg_0_axi_uart_cntr_incr_decr_addn_f_2 : entity is "cntr_incr_decr_addn_f";
end uart_bmpg_0_axi_uart_cntr_incr_decr_addn_f_2;

architecture STRUCTURE of uart_bmpg_0_axi_uart_cntr_incr_decr_addn_f_2 is
  signal FIFO_Full_i_2_n_0 : STD_LOGIC;
  signal \INFERRED_GEN.cnt_i[4]_i_4_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.cnt_i[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.cnt_i[4]_i_6_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FIFO_Full_i_2 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[4]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[4]_i_5__0\ : label is "soft_lutpair16";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  SS(0) <= \^ss\(0);
FIFO_Full_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000009040000"
    )
        port map (
      I0 => \INFERRED_GEN.cnt_i[4]_i_6_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(4),
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\(0),
      I4 => \^q\(3),
      I5 => FIFO_Full_i_2_n_0,
      O => fifo_full_p1
    );
FIFO_Full_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => FIFO_Full_i_2_n_0
    );
\INFERRED_GEN.cnt_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F70808F7"
    )
        port map (
      I0 => Bus_RNW_reg,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg\,
      I2 => \^q\(4),
      I3 => \INFERRED_GEN.cnt_i[4]_i_6_n_0\,
      I4 => \^q\(0),
      O => addr_i_p1(0)
    );
\INFERRED_GEN.cnt_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA6A5595AAAA"
    )
        port map (
      I0 => \^q\(1),
      I1 => Bus_RNW_reg,
      I2 => \^gen_bkend_ce_registers[0].ce_out_i_reg\,
      I3 => \^q\(4),
      I4 => \^q\(0),
      I5 => \INFERRED_GEN.cnt_i[4]_i_6_n_0\,
      O => addr_i_p1(1)
    );
\INFERRED_GEN.cnt_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE017F80"
    )
        port map (
      I0 => \^q\(0),
      I1 => Bus_RNW_reg_reg,
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \INFERRED_GEN.cnt_i[4]_i_6_n_0\,
      O => addr_i_p1(2)
    );
\INFERRED_GEN.cnt_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0E178F0F0F0"
    )
        port map (
      I0 => \^q\(0),
      I1 => Bus_RNW_reg_reg,
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \INFERRED_GEN.cnt_i[4]_i_6_n_0\,
      O => addr_i_p1(3)
    );
\INFERRED_GEN.cnt_i[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => reset_RX_FIFO_reg,
      I1 => s_axi_aresetn,
      O => \^ss\(0)
    );
\INFERRED_GEN.cnt_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F4F4F00AF0F0"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\(0),
      I1 => \INFERRED_GEN.cnt_i[4]_i_4_n_0\,
      I2 => \^q\(4),
      I3 => \INFERRED_GEN.cnt_i[4]_i_5__0_n_0\,
      I4 => \^q\(0),
      I5 => \INFERRED_GEN.cnt_i[4]_i_6_n_0\,
      O => addr_i_p1(4)
    );
\INFERRED_GEN.cnt_i[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(3),
      O => \INFERRED_GEN.cnt_i[4]_i_4_n_0\
    );
\INFERRED_GEN.cnt_i[4]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(3),
      O => \INFERRED_GEN.cnt_i[4]_i_5__0_n_0\
    );
\INFERRED_GEN.cnt_i[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => fifo_Write,
      I1 => FIFO_Full_reg,
      I2 => valid_rx,
      O => \INFERRED_GEN.cnt_i[4]_i_6_n_0\
    );
\INFERRED_GEN.cnt_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(0),
      Q => \^q\(0),
      S => \^ss\(0)
    );
\INFERRED_GEN.cnt_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(1),
      Q => \^q\(1),
      S => \^ss\(0)
    );
\INFERRED_GEN.cnt_i_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(2),
      Q => \^q\(2),
      S => \^ss\(0)
    );
\INFERRED_GEN.cnt_i_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(3),
      Q => \^q\(3),
      S => \^ss\(0)
    );
\INFERRED_GEN.cnt_i_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => addr_i_p1(4),
      Q => \^q\(4),
      S => \^ss\(0)
    );
Interrupt_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1010F010"
    )
        port map (
      I0 => rx_Data_Present_Pre,
      I1 => \^q\(4),
      I2 => enable_interrupts,
      I3 => \INFERRED_GEN.cnt_i_reg[4]_0\(0),
      I4 => tx_Buffer_Empty_Pre,
      O => Interrupt0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_bmpg_0_axi_uart_dynshreg_f is
  port (
    fifo_wr : in STD_LOGIC;
    mux_Out : out STD_LOGIC;
    mux_sel_reg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_4_in : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_bmpg_0_axi_uart_dynshreg_f : entity is "dynshreg_f";
end uart_bmpg_0_axi_uart_dynshreg_f;

architecture STRUCTURE of uart_bmpg_0_axi_uart_dynshreg_f is
  signal fifo_DOut : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal serial_Data_i_2_n_0 : STD_LOGIC;
  signal serial_Data_i_3_n_0 : STD_LOGIC;
  signal serial_Data_i_4_n_0 : STD_LOGIC;
  signal serial_Data_i_5_n_0 : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \INFERRED_GEN.data_reg[15][0]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] ";
  attribute srl_name : string;
  attribute srl_name of \INFERRED_GEN.data_reg[15][0]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][0]_srl16 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[15][1]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] ";
  attribute srl_name of \INFERRED_GEN.data_reg[15][1]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][1]_srl16 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[15][2]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] ";
  attribute srl_name of \INFERRED_GEN.data_reg[15][2]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][2]_srl16 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[15][3]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] ";
  attribute srl_name of \INFERRED_GEN.data_reg[15][3]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][3]_srl16 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[15][4]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] ";
  attribute srl_name of \INFERRED_GEN.data_reg[15][4]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][4]_srl16 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[15][5]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] ";
  attribute srl_name of \INFERRED_GEN.data_reg[15][5]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][5]_srl16 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[15][6]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] ";
  attribute srl_name of \INFERRED_GEN.data_reg[15][6]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][6]_srl16 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[15][7]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] ";
  attribute srl_name of \INFERRED_GEN.data_reg[15][7]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][7]_srl16 ";
begin
\INFERRED_GEN.data_reg[15][0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => s_axi_wdata(7),
      Q => fifo_DOut(0)
    );
\INFERRED_GEN.data_reg[15][1]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => s_axi_wdata(6),
      Q => fifo_DOut(1)
    );
\INFERRED_GEN.data_reg[15][2]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => s_axi_wdata(5),
      Q => fifo_DOut(2)
    );
\INFERRED_GEN.data_reg[15][3]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => s_axi_wdata(4),
      Q => fifo_DOut(3)
    );
\INFERRED_GEN.data_reg[15][4]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => s_axi_wdata(3),
      Q => fifo_DOut(4)
    );
\INFERRED_GEN.data_reg[15][5]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => s_axi_wdata(2),
      Q => fifo_DOut(5)
    );
\INFERRED_GEN.data_reg[15][6]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => s_axi_wdata(1),
      Q => fifo_DOut(6)
    );
\INFERRED_GEN.data_reg[15][7]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => s_axi_wdata(0),
      Q => fifo_DOut(7)
    );
serial_Data_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => serial_Data_i_2_n_0,
      I1 => serial_Data_i_3_n_0,
      I2 => serial_Data_i_4_n_0,
      I3 => serial_Data_i_5_n_0,
      O => mux_Out
    );
serial_Data_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => mux_sel_reg(2),
      I1 => p_4_in,
      I2 => fifo_DOut(2),
      I3 => mux_sel_reg(0),
      I4 => fifo_DOut(6),
      O => serial_Data_i_2_n_0
    );
serial_Data_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800080"
    )
        port map (
      I0 => mux_sel_reg(0),
      I1 => mux_sel_reg(2),
      I2 => fifo_DOut(5),
      I3 => p_4_in,
      I4 => fifo_DOut(7),
      O => serial_Data_i_3_n_0
    );
serial_Data_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => mux_sel_reg(0),
      I1 => mux_sel_reg(2),
      I2 => fifo_DOut(1),
      I3 => p_4_in,
      I4 => fifo_DOut(3),
      O => serial_Data_i_4_n_0
    );
serial_Data_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A000C"
    )
        port map (
      I0 => fifo_DOut(4),
      I1 => fifo_DOut(0),
      I2 => p_4_in,
      I3 => mux_sel_reg(2),
      I4 => mux_sel_reg(0),
      O => serial_Data_i_5_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_bmpg_0_axi_uart_dynshreg_f_3 is
  port (
    FIFO_Full_reg : in STD_LOGIC;
    fifo_Write : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    valid_rx : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \in\ : in STD_LOGIC_VECTOR ( 0 to 7 );
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_bmpg_0_axi_uart_dynshreg_f_3 : entity is "dynshreg_f";
end uart_bmpg_0_axi_uart_dynshreg_f_3;

architecture STRUCTURE of uart_bmpg_0_axi_uart_dynshreg_f_3 is
  signal fifo_wr : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \INFERRED_GEN.data_reg[15][0]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] ";
  attribute srl_name : string;
  attribute srl_name of \INFERRED_GEN.data_reg[15][0]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][0]_srl16 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[15][1]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] ";
  attribute srl_name of \INFERRED_GEN.data_reg[15][1]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][1]_srl16 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[15][2]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] ";
  attribute srl_name of \INFERRED_GEN.data_reg[15][2]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][2]_srl16 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[15][3]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] ";
  attribute srl_name of \INFERRED_GEN.data_reg[15][3]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][3]_srl16 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[15][4]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] ";
  attribute srl_name of \INFERRED_GEN.data_reg[15][4]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][4]_srl16 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[15][5]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] ";
  attribute srl_name of \INFERRED_GEN.data_reg[15][5]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][5]_srl16 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[15][6]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] ";
  attribute srl_name of \INFERRED_GEN.data_reg[15][6]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][6]_srl16 ";
  attribute srl_bus_name of \INFERRED_GEN.data_reg[15][7]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] ";
  attribute srl_name of \INFERRED_GEN.data_reg[15][7]_srl16\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/SRL_FIFO_I/I_SRL_FIFO_RBU_F/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][7]_srl16 ";
begin
\INFERRED_GEN.data_reg[15][0]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => \in\(0),
      Q => \out\(7)
    );
\INFERRED_GEN.data_reg[15][1]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => \in\(1),
      Q => \out\(6)
    );
\INFERRED_GEN.data_reg[15][2]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => \in\(2),
      Q => \out\(5)
    );
\INFERRED_GEN.data_reg[15][3]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => \in\(3),
      Q => \out\(4)
    );
\INFERRED_GEN.data_reg[15][4]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => \in\(4),
      Q => \out\(3)
    );
\INFERRED_GEN.data_reg[15][5]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => \in\(5),
      Q => \out\(2)
    );
\INFERRED_GEN.data_reg[15][6]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => \in\(6),
      Q => \out\(1)
    );
\INFERRED_GEN.data_reg[15][7]_srl16\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      CE => fifo_wr,
      CLK => s_axi_aclk,
      D => \in\(7),
      Q => \out\(0)
    );
\INFERRED_GEN.data_reg[15][7]_srl16_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => valid_rx,
      I1 => FIFO_Full_reg,
      I2 => fifo_Write,
      O => fifo_wr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_bmpg_0_axi_uart_dynshreg_i_f is
  port (
    \SERIAL_TO_PARALLEL[2].fifo_din_reg\ : out STD_LOGIC_VECTOR ( 2 to 2 );
    clr_Status : in STD_LOGIC;
    en_16x_Baud : in STD_LOGIC;
    fifo_Write0 : out STD_LOGIC;
    frame_err_ocrd : in STD_LOGIC;
    frame_err_ocrd_reg : out STD_LOGIC;
    p_11_out : out STD_LOGIC;
    p_14_out : out STD_LOGIC;
    p_17_out : out STD_LOGIC;
    p_20_out : out STD_LOGIC;
    p_2_out : out STD_LOGIC;
    p_5_out : out STD_LOGIC;
    p_8_out : out STD_LOGIC;
    running_reg : out STD_LOGIC;
    running_reg_0 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    start_Edge_Detected : in STD_LOGIC;
    status_reg_reg0 : out STD_LOGIC;
    stop_Bit_Position_reg : out STD_LOGIC;
    stop_Bit_Position_reg_0 : in STD_LOGIC;
    valid_rx : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 0 to 7 );
    status_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_bmpg_0_axi_uart_dynshreg_i_f : entity is "dynshreg_i_f";
end uart_bmpg_0_axi_uart_dynshreg_i_f;

architecture STRUCTURE of uart_bmpg_0_axi_uart_dynshreg_i_f is
  signal \INFERRED_GEN.data_reg\ : STD_LOGIC_VECTOR ( 15 to 15 );
  signal \INFERRED_GEN.data_reg[14][0]_srl15_n_0\ : STD_LOGIC;
  signal \^serial_to_parallel[2].fifo_din_reg\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal recycle : STD_LOGIC;
  signal \status_reg[1]_i_2_n_0\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \INFERRED_GEN.data_reg[14][0]_srl15\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/DELAY_16_I/INFERRED_GEN.data_reg[14] ";
  attribute srl_name : string;
  attribute srl_name of \INFERRED_GEN.data_reg[14][0]_srl15\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_RX_I/DELAY_16_I/INFERRED_GEN.data_reg[14][0]_srl15 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[14][0]_srl15_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \SERIAL_TO_PARALLEL[8].fifo_din[8]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of fifo_Write_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of frame_err_ocrd_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of running_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \status_reg[1]_i_2\ : label is "soft_lutpair14";
begin
  \SERIAL_TO_PARALLEL[2].fifo_din_reg\(2) <= \^serial_to_parallel[2].fifo_din_reg\(2);
\INFERRED_GEN.data_reg[14][0]_srl15\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => en_16x_Baud,
      CLK => s_axi_aclk,
      D => recycle,
      Q => \INFERRED_GEN.data_reg[14][0]_srl15_n_0\
    );
\INFERRED_GEN.data_reg[14][0]_srl15_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => stop_Bit_Position_reg_0,
      I1 => valid_rx,
      I2 => \INFERRED_GEN.data_reg\(15),
      I3 => start_Edge_Detected,
      O => recycle
    );
\INFERRED_GEN.data_reg[15][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => \INFERRED_GEN.data_reg[14][0]_srl15_n_0\,
      Q => \INFERRED_GEN.data_reg\(15),
      R => '0'
    );
\SERIAL_TO_PARALLEL[2].fifo_din[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \in\(1),
      I1 => \in\(0),
      I2 => start_Edge_Detected,
      I3 => s_axi_aresetn,
      I4 => \^serial_to_parallel[2].fifo_din_reg\(2),
      O => p_20_out
    );
\SERIAL_TO_PARALLEL[3].fifo_din[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \in\(2),
      I1 => \in\(1),
      I2 => start_Edge_Detected,
      I3 => s_axi_aresetn,
      I4 => \^serial_to_parallel[2].fifo_din_reg\(2),
      O => p_17_out
    );
\SERIAL_TO_PARALLEL[4].fifo_din[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \in\(3),
      I1 => \in\(2),
      I2 => start_Edge_Detected,
      I3 => s_axi_aresetn,
      I4 => \^serial_to_parallel[2].fifo_din_reg\(2),
      O => p_14_out
    );
\SERIAL_TO_PARALLEL[5].fifo_din[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \in\(4),
      I1 => \in\(3),
      I2 => start_Edge_Detected,
      I3 => s_axi_aresetn,
      I4 => \^serial_to_parallel[2].fifo_din_reg\(2),
      O => p_11_out
    );
\SERIAL_TO_PARALLEL[6].fifo_din[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \in\(5),
      I1 => \in\(4),
      I2 => start_Edge_Detected,
      I3 => s_axi_aresetn,
      I4 => \^serial_to_parallel[2].fifo_din_reg\(2),
      O => p_8_out
    );
\SERIAL_TO_PARALLEL[7].fifo_din[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \in\(6),
      I1 => \in\(5),
      I2 => start_Edge_Detected,
      I3 => s_axi_aresetn,
      I4 => \^serial_to_parallel[2].fifo_din_reg\(2),
      O => p_5_out
    );
\SERIAL_TO_PARALLEL[8].fifo_din[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C00"
    )
        port map (
      I0 => \in\(7),
      I1 => \in\(6),
      I2 => start_Edge_Detected,
      I3 => s_axi_aresetn,
      I4 => \^serial_to_parallel[2].fifo_din_reg\(2),
      O => p_2_out
    );
\SERIAL_TO_PARALLEL[8].fifo_din[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => en_16x_Baud,
      I1 => \INFERRED_GEN.data_reg\(15),
      I2 => stop_Bit_Position_reg_0,
      O => \^serial_to_parallel[2].fifo_din_reg\(2)
    );
fifo_Write_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg\(15),
      I1 => en_16x_Baud,
      I2 => stop_Bit_Position_reg_0,
      I3 => scndry_out,
      O => fifo_Write0
    );
frame_err_ocrd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF0080"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg\(15),
      I1 => en_16x_Baud,
      I2 => stop_Bit_Position_reg_0,
      I3 => scndry_out,
      I4 => frame_err_ocrd,
      O => frame_err_ocrd_reg
    );
running_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFA0A0"
    )
        port map (
      I0 => start_Edge_Detected,
      I1 => \INFERRED_GEN.data_reg\(15),
      I2 => en_16x_Baud,
      I3 => stop_Bit_Position_reg_0,
      I4 => running_reg_0,
      O => running_reg
    );
\status_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F200"
    )
        port map (
      I0 => \status_reg[1]_i_2_n_0\,
      I1 => scndry_out,
      I2 => status_reg(0),
      I3 => s_axi_aresetn,
      I4 => clr_Status,
      O => status_reg_reg0
    );
\status_reg[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => stop_Bit_Position_reg_0,
      I1 => en_16x_Baud,
      I2 => \INFERRED_GEN.data_reg\(15),
      O => \status_reg[1]_i_2_n_0\
    );
stop_Bit_Position_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2CCC"
    )
        port map (
      I0 => \in\(7),
      I1 => stop_Bit_Position_reg_0,
      I2 => en_16x_Baud,
      I3 => \INFERRED_GEN.data_reg\(15),
      O => stop_Bit_Position_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \uart_bmpg_0_axi_uart_dynshreg_i_f__parameterized0\ is
  port (
    en_16x_Baud : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    tx_Data_Enable_reg : out STD_LOGIC;
    tx_Data_Enable_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \uart_bmpg_0_axi_uart_dynshreg_i_f__parameterized0\ : entity is "dynshreg_i_f";
end \uart_bmpg_0_axi_uart_dynshreg_i_f__parameterized0\;

architecture STRUCTURE of \uart_bmpg_0_axi_uart_dynshreg_i_f__parameterized0\ is
  signal \INFERRED_GEN.data_reg[14][0]_srl15_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.data_reg_n_0_[15]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \INFERRED_GEN.data_reg[14][0]_srl15\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/MID_START_BIT_SRL16_I/INFERRED_GEN.data_reg[14] ";
  attribute srl_name : string;
  attribute srl_name of \INFERRED_GEN.data_reg[14][0]_srl15\ : label is "U0/\UARTLITE_CORE_I/UARTLITE_TX_I/MID_START_BIT_SRL16_I/INFERRED_GEN.data_reg[14][0]_srl15 ";
begin
\INFERRED_GEN.data_reg[14][0]_srl15\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0001"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => en_16x_Baud,
      CLK => s_axi_aclk,
      D => \INFERRED_GEN.data_reg_n_0_[15]\(0),
      Q => \INFERRED_GEN.data_reg[14][0]_srl15_n_0\
    );
\INFERRED_GEN.data_reg[15][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => \INFERRED_GEN.data_reg[14][0]_srl15_n_0\,
      Q => \INFERRED_GEN.data_reg_n_0_[15]\(0),
      R => '0'
    );
tx_Data_Enable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \INFERRED_GEN.data_reg_n_0_[15]\(0),
      I1 => tx_Data_Enable_reg_0,
      I2 => en_16x_Baud,
      O => tx_Data_Enable_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_bmpg_0_axi_uart_pselect_f is
  port (
    bus2ip_addr_i_reg : in STD_LOGIC_VECTOR ( 3 downto 2 );
    ce_expnd_i_3 : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_bmpg_0_axi_uart_pselect_f : entity is "pselect_f";
end uart_bmpg_0_axi_uart_pselect_f;

architecture STRUCTURE of uart_bmpg_0_axi_uart_pselect_f is
begin
CS: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bus2ip_addr_i_reg(2),
      I1 => bus2ip_addr_i_reg(3),
      O => ce_expnd_i_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \uart_bmpg_0_axi_uart_pselect_f__parameterized1\ is
  port (
    bus2ip_addr_i_reg : in STD_LOGIC_VECTOR ( 3 downto 2 );
    ce_expnd_i_1 : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \uart_bmpg_0_axi_uart_pselect_f__parameterized1\ : entity is "pselect_f";
end \uart_bmpg_0_axi_uart_pselect_f__parameterized1\;

architecture STRUCTURE of \uart_bmpg_0_axi_uart_pselect_f__parameterized1\ is
begin
CS: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bus2ip_addr_i_reg(3),
      I1 => bus2ip_addr_i_reg(2),
      O => ce_expnd_i_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_bmpg_0_axi_uart_address_decoder is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ : out STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg\ : out STD_LOGIC_VECTOR ( 2 to 2 );
    \INFERRED_GEN.cnt_i_reg[2]_0\ : out STD_LOGIC;
    bus2ip_addr_i_reg : in STD_LOGIC_VECTOR ( 3 downto 2 );
    bus2ip_rnw_i : in STD_LOGIC;
    enable_interrupts : in STD_LOGIC;
    enable_interrupts_reg : out STD_LOGIC;
    enable_interrupts_reg_0 : out STD_LOGIC;
    fifo_wr : out STD_LOGIC;
    ip2bus_error : out STD_LOGIC;
    reset_RX_FIFO : out STD_LOGIC;
    reset_TX_FIFO : out STD_LOGIC;
    rx_Buffer_Full : in STD_LOGIC;
    rx_Data_Present_Pre_reg : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp_i_reg : out STD_LOGIC_VECTOR ( 1 to 1 );
    s_axi_bvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg_0 : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg_0 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    start2 : in STD_LOGIC;
    state_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tx_Buffer_Empty_Pre_reg : out STD_LOGIC;
    tx_Buffer_Full : in STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \INFERRED_GEN.cnt_i_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \INFERRED_GEN.cnt_i_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    bus2ip_rdce : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_bresp : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rdata_i_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    status_reg : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_bmpg_0_axi_uart_address_decoder : entity is "address_decoder";
end uart_bmpg_0_axi_uart_address_decoder;

architecture STRUCTURE of uart_bmpg_0_axi_uart_address_decoder is
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\ : STD_LOGIC;
  signal ce_expnd_i_0 : STD_LOGIC;
  signal ce_expnd_i_1 : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal \^enable_interrupts_reg\ : STD_LOGIC;
  signal \^ip2bus_error\ : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Bus_RNW_reg_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[4]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[4]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \INFERRED_GEN.data_reg[15][7]_srl16_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of clr_Status_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of enable_interrupts_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of reset_RX_FIFO_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of reset_TX_FIFO_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_axi_rresp_i[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of tx_Buffer_Empty_Pre_i_1 : label is "soft_lutpair6";
begin
  \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ <= \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\;
  \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ <= \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\;
  enable_interrupts_reg <= \^enable_interrupts_reg\;
  ip2bus_error <= \^ip2bus_error\;
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bus2ip_rnw_i,
      I1 => start2,
      I2 => \^enable_interrupts_reg\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^enable_interrupts_reg\,
      R => '0'
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_3,
      Q => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bus2ip_addr_i_reg(2),
      I1 => bus2ip_addr_i_reg(3),
      O => ce_expnd_i_2
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_2,
      Q => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_1,
      Q => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I3 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I4 => s_axi_aresetn,
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bus2ip_addr_i_reg(3),
      I1 => bus2ip_addr_i_reg(2),
      O => ce_expnd_i_0
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => start2,
      D => ce_expnd_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      R => cs_ce_clr
    );
\INFERRED_GEN.cnt_i[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \^enable_interrupts_reg\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \INFERRED_GEN.cnt_i_reg[4]\(0),
      O => \INFERRED_GEN.cnt_i_reg\(2)
    );
\INFERRED_GEN.cnt_i[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I1 => \^enable_interrupts_reg\,
      O => FIFO_Full_reg
    );
\INFERRED_GEN.cnt_i[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I1 => \^enable_interrupts_reg\,
      I2 => tx_Buffer_Full,
      O => \INFERRED_GEN.cnt_i_reg[2]_0\
    );
\INFERRED_GEN.data_reg[15][7]_srl16_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => tx_Buffer_Full,
      I1 => \^enable_interrupts_reg\,
      I2 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      O => fifo_wr
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.uart_bmpg_0_axi_uart_pselect_f
     port map (
      bus2ip_addr_i_reg(3 downto 2) => bus2ip_addr_i_reg(3 downto 2),
      ce_expnd_i_3 => ce_expnd_i_3
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\uart_bmpg_0_axi_uart_pselect_f__parameterized1\
     port map (
      bus2ip_addr_i_reg(3 downto 2) => bus2ip_addr_i_reg(3 downto 2),
      ce_expnd_i_1 => ce_expnd_i_1
    );
clr_Status_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^enable_interrupts_reg\,
      O => bus2ip_rdce(0)
    );
enable_interrupts_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => \^enable_interrupts_reg\,
      I3 => enable_interrupts,
      O => enable_interrupts_reg_0
    );
reset_RX_FIFO_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^enable_interrupts_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => s_axi_wdata(1),
      O => reset_RX_FIFO
    );
reset_TX_FIFO_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^enable_interrupts_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => s_axi_wdata(0),
      O => reset_TX_FIFO
    );
rx_Data_Present_Pre_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => \INFERRED_GEN.cnt_i_reg[4]\(0),
      I1 => s_axi_aresetn,
      I2 => \^enable_interrupts_reg\,
      I3 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      O => rx_Data_Present_Pre_reg
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F0E0"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I1 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I2 => \^enable_interrupts_reg\,
      I3 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      O => \^s_axi_arready\
    );
\s_axi_bresp_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^ip2bus_error\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => s_axi_bresp(0),
      O => s_axi_bresp_i_reg(1)
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4040"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \^s_axi_awready\,
      I3 => s_axi_bready,
      I4 => s_axi_bvalid_i_reg_0,
      O => s_axi_bvalid_i_reg
    );
\s_axi_rdata_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5050C000"
    )
        port map (
      I0 => \INFERRED_GEN.cnt_i_reg[4]\(0),
      I1 => \out\(0),
      I2 => \^enable_interrupts_reg\,
      I3 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \s_axi_rdata_i_reg[7]\(0)
    );
\s_axi_rdata_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0C000"
    )
        port map (
      I0 => rx_Buffer_Full,
      I1 => \out\(1),
      I2 => \^enable_interrupts_reg\,
      I3 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \s_axi_rdata_i_reg[7]\(1)
    );
\s_axi_rdata_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0C000"
    )
        port map (
      I0 => \INFERRED_GEN.cnt_i_reg[4]_0\(0),
      I1 => \out\(2),
      I2 => \^enable_interrupts_reg\,
      I3 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \s_axi_rdata_i_reg[7]\(2)
    );
\s_axi_rdata_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0C000"
    )
        port map (
      I0 => tx_Buffer_Full,
      I1 => \out\(3),
      I2 => \^enable_interrupts_reg\,
      I3 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \s_axi_rdata_i_reg[7]\(3)
    );
\s_axi_rdata_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0C000"
    )
        port map (
      I0 => enable_interrupts,
      I1 => \out\(4),
      I2 => \^enable_interrupts_reg\,
      I3 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \s_axi_rdata_i_reg[7]\(4)
    );
\s_axi_rdata_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0C000"
    )
        port map (
      I0 => status_reg(0),
      I1 => \out\(5),
      I2 => \^enable_interrupts_reg\,
      I3 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \s_axi_rdata_i_reg[7]\(5)
    );
\s_axi_rdata_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0C000"
    )
        port map (
      I0 => status_reg(1),
      I1 => \out\(6),
      I2 => \^enable_interrupts_reg\,
      I3 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \s_axi_rdata_i_reg[7]\(6)
    );
\s_axi_rdata_i[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I2 => \^enable_interrupts_reg\,
      I3 => \out\(7),
      O => \s_axi_rdata_i_reg[7]\(7)
    );
\s_axi_rresp_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0880088"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I1 => tx_Buffer_Full,
      I2 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I3 => \^enable_interrupts_reg\,
      I4 => \INFERRED_GEN.cnt_i_reg[4]\(0),
      O => \^ip2bus_error\
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4040"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \^s_axi_arready\,
      I3 => s_axi_rready,
      I4 => s_axi_rvalid_i_reg_0,
      O => s_axi_rvalid_i_reg
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F0F0E"
    )
        port map (
      I0 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => \^enable_interrupts_reg\,
      I3 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_1\,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => \^s_axi_awready\
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFEFCFEC"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => state_reg(0),
      I2 => Q(1),
      I3 => Q(0),
      I4 => s_axi_arvalid,
      O => D(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFECCFECCFEFCFEC"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => state_reg(1),
      I2 => Q(0),
      I3 => Q(1),
      I4 => s_axi_wvalid,
      I5 => s_axi_arvalid,
      O => D(1)
    );
tx_Buffer_Empty_Pre_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \INFERRED_GEN.cnt_i_reg[4]_0\(0),
      I2 => \^gen_bkend_ce_registers[0].ce_out_i_reg[0]_0\,
      I3 => \^enable_interrupts_reg\,
      O => tx_Buffer_Empty_Pre_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_bmpg_0_axi_uart_srl_fifo_rbu_f is
  port (
    Bus_RNW_reg : in STD_LOGIC;
    \^gen_bkend_ce_registers[1].ce_out_i_reg\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : in STD_LOGIC_VECTOR ( 1 to 1 );
    fifo_Read : in STD_LOGIC;
    fifo_wr : in STD_LOGIC;
    mux_Out : out STD_LOGIC;
    mux_sel_reg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_4_in : in STD_LOGIC;
    reset_TX_FIFO_reg : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    tx_Buffer_Full : out STD_LOGIC;
    tx_DataBits : in STD_LOGIC;
    tx_Data_Enable_reg : in STD_LOGIC;
    tx_Start : in STD_LOGIC;
    tx_Start0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_bmpg_0_axi_uart_srl_fifo_rbu_f : entity is "srl_fifo_rbu_f";
end uart_bmpg_0_axi_uart_srl_fifo_rbu_f;

architecture STRUCTURE of uart_bmpg_0_axi_uart_srl_fifo_rbu_f is
  signal CNTR_INCR_DECR_ADDN_F_I_n_2 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_3 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_4 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_5 : STD_LOGIC;
  signal TX_FIFO_Reset : STD_LOGIC;
  signal fifo_full_p1 : STD_LOGIC;
  signal \^tx_buffer_full\ : STD_LOGIC;
  signal NLW_DYNSHREG_F_I_mux_sel_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  tx_Buffer_Full <= \^tx_buffer_full\;
CNTR_INCR_DECR_ADDN_F_I: entity work.uart_bmpg_0_axi_uart_cntr_incr_decr_addn_f
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      \^gen_bkend_ce_registers[1].ce_out_i_reg\ => \^gen_bkend_ce_registers[1].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\(1) => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\(1),
      Q(4) => Q(0),
      Q(3) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      Q(2) => CNTR_INCR_DECR_ADDN_F_I_n_3,
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_4,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_5,
      SS(0) => TX_FIFO_Reset,
      fifo_Read => fifo_Read,
      fifo_full_p1 => fifo_full_p1,
      reset_TX_FIFO_reg => reset_TX_FIFO_reg,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      tx_Buffer_Full => \^tx_buffer_full\,
      tx_DataBits => tx_DataBits,
      tx_Data_Enable_reg => tx_Data_Enable_reg,
      tx_Start => tx_Start,
      tx_Start0 => tx_Start0
    );
DYNSHREG_F_I: entity work.uart_bmpg_0_axi_uart_dynshreg_f
     port map (
      Q(3) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      Q(2) => CNTR_INCR_DECR_ADDN_F_I_n_3,
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_4,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_5,
      fifo_wr => fifo_wr,
      mux_Out => mux_Out,
      mux_sel_reg(2) => mux_sel_reg(2),
      mux_sel_reg(1) => NLW_DYNSHREG_F_I_mux_sel_reg_UNCONNECTED(1),
      mux_sel_reg(0) => mux_sel_reg(0),
      p_4_in => p_4_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0)
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => fifo_full_p1,
      Q => \^tx_buffer_full\,
      R => TX_FIFO_Reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_bmpg_0_axi_uart_srl_fifo_rbu_f_1 is
  port (
    Bus_RNW_reg : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    \^gen_bkend_ce_registers[0].ce_out_i_reg\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Interrupt0 : out STD_LOGIC;
    clr_Status : in STD_LOGIC;
    enable_interrupts : in STD_LOGIC;
    fifo_Write : in STD_LOGIC;
    reset_RX_FIFO_reg : in STD_LOGIC;
    rx_Data_Present_Pre : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    status_reg_reg : out STD_LOGIC_VECTOR ( 2 to 2 );
    \status_reg_reg[2]_0\ : out STD_LOGIC;
    tx_Buffer_Empty_Pre : in STD_LOGIC;
    valid_rx : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \in\ : in STD_LOGIC_VECTOR ( 0 to 7 );
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    status_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_bmpg_0_axi_uart_srl_fifo_rbu_f_1 : entity is "srl_fifo_rbu_f";
end uart_bmpg_0_axi_uart_srl_fifo_rbu_f_1;

architecture STRUCTURE of uart_bmpg_0_axi_uart_srl_fifo_rbu_f_1 is
  signal CNTR_INCR_DECR_ADDN_F_I_n_3 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_4 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_5 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_6 : STD_LOGIC;
  signal RX_FIFO_Reset : STD_LOGIC;
  signal fifo_full_p1 : STD_LOGIC;
  signal \^status_reg_reg\ : STD_LOGIC_VECTOR ( 2 to 2 );
begin
  status_reg_reg(2) <= \^status_reg_reg\(2);
CNTR_INCR_DECR_ADDN_F_I: entity work.uart_bmpg_0_axi_uart_cntr_incr_decr_addn_f_2
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      FIFO_Full_reg => \^status_reg_reg\(2),
      \^gen_bkend_ce_registers[0].ce_out_i_reg\ => \^gen_bkend_ce_registers[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\(0) => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\(0),
      \INFERRED_GEN.cnt_i_reg[4]_0\(0) => \INFERRED_GEN.cnt_i_reg[4]\(0),
      Interrupt0 => Interrupt0,
      Q(4) => Q(0),
      Q(3) => CNTR_INCR_DECR_ADDN_F_I_n_3,
      Q(2) => CNTR_INCR_DECR_ADDN_F_I_n_4,
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_5,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_6,
      SS(0) => RX_FIFO_Reset,
      enable_interrupts => enable_interrupts,
      fifo_Write => fifo_Write,
      fifo_full_p1 => fifo_full_p1,
      reset_RX_FIFO_reg => reset_RX_FIFO_reg,
      rx_Data_Present_Pre => rx_Data_Present_Pre,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      tx_Buffer_Empty_Pre => tx_Buffer_Empty_Pre,
      valid_rx => valid_rx
    );
DYNSHREG_F_I: entity work.uart_bmpg_0_axi_uart_dynshreg_f_3
     port map (
      FIFO_Full_reg => \^status_reg_reg\(2),
      Q(3) => CNTR_INCR_DECR_ADDN_F_I_n_3,
      Q(2) => CNTR_INCR_DECR_ADDN_F_I_n_4,
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_5,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_6,
      fifo_Write => fifo_Write,
      \in\(0 to 7) => \in\(0 to 7),
      \out\(7 downto 0) => \out\(7 downto 0),
      s_axi_aclk => s_axi_aclk,
      valid_rx => valid_rx
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => fifo_full_p1,
      Q => \^status_reg_reg\(2),
      R => RX_FIFO_Reset
    );
\status_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00EA0000"
    )
        port map (
      I0 => status_reg(0),
      I1 => fifo_Write,
      I2 => \^status_reg_reg\(2),
      I3 => clr_Status,
      I4 => s_axi_aresetn,
      O => \status_reg_reg[2]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_bmpg_0_axi_uart_slave_attachment is
  port (
    FIFO_Full_reg : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ : out STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg\ : out STD_LOGIC_VECTOR ( 2 to 2 );
    \INFERRED_GEN.cnt_i_reg[2]_0\ : out STD_LOGIC;
    bus2ip_reset : in STD_LOGIC;
    enable_interrupts : in STD_LOGIC;
    enable_interrupts_reg : out STD_LOGIC;
    enable_interrupts_reg_0 : out STD_LOGIC;
    fifo_wr : out STD_LOGIC;
    reset_RX_FIFO : out STD_LOGIC;
    reset_TX_FIFO : out STD_LOGIC;
    rx_Buffer_Full : in STD_LOGIC;
    rx_Data_Present_Pre_reg : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    tx_Buffer_Empty_Pre_reg : out STD_LOGIC;
    tx_Buffer_Full : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rdce : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    status_reg : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_bmpg_0_axi_uart_slave_attachment : entity is "slave_attachment";
end uart_bmpg_0_axi_uart_slave_attachment;

architecture STRUCTURE of uart_bmpg_0_axi_uart_slave_attachment is
  signal I_DECODER_n_26 : STD_LOGIC;
  signal I_DECODER_n_27 : STD_LOGIC;
  signal I_DECODER_n_28 : STD_LOGIC;
  signal I_DECODER_n_5 : STD_LOGIC;
  signal I_DECODER_n_6 : STD_LOGIC;
  signal SIn_DBus : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal bus2ip_rnw_i : STD_LOGIC;
  signal bus2ip_rnw_i_i_1_n_0 : STD_LOGIC;
  signal ip2bus_error : STD_LOGIC;
  signal rst : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_rdata_i : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair9";
begin
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
I_DECODER: entity work.uart_bmpg_0_axi_uart_address_decoder
     port map (
      D(1) => I_DECODER_n_5,
      D(0) => I_DECODER_n_6,
      FIFO_Full_reg => FIFO_Full_reg,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\(0),
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\,
      \INFERRED_GEN.cnt_i_reg\(2) => \INFERRED_GEN.cnt_i_reg\(2),
      \INFERRED_GEN.cnt_i_reg[2]_0\ => \INFERRED_GEN.cnt_i_reg[2]_0\,
      \INFERRED_GEN.cnt_i_reg[4]\(0) => Q(0),
      \INFERRED_GEN.cnt_i_reg[4]_0\(0) => \INFERRED_GEN.cnt_i_reg[4]\(0),
      Q(1 downto 0) => state(1 downto 0),
      bus2ip_addr_i_reg(3 downto 2) => \bus2ip_addr_i_reg_n_0_\(3 downto 2),
      bus2ip_rdce(0) => bus2ip_rdce(0),
      bus2ip_rnw_i => bus2ip_rnw_i,
      enable_interrupts => enable_interrupts,
      enable_interrupts_reg => enable_interrupts_reg,
      enable_interrupts_reg_0 => enable_interrupts_reg_0,
      fifo_wr => fifo_wr,
      ip2bus_error => ip2bus_error,
      \out\(7 downto 0) => \out\(7 downto 0),
      reset_RX_FIFO => reset_RX_FIFO,
      reset_TX_FIFO => reset_TX_FIFO,
      rx_Buffer_Full => rx_Buffer_Full,
      rx_Data_Present_Pre_reg => rx_Data_Present_Pre_reg,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awready => s_axi_awready,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(0),
      s_axi_bresp_i_reg(1) => I_DECODER_n_28,
      s_axi_bvalid_i_reg => I_DECODER_n_27,
      s_axi_bvalid_i_reg_0 => \^s_axi_bvalid\,
      \s_axi_rdata_i_reg[7]\(7) => SIn_DBus(0),
      \s_axi_rdata_i_reg[7]\(6) => SIn_DBus(1),
      \s_axi_rdata_i_reg[7]\(5) => SIn_DBus(2),
      \s_axi_rdata_i_reg[7]\(4) => SIn_DBus(3),
      \s_axi_rdata_i_reg[7]\(3) => SIn_DBus(4),
      \s_axi_rdata_i_reg[7]\(2) => SIn_DBus(5),
      \s_axi_rdata_i_reg[7]\(1) => SIn_DBus(6),
      \s_axi_rdata_i_reg[7]\(0) => SIn_DBus(7),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_i_reg => I_DECODER_n_26,
      s_axi_rvalid_i_reg_0 => \^s_axi_rvalid\,
      s_axi_wdata(2 downto 0) => s_axi_wdata(2 downto 0),
      s_axi_wvalid => \state[1]_i_3_n_0\,
      start2 => start2,
      state_reg(1) => \state[1]_i_2_n_0\,
      state_reg(0) => \state[0]_i_2_n_0\,
      status_reg(1 downto 0) => status_reg(1 downto 0),
      tx_Buffer_Empty_Pre_reg => tx_Buffer_Empty_Pre_reg,
      tx_Buffer_Full => tx_Buffer_Full
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \bus2ip_addr_i[3]_i_2_n_0\,
      I2 => s_axi_araddr(0),
      I3 => start2_i_1_n_0,
      I4 => \bus2ip_addr_i_reg_n_0_\(2),
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => \bus2ip_addr_i[3]_i_2_n_0\,
      I2 => s_axi_araddr(1),
      I3 => start2_i_1_n_0,
      I4 => \bus2ip_addr_i_reg_n_0_\(3),
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => s_axi_arvalid,
      O => \bus2ip_addr_i[3]_i_2_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_\(2),
      R => rst
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_\(3),
      R => rst
    );
bus2ip_rnw_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7000000F0"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => state(0),
      I4 => state(1),
      I5 => bus2ip_rnw_i,
      O => bus2ip_rnw_i_i_1_n_0
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_rnw_i_i_1_n_0,
      Q => bus2ip_rnw_i,
      R => rst
    );
rst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_reset,
      Q => rst,
      R => '0'
    );
\s_axi_bresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_DECODER_n_28,
      Q => \^s_axi_bresp\(0),
      R => rst
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_DECODER_n_27,
      Q => \^s_axi_bvalid\,
      R => rst
    );
\s_axi_rdata_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => s_axi_rdata_i
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => SIn_DBus(7),
      Q => s_axi_rdata(0),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => SIn_DBus(6),
      Q => s_axi_rdata(1),
      R => rst
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => SIn_DBus(5),
      Q => s_axi_rdata(2),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => SIn_DBus(4),
      Q => s_axi_rdata(3),
      R => rst
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => SIn_DBus(3),
      Q => s_axi_rdata(4),
      R => rst
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => SIn_DBus(2),
      Q => s_axi_rdata(5),
      R => rst
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => SIn_DBus(1),
      Q => s_axi_rdata(6),
      R => rst
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => SIn_DBus(0),
      Q => s_axi_rdata(7),
      R => rst
    );
\s_axi_rresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => ip2bus_error,
      Q => s_axi_rresp(0),
      R => rst
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_DECODER_n_26,
      Q => \^s_axi_rvalid\,
      R => rst
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => state(0),
      I4 => state(1),
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => rst
    );
\state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002A2A2A"
    )
        port map (
      I0 => state(0),
      I1 => \^s_axi_rvalid\,
      I2 => s_axi_rready,
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid\,
      O => \state[0]_i_2_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002A2A2A"
    )
        port map (
      I0 => state(1),
      I1 => \^s_axi_rvalid\,
      I2 => s_axi_rready,
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid\,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      O => \state[1]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_DECODER_n_6,
      Q => state(0),
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_DECODER_n_5,
      Q => state(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_bmpg_0_axi_uart_srl_fifo_f is
  port (
    Bus_RNW_reg : in STD_LOGIC;
    \^gen_bkend_ce_registers[1].ce_out_i_reg\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : in STD_LOGIC_VECTOR ( 1 to 1 );
    fifo_Read : in STD_LOGIC;
    fifo_wr : in STD_LOGIC;
    mux_Out : out STD_LOGIC;
    mux_sel_reg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_4_in : in STD_LOGIC;
    reset_TX_FIFO_reg : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    tx_Buffer_Full : out STD_LOGIC;
    tx_DataBits : in STD_LOGIC;
    tx_Data_Enable_reg : in STD_LOGIC;
    tx_Start : in STD_LOGIC;
    tx_Start0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_bmpg_0_axi_uart_srl_fifo_f : entity is "srl_fifo_f";
end uart_bmpg_0_axi_uart_srl_fifo_f;

architecture STRUCTURE of uart_bmpg_0_axi_uart_srl_fifo_f is
  signal NLW_I_SRL_FIFO_RBU_F_mux_sel_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
begin
I_SRL_FIFO_RBU_F: entity work.uart_bmpg_0_axi_uart_srl_fifo_rbu_f
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      \^gen_bkend_ce_registers[1].ce_out_i_reg\ => \^gen_bkend_ce_registers[1].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\(1) => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\(1),
      Q(0) => Q(0),
      fifo_Read => fifo_Read,
      fifo_wr => fifo_wr,
      mux_Out => mux_Out,
      mux_sel_reg(2) => mux_sel_reg(2),
      mux_sel_reg(1) => NLW_I_SRL_FIFO_RBU_F_mux_sel_reg_UNCONNECTED(1),
      mux_sel_reg(0) => mux_sel_reg(0),
      p_4_in => p_4_in,
      reset_TX_FIFO_reg => reset_TX_FIFO_reg,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      tx_Buffer_Full => tx_Buffer_Full,
      tx_DataBits => tx_DataBits,
      tx_Data_Enable_reg => tx_Data_Enable_reg,
      tx_Start => tx_Start,
      tx_Start0 => tx_Start0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_bmpg_0_axi_uart_srl_fifo_f_0 is
  port (
    Bus_RNW_reg : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    \^gen_bkend_ce_registers[0].ce_out_i_reg\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Interrupt0 : out STD_LOGIC;
    clr_Status : in STD_LOGIC;
    enable_interrupts : in STD_LOGIC;
    fifo_Write : in STD_LOGIC;
    reset_RX_FIFO_reg : in STD_LOGIC;
    rx_Data_Present_Pre : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    status_reg_reg : out STD_LOGIC_VECTOR ( 2 to 2 );
    \status_reg_reg[2]_0\ : out STD_LOGIC;
    tx_Buffer_Empty_Pre : in STD_LOGIC;
    valid_rx : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \in\ : in STD_LOGIC_VECTOR ( 0 to 7 );
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    status_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_bmpg_0_axi_uart_srl_fifo_f_0 : entity is "srl_fifo_f";
end uart_bmpg_0_axi_uart_srl_fifo_f_0;

architecture STRUCTURE of uart_bmpg_0_axi_uart_srl_fifo_f_0 is
begin
I_SRL_FIFO_RBU_F: entity work.uart_bmpg_0_axi_uart_srl_fifo_rbu_f_1
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      \^gen_bkend_ce_registers[0].ce_out_i_reg\ => \^gen_bkend_ce_registers[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\(0) => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\(0),
      \INFERRED_GEN.cnt_i_reg[4]\(0) => \INFERRED_GEN.cnt_i_reg[4]\(0),
      Interrupt0 => Interrupt0,
      Q(0) => Q(0),
      clr_Status => clr_Status,
      enable_interrupts => enable_interrupts,
      fifo_Write => fifo_Write,
      \in\(0 to 7) => \in\(0 to 7),
      \out\(7 downto 0) => \out\(7 downto 0),
      reset_RX_FIFO_reg => reset_RX_FIFO_reg,
      rx_Data_Present_Pre => rx_Data_Present_Pre,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      status_reg(0) => status_reg(0),
      status_reg_reg(2) => status_reg_reg(2),
      \status_reg_reg[2]_0\ => \status_reg_reg[2]_0\,
      tx_Buffer_Empty_Pre => tx_Buffer_Empty_Pre,
      valid_rx => valid_rx
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_bmpg_0_axi_uart_axi_lite_ipif is
  port (
    Bus_RNW_reg : out STD_LOGIC;
    FIFO_Full_reg : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : out STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg\ : out STD_LOGIC_VECTOR ( 2 to 2 );
    \INFERRED_GEN.cnt_i_reg[2]_0\ : out STD_LOGIC;
    bus2ip_reset : in STD_LOGIC;
    enable_interrupts : in STD_LOGIC;
    enable_interrupts_reg : out STD_LOGIC;
    fifo_wr : out STD_LOGIC;
    reset_RX_FIFO : out STD_LOGIC;
    reset_TX_FIFO : out STD_LOGIC;
    rx_Buffer_Full : in STD_LOGIC;
    rx_Data_Present_Pre_reg : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    tx_Buffer_Empty_Pre_reg : out STD_LOGIC;
    tx_Buffer_Full : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rdce : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    status_reg : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_bmpg_0_axi_uart_axi_lite_ipif : entity is "axi_lite_ipif";
end uart_bmpg_0_axi_uart_axi_lite_ipif;

architecture STRUCTURE of uart_bmpg_0_axi_uart_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.uart_bmpg_0_axi_uart_slave_attachment
     port map (
      FIFO_Full_reg => FIFO_Full_reg,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\(0) => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0\ => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      \INFERRED_GEN.cnt_i_reg\(2) => \INFERRED_GEN.cnt_i_reg\(2),
      \INFERRED_GEN.cnt_i_reg[2]_0\ => \INFERRED_GEN.cnt_i_reg[2]_0\,
      \INFERRED_GEN.cnt_i_reg[4]\(0) => \INFERRED_GEN.cnt_i_reg[4]\(0),
      Q(0) => Q(0),
      bus2ip_rdce(0) => bus2ip_rdce(0),
      bus2ip_reset => bus2ip_reset,
      enable_interrupts => enable_interrupts,
      enable_interrupts_reg => Bus_RNW_reg,
      enable_interrupts_reg_0 => enable_interrupts_reg,
      fifo_wr => fifo_wr,
      \out\(7 downto 0) => \out\(7 downto 0),
      reset_RX_FIFO => reset_RX_FIFO,
      reset_TX_FIFO => reset_TX_FIFO,
      rx_Buffer_Full => rx_Buffer_Full,
      rx_Data_Present_Pre_reg => rx_Data_Present_Pre_reg,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(1 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(7 downto 0) => s_axi_rdata(7 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(2 downto 0) => s_axi_wdata(2 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      status_reg(1 downto 0) => status_reg(1 downto 0),
      tx_Buffer_Empty_Pre_reg => tx_Buffer_Empty_Pre_reg,
      tx_Buffer_Full => tx_Buffer_Full
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_bmpg_0_axi_uart_uartlite_rx is
  port (
    Bus_RNW_reg : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    \^gen_bkend_ce_registers[0].ce_out_i_reg\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Interrupt0 : out STD_LOGIC;
    clr_Status : in STD_LOGIC;
    en_16x_Baud : in STD_LOGIC;
    enable_interrupts : in STD_LOGIC;
    reset_RX_FIFO_reg : in STD_LOGIC;
    rx : in STD_LOGIC;
    rx_Data_Present_Pre : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    status_reg_reg0 : out STD_LOGIC;
    status_reg_reg : out STD_LOGIC_VECTOR ( 2 to 2 );
    \status_reg_reg[2]_0\ : out STD_LOGIC;
    tx_Buffer_Empty_Pre : in STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    status_reg : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_bmpg_0_axi_uart_uartlite_rx : entity is "uartlite_rx";
end uart_bmpg_0_axi_uart_uartlite_rx;

architecture STRUCTURE of uart_bmpg_0_axi_uart_uartlite_rx is
  signal DELAY_16_I_n_1 : STD_LOGIC;
  signal DELAY_16_I_n_10 : STD_LOGIC;
  signal DELAY_16_I_n_11 : STD_LOGIC;
  signal DELAY_16_I_n_12 : STD_LOGIC;
  signal RX_D2 : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal fifo_Write : STD_LOGIC;
  signal fifo_Write0 : STD_LOGIC;
  signal fifo_din : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal frame_err_ocrd : STD_LOGIC;
  signal p_11_out : STD_LOGIC;
  signal p_14_out : STD_LOGIC;
  signal p_17_out : STD_LOGIC;
  signal p_20_out : STD_LOGIC;
  signal p_26_out : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal running_reg_n_0 : STD_LOGIC;
  signal rx_1 : STD_LOGIC;
  signal rx_2 : STD_LOGIC;
  signal rx_3 : STD_LOGIC;
  signal rx_4 : STD_LOGIC;
  signal rx_5 : STD_LOGIC;
  signal rx_6 : STD_LOGIC;
  signal rx_7 : STD_LOGIC;
  signal rx_8 : STD_LOGIC;
  signal rx_9 : STD_LOGIC;
  signal start_Edge_Detected : STD_LOGIC;
  signal start_Edge_Detected0 : STD_LOGIC;
  signal start_Edge_Detected_i_2_n_0 : STD_LOGIC;
  signal stop_Bit_Position_reg_n_0 : STD_LOGIC;
  signal valid_rx : STD_LOGIC;
  signal valid_rx_i_1_n_0 : STD_LOGIC;
begin
  SR(0) <= \^sr\(0);
DELAY_16_I: entity work.uart_bmpg_0_axi_uart_dynshreg_i_f
     port map (
      \SERIAL_TO_PARALLEL[2].fifo_din_reg\(2) => DELAY_16_I_n_1,
      clr_Status => clr_Status,
      en_16x_Baud => en_16x_Baud,
      fifo_Write0 => fifo_Write0,
      frame_err_ocrd => frame_err_ocrd,
      frame_err_ocrd_reg => DELAY_16_I_n_11,
      \in\(0) => fifo_din(1),
      \in\(1) => fifo_din(2),
      \in\(2) => fifo_din(3),
      \in\(3) => fifo_din(4),
      \in\(4) => fifo_din(5),
      \in\(5) => fifo_din(6),
      \in\(6) => fifo_din(7),
      \in\(7) => fifo_din(8),
      p_11_out => p_11_out,
      p_14_out => p_14_out,
      p_17_out => p_17_out,
      p_20_out => p_20_out,
      p_2_out => p_2_out,
      p_5_out => p_5_out,
      p_8_out => p_8_out,
      running_reg => DELAY_16_I_n_12,
      running_reg_0 => running_reg_n_0,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      scndry_out => RX_D2,
      start_Edge_Detected => start_Edge_Detected,
      status_reg(0) => status_reg(1),
      status_reg_reg0 => status_reg_reg0,
      stop_Bit_Position_reg => DELAY_16_I_n_10,
      stop_Bit_Position_reg_0 => stop_Bit_Position_reg_n_0,
      valid_rx => valid_rx
    );
INPUT_DOUBLE_REGS3: entity work.uart_bmpg_0_axi_uart_cdc_sync
     port map (
      EN_16x_Baud_reg => DELAY_16_I_n_1,
      \in\(0) => fifo_din(1),
      p_26_out => p_26_out,
      rx => rx,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      scndry_out => RX_D2,
      start_Edge_Detected => start_Edge_Detected
    );
Interrupt_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^sr\(0)
    );
\SERIAL_TO_PARALLEL[1].fifo_din_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_26_out,
      Q => fifo_din(1),
      R => '0'
    );
\SERIAL_TO_PARALLEL[2].fifo_din_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_20_out,
      Q => fifo_din(2),
      R => '0'
    );
\SERIAL_TO_PARALLEL[3].fifo_din_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_17_out,
      Q => fifo_din(3),
      R => '0'
    );
\SERIAL_TO_PARALLEL[4].fifo_din_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_14_out,
      Q => fifo_din(4),
      R => '0'
    );
\SERIAL_TO_PARALLEL[5].fifo_din_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_11_out,
      Q => fifo_din(5),
      R => '0'
    );
\SERIAL_TO_PARALLEL[6].fifo_din_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_8_out,
      Q => fifo_din(6),
      R => '0'
    );
\SERIAL_TO_PARALLEL[7].fifo_din_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_5_out,
      Q => fifo_din(7),
      R => '0'
    );
\SERIAL_TO_PARALLEL[8].fifo_din_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_2_out,
      Q => fifo_din(8),
      R => '0'
    );
SRL_FIFO_I: entity work.uart_bmpg_0_axi_uart_srl_fifo_f_0
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      \^gen_bkend_ce_registers[0].ce_out_i_reg\ => \^gen_bkend_ce_registers[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\(0) => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\(0),
      \INFERRED_GEN.cnt_i_reg[4]\(0) => \INFERRED_GEN.cnt_i_reg[4]\(0),
      Interrupt0 => Interrupt0,
      Q(0) => Q(0),
      clr_Status => clr_Status,
      enable_interrupts => enable_interrupts,
      fifo_Write => fifo_Write,
      \in\(0) => fifo_din(1),
      \in\(1) => fifo_din(2),
      \in\(2) => fifo_din(3),
      \in\(3) => fifo_din(4),
      \in\(4) => fifo_din(5),
      \in\(5) => fifo_din(6),
      \in\(6) => fifo_din(7),
      \in\(7) => fifo_din(8),
      \out\(7 downto 0) => \out\(7 downto 0),
      reset_RX_FIFO_reg => reset_RX_FIFO_reg,
      rx_Data_Present_Pre => rx_Data_Present_Pre,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      status_reg(0) => status_reg(0),
      status_reg_reg(2) => status_reg_reg(2),
      \status_reg_reg[2]_0\ => \status_reg_reg[2]_0\,
      tx_Buffer_Empty_Pre => tx_Buffer_Empty_Pre,
      valid_rx => valid_rx
    );
fifo_Write_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => fifo_Write0,
      Q => fifo_Write,
      R => \^sr\(0)
    );
frame_err_ocrd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => DELAY_16_I_n_11,
      Q => frame_err_ocrd,
      R => \^sr\(0)
    );
running_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => DELAY_16_I_n_12,
      Q => running_reg_n_0,
      R => \^sr\(0)
    );
rx_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => RX_D2,
      Q => rx_1,
      R => \^sr\(0)
    );
rx_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => rx_1,
      Q => rx_2,
      R => \^sr\(0)
    );
rx_3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => rx_2,
      Q => rx_3,
      R => \^sr\(0)
    );
rx_4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => rx_3,
      Q => rx_4,
      R => \^sr\(0)
    );
rx_5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => rx_4,
      Q => rx_5,
      R => \^sr\(0)
    );
rx_6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => rx_5,
      Q => rx_6,
      R => \^sr\(0)
    );
rx_7_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => rx_6,
      Q => rx_7,
      R => \^sr\(0)
    );
rx_8_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => rx_7,
      Q => rx_8,
      R => \^sr\(0)
    );
rx_9_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => rx_8,
      Q => rx_9,
      R => \^sr\(0)
    );
start_Edge_Detected_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => rx_8,
      I1 => rx_2,
      I2 => start_Edge_Detected_i_2_n_0,
      I3 => rx_3,
      I4 => rx_1,
      I5 => frame_err_ocrd,
      O => start_Edge_Detected0
    );
start_Edge_Detected_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => rx_5,
      I1 => rx_7,
      I2 => rx_9,
      I3 => running_reg_n_0,
      I4 => rx_6,
      I5 => rx_4,
      O => start_Edge_Detected_i_2_n_0
    );
start_Edge_Detected_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => en_16x_Baud,
      D => start_Edge_Detected0,
      Q => start_Edge_Detected,
      R => \^sr\(0)
    );
stop_Bit_Position_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => DELAY_16_I_n_10,
      Q => stop_Bit_Position_reg_n_0,
      R => \^sr\(0)
    );
valid_rx_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => start_Edge_Detected,
      I1 => fifo_Write,
      I2 => valid_rx,
      O => valid_rx_i_1_n_0
    );
valid_rx_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => valid_rx_i_1_n_0,
      Q => valid_rx,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_bmpg_0_axi_uart_uartlite_tx is
  port (
    Bus_RNW_reg : in STD_LOGIC;
    \^gen_bkend_ce_registers[1].ce_out_i_reg\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : in STD_LOGIC_VECTOR ( 1 to 1 );
    en_16x_Baud : in STD_LOGIC;
    fifo_wr : in STD_LOGIC;
    reset_TX_FIFO_reg : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    tx : out STD_LOGIC;
    tx_Buffer_Full : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_bmpg_0_axi_uart_uartlite_tx : entity is "uartlite_tx";
end uart_bmpg_0_axi_uart_uartlite_tx;

architecture STRUCTURE of uart_bmpg_0_axi_uart_uartlite_tx is
  signal MID_START_BIT_SRL16_I_n_0 : STD_LOGIC;
  signal TX0 : STD_LOGIC;
  signal fifo_Read : STD_LOGIC;
  signal fifo_Read0 : STD_LOGIC;
  signal mux_Out : STD_LOGIC;
  signal \mux_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \mux_sel[1]_i_1_n_0\ : STD_LOGIC;
  signal \mux_sel[2]_i_1_n_0\ : STD_LOGIC;
  signal \mux_sel_reg_n_0_\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_4_in : STD_LOGIC;
  signal serial_Data : STD_LOGIC;
  signal tx_DataBits : STD_LOGIC;
  signal tx_DataBits0 : STD_LOGIC;
  signal tx_Data_Enable_reg_n_0 : STD_LOGIC;
  signal tx_Start : STD_LOGIC;
  signal tx_Start0 : STD_LOGIC;
  signal NLW_SRL_FIFO_I_mux_sel_reg_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mux_sel[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \mux_sel[1]_i_1\ : label is "soft_lutpair19";
begin
MID_START_BIT_SRL16_I: entity work.\uart_bmpg_0_axi_uart_dynshreg_i_f__parameterized0\
     port map (
      en_16x_Baud => en_16x_Baud,
      s_axi_aclk => s_axi_aclk,
      tx_Data_Enable_reg => MID_START_BIT_SRL16_I_n_0,
      tx_Data_Enable_reg_0 => tx_Data_Enable_reg_n_0
    );
SRL_FIFO_I: entity work.uart_bmpg_0_axi_uart_srl_fifo_f
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      \^gen_bkend_ce_registers[1].ce_out_i_reg\ => \^gen_bkend_ce_registers[1].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\(1) => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\(1),
      Q(0) => Q(0),
      fifo_Read => fifo_Read,
      fifo_wr => fifo_wr,
      mux_Out => mux_Out,
      mux_sel_reg(2) => \mux_sel_reg_n_0_\(2),
      mux_sel_reg(1) => NLW_SRL_FIFO_I_mux_sel_reg_UNCONNECTED(1),
      mux_sel_reg(0) => \mux_sel_reg_n_0_\(0),
      p_4_in => p_4_in,
      reset_TX_FIFO_reg => reset_TX_FIFO_reg,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      tx_Buffer_Full => tx_Buffer_Full,
      tx_DataBits => tx_DataBits,
      tx_Data_Enable_reg => tx_Data_Enable_reg_n_0,
      tx_Start => tx_Start,
      tx_Start0 => tx_Start0
    );
TX_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"31"
    )
        port map (
      I0 => tx_DataBits,
      I1 => tx_Start,
      I2 => serial_Data,
      O => TX0
    );
TX_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => TX0,
      Q => tx,
      S => SR(0)
    );
fifo_Read_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \mux_sel_reg_n_0_\(0),
      I1 => \mux_sel_reg_n_0_\(2),
      I2 => p_4_in,
      I3 => tx_Data_Enable_reg_n_0,
      O => fifo_Read0
    );
fifo_Read_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => fifo_Read0,
      Q => fifo_Read,
      R => SR(0)
    );
\mux_sel[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1F0F1F0"
    )
        port map (
      I0 => p_4_in,
      I1 => \mux_sel_reg_n_0_\(2),
      I2 => \mux_sel_reg_n_0_\(0),
      I3 => tx_Data_Enable_reg_n_0,
      I4 => tx_DataBits,
      O => \mux_sel[0]_i_1_n_0\
    );
\mux_sel[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99AAABAA"
    )
        port map (
      I0 => p_4_in,
      I1 => \mux_sel_reg_n_0_\(2),
      I2 => \mux_sel_reg_n_0_\(0),
      I3 => tx_Data_Enable_reg_n_0,
      I4 => tx_DataBits,
      O => \mux_sel[1]_i_1_n_0\
    );
\mux_sel[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7777888C"
    )
        port map (
      I0 => tx_DataBits,
      I1 => tx_Data_Enable_reg_n_0,
      I2 => \mux_sel_reg_n_0_\(0),
      I3 => p_4_in,
      I4 => \mux_sel_reg_n_0_\(2),
      O => \mux_sel[2]_i_1_n_0\
    );
\mux_sel_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \mux_sel[0]_i_1_n_0\,
      Q => \mux_sel_reg_n_0_\(0),
      S => SR(0)
    );
\mux_sel_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \mux_sel[1]_i_1_n_0\,
      Q => p_4_in,
      S => SR(0)
    );
\mux_sel_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \mux_sel[2]_i_1_n_0\,
      Q => \mux_sel_reg_n_0_\(2),
      S => SR(0)
    );
serial_Data_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => mux_Out,
      Q => serial_Data,
      R => SR(0)
    );
tx_DataBits_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F08"
    )
        port map (
      I0 => tx_Start,
      I1 => tx_Data_Enable_reg_n_0,
      I2 => fifo_Read,
      I3 => tx_DataBits,
      O => tx_DataBits0
    );
tx_DataBits_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_DataBits0,
      Q => tx_DataBits,
      R => SR(0)
    );
tx_Data_Enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => MID_START_BIT_SRL16_I_n_0,
      Q => tx_Data_Enable_reg_n_0,
      R => SR(0)
    );
tx_Start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => tx_Start0,
      Q => tx_Start,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_bmpg_0_axi_uart_uartlite_core is
  port (
    Bus_RNW_reg : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    \^gen_bkend_ce_registers[0].ce_out_i_reg\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \^gen_bkend_ce_registers[1].ce_out_i_reg\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : in STD_LOGIC_VECTOR ( 1 to 1 );
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\ : in STD_LOGIC_VECTOR ( 3 to 3 );
    \INFERRED_GEN.cnt_i_reg\ : in STD_LOGIC_VECTOR ( 4 to 4 );
    \INFERRED_GEN.cnt_i_reg[4]_0\ : in STD_LOGIC;
    bus2ip_reset : out STD_LOGIC;
    enable_interrupts : out STD_LOGIC;
    fifo_wr : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    reset_RX_FIFO : in STD_LOGIC;
    reset_TX_FIFO : in STD_LOGIC;
    rx : in STD_LOGIC;
    rx_Buffer_Full : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    tx : out STD_LOGIC;
    tx_Buffer_Full : out STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rdce : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    status_reg : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_bmpg_0_axi_uart_uartlite_core : entity is "uartlite_core";
end uart_bmpg_0_axi_uart_uartlite_core;

architecture STRUCTURE of uart_bmpg_0_axi_uart_uartlite_core is
  signal \^inferred_gen.cnt_i_reg[2]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Interrupt0 : STD_LOGIC;
  signal UARTLITE_RX_I_n_4 : STD_LOGIC;
  signal \^bus2ip_reset\ : STD_LOGIC;
  signal clr_Status : STD_LOGIC;
  signal en_16x_Baud : STD_LOGIC;
  signal \^enable_interrupts\ : STD_LOGIC;
  signal reset_RX_FIFO_reg_n_0 : STD_LOGIC;
  signal reset_TX_FIFO_reg_n_0 : STD_LOGIC;
  signal rx_Data_Present_Pre : STD_LOGIC;
  signal \^status_reg\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal status_reg_reg0 : STD_LOGIC;
  signal tx_Buffer_Empty_Pre : STD_LOGIC;
begin
  \INFERRED_GEN.cnt_i_reg[2]\(0) <= \^inferred_gen.cnt_i_reg[2]\(0);
  bus2ip_reset <= \^bus2ip_reset\;
  enable_interrupts <= \^enable_interrupts\;
  status_reg(1 downto 0) <= \^status_reg\(1 downto 0);
BAUD_RATE_I: entity work.uart_bmpg_0_axi_uart_baudrate
     port map (
      SR(0) => \^bus2ip_reset\,
      en_16x_Baud => en_16x_Baud,
      s_axi_aclk => s_axi_aclk
    );
Interrupt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => Interrupt0,
      Q => interrupt,
      R => \^bus2ip_reset\
    );
UARTLITE_RX_I: entity work.uart_bmpg_0_axi_uart_uartlite_rx
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      \^gen_bkend_ce_registers[0].ce_out_i_reg\ => \^gen_bkend_ce_registers[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\(0) => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\(0),
      \INFERRED_GEN.cnt_i_reg[4]\(0) => \^inferred_gen.cnt_i_reg[2]\(0),
      Interrupt0 => Interrupt0,
      Q(0) => Q(0),
      SR(0) => \^bus2ip_reset\,
      clr_Status => clr_Status,
      en_16x_Baud => en_16x_Baud,
      enable_interrupts => \^enable_interrupts\,
      \out\(7 downto 0) => \out\(7 downto 0),
      reset_RX_FIFO_reg => reset_RX_FIFO_reg_n_0,
      rx => rx,
      rx_Data_Present_Pre => rx_Data_Present_Pre,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      status_reg(1 downto 0) => \^status_reg\(1 downto 0),
      status_reg_reg(2) => rx_Buffer_Full,
      status_reg_reg0 => status_reg_reg0,
      \status_reg_reg[2]_0\ => UARTLITE_RX_I_n_4,
      tx_Buffer_Empty_Pre => tx_Buffer_Empty_Pre
    );
UARTLITE_TX_I: entity work.uart_bmpg_0_axi_uart_uartlite_tx
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      \^gen_bkend_ce_registers[1].ce_out_i_reg\ => \^gen_bkend_ce_registers[1].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\(1) => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\(1),
      Q(0) => \^inferred_gen.cnt_i_reg[2]\(0),
      SR(0) => \^bus2ip_reset\,
      en_16x_Baud => en_16x_Baud,
      fifo_wr => fifo_wr,
      reset_TX_FIFO_reg => reset_TX_FIFO_reg_n_0,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      tx => tx,
      tx_Buffer_Full => tx_Buffer_Full
    );
clr_Status_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_rdce(0),
      Q => clr_Status,
      R => \^bus2ip_reset\
    );
enable_interrupts_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\(3),
      Q => \^enable_interrupts\,
      R => \^bus2ip_reset\
    );
reset_RX_FIFO_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => reset_RX_FIFO,
      Q => reset_RX_FIFO_reg_n_0,
      S => \^bus2ip_reset\
    );
reset_TX_FIFO_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => reset_TX_FIFO,
      Q => reset_TX_FIFO_reg_n_0,
      S => \^bus2ip_reset\
    );
rx_Data_Present_Pre_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INFERRED_GEN.cnt_i_reg[4]_0\,
      Q => rx_Data_Present_Pre,
      R => '0'
    );
\status_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => status_reg_reg0,
      Q => \^status_reg\(1),
      R => '0'
    );
\status_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => UARTLITE_RX_I_n_4,
      Q => \^status_reg\(0),
      R => '0'
    );
tx_Buffer_Empty_Pre_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INFERRED_GEN.cnt_i_reg\(4),
      Q => tx_Buffer_Empty_Pre,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_bmpg_0_axi_uart_axi_uartlite is
  port (
    interrupt : out STD_LOGIC;
    rx : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    tx : out STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute C_BAUDRATE : integer;
  attribute C_BAUDRATE of uart_bmpg_0_axi_uart_axi_uartlite : entity is 128000;
  attribute C_DATA_BITS : integer;
  attribute C_DATA_BITS of uart_bmpg_0_axi_uart_axi_uartlite : entity is 8;
  attribute C_FAMILY : string;
  attribute C_FAMILY of uart_bmpg_0_axi_uart_axi_uartlite : entity is "artix7";
  attribute C_ODD_PARITY : integer;
  attribute C_ODD_PARITY of uart_bmpg_0_axi_uart_axi_uartlite : entity is 0;
  attribute C_S_AXI_ACLK_FREQ_HZ : integer;
  attribute C_S_AXI_ACLK_FREQ_HZ of uart_bmpg_0_axi_uart_axi_uartlite : entity is 10000000;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of uart_bmpg_0_axi_uart_axi_uartlite : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of uart_bmpg_0_axi_uart_axi_uartlite : entity is 32;
  attribute C_USE_PARITY : integer;
  attribute C_USE_PARITY of uart_bmpg_0_axi_uart_axi_uartlite : entity is 0;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of uart_bmpg_0_axi_uart_axi_uartlite : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_bmpg_0_axi_uart_axi_uartlite : entity is "axi_uartlite";
end uart_bmpg_0_axi_uart_axi_uartlite;

architecture STRUCTURE of uart_bmpg_0_axi_uart_axi_uartlite is
  signal \<const0>\ : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_11 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_12 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_13 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_16 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_17 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_18 : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : STD_LOGIC;
  signal \UARTLITE_RX_I/rx_Data_Empty\ : STD_LOGIC;
  signal \UARTLITE_TX_I/fifo_wr\ : STD_LOGIC;
  signal bus2ip_rdce : STD_LOGIC_VECTOR ( 1 to 1 );
  signal bus2ip_reset : STD_LOGIC;
  signal enable_interrupts : STD_LOGIC;
  signal reset_RX_FIFO : STD_LOGIC;
  signal reset_TX_FIFO : STD_LOGIC;
  signal rx_Buffer_Full : STD_LOGIC;
  signal rx_Data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal status_reg : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal tx_Buffer_Empty : STD_LOGIC;
  signal tx_Buffer_Full : STD_LOGIC;
  attribute max_fanout : string;
  attribute max_fanout of s_axi_aclk : signal is "10000";
  attribute max_fanout of s_axi_aresetn : signal is "10000";
begin
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7 downto 0) <= \^s_axi_rdata\(7 downto 0);
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_awready\;
AXI_LITE_IPIF_I: entity work.uart_bmpg_0_axi_uart_axi_lite_ipif
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      FIFO_Full_reg => AXI_LITE_IPIF_I_n_13,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      \INFERRED_GEN.cnt_i_reg\(2) => AXI_LITE_IPIF_I_n_11,
      \INFERRED_GEN.cnt_i_reg[2]_0\ => AXI_LITE_IPIF_I_n_16,
      \INFERRED_GEN.cnt_i_reg[4]\(0) => tx_Buffer_Empty,
      Q(0) => \UARTLITE_RX_I/rx_Data_Empty\,
      bus2ip_rdce(0) => bus2ip_rdce(1),
      bus2ip_reset => bus2ip_reset,
      enable_interrupts => enable_interrupts,
      enable_interrupts_reg => AXI_LITE_IPIF_I_n_18,
      fifo_wr => \UARTLITE_TX_I/fifo_wr\,
      \out\(7) => rx_Data(0),
      \out\(6) => rx_Data(1),
      \out\(5) => rx_Data(2),
      \out\(4) => rx_Data(3),
      \out\(3) => rx_Data(4),
      \out\(2) => rx_Data(5),
      \out\(1) => rx_Data(6),
      \out\(0) => rx_Data(7),
      reset_RX_FIFO => reset_RX_FIFO,
      reset_TX_FIFO => reset_TX_FIFO,
      rx_Buffer_Full => rx_Buffer_Full,
      rx_Data_Present_Pre_reg => AXI_LITE_IPIF_I_n_12,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(3 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(3 downto 2),
      s_axi_awready => \^s_axi_awready\,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(7 downto 0) => \^s_axi_rdata\(7 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(2) => s_axi_wdata(4),
      s_axi_wdata(1 downto 0) => s_axi_wdata(1 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      status_reg(1) => status_reg(1),
      status_reg(0) => status_reg(2),
      tx_Buffer_Empty_Pre_reg => AXI_LITE_IPIF_I_n_17,
      tx_Buffer_Full => tx_Buffer_Full
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
UARTLITE_CORE_I: entity work.uart_bmpg_0_axi_uart_uartlite_core
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      Bus_RNW_reg_reg => AXI_LITE_IPIF_I_n_11,
      \^gen_bkend_ce_registers[0].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\(0) => AXI_LITE_IPIF_I_n_13,
      \^gen_bkend_ce_registers[1].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\(1) => AXI_LITE_IPIF_I_n_16,
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\(3) => AXI_LITE_IPIF_I_n_18,
      \INFERRED_GEN.cnt_i_reg\(4) => AXI_LITE_IPIF_I_n_17,
      \INFERRED_GEN.cnt_i_reg[2]\(0) => tx_Buffer_Empty,
      \INFERRED_GEN.cnt_i_reg[4]_0\ => AXI_LITE_IPIF_I_n_12,
      Q(0) => \UARTLITE_RX_I/rx_Data_Empty\,
      bus2ip_rdce(0) => bus2ip_rdce(1),
      bus2ip_reset => bus2ip_reset,
      enable_interrupts => enable_interrupts,
      fifo_wr => \UARTLITE_TX_I/fifo_wr\,
      interrupt => interrupt,
      \out\(7) => rx_Data(0),
      \out\(6) => rx_Data(1),
      \out\(5) => rx_Data(2),
      \out\(4) => rx_Data(3),
      \out\(3) => rx_Data(4),
      \out\(2) => rx_Data(5),
      \out\(1) => rx_Data(6),
      \out\(0) => rx_Data(7),
      reset_RX_FIFO => reset_RX_FIFO,
      reset_TX_FIFO => reset_TX_FIFO,
      rx => rx,
      rx_Buffer_Full => rx_Buffer_Full,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wdata(7 downto 0) => s_axi_wdata(7 downto 0),
      status_reg(1) => status_reg(1),
      status_reg(0) => status_reg(2),
      tx => tx,
      tx_Buffer_Full => tx_Buffer_Full
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_bmpg_0_axi_uart is
  port (
    interrupt : out STD_LOGIC;
    rx : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    tx : out STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of uart_bmpg_0_axi_uart : entity is "axi_uart,axi_uartlite,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of uart_bmpg_0_axi_uart : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_bmpg_0_axi_uart : entity is "axi_uart";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of uart_bmpg_0_axi_uart : entity is "axi_uartlite,Vivado 2017.4";
end uart_bmpg_0_axi_uart;

architecture STRUCTURE of uart_bmpg_0_axi_uart is
  attribute C_BAUDRATE : integer;
  attribute C_BAUDRATE of U0 : label is 128000;
  attribute C_DATA_BITS : integer;
  attribute C_DATA_BITS of U0 : label is 8;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_ODD_PARITY : integer;
  attribute C_ODD_PARITY of U0 : label is 0;
  attribute C_S_AXI_ACLK_FREQ_HZ : integer;
  attribute C_S_AXI_ACLK_FREQ_HZ of U0 : label is 10000000;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_USE_PARITY : integer;
  attribute C_USE_PARITY of U0 : label is 0;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of interrupt : signal is "xilinx.com:signal:interrupt:1.0 INTERRUPT INTERRUPT";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of interrupt : signal is "XIL_INTERFACENAME INTERRUPT, SENSITIVITY EDGE_RISING, PortWidth 1";
  attribute x_interface_info of rx : signal is "xilinx.com:interface:uart:1.0 UART RxD";
  attribute x_interface_parameter of rx : signal is "XIL_INTERFACENAME UART, BOARD.ASSOCIATED_PARAM UARTLITE_BOARD_INTERFACE";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 ACLK CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 ARESETN RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of tx : signal is "xilinx.com:interface:uart:1.0 UART TxD";
begin
U0: entity work.uart_bmpg_0_axi_uart_axi_uartlite
     port map (
      interrupt => interrupt,
      rx => rx,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(3 downto 0) => s_axi_araddr(3 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      tx => tx
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_bmpg_0_uart_bmpg is
  port (
    upg_clk_i : in STD_LOGIC;
    upg_clk_o : out STD_LOGIC;
    upg_done_o : out STD_LOGIC;
    upg_rst_i : in STD_LOGIC;
    upg_rx_i : in STD_LOGIC;
    upg_tx_o : out STD_LOGIC;
    upg_wen_o : out STD_LOGIC;
    upg_adr_o : out STD_LOGIC_VECTOR ( 14 downto 0 );
    upg_dat_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ADDR_WIDTH : integer;
  attribute ADDR_WIDTH of uart_bmpg_0_uart_bmpg : entity is 15;
  attribute DATA_WIDTH : integer;
  attribute DATA_WIDTH of uart_bmpg_0_uart_bmpg : entity is 32;
  attribute JUDGE_RRDY : integer;
  attribute JUDGE_RRDY of uart_bmpg_0_uart_bmpg : entity is 2;
  attribute JUDGE_WRDY : integer;
  attribute JUDGE_WRDY of uart_bmpg_0_uart_bmpg : entity is 2;
  attribute MSG_LEN : integer;
  attribute MSG_LEN of uart_bmpg_0_uart_bmpg : entity is 38;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_bmpg_0_uart_bmpg : entity is "uart_bmpg";
  attribute RDATA : integer;
  attribute RDATA of uart_bmpg_0_uart_bmpg : entity is 3;
  attribute RDATA_VALID : integer;
  attribute RDATA_VALID of uart_bmpg_0_uart_bmpg : entity is 1;
  attribute RDELAY : integer;
  attribute RDELAY of uart_bmpg_0_uart_bmpg : entity is 4;
  attribute RIDLE : integer;
  attribute RIDLE of uart_bmpg_0_uart_bmpg : entity is 0;
  attribute WAIT_NUM : integer;
  attribute WAIT_NUM of uart_bmpg_0_uart_bmpg : entity is 765;
  attribute WDATA : integer;
  attribute WDATA of uart_bmpg_0_uart_bmpg : entity is 3;
  attribute WDATA_VALID : integer;
  attribute WDATA_VALID of uart_bmpg_0_uart_bmpg : entity is 1;
  attribute WDELAY : integer;
  attribute WDELAY of uart_bmpg_0_uart_bmpg : entity is 4;
  attribute WIDLE : integer;
  attribute WIDLE of uart_bmpg_0_uart_bmpg : entity is 0;
end uart_bmpg_0_uart_bmpg;

architecture STRUCTURE of uart_bmpg_0_uart_bmpg is
  signal \RCS[0]_i_1_n_0\ : STD_LOGIC;
  signal \RCS[1]_i_1_n_0\ : STD_LOGIC;
  signal \RCS[2]_i_1_n_0\ : STD_LOGIC;
  signal \RCS_reg_n_0_\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \WCS[0]_i_1_n_0\ : STD_LOGIC;
  signal \WCS[0]_i_2_n_0\ : STD_LOGIC;
  signal \WCS[1]_i_1_n_0\ : STD_LOGIC;
  signal \WCS[2]_i_1_n_0\ : STD_LOGIC;
  signal \WCS[2]_i_2_n_0\ : STD_LOGIC;
  signal \WCS[2]_i_3_n_0\ : STD_LOGIC;
  signal \WCS[2]_i_4_n_0\ : STD_LOGIC;
  signal \WCS[2]_i_5_n_0\ : STD_LOGIC;
  signal \WCS_reg_n_0_\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \bn_ascii_reg_n_0_\ : STD_LOGIC_VECTOR ( 62 downto 0 );
  signal byte_cnt : STD_LOGIC;
  signal \byte_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \byte_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \byte_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \byte_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \byte_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \byte_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \byte_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \byte_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \byte_cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \byte_cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \byte_cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \byte_cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \byte_cnt_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \byte_cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \byte_cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \byte_cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \byte_cnt_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \byte_cnt_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \byte_cnt_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \byte_cnt_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \byte_cnt_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \byte_cnt_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \byte_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \byte_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \byte_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \byte_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \byte_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \byte_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \byte_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \byte_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \byte_cnt_reg_n_0_\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \byte_len[7]_i_1_n_0\ : STD_LOGIC;
  signal \byte_len_reg_n_0_\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal byte_num : STD_LOGIC;
  signal \byte_num_reg_n_0_\ : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal data2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data3 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data4 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data5 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data6 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal dbuf : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal disp1 : STD_LOGIC;
  signal \disp[0]_i_1_n_0\ : STD_LOGIC;
  signal \disp[1]_i_1_n_0\ : STD_LOGIC;
  signal \disp[1]_i_2_n_0\ : STD_LOGIC;
  signal \disp[1]_i_3_n_0\ : STD_LOGIC;
  signal \disp[2]_i_1_n_0\ : STD_LOGIC;
  signal \disp[2]_i_2_n_0\ : STD_LOGIC;
  signal \disp[3]_i_1_n_0\ : STD_LOGIC;
  signal \disp[3]_i_2_n_0\ : STD_LOGIC;
  signal \disp[4]_i_1_n_0\ : STD_LOGIC;
  signal \disp[5]_i_1_n_0\ : STD_LOGIC;
  signal \disp[5]_i_2_n_0\ : STD_LOGIC;
  signal \disp[5]_i_3_n_0\ : STD_LOGIC;
  signal \disp[6]_i_1_n_0\ : STD_LOGIC;
  signal \disp[6]_i_2_n_0\ : STD_LOGIC;
  signal \disp[6]_i_3_n_0\ : STD_LOGIC;
  signal \disp[7]_i_1_n_0\ : STD_LOGIC;
  signal \disp[7]_i_2_n_0\ : STD_LOGIC;
  signal \disp[7]_i_3_n_0\ : STD_LOGIC;
  signal \disp[7]_i_4_n_0\ : STD_LOGIC;
  signal \disp_reg_n_0_\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hex0 : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal hex2ascii_return : STD_LOGIC_VECTOR ( 54 downto 0 );
  signal hex2ascii_return0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal initFlag : STD_LOGIC;
  signal initFlag_i_1_n_0 : STD_LOGIC;
  signal \len_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \len_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \len_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \len_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \len_cnt_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \msg_indx[7]_i_1_n_0\ : STD_LOGIC;
  signal \msg_indx[7]_i_3_n_0\ : STD_LOGIC;
  signal \msg_indx_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \msg_indx_reg__1\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal oldInitF_i_1_n_0 : STD_LOGIC;
  signal oldInitF_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rdStat : STD_LOGIC;
  signal rdStat_BUFG : STD_LOGIC;
  signal rdStat_i_1_n_0 : STD_LOGIC;
  signal recv_done0 : STD_LOGIC;
  signal recv_done1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal recv_done_i_10_n_0 : STD_LOGIC;
  signal recv_done_i_11_n_0 : STD_LOGIC;
  signal recv_done_i_13_n_0 : STD_LOGIC;
  signal recv_done_i_14_n_0 : STD_LOGIC;
  signal recv_done_i_15_n_0 : STD_LOGIC;
  signal recv_done_i_16_n_0 : STD_LOGIC;
  signal recv_done_i_17_n_0 : STD_LOGIC;
  signal recv_done_i_18_n_0 : STD_LOGIC;
  signal recv_done_i_19_n_0 : STD_LOGIC;
  signal recv_done_i_1_n_0 : STD_LOGIC;
  signal recv_done_i_20_n_0 : STD_LOGIC;
  signal recv_done_i_22_n_0 : STD_LOGIC;
  signal recv_done_i_23_n_0 : STD_LOGIC;
  signal recv_done_i_24_n_0 : STD_LOGIC;
  signal recv_done_i_25_n_0 : STD_LOGIC;
  signal recv_done_i_26_n_0 : STD_LOGIC;
  signal recv_done_i_27_n_0 : STD_LOGIC;
  signal recv_done_i_28_n_0 : STD_LOGIC;
  signal recv_done_i_29_n_0 : STD_LOGIC;
  signal recv_done_i_30_n_0 : STD_LOGIC;
  signal recv_done_i_31_n_0 : STD_LOGIC;
  signal recv_done_i_32_n_0 : STD_LOGIC;
  signal recv_done_i_33_n_0 : STD_LOGIC;
  signal recv_done_i_34_n_0 : STD_LOGIC;
  signal recv_done_i_35_n_0 : STD_LOGIC;
  signal recv_done_i_36_n_0 : STD_LOGIC;
  signal recv_done_i_37_n_0 : STD_LOGIC;
  signal recv_done_i_4_n_0 : STD_LOGIC;
  signal recv_done_i_5_n_0 : STD_LOGIC;
  signal recv_done_i_6_n_0 : STD_LOGIC;
  signal recv_done_i_7_n_0 : STD_LOGIC;
  signal recv_done_i_8_n_0 : STD_LOGIC;
  signal recv_done_i_9_n_0 : STD_LOGIC;
  signal recv_done_reg_i_12_n_0 : STD_LOGIC;
  signal recv_done_reg_i_12_n_1 : STD_LOGIC;
  signal recv_done_reg_i_12_n_2 : STD_LOGIC;
  signal recv_done_reg_i_12_n_3 : STD_LOGIC;
  signal recv_done_reg_i_21_n_0 : STD_LOGIC;
  signal recv_done_reg_i_21_n_1 : STD_LOGIC;
  signal recv_done_reg_i_21_n_2 : STD_LOGIC;
  signal recv_done_reg_i_21_n_3 : STD_LOGIC;
  signal recv_done_reg_i_2_n_1 : STD_LOGIC;
  signal recv_done_reg_i_2_n_2 : STD_LOGIC;
  signal recv_done_reg_i_2_n_3 : STD_LOGIC;
  signal recv_done_reg_i_3_n_0 : STD_LOGIC;
  signal recv_done_reg_i_3_n_1 : STD_LOGIC;
  signal recv_done_reg_i_3_n_2 : STD_LOGIC;
  signal recv_done_reg_i_3_n_3 : STD_LOGIC;
  signal recv_done_reg_n_0 : STD_LOGIC;
  signal rwait_cnt : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \rwait_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \rwait_cnt[15]_i_4_n_0\ : STD_LOGIC;
  signal \rwait_cnt[15]_i_5_n_0\ : STD_LOGIC;
  signal \rwait_cnt[15]_i_6_n_0\ : STD_LOGIC;
  signal \rwait_cnt[15]_i_7_n_0\ : STD_LOGIC;
  signal \rwait_cnt_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \rwait_cnt_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \rwait_cnt_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \rwait_cnt_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \rwait_cnt_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \rwait_cnt_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \rwait_cnt_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \rwait_cnt_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \rwait_cnt_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \rwait_cnt_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \rwait_cnt_reg[15]_i_3_n_5\ : STD_LOGIC;
  signal \rwait_cnt_reg[15]_i_3_n_6\ : STD_LOGIC;
  signal \rwait_cnt_reg[15]_i_3_n_7\ : STD_LOGIC;
  signal \rwait_cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \rwait_cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \rwait_cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \rwait_cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \rwait_cnt_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \rwait_cnt_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \rwait_cnt_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \rwait_cnt_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \rwait_cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \rwait_cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \rwait_cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \rwait_cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \rwait_cnt_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \rwait_cnt_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \rwait_cnt_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \rwait_cnt_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \rwait_cnt_reg_n_0_\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rx_done : STD_LOGIC;
  signal rx_done_i_1_n_0 : STD_LOGIC;
  signal rx_done_reg_n_0 : STD_LOGIC;
  signal \s_axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_araddr_reg_n_0_\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s_axi_aresetn0 : STD_LOGIC;
  signal s_axi_arready : STD_LOGIC;
  signal s_axi_arvalid : STD_LOGIC;
  signal s_axi_arvalid_i_1_n_0 : STD_LOGIC;
  signal s_axi_arvalid_i_2_n_0 : STD_LOGIC;
  signal s_axi_arvalid_i_3_n_0 : STD_LOGIC;
  signal \s_axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_awaddr_reg_n_0_\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s_axi_awready : STD_LOGIC;
  signal s_axi_awvalid_i_1_n_0 : STD_LOGIC;
  signal s_axi_awvalid_i_2_n_0 : STD_LOGIC;
  signal s_axi_rdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_axi_rvalid : STD_LOGIC;
  signal s_axi_wdata : STD_LOGIC;
  signal \s_axi_wdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[1]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[2]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[3]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[4]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[4]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[4]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[4]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[5]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[5]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[6]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[6]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_wdata[6]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_wdata_reg_n_0_\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal s_axi_wready : STD_LOGIC;
  signal s_axi_wstrb : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \s_axi_wstrb[3]_i_1_n_0\ : STD_LOGIC;
  signal s_axi_wvalid : STD_LOGIC;
  signal \statReg[0]_i_1_n_0\ : STD_LOGIC;
  signal \statReg[0]_i_2_n_0\ : STD_LOGIC;
  signal \statReg_reg_n_0_\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal uart_rdat : STD_LOGIC;
  signal \uart_rdat_reg_n_0_\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal uart_wen5_out : STD_LOGIC;
  signal uart_wen_i_1_n_0 : STD_LOGIC;
  signal uart_wen_reg_n_0 : STD_LOGIC;
  signal \upg_adr_o[14]_i_1_n_0\ : STD_LOGIC;
  signal upg_adr_o_OBUF : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal upg_clk_i_IBUF : STD_LOGIC;
  signal upg_clk_i_IBUF_BUFG : STD_LOGIC;
  signal upg_clk_o_OBUF : STD_LOGIC;
  signal upg_clk_o_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal upg_dat_o_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal upg_done_o_OBUF : STD_LOGIC;
  signal upg_done_o_i_1_n_0 : STD_LOGIC;
  signal upg_done_o_i_2_n_0 : STD_LOGIC;
  signal upg_done_o_i_3_n_0 : STD_LOGIC;
  signal upg_rst_i_IBUF : STD_LOGIC;
  signal upg_rx_i_IBUF : STD_LOGIC;
  signal upg_tx_o_OBUF : STD_LOGIC;
  signal upg_wen_o2_out : STD_LOGIC;
  signal upg_wen_o_OBUF : STD_LOGIC;
  signal upg_wen_o_i_2_n_0 : STD_LOGIC;
  signal upg_wen_o_i_4_n_0 : STD_LOGIC;
  signal upg_wen_o_i_5_n_0 : STD_LOGIC;
  signal upg_wen_o_i_6_n_0 : STD_LOGIC;
  signal wr_byte_len_done0 : STD_LOGIC;
  signal wr_byte_len_done_i_2_n_0 : STD_LOGIC;
  signal wr_byte_len_done_reg_n_0 : STD_LOGIC;
  signal wr_byte_num_done : STD_LOGIC;
  signal wr_byte_num_done0 : STD_LOGIC;
  signal wr_byte_num_done_i_2_n_0 : STD_LOGIC;
  signal wr_byte_num_done_i_3_n_0 : STD_LOGIC;
  signal wr_byte_num_done_reg_n_0 : STD_LOGIC;
  signal wwait_cnt : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \wwait_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \wwait_cnt[15]_i_4_n_0\ : STD_LOGIC;
  signal \wwait_cnt[15]_i_5_n_0\ : STD_LOGIC;
  signal \wwait_cnt[15]_i_6_n_0\ : STD_LOGIC;
  signal \wwait_cnt[15]_i_7_n_0\ : STD_LOGIC;
  signal \wwait_cnt_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \wwait_cnt_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \wwait_cnt_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \wwait_cnt_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \wwait_cnt_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \wwait_cnt_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \wwait_cnt_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \wwait_cnt_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \wwait_cnt_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \wwait_cnt_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \wwait_cnt_reg[15]_i_3_n_5\ : STD_LOGIC;
  signal \wwait_cnt_reg[15]_i_3_n_6\ : STD_LOGIC;
  signal \wwait_cnt_reg[15]_i_3_n_7\ : STD_LOGIC;
  signal \wwait_cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \wwait_cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \wwait_cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \wwait_cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \wwait_cnt_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \wwait_cnt_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \wwait_cnt_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \wwait_cnt_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \wwait_cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \wwait_cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \wwait_cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \wwait_cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \wwait_cnt_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \wwait_cnt_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \wwait_cnt_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \wwait_cnt_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \wwait_cnt_reg_n_0_\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_axi_uart_inst_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_uart_inst_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_uart_inst_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axi_uart_inst_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_axi_uart_inst_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_byte_cnt_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_byte_cnt_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_recv_done_reg_i_12_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_recv_done_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_recv_done_reg_i_21_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_recv_done_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rwait_cnt_reg[15]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rwait_cnt_reg[15]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wwait_cnt_reg[15]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_wwait_cnt_reg[15]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \RCS[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \WCS[0]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \WCS[2]_i_4\ : label is "soft_lutpair11";
  attribute x_core_info : string;
  attribute x_core_info of axi_uart_inst : label is "axi_uartlite,Vivado 2017.4";
  attribute SOFT_HLUTNM of \bn_ascii[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bn_ascii[10]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \bn_ascii[11]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bn_ascii[13]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \bn_ascii[16]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \bn_ascii[17]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \bn_ascii[18]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bn_ascii[19]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bn_ascii[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bn_ascii[21]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \bn_ascii[22]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \bn_ascii[24]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bn_ascii[25]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bn_ascii[26]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bn_ascii[27]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bn_ascii[29]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \bn_ascii[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bn_ascii[30]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \bn_ascii[32]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \bn_ascii[33]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \bn_ascii[34]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \bn_ascii[35]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \bn_ascii[37]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \bn_ascii[38]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \bn_ascii[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bn_ascii[40]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \bn_ascii[41]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bn_ascii[42]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bn_ascii[43]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \bn_ascii[45]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \bn_ascii[46]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \bn_ascii[48]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \bn_ascii[49]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \bn_ascii[50]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \bn_ascii[51]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \bn_ascii[53]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \bn_ascii[54]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \bn_ascii[56]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bn_ascii[57]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bn_ascii[58]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \bn_ascii[59]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \bn_ascii[5]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \bn_ascii[61]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \bn_ascii[62]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \bn_ascii[6]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \bn_ascii[8]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \bn_ascii[9]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \disp[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \disp[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \disp[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \disp[5]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \disp[5]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \disp[5]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \disp[6]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \disp[7]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of initFlag_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \len_cnt[0]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \len_cnt[1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \len_cnt[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \len_cnt[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \msg_indx[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \msg_indx[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \msg_indx[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \msg_indx[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \msg_indx[7]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rwait_cnt[10]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rwait_cnt[11]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rwait_cnt[12]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rwait_cnt[13]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \rwait_cnt[14]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \rwait_cnt[1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rwait_cnt[2]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rwait_cnt[3]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rwait_cnt[4]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rwait_cnt[5]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rwait_cnt[6]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rwait_cnt[7]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rwait_cnt[8]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rwait_cnt[9]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of s_axi_arvalid_i_3 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s_axi_wdata[1]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_axi_wdata[4]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axi_wdata[4]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_axi_wdata[4]_i_7\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_axi_wdata[4]_i_8\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_axi_wdata[5]_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s_axi_wdata[5]_i_6\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_axi_wdata[6]_i_6\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_axi_wdata[6]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_axi_wstrb[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \statReg[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \statReg[0]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of upg_clk_o_OBUF_inst_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of upg_done_o_i_3 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of upg_wen_o_i_4 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of wr_byte_len_done_i_2 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \wwait_cnt[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \wwait_cnt[10]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \wwait_cnt[11]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \wwait_cnt[12]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \wwait_cnt[13]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \wwait_cnt[15]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \wwait_cnt[1]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \wwait_cnt[2]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \wwait_cnt[3]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \wwait_cnt[4]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \wwait_cnt[5]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \wwait_cnt[6]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \wwait_cnt[7]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \wwait_cnt[8]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \wwait_cnt[9]_i_1\ : label is "soft_lutpair51";
begin
\RCS[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0050CF"
    )
        port map (
      I0 => s_axi_rvalid,
      I1 => s_axi_arready,
      I2 => \RCS_reg_n_0_\(1),
      I3 => \RCS_reg_n_0_\(0),
      I4 => \RCS_reg_n_0_\(2),
      O => \RCS[0]_i_1_n_0\
    );
\RCS[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF0055FCFF00"
    )
        port map (
      I0 => s_axi_rvalid,
      I1 => \statReg_reg_n_0_\(0),
      I2 => rdStat,
      I3 => \RCS_reg_n_0_\(1),
      I4 => \RCS_reg_n_0_\(0),
      I5 => \RCS_reg_n_0_\(2),
      O => \RCS[1]_i_1_n_0\
    );
\RCS[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF5C000"
    )
        port map (
      I0 => \rwait_cnt[15]_i_4_n_0\,
      I1 => s_axi_rvalid,
      I2 => \RCS_reg_n_0_\(1),
      I3 => \RCS_reg_n_0_\(0),
      I4 => \RCS_reg_n_0_\(2),
      O => \RCS[2]_i_1_n_0\
    );
\RCS_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => '1',
      CLR => upg_rst_i_IBUF,
      D => \RCS[0]_i_1_n_0\,
      Q => \RCS_reg_n_0_\(0)
    );
\RCS_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => '1',
      CLR => upg_rst_i_IBUF,
      D => \RCS[1]_i_1_n_0\,
      Q => \RCS_reg_n_0_\(1)
    );
\RCS_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => '1',
      CLR => upg_rst_i_IBUF,
      D => \RCS[2]_i_1_n_0\,
      Q => \RCS_reg_n_0_\(2)
    );
\WCS[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF0F080F"
    )
        port map (
      I0 => \WCS[0]_i_2_n_0\,
      I1 => \WCS[2]_i_2_n_0\,
      I2 => \s_axi_wstrb[3]_i_1_n_0\,
      I3 => \WCS_reg_n_0_\(2),
      I4 => \WCS_reg_n_0_\(0),
      I5 => \WCS_reg_n_0_\(1),
      O => \WCS[0]_i_1_n_0\
    );
\WCS[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => initFlag,
      I1 => oldInitF_reg_n_0,
      O => \WCS[0]_i_2_n_0\
    );
\WCS[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7700F0F0F0"
    )
        port map (
      I0 => s_axi_awready,
      I1 => s_axi_wready,
      I2 => \s_axi_wstrb[3]_i_1_n_0\,
      I3 => \WCS_reg_n_0_\(2),
      I4 => \WCS_reg_n_0_\(0),
      I5 => \WCS_reg_n_0_\(1),
      O => \WCS[1]_i_1_n_0\
    );
\WCS[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF88FF000F00"
    )
        port map (
      I0 => s_axi_wready,
      I1 => s_axi_awready,
      I2 => \WCS[2]_i_2_n_0\,
      I3 => \WCS_reg_n_0_\(2),
      I4 => \WCS_reg_n_0_\(0),
      I5 => \WCS_reg_n_0_\(1),
      O => \WCS[2]_i_1_n_0\
    );
\WCS[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \WCS[2]_i_3_n_0\,
      I1 => \wwait_cnt_reg_n_0_\(13),
      I2 => \wwait_cnt_reg_n_0_\(10),
      I3 => \wwait_cnt_reg_n_0_\(12),
      I4 => \wwait_cnt_reg_n_0_\(11),
      I5 => \WCS[2]_i_4_n_0\,
      O => \WCS[2]_i_2_n_0\
    );
\WCS[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \wwait_cnt_reg_n_0_\(15),
      I1 => \wwait_cnt_reg_n_0_\(1),
      I2 => \wwait_cnt_reg_n_0_\(5),
      I3 => \wwait_cnt_reg_n_0_\(4),
      O => \WCS[2]_i_3_n_0\
    );
\WCS[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \wwait_cnt_reg_n_0_\(6),
      I1 => \wwait_cnt_reg_n_0_\(7),
      I2 => \wwait_cnt_reg_n_0_\(0),
      I3 => \wwait_cnt_reg_n_0_\(2),
      I4 => \WCS[2]_i_5_n_0\,
      O => \WCS[2]_i_4_n_0\
    );
\WCS[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \wwait_cnt_reg_n_0_\(8),
      I1 => \wwait_cnt_reg_n_0_\(14),
      I2 => \wwait_cnt_reg_n_0_\(3),
      I3 => \wwait_cnt_reg_n_0_\(9),
      O => \WCS[2]_i_5_n_0\
    );
\WCS_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => '1',
      CLR => upg_rst_i_IBUF,
      D => \WCS[0]_i_1_n_0\,
      Q => \WCS_reg_n_0_\(0)
    );
\WCS_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => '1',
      CLR => upg_rst_i_IBUF,
      D => \WCS[1]_i_1_n_0\,
      Q => \WCS_reg_n_0_\(1)
    );
\WCS_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => '1',
      CLR => upg_rst_i_IBUF,
      D => \WCS[2]_i_1_n_0\,
      Q => \WCS_reg_n_0_\(2)
    );
axi_uart_inst: entity work.uart_bmpg_0_axi_uart
     port map (
      interrupt => NLW_axi_uart_inst_interrupt_UNCONNECTED,
      rx => upg_rx_i_IBUF,
      s_axi_aclk => upg_clk_i_IBUF_BUFG,
      s_axi_araddr(3) => \s_axi_araddr_reg_n_0_\(3),
      s_axi_araddr(2 downto 0) => B"000",
      s_axi_aresetn => s_axi_aresetn0,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3) => \s_axi_awaddr_reg_n_0_\(3),
      s_axi_awaddr(2 downto 0) => B"100",
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_wvalid,
      s_axi_bready => '1',
      s_axi_bresp(1 downto 0) => NLW_axi_uart_inst_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_axi_uart_inst_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(31 downto 8) => NLW_axi_uart_inst_s_axi_rdata_UNCONNECTED(31 downto 8),
      s_axi_rdata(7 downto 0) => s_axi_rdata(7 downto 0),
      s_axi_rready => '1',
      s_axi_rresp(1 downto 0) => NLW_axi_uart_inst_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 7) => B"0000000000000000000000000",
      s_axi_wdata(6 downto 0) => \s_axi_wdata_reg_n_0_\(6 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3) => s_axi_wstrb(3),
      s_axi_wstrb(2) => s_axi_wstrb(3),
      s_axi_wstrb(1) => s_axi_wstrb(3),
      s_axi_wstrb(0) => s_axi_wstrb(3),
      s_axi_wvalid => s_axi_wvalid,
      tx => upg_tx_o_OBUF
    );
axi_uart_inst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => upg_rst_i_IBUF,
      O => s_axi_aresetn0
    );
\bn_ascii[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56AA"
    )
        port map (
      I0 => \uart_rdat_reg_n_0_\(0),
      I1 => \uart_rdat_reg_n_0_\(1),
      I2 => \uart_rdat_reg_n_0_\(2),
      I3 => \uart_rdat_reg_n_0_\(3),
      O => hex2ascii_return(0)
    );
\bn_ascii[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC8C"
    )
        port map (
      I0 => \uart_rdat_reg_n_0_\(5),
      I1 => \uart_rdat_reg_n_0_\(6),
      I2 => \uart_rdat_reg_n_0_\(7),
      I3 => \uart_rdat_reg_n_0_\(4),
      O => hex2ascii_return(10)
    );
\bn_ascii[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \uart_rdat_reg_n_0_\(7),
      I1 => \uart_rdat_reg_n_0_\(6),
      I2 => \uart_rdat_reg_n_0_\(5),
      O => hex2ascii_return(11)
    );
\bn_ascii[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \uart_rdat_reg_n_0_\(5),
      I1 => \uart_rdat_reg_n_0_\(6),
      I2 => \uart_rdat_reg_n_0_\(7),
      O => hex2ascii_return(13)
    );
\bn_ascii[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \uart_rdat_reg_n_0_\(7),
      I1 => \uart_rdat_reg_n_0_\(6),
      I2 => \uart_rdat_reg_n_0_\(5),
      O => hex2ascii_return(14)
    );
\bn_ascii[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56AA"
    )
        port map (
      I0 => hex0(8),
      I1 => hex0(9),
      I2 => hex0(10),
      I3 => hex0(11),
      O => hex2ascii_return(16)
    );
\bn_ascii[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB40"
    )
        port map (
      I0 => hex0(8),
      I1 => hex0(11),
      I2 => hex0(10),
      I3 => hex0(9),
      O => hex2ascii_return(17)
    );
\bn_ascii[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC8C"
    )
        port map (
      I0 => hex0(9),
      I1 => hex0(10),
      I2 => hex0(11),
      I3 => hex0(8),
      O => hex2ascii_return(18)
    );
\bn_ascii[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => hex0(11),
      I1 => hex0(10),
      I2 => hex0(9),
      O => hex2ascii_return(19)
    );
\bn_ascii[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB40"
    )
        port map (
      I0 => \uart_rdat_reg_n_0_\(0),
      I1 => \uart_rdat_reg_n_0_\(3),
      I2 => \uart_rdat_reg_n_0_\(2),
      I3 => \uart_rdat_reg_n_0_\(1),
      O => hex2ascii_return(1)
    );
\bn_ascii[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => hex0(9),
      I1 => hex0(10),
      I2 => hex0(11),
      O => hex2ascii_return(21)
    );
\bn_ascii[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => hex0(11),
      I1 => hex0(10),
      I2 => hex0(9),
      O => hex2ascii_return(22)
    );
\bn_ascii[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56AA"
    )
        port map (
      I0 => hex0(12),
      I1 => hex0(13),
      I2 => hex0(14),
      I3 => hex0(15),
      O => hex2ascii_return(24)
    );
\bn_ascii[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB40"
    )
        port map (
      I0 => hex0(12),
      I1 => hex0(15),
      I2 => hex0(14),
      I3 => hex0(13),
      O => hex2ascii_return(25)
    );
\bn_ascii[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC8C"
    )
        port map (
      I0 => hex0(13),
      I1 => hex0(14),
      I2 => hex0(15),
      I3 => hex0(12),
      O => hex2ascii_return(26)
    );
\bn_ascii[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => hex0(15),
      I1 => hex0(14),
      I2 => hex0(13),
      O => hex2ascii_return(27)
    );
\bn_ascii[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => hex0(13),
      I1 => hex0(14),
      I2 => hex0(15),
      O => hex2ascii_return(29)
    );
\bn_ascii[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC8C"
    )
        port map (
      I0 => \uart_rdat_reg_n_0_\(1),
      I1 => \uart_rdat_reg_n_0_\(2),
      I2 => \uart_rdat_reg_n_0_\(3),
      I3 => \uart_rdat_reg_n_0_\(0),
      O => hex2ascii_return(2)
    );
\bn_ascii[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => hex0(15),
      I1 => hex0(14),
      I2 => hex0(13),
      O => hex2ascii_return(30)
    );
\bn_ascii[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56AA"
    )
        port map (
      I0 => hex0(16),
      I1 => hex0(17),
      I2 => hex0(18),
      I3 => hex0(19),
      O => hex2ascii_return(32)
    );
\bn_ascii[33]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB40"
    )
        port map (
      I0 => hex0(16),
      I1 => hex0(19),
      I2 => hex0(18),
      I3 => hex0(17),
      O => hex2ascii_return(33)
    );
\bn_ascii[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC8C"
    )
        port map (
      I0 => hex0(17),
      I1 => hex0(18),
      I2 => hex0(19),
      I3 => hex0(16),
      O => hex2ascii_return(34)
    );
\bn_ascii[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => hex0(19),
      I1 => hex0(18),
      I2 => hex0(17),
      O => hex2ascii_return(35)
    );
\bn_ascii[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => hex0(17),
      I1 => hex0(18),
      I2 => hex0(19),
      O => hex2ascii_return(37)
    );
\bn_ascii[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => hex0(19),
      I1 => hex0(18),
      I2 => hex0(17),
      O => hex2ascii_return(38)
    );
\bn_ascii[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \uart_rdat_reg_n_0_\(3),
      I1 => \uart_rdat_reg_n_0_\(2),
      I2 => \uart_rdat_reg_n_0_\(1),
      O => hex2ascii_return(3)
    );
\bn_ascii[40]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56AA"
    )
        port map (
      I0 => hex0(20),
      I1 => hex0(21),
      I2 => hex0(22),
      I3 => hex0(23),
      O => hex2ascii_return(40)
    );
\bn_ascii[41]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB40"
    )
        port map (
      I0 => hex0(20),
      I1 => hex0(23),
      I2 => hex0(22),
      I3 => hex0(21),
      O => hex2ascii_return(41)
    );
\bn_ascii[42]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC8C"
    )
        port map (
      I0 => hex0(21),
      I1 => hex0(22),
      I2 => hex0(23),
      I3 => hex0(20),
      O => hex2ascii_return(42)
    );
\bn_ascii[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => hex0(23),
      I1 => hex0(22),
      I2 => hex0(21),
      O => hex2ascii_return(43)
    );
\bn_ascii[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => hex0(21),
      I1 => hex0(22),
      I2 => hex0(23),
      O => hex2ascii_return(45)
    );
\bn_ascii[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => hex0(23),
      I1 => hex0(22),
      I2 => hex0(21),
      O => hex2ascii_return(46)
    );
\bn_ascii[48]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56AA"
    )
        port map (
      I0 => hex0(24),
      I1 => hex0(25),
      I2 => hex0(26),
      I3 => hex0(27),
      O => hex2ascii_return(48)
    );
\bn_ascii[49]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB40"
    )
        port map (
      I0 => hex0(24),
      I1 => hex0(27),
      I2 => hex0(26),
      I3 => hex0(25),
      O => hex2ascii_return(49)
    );
\bn_ascii[50]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC8C"
    )
        port map (
      I0 => hex0(25),
      I1 => hex0(26),
      I2 => hex0(27),
      I3 => hex0(24),
      O => hex2ascii_return(50)
    );
\bn_ascii[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => hex0(27),
      I1 => hex0(26),
      I2 => hex0(25),
      O => hex2ascii_return(51)
    );
\bn_ascii[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => hex0(25),
      I1 => hex0(26),
      I2 => hex0(27),
      O => hex2ascii_return(53)
    );
\bn_ascii[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => hex0(27),
      I1 => hex0(26),
      I2 => hex0(25),
      O => hex2ascii_return(54)
    );
\bn_ascii[56]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56AA"
    )
        port map (
      I0 => hex0(28),
      I1 => hex0(29),
      I2 => hex0(30),
      I3 => hex0(31),
      O => hex2ascii_return0(0)
    );
\bn_ascii[57]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB40"
    )
        port map (
      I0 => hex0(28),
      I1 => hex0(31),
      I2 => hex0(30),
      I3 => hex0(29),
      O => hex2ascii_return0(1)
    );
\bn_ascii[58]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC8C"
    )
        port map (
      I0 => hex0(29),
      I1 => hex0(30),
      I2 => hex0(31),
      I3 => hex0(28),
      O => hex2ascii_return0(2)
    );
\bn_ascii[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => hex0(31),
      I1 => hex0(30),
      I2 => hex0(29),
      O => hex2ascii_return0(3)
    );
\bn_ascii[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \uart_rdat_reg_n_0_\(1),
      I1 => \uart_rdat_reg_n_0_\(2),
      I2 => \uart_rdat_reg_n_0_\(3),
      O => hex2ascii_return(5)
    );
\bn_ascii[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => hex0(29),
      I1 => hex0(30),
      I2 => hex0(31),
      O => hex2ascii_return0(5)
    );
\bn_ascii[62]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => wr_byte_num_done_reg_n_0,
      I1 => \statReg_reg_n_0_\(0),
      I2 => wr_byte_len_done_reg_n_0,
      I3 => wr_byte_num_done0,
      O => wr_byte_num_done
    );
\bn_ascii[62]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => hex0(31),
      I1 => hex0(30),
      I2 => hex0(29),
      O => hex2ascii_return0(6)
    );
\bn_ascii[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \uart_rdat_reg_n_0_\(3),
      I1 => \uart_rdat_reg_n_0_\(2),
      I2 => \uart_rdat_reg_n_0_\(1),
      O => hex2ascii_return(6)
    );
\bn_ascii[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56AA"
    )
        port map (
      I0 => \uart_rdat_reg_n_0_\(4),
      I1 => \uart_rdat_reg_n_0_\(5),
      I2 => \uart_rdat_reg_n_0_\(6),
      I3 => \uart_rdat_reg_n_0_\(7),
      O => hex2ascii_return(8)
    );
\bn_ascii[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BB40"
    )
        port map (
      I0 => \uart_rdat_reg_n_0_\(4),
      I1 => \uart_rdat_reg_n_0_\(7),
      I2 => \uart_rdat_reg_n_0_\(6),
      I3 => \uart_rdat_reg_n_0_\(5),
      O => hex2ascii_return(9)
    );
\bn_ascii_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(0),
      Q => \bn_ascii_reg_n_0_\(0)
    );
\bn_ascii_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(10),
      Q => data6(2)
    );
\bn_ascii_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(11),
      Q => data6(3)
    );
\bn_ascii_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(13),
      Q => data6(5)
    );
\bn_ascii_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(14),
      Q => data6(6)
    );
\bn_ascii_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(16),
      Q => data5(0)
    );
\bn_ascii_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(17),
      Q => data5(1)
    );
\bn_ascii_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(18),
      Q => data5(2)
    );
\bn_ascii_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(19),
      Q => data5(3)
    );
\bn_ascii_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(1),
      Q => \bn_ascii_reg_n_0_\(1)
    );
\bn_ascii_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(21),
      Q => data5(5)
    );
\bn_ascii_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(22),
      Q => data5(6)
    );
\bn_ascii_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(24),
      Q => data4(0)
    );
\bn_ascii_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(25),
      Q => data4(1)
    );
\bn_ascii_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(26),
      Q => data4(2)
    );
\bn_ascii_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(27),
      Q => data4(3)
    );
\bn_ascii_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(29),
      Q => data4(5)
    );
\bn_ascii_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(2),
      Q => \bn_ascii_reg_n_0_\(2)
    );
\bn_ascii_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(30),
      Q => data4(6)
    );
\bn_ascii_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(32),
      Q => data3(0)
    );
\bn_ascii_reg[33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(33),
      Q => data3(1)
    );
\bn_ascii_reg[34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(34),
      Q => data3(2)
    );
\bn_ascii_reg[35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(35),
      Q => data3(3)
    );
\bn_ascii_reg[37]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(37),
      Q => data3(5)
    );
\bn_ascii_reg[38]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(38),
      Q => data3(6)
    );
\bn_ascii_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(3),
      Q => \bn_ascii_reg_n_0_\(3)
    );
\bn_ascii_reg[40]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(40),
      Q => data2(0)
    );
\bn_ascii_reg[41]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(41),
      Q => data2(1)
    );
\bn_ascii_reg[42]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(42),
      Q => data2(2)
    );
\bn_ascii_reg[43]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(43),
      Q => data2(3)
    );
\bn_ascii_reg[45]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(45),
      Q => data2(5)
    );
\bn_ascii_reg[46]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(46),
      Q => data2(6)
    );
\bn_ascii_reg[48]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(48),
      Q => \bn_ascii_reg_n_0_\(48)
    );
\bn_ascii_reg[49]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(49),
      Q => \bn_ascii_reg_n_0_\(49)
    );
\bn_ascii_reg[50]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(50),
      Q => \bn_ascii_reg_n_0_\(50)
    );
\bn_ascii_reg[51]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(51),
      Q => \bn_ascii_reg_n_0_\(51)
    );
\bn_ascii_reg[53]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(53),
      Q => \bn_ascii_reg_n_0_\(53)
    );
\bn_ascii_reg[54]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(54),
      Q => \bn_ascii_reg_n_0_\(54)
    );
\bn_ascii_reg[56]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return0(0),
      Q => \bn_ascii_reg_n_0_\(56)
    );
\bn_ascii_reg[57]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return0(1),
      Q => \bn_ascii_reg_n_0_\(57)
    );
\bn_ascii_reg[58]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return0(2),
      Q => \bn_ascii_reg_n_0_\(58)
    );
\bn_ascii_reg[59]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return0(3),
      Q => \bn_ascii_reg_n_0_\(59)
    );
\bn_ascii_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(5),
      Q => \bn_ascii_reg_n_0_\(5)
    );
\bn_ascii_reg[61]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return0(5),
      Q => \bn_ascii_reg_n_0_\(61)
    );
\bn_ascii_reg[62]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return0(6),
      Q => \bn_ascii_reg_n_0_\(62)
    );
\bn_ascii_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(6),
      Q => \bn_ascii_reg_n_0_\(6)
    );
\bn_ascii_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(8),
      Q => data6(0)
    );
\bn_ascii_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => hex2ascii_return(9),
      Q => data6(1)
    );
\byte_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \byte_cnt_reg_n_0_\(0),
      O => recv_done1(0)
    );
\byte_cnt[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => recv_done_reg_n_0,
      I1 => wr_byte_num_done_reg_n_0,
      I2 => \statReg_reg_n_0_\(0),
      I3 => upg_rst_i_IBUF,
      O => byte_cnt
    );
\byte_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(0),
      Q => \byte_cnt_reg_n_0_\(0)
    );
\byte_cnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(10),
      Q => p_0_in(8)
    );
\byte_cnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(11),
      Q => p_0_in(9)
    );
\byte_cnt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(12),
      Q => p_0_in(10)
    );
\byte_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_cnt_reg[8]_i_1_n_0\,
      CO(3) => \byte_cnt_reg[12]_i_1_n_0\,
      CO(2) => \byte_cnt_reg[12]_i_1_n_1\,
      CO(1) => \byte_cnt_reg[12]_i_1_n_2\,
      CO(0) => \byte_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => recv_done1(12 downto 9),
      S(3 downto 0) => p_0_in(10 downto 7)
    );
\byte_cnt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(13),
      Q => p_0_in(11)
    );
\byte_cnt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(14),
      Q => p_0_in(12)
    );
\byte_cnt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(15),
      Q => p_0_in(13)
    );
\byte_cnt_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(16),
      Q => p_0_in(14)
    );
\byte_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_cnt_reg[12]_i_1_n_0\,
      CO(3) => \byte_cnt_reg[16]_i_1_n_0\,
      CO(2) => \byte_cnt_reg[16]_i_1_n_1\,
      CO(1) => \byte_cnt_reg[16]_i_1_n_2\,
      CO(0) => \byte_cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => recv_done1(16 downto 13),
      S(3 downto 0) => p_0_in(14 downto 11)
    );
\byte_cnt_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(17),
      Q => \byte_cnt_reg_n_0_\(17)
    );
\byte_cnt_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(18),
      Q => \byte_cnt_reg_n_0_\(18)
    );
\byte_cnt_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(19),
      Q => \byte_cnt_reg_n_0_\(19)
    );
\byte_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(1),
      Q => \byte_cnt_reg_n_0_\(1)
    );
\byte_cnt_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(20),
      Q => \byte_cnt_reg_n_0_\(20)
    );
\byte_cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_cnt_reg[16]_i_1_n_0\,
      CO(3) => \byte_cnt_reg[20]_i_1_n_0\,
      CO(2) => \byte_cnt_reg[20]_i_1_n_1\,
      CO(1) => \byte_cnt_reg[20]_i_1_n_2\,
      CO(0) => \byte_cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => recv_done1(20 downto 17),
      S(3 downto 0) => \byte_cnt_reg_n_0_\(20 downto 17)
    );
\byte_cnt_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(21),
      Q => \byte_cnt_reg_n_0_\(21)
    );
\byte_cnt_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(22),
      Q => \byte_cnt_reg_n_0_\(22)
    );
\byte_cnt_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(23),
      Q => \byte_cnt_reg_n_0_\(23)
    );
\byte_cnt_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(24),
      Q => \byte_cnt_reg_n_0_\(24)
    );
\byte_cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_cnt_reg[20]_i_1_n_0\,
      CO(3) => \byte_cnt_reg[24]_i_1_n_0\,
      CO(2) => \byte_cnt_reg[24]_i_1_n_1\,
      CO(1) => \byte_cnt_reg[24]_i_1_n_2\,
      CO(0) => \byte_cnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => recv_done1(24 downto 21),
      S(3 downto 0) => \byte_cnt_reg_n_0_\(24 downto 21)
    );
\byte_cnt_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(25),
      Q => \byte_cnt_reg_n_0_\(25)
    );
\byte_cnt_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(26),
      Q => \byte_cnt_reg_n_0_\(26)
    );
\byte_cnt_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(27),
      Q => \byte_cnt_reg_n_0_\(27)
    );
\byte_cnt_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(28),
      Q => \byte_cnt_reg_n_0_\(28)
    );
\byte_cnt_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_cnt_reg[24]_i_1_n_0\,
      CO(3) => \byte_cnt_reg[28]_i_1_n_0\,
      CO(2) => \byte_cnt_reg[28]_i_1_n_1\,
      CO(1) => \byte_cnt_reg[28]_i_1_n_2\,
      CO(0) => \byte_cnt_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => recv_done1(28 downto 25),
      S(3 downto 0) => \byte_cnt_reg_n_0_\(28 downto 25)
    );
\byte_cnt_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(29),
      Q => \byte_cnt_reg_n_0_\(29)
    );
\byte_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(2),
      Q => p_0_in(0)
    );
\byte_cnt_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(30),
      Q => \byte_cnt_reg_n_0_\(30)
    );
\byte_cnt_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(31),
      Q => \byte_cnt_reg_n_0_\(31)
    );
\byte_cnt_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_cnt_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_byte_cnt_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \byte_cnt_reg[31]_i_2_n_2\,
      CO(0) => \byte_cnt_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_byte_cnt_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => recv_done1(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => \byte_cnt_reg_n_0_\(31 downto 29)
    );
\byte_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(3),
      Q => p_0_in(1)
    );
\byte_cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(4),
      Q => p_0_in(2)
    );
\byte_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \byte_cnt_reg[4]_i_1_n_0\,
      CO(2) => \byte_cnt_reg[4]_i_1_n_1\,
      CO(1) => \byte_cnt_reg[4]_i_1_n_2\,
      CO(0) => \byte_cnt_reg[4]_i_1_n_3\,
      CYINIT => \byte_cnt_reg_n_0_\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => recv_done1(4 downto 1),
      S(3 downto 1) => p_0_in(2 downto 0),
      S(0) => \byte_cnt_reg_n_0_\(1)
    );
\byte_cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(5),
      Q => p_0_in(3)
    );
\byte_cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(6),
      Q => p_0_in(4)
    );
\byte_cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(7),
      Q => p_0_in(5)
    );
\byte_cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(8),
      Q => p_0_in(6)
    );
\byte_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \byte_cnt_reg[4]_i_1_n_0\,
      CO(3) => \byte_cnt_reg[8]_i_1_n_0\,
      CO(2) => \byte_cnt_reg[8]_i_1_n_1\,
      CO(1) => \byte_cnt_reg[8]_i_1_n_2\,
      CO(0) => \byte_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => recv_done1(8 downto 5),
      S(3 downto 0) => p_0_in(6 downto 3)
    );
\byte_cnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => recv_done1(9),
      Q => p_0_in(7)
    );
\byte_len[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wr_byte_len_done0,
      I1 => \statReg_reg_n_0_\(0),
      O => \byte_len[7]_i_1_n_0\
    );
\byte_len_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \byte_len[7]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(0),
      Q => \byte_len_reg_n_0_\(0)
    );
\byte_len_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \byte_len[7]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(1),
      Q => \byte_len_reg_n_0_\(1)
    );
\byte_len_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \byte_len[7]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(2),
      Q => \byte_len_reg_n_0_\(2)
    );
\byte_len_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \byte_len[7]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(3),
      Q => \byte_len_reg_n_0_\(3)
    );
\byte_len_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \byte_len[7]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(4),
      Q => \byte_len_reg_n_0_\(4)
    );
\byte_len_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \byte_len[7]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(5),
      Q => \byte_len_reg_n_0_\(5)
    );
\byte_len_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \byte_len[7]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(6),
      Q => \byte_len_reg_n_0_\(6)
    );
\byte_len_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \byte_len[7]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(7),
      Q => \byte_len_reg_n_0_\(7)
    );
\byte_num[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => wr_byte_len_done_reg_n_0,
      I1 => \statReg_reg_n_0_\(0),
      I2 => wr_byte_num_done_reg_n_0,
      O => byte_num
    );
\byte_num_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(0),
      Q => hex0(8)
    );
\byte_num_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(10),
      Q => hex0(18)
    );
\byte_num_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(11),
      Q => hex0(19)
    );
\byte_num_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(12),
      Q => hex0(20)
    );
\byte_num_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(13),
      Q => hex0(21)
    );
\byte_num_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(14),
      Q => hex0(22)
    );
\byte_num_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(15),
      Q => hex0(23)
    );
\byte_num_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(16),
      Q => hex0(24)
    );
\byte_num_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(17),
      Q => hex0(25)
    );
\byte_num_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(18),
      Q => hex0(26)
    );
\byte_num_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(19),
      Q => hex0(27)
    );
\byte_num_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(1),
      Q => hex0(9)
    );
\byte_num_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(20),
      Q => hex0(28)
    );
\byte_num_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(21),
      Q => hex0(29)
    );
\byte_num_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(22),
      Q => hex0(30)
    );
\byte_num_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(23),
      Q => hex0(31)
    );
\byte_num_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(24),
      Q => \byte_num_reg_n_0_\(24)
    );
\byte_num_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(25),
      Q => \byte_num_reg_n_0_\(25)
    );
\byte_num_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(26),
      Q => \byte_num_reg_n_0_\(26)
    );
\byte_num_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(27),
      Q => \byte_num_reg_n_0_\(27)
    );
\byte_num_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(28),
      Q => \byte_num_reg_n_0_\(28)
    );
\byte_num_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(29),
      Q => \byte_num_reg_n_0_\(29)
    );
\byte_num_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(2),
      Q => hex0(10)
    );
\byte_num_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(30),
      Q => \byte_num_reg_n_0_\(30)
    );
\byte_num_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(31),
      Q => \byte_num_reg_n_0_\(31)
    );
\byte_num_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(3),
      Q => hex0(11)
    );
\byte_num_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(4),
      Q => hex0(12)
    );
\byte_num_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(5),
      Q => hex0(13)
    );
\byte_num_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(6),
      Q => hex0(14)
    );
\byte_num_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(7),
      Q => hex0(15)
    );
\byte_num_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(8),
      Q => hex0(16)
    );
\byte_num_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => hex0(9),
      Q => hex0(17)
    );
\dbuf_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(0),
      Q => dbuf(0)
    );
\dbuf_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => dbuf(2),
      Q => dbuf(10)
    );
\dbuf_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => dbuf(3),
      Q => dbuf(11)
    );
\dbuf_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => dbuf(4),
      Q => dbuf(12)
    );
\dbuf_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => dbuf(5),
      Q => dbuf(13)
    );
\dbuf_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => dbuf(6),
      Q => dbuf(14)
    );
\dbuf_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => dbuf(7),
      Q => dbuf(15)
    );
\dbuf_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => dbuf(8),
      Q => dbuf(16)
    );
\dbuf_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => dbuf(9),
      Q => dbuf(17)
    );
\dbuf_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => dbuf(10),
      Q => dbuf(18)
    );
\dbuf_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => dbuf(11),
      Q => dbuf(19)
    );
\dbuf_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(1),
      Q => dbuf(1)
    );
\dbuf_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => dbuf(12),
      Q => dbuf(20)
    );
\dbuf_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => dbuf(13),
      Q => dbuf(21)
    );
\dbuf_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => dbuf(14),
      Q => dbuf(22)
    );
\dbuf_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => dbuf(15),
      Q => dbuf(23)
    );
\dbuf_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(2),
      Q => dbuf(2)
    );
\dbuf_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(3),
      Q => dbuf(3)
    );
\dbuf_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(4),
      Q => dbuf(4)
    );
\dbuf_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(5),
      Q => dbuf(5)
    );
\dbuf_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(6),
      Q => dbuf(6)
    );
\dbuf_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(7),
      Q => dbuf(7)
    );
\dbuf_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => dbuf(0),
      Q => dbuf(8)
    );
\dbuf_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_cnt,
      CLR => upg_rst_i_IBUF,
      D => dbuf(1),
      Q => dbuf(9)
    );
\disp[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5595"
    )
        port map (
      I0 => \disp[1]_i_3_n_0\,
      I1 => \statReg_reg_n_0_\(0),
      I2 => wr_byte_num_done_reg_n_0,
      I3 => recv_done_reg_n_0,
      O => \disp[0]_i_1_n_0\
    );
\disp[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55556555"
    )
        port map (
      I0 => \disp[1]_i_2_n_0\,
      I1 => \disp[1]_i_3_n_0\,
      I2 => \statReg_reg_n_0_\(0),
      I3 => wr_byte_num_done_reg_n_0,
      I4 => recv_done_reg_n_0,
      O => \disp[1]_i_1_n_0\
    );
\disp[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFF0000EFFFFFFF"
    )
        port map (
      I0 => \disp_reg_n_0_\(6),
      I1 => \disp_reg_n_0_\(7),
      I2 => \disp_reg_n_0_\(0),
      I3 => upg_clk_o_OBUF_inst_i_2_n_0,
      I4 => disp1,
      I5 => \disp_reg_n_0_\(1),
      O => \disp[1]_i_2_n_0\
    );
\disp[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF00FFFFEFFF"
    )
        port map (
      I0 => \disp_reg_n_0_\(6),
      I1 => \disp_reg_n_0_\(7),
      I2 => upg_clk_o_OBUF_inst_i_2_n_0,
      I3 => recv_done_reg_n_0,
      I4 => rx_done_reg_n_0,
      I5 => \disp_reg_n_0_\(0),
      O => \disp[1]_i_3_n_0\
    );
\disp[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82882222"
    )
        port map (
      I0 => \disp[6]_i_2_n_0\,
      I1 => \disp[2]_i_2_n_0\,
      I2 => rx_done_reg_n_0,
      I3 => recv_done_reg_n_0,
      I4 => \disp_reg_n_0_\(2),
      O => \disp[2]_i_1_n_0\
    );
\disp[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => \disp[1]_i_2_n_0\,
      I1 => \disp[1]_i_3_n_0\,
      I2 => \statReg_reg_n_0_\(0),
      I3 => wr_byte_num_done_reg_n_0,
      I4 => recv_done_reg_n_0,
      O => \disp[2]_i_2_n_0\
    );
\disp[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000007F807F80"
    )
        port map (
      I0 => wr_byte_num_done_reg_n_0,
      I1 => \disp[3]_i_2_n_0\,
      I2 => \statReg_reg_n_0_\(0),
      I3 => \disp_reg_n_0_\(3),
      I4 => rx_done_reg_n_0,
      I5 => recv_done_reg_n_0,
      O => \disp[3]_i_1_n_0\
    );
\disp[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A2"
    )
        port map (
      I0 => \disp_reg_n_0_\(2),
      I1 => recv_done_reg_n_0,
      I2 => rx_done_reg_n_0,
      I3 => \disp[6]_i_3_n_0\,
      O => \disp[3]_i_2_n_0\
    );
\disp[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000007F807F80"
    )
        port map (
      I0 => wr_byte_num_done_reg_n_0,
      I1 => \disp[5]_i_3_n_0\,
      I2 => \statReg_reg_n_0_\(0),
      I3 => \disp_reg_n_0_\(4),
      I4 => rx_done_reg_n_0,
      I5 => recv_done_reg_n_0,
      O => \disp[4]_i_1_n_0\
    );
\disp[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BFFF4000"
    )
        port map (
      I0 => \disp[5]_i_2_n_0\,
      I1 => \disp[5]_i_3_n_0\,
      I2 => \disp_reg_n_0_\(4),
      I3 => \statReg_reg_n_0_\(0),
      I4 => \disp_reg_n_0_\(5),
      I5 => disp1,
      O => \disp[5]_i_1_n_0\
    );
\disp[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => recv_done_reg_n_0,
      I1 => wr_byte_num_done_reg_n_0,
      O => \disp[5]_i_2_n_0\
    );
\disp[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20220000"
    )
        port map (
      I0 => \disp_reg_n_0_\(3),
      I1 => \disp[6]_i_3_n_0\,
      I2 => rx_done_reg_n_0,
      I3 => recv_done_reg_n_0,
      I4 => \disp_reg_n_0_\(2),
      O => \disp[5]_i_3_n_0\
    );
\disp[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => recv_done_reg_n_0,
      I1 => rx_done_reg_n_0,
      O => disp1
    );
\disp[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B000B00000F0B000"
    )
        port map (
      I0 => rx_done_reg_n_0,
      I1 => recv_done_reg_n_0,
      I2 => \disp[6]_i_2_n_0\,
      I3 => \disp_reg_n_0_\(6),
      I4 => \statReg_reg_n_0_\(0),
      I5 => \disp[7]_i_2_n_0\,
      O => \disp[6]_i_1_n_0\
    );
\disp[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDFFFF"
    )
        port map (
      I0 => wr_byte_num_done_reg_n_0,
      I1 => recv_done_reg_n_0,
      I2 => \disp[6]_i_3_n_0\,
      I3 => upg_wen_o_i_4_n_0,
      I4 => \statReg_reg_n_0_\(0),
      O => \disp[6]_i_2_n_0\
    );
\disp[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F7F7F7F7F7D7F7"
    )
        port map (
      I0 => \disp_reg_n_0_\(1),
      I1 => \disp_reg_n_0_\(0),
      I2 => disp1,
      I3 => upg_clk_o_OBUF_inst_i_2_n_0,
      I4 => \disp_reg_n_0_\(7),
      I5 => \disp_reg_n_0_\(6),
      O => \disp[6]_i_3_n_0\
    );
\disp[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D02FD0D0D0D0D0D0"
    )
        port map (
      I0 => recv_done_reg_n_0,
      I1 => rx_done_reg_n_0,
      I2 => \disp_reg_n_0_\(7),
      I3 => \disp[7]_i_2_n_0\,
      I4 => \statReg_reg_n_0_\(0),
      I5 => \disp_reg_n_0_\(6),
      O => \disp[7]_i_1_n_0\
    );
\disp[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \disp_reg_n_0_\(3),
      I1 => \disp[7]_i_3_n_0\,
      I2 => disp1,
      I3 => \disp_reg_n_0_\(2),
      I4 => \disp_reg_n_0_\(4),
      I5 => \disp_reg_n_0_\(5),
      O => \disp[7]_i_2_n_0\
    );
\disp[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAEFFFFFFFFFFF"
    )
        port map (
      I0 => \disp[5]_i_2_n_0\,
      I1 => \disp[7]_i_4_n_0\,
      I2 => upg_clk_o_OBUF_inst_i_2_n_0,
      I3 => disp1,
      I4 => \disp_reg_n_0_\(0),
      I5 => \disp_reg_n_0_\(1),
      O => \disp[7]_i_3_n_0\
    );
\disp[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \disp_reg_n_0_\(6),
      I1 => \disp_reg_n_0_\(7),
      O => \disp[7]_i_4_n_0\
    );
\disp_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => s_axi_aresetn0,
      CLR => upg_rst_i_IBUF,
      D => \disp[0]_i_1_n_0\,
      Q => \disp_reg_n_0_\(0)
    );
\disp_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => s_axi_aresetn0,
      CLR => upg_rst_i_IBUF,
      D => \disp[1]_i_1_n_0\,
      Q => \disp_reg_n_0_\(1)
    );
\disp_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => s_axi_aresetn0,
      CLR => upg_rst_i_IBUF,
      D => \disp[2]_i_1_n_0\,
      Q => \disp_reg_n_0_\(2)
    );
\disp_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => s_axi_aresetn0,
      CLR => upg_rst_i_IBUF,
      D => \disp[3]_i_1_n_0\,
      Q => \disp_reg_n_0_\(3)
    );
\disp_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => s_axi_aresetn0,
      CLR => upg_rst_i_IBUF,
      D => \disp[4]_i_1_n_0\,
      Q => \disp_reg_n_0_\(4)
    );
\disp_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => s_axi_aresetn0,
      CLR => upg_rst_i_IBUF,
      D => \disp[5]_i_1_n_0\,
      Q => \disp_reg_n_0_\(5)
    );
\disp_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => s_axi_aresetn0,
      CLR => upg_rst_i_IBUF,
      D => \disp[6]_i_1_n_0\,
      Q => \disp_reg_n_0_\(6)
    );
\disp_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => s_axi_aresetn0,
      CLR => upg_rst_i_IBUF,
      D => \disp[7]_i_1_n_0\,
      Q => \disp_reg_n_0_\(7)
    );
initFlag_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAE"
    )
        port map (
      I0 => initFlag,
      I1 => \WCS_reg_n_0_\(0),
      I2 => \WCS_reg_n_0_\(1),
      I3 => \WCS_reg_n_0_\(2),
      O => initFlag_i_1_n_0
    );
initFlag_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => '1',
      CLR => upg_rst_i_IBUF,
      D => initFlag_i_1_n_0,
      Q => initFlag
    );
\len_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \len_cnt_reg__0\(0),
      O => \len_cnt[0]_i_1_n_0\
    );
\len_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \len_cnt_reg__0\(0),
      I1 => \len_cnt_reg__0\(1),
      O => \len_cnt[1]_i_1_n_0\
    );
\len_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \len_cnt_reg__0\(2),
      I1 => \len_cnt_reg__0\(1),
      I2 => \len_cnt_reg__0\(0),
      O => \len_cnt[2]_i_1_n_0\
    );
\len_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \len_cnt_reg__0\(3),
      I1 => \len_cnt_reg__0\(0),
      I2 => \len_cnt_reg__0\(1),
      I3 => \len_cnt_reg__0\(2),
      O => \len_cnt[3]_i_1_n_0\
    );
\len_cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => \len_cnt[0]_i_1_n_0\,
      Q => \len_cnt_reg__0\(0)
    );
\len_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => \len_cnt[1]_i_1_n_0\,
      Q => \len_cnt_reg__0\(1)
    );
\len_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => \len_cnt[2]_i_1_n_0\,
      Q => \len_cnt_reg__0\(2)
    );
\len_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => byte_num,
      CLR => upg_rst_i_IBUF,
      D => \len_cnt[3]_i_1_n_0\,
      Q => \len_cnt_reg__0\(3)
    );
\msg_indx[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \msg_indx_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\msg_indx[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \msg_indx_reg__0\(0),
      I1 => \msg_indx_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\msg_indx[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \msg_indx_reg__0\(2),
      I1 => \msg_indx_reg__0\(1),
      I2 => \msg_indx_reg__0\(0),
      O => \p_0_in__0\(2)
    );
\msg_indx[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \msg_indx_reg__0\(3),
      I1 => \msg_indx_reg__0\(1),
      I2 => \msg_indx_reg__0\(2),
      I3 => \msg_indx_reg__0\(0),
      O => \p_0_in__0\(3)
    );
\msg_indx[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \msg_indx_reg__0\(4),
      I1 => \msg_indx_reg__0\(3),
      I2 => \msg_indx_reg__0\(0),
      I3 => \msg_indx_reg__0\(2),
      I4 => \msg_indx_reg__0\(1),
      O => \p_0_in__0\(4)
    );
\msg_indx[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \msg_indx_reg__0\(5),
      I1 => \msg_indx_reg__0\(1),
      I2 => \msg_indx_reg__0\(2),
      I3 => \msg_indx_reg__0\(0),
      I4 => \msg_indx_reg__0\(3),
      I5 => \msg_indx_reg__0\(4),
      O => \p_0_in__0\(5)
    );
\msg_indx[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \msg_indx_reg__1\(6),
      I1 => \msg_indx[7]_i_3_n_0\,
      O => \p_0_in__0\(6)
    );
\msg_indx[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => uart_wen5_out,
      I1 => \WCS_reg_n_0_\(0),
      I2 => \WCS_reg_n_0_\(1),
      I3 => \WCS_reg_n_0_\(2),
      O => \msg_indx[7]_i_1_n_0\
    );
\msg_indx[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \msg_indx_reg__1\(7),
      I1 => \msg_indx[7]_i_3_n_0\,
      I2 => \msg_indx_reg__1\(6),
      O => \p_0_in__0\(7)
    );
\msg_indx[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \msg_indx_reg__0\(1),
      I1 => \msg_indx_reg__0\(2),
      I2 => \msg_indx_reg__0\(0),
      I3 => \msg_indx_reg__0\(3),
      I4 => \msg_indx_reg__0\(4),
      I5 => \msg_indx_reg__0\(5),
      O => \msg_indx[7]_i_3_n_0\
    );
\msg_indx_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \msg_indx[7]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \p_0_in__0\(0),
      Q => \msg_indx_reg__0\(0)
    );
\msg_indx_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \msg_indx[7]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \p_0_in__0\(1),
      Q => \msg_indx_reg__0\(1)
    );
\msg_indx_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \msg_indx[7]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \p_0_in__0\(2),
      Q => \msg_indx_reg__0\(2)
    );
\msg_indx_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \msg_indx[7]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \p_0_in__0\(3),
      Q => \msg_indx_reg__0\(3)
    );
\msg_indx_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \msg_indx[7]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \p_0_in__0\(4),
      Q => \msg_indx_reg__0\(4)
    );
\msg_indx_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \msg_indx[7]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \p_0_in__0\(5),
      Q => \msg_indx_reg__0\(5)
    );
\msg_indx_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \msg_indx[7]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \p_0_in__0\(6),
      Q => \msg_indx_reg__1\(6)
    );
\msg_indx_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \msg_indx[7]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \p_0_in__0\(7),
      Q => \msg_indx_reg__1\(7)
    );
oldInitF_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
        port map (
      I0 => \WCS_reg_n_0_\(2),
      I1 => \WCS_reg_n_0_\(1),
      I2 => \WCS_reg_n_0_\(0),
      I3 => \WCS[2]_i_2_n_0\,
      I4 => oldInitF_reg_n_0,
      O => oldInitF_i_1_n_0
    );
oldInitF_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => '1',
      CLR => upg_rst_i_IBUF,
      D => oldInitF_i_1_n_0,
      Q => oldInitF_reg_n_0
    );
rdStat_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => rdStat,
      O => rdStat_BUFG
    );
rdStat_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F708F708FF00FF0A"
    )
        port map (
      I0 => \RCS_reg_n_0_\(0),
      I1 => s_axi_rvalid,
      I2 => \RCS_reg_n_0_\(2),
      I3 => rdStat,
      I4 => \statReg_reg_n_0_\(0),
      I5 => \RCS_reg_n_0_\(1),
      O => rdStat_i_1_n_0
    );
rdStat_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => '1',
      CLR => upg_rst_i_IBUF,
      D => rdStat_i_1_n_0,
      Q => rdStat
    );
recv_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => recv_done0,
      I1 => upg_rst_i_IBUF,
      I2 => \statReg_reg_n_0_\(0),
      I3 => wr_byte_num_done_reg_n_0,
      I4 => recv_done_reg_n_0,
      O => recv_done_i_1_n_0
    );
recv_done_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \byte_num_reg_n_0_\(27),
      I1 => recv_done1(27),
      I2 => \byte_num_reg_n_0_\(26),
      I3 => recv_done1(26),
      O => recv_done_i_10_n_0
    );
recv_done_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \byte_num_reg_n_0_\(25),
      I1 => recv_done1(25),
      I2 => \byte_num_reg_n_0_\(24),
      I3 => recv_done1(24),
      O => recv_done_i_11_n_0
    );
recv_done_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => recv_done1(23),
      I1 => hex0(31),
      I2 => recv_done1(22),
      I3 => hex0(30),
      O => recv_done_i_13_n_0
    );
recv_done_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => recv_done1(21),
      I1 => hex0(29),
      I2 => recv_done1(20),
      I3 => hex0(28),
      O => recv_done_i_14_n_0
    );
recv_done_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => recv_done1(19),
      I1 => hex0(27),
      I2 => recv_done1(18),
      I3 => hex0(26),
      O => recv_done_i_15_n_0
    );
recv_done_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => recv_done1(17),
      I1 => hex0(25),
      I2 => recv_done1(16),
      I3 => hex0(24),
      O => recv_done_i_16_n_0
    );
recv_done_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => hex0(31),
      I1 => recv_done1(23),
      I2 => hex0(30),
      I3 => recv_done1(22),
      O => recv_done_i_17_n_0
    );
recv_done_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => hex0(29),
      I1 => recv_done1(21),
      I2 => hex0(28),
      I3 => recv_done1(20),
      O => recv_done_i_18_n_0
    );
recv_done_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => hex0(27),
      I1 => recv_done1(19),
      I2 => hex0(26),
      I3 => recv_done1(18),
      O => recv_done_i_19_n_0
    );
recv_done_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => hex0(25),
      I1 => recv_done1(17),
      I2 => hex0(24),
      I3 => recv_done1(16),
      O => recv_done_i_20_n_0
    );
recv_done_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => recv_done1(15),
      I1 => hex0(23),
      I2 => recv_done1(14),
      I3 => hex0(22),
      O => recv_done_i_22_n_0
    );
recv_done_i_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => recv_done1(13),
      I1 => hex0(21),
      I2 => recv_done1(12),
      I3 => hex0(20),
      O => recv_done_i_23_n_0
    );
recv_done_i_24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => recv_done1(11),
      I1 => hex0(19),
      I2 => recv_done1(10),
      I3 => hex0(18),
      O => recv_done_i_24_n_0
    );
recv_done_i_25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => recv_done1(9),
      I1 => hex0(17),
      I2 => recv_done1(8),
      I3 => hex0(16),
      O => recv_done_i_25_n_0
    );
recv_done_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => hex0(23),
      I1 => recv_done1(15),
      I2 => hex0(22),
      I3 => recv_done1(14),
      O => recv_done_i_26_n_0
    );
recv_done_i_27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => hex0(21),
      I1 => recv_done1(13),
      I2 => hex0(20),
      I3 => recv_done1(12),
      O => recv_done_i_27_n_0
    );
recv_done_i_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => hex0(19),
      I1 => recv_done1(11),
      I2 => hex0(18),
      I3 => recv_done1(10),
      O => recv_done_i_28_n_0
    );
recv_done_i_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => hex0(17),
      I1 => recv_done1(9),
      I2 => hex0(16),
      I3 => recv_done1(8),
      O => recv_done_i_29_n_0
    );
recv_done_i_30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => recv_done1(7),
      I1 => hex0(15),
      I2 => recv_done1(6),
      I3 => hex0(14),
      O => recv_done_i_30_n_0
    );
recv_done_i_31: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => recv_done1(5),
      I1 => hex0(13),
      I2 => recv_done1(4),
      I3 => hex0(12),
      O => recv_done_i_31_n_0
    );
recv_done_i_32: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => recv_done1(3),
      I1 => hex0(11),
      I2 => recv_done1(2),
      I3 => hex0(10),
      O => recv_done_i_32_n_0
    );
recv_done_i_33: unisim.vcomponents.LUT4
    generic map(
      INIT => X"222B"
    )
        port map (
      I0 => recv_done1(1),
      I1 => hex0(9),
      I2 => \byte_cnt_reg_n_0_\(0),
      I3 => hex0(8),
      O => recv_done_i_33_n_0
    );
recv_done_i_34: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => hex0(15),
      I1 => recv_done1(7),
      I2 => hex0(14),
      I3 => recv_done1(6),
      O => recv_done_i_34_n_0
    );
recv_done_i_35: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => hex0(13),
      I1 => recv_done1(5),
      I2 => hex0(12),
      I3 => recv_done1(4),
      O => recv_done_i_35_n_0
    );
recv_done_i_36: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => hex0(11),
      I1 => recv_done1(3),
      I2 => hex0(10),
      I3 => recv_done1(2),
      O => recv_done_i_36_n_0
    );
recv_done_i_37: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => hex0(8),
      I1 => \byte_cnt_reg_n_0_\(0),
      I2 => hex0(9),
      I3 => recv_done1(1),
      O => recv_done_i_37_n_0
    );
recv_done_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => recv_done1(31),
      I1 => \byte_num_reg_n_0_\(31),
      I2 => recv_done1(30),
      I3 => \byte_num_reg_n_0_\(30),
      O => recv_done_i_4_n_0
    );
recv_done_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => recv_done1(29),
      I1 => \byte_num_reg_n_0_\(29),
      I2 => recv_done1(28),
      I3 => \byte_num_reg_n_0_\(28),
      O => recv_done_i_5_n_0
    );
recv_done_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => recv_done1(27),
      I1 => \byte_num_reg_n_0_\(27),
      I2 => recv_done1(26),
      I3 => \byte_num_reg_n_0_\(26),
      O => recv_done_i_6_n_0
    );
recv_done_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => recv_done1(25),
      I1 => \byte_num_reg_n_0_\(25),
      I2 => recv_done1(24),
      I3 => \byte_num_reg_n_0_\(24),
      O => recv_done_i_7_n_0
    );
recv_done_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \byte_num_reg_n_0_\(31),
      I1 => recv_done1(31),
      I2 => \byte_num_reg_n_0_\(30),
      I3 => recv_done1(30),
      O => recv_done_i_8_n_0
    );
recv_done_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \byte_num_reg_n_0_\(29),
      I1 => recv_done1(29),
      I2 => \byte_num_reg_n_0_\(28),
      I3 => recv_done1(28),
      O => recv_done_i_9_n_0
    );
recv_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => '1',
      CLR => upg_rst_i_IBUF,
      D => recv_done_i_1_n_0,
      Q => recv_done_reg_n_0
    );
recv_done_reg_i_12: unisim.vcomponents.CARRY4
     port map (
      CI => recv_done_reg_i_21_n_0,
      CO(3) => recv_done_reg_i_12_n_0,
      CO(2) => recv_done_reg_i_12_n_1,
      CO(1) => recv_done_reg_i_12_n_2,
      CO(0) => recv_done_reg_i_12_n_3,
      CYINIT => '0',
      DI(3) => recv_done_i_22_n_0,
      DI(2) => recv_done_i_23_n_0,
      DI(1) => recv_done_i_24_n_0,
      DI(0) => recv_done_i_25_n_0,
      O(3 downto 0) => NLW_recv_done_reg_i_12_O_UNCONNECTED(3 downto 0),
      S(3) => recv_done_i_26_n_0,
      S(2) => recv_done_i_27_n_0,
      S(1) => recv_done_i_28_n_0,
      S(0) => recv_done_i_29_n_0
    );
recv_done_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => recv_done_reg_i_3_n_0,
      CO(3) => recv_done0,
      CO(2) => recv_done_reg_i_2_n_1,
      CO(1) => recv_done_reg_i_2_n_2,
      CO(0) => recv_done_reg_i_2_n_3,
      CYINIT => '0',
      DI(3) => recv_done_i_4_n_0,
      DI(2) => recv_done_i_5_n_0,
      DI(1) => recv_done_i_6_n_0,
      DI(0) => recv_done_i_7_n_0,
      O(3 downto 0) => NLW_recv_done_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => recv_done_i_8_n_0,
      S(2) => recv_done_i_9_n_0,
      S(1) => recv_done_i_10_n_0,
      S(0) => recv_done_i_11_n_0
    );
recv_done_reg_i_21: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => recv_done_reg_i_21_n_0,
      CO(2) => recv_done_reg_i_21_n_1,
      CO(1) => recv_done_reg_i_21_n_2,
      CO(0) => recv_done_reg_i_21_n_3,
      CYINIT => '1',
      DI(3) => recv_done_i_30_n_0,
      DI(2) => recv_done_i_31_n_0,
      DI(1) => recv_done_i_32_n_0,
      DI(0) => recv_done_i_33_n_0,
      O(3 downto 0) => NLW_recv_done_reg_i_21_O_UNCONNECTED(3 downto 0),
      S(3) => recv_done_i_34_n_0,
      S(2) => recv_done_i_35_n_0,
      S(1) => recv_done_i_36_n_0,
      S(0) => recv_done_i_37_n_0
    );
recv_done_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => recv_done_reg_i_12_n_0,
      CO(3) => recv_done_reg_i_3_n_0,
      CO(2) => recv_done_reg_i_3_n_1,
      CO(1) => recv_done_reg_i_3_n_2,
      CO(0) => recv_done_reg_i_3_n_3,
      CYINIT => '0',
      DI(3) => recv_done_i_13_n_0,
      DI(2) => recv_done_i_14_n_0,
      DI(1) => recv_done_i_15_n_0,
      DI(0) => recv_done_i_16_n_0,
      O(3 downto 0) => NLW_recv_done_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3) => recv_done_i_17_n_0,
      S(2) => recv_done_i_18_n_0,
      S(1) => recv_done_i_19_n_0,
      S(0) => recv_done_i_20_n_0
    );
\rwait_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rwait_cnt_reg_n_0_\(0),
      I1 => \rwait_cnt[15]_i_4_n_0\,
      O => rwait_cnt(0)
    );
\rwait_cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rwait_cnt_reg[12]_i_2_n_6\,
      I1 => \rwait_cnt[15]_i_4_n_0\,
      O => rwait_cnt(10)
    );
\rwait_cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rwait_cnt_reg[12]_i_2_n_5\,
      I1 => \rwait_cnt[15]_i_4_n_0\,
      O => rwait_cnt(11)
    );
\rwait_cnt[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rwait_cnt_reg[12]_i_2_n_4\,
      I1 => \rwait_cnt[15]_i_4_n_0\,
      O => rwait_cnt(12)
    );
\rwait_cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rwait_cnt_reg[15]_i_3_n_7\,
      I1 => \rwait_cnt[15]_i_4_n_0\,
      O => rwait_cnt(13)
    );
\rwait_cnt[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rwait_cnt_reg[15]_i_3_n_6\,
      I1 => \rwait_cnt[15]_i_4_n_0\,
      O => rwait_cnt(14)
    );
\rwait_cnt[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \RCS_reg_n_0_\(1),
      I1 => \RCS_reg_n_0_\(0),
      I2 => \RCS_reg_n_0_\(2),
      O => \rwait_cnt[15]_i_1_n_0\
    );
\rwait_cnt[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rwait_cnt_reg[15]_i_3_n_5\,
      I1 => \rwait_cnt[15]_i_4_n_0\,
      O => rwait_cnt(15)
    );
\rwait_cnt[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \rwait_cnt[15]_i_5_n_0\,
      I1 => \rwait_cnt_reg_n_0_\(2),
      I2 => \rwait_cnt_reg_n_0_\(5),
      I3 => \rwait_cnt_reg_n_0_\(8),
      I4 => \rwait_cnt_reg_n_0_\(11),
      I5 => \rwait_cnt[15]_i_6_n_0\,
      O => \rwait_cnt[15]_i_4_n_0\
    );
\rwait_cnt[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \rwait_cnt_reg_n_0_\(4),
      I1 => \rwait_cnt_reg_n_0_\(10),
      I2 => \rwait_cnt_reg_n_0_\(7),
      I3 => \rwait_cnt_reg_n_0_\(15),
      O => \rwait_cnt[15]_i_5_n_0\
    );
\rwait_cnt[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => \rwait_cnt_reg_n_0_\(12),
      I1 => \rwait_cnt_reg_n_0_\(1),
      I2 => \rwait_cnt_reg_n_0_\(0),
      I3 => \rwait_cnt_reg_n_0_\(6),
      I4 => \rwait_cnt[15]_i_7_n_0\,
      O => \rwait_cnt[15]_i_6_n_0\
    );
\rwait_cnt[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \rwait_cnt_reg_n_0_\(14),
      I1 => \rwait_cnt_reg_n_0_\(13),
      I2 => \rwait_cnt_reg_n_0_\(3),
      I3 => \rwait_cnt_reg_n_0_\(9),
      O => \rwait_cnt[15]_i_7_n_0\
    );
\rwait_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rwait_cnt_reg[4]_i_2_n_7\,
      I1 => \rwait_cnt[15]_i_4_n_0\,
      O => rwait_cnt(1)
    );
\rwait_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rwait_cnt_reg[4]_i_2_n_6\,
      I1 => \rwait_cnt[15]_i_4_n_0\,
      O => rwait_cnt(2)
    );
\rwait_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rwait_cnt_reg[4]_i_2_n_5\,
      I1 => \rwait_cnt[15]_i_4_n_0\,
      O => rwait_cnt(3)
    );
\rwait_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rwait_cnt_reg[4]_i_2_n_4\,
      I1 => \rwait_cnt[15]_i_4_n_0\,
      O => rwait_cnt(4)
    );
\rwait_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rwait_cnt_reg[8]_i_2_n_7\,
      I1 => \rwait_cnt[15]_i_4_n_0\,
      O => rwait_cnt(5)
    );
\rwait_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rwait_cnt_reg[8]_i_2_n_6\,
      I1 => \rwait_cnt[15]_i_4_n_0\,
      O => rwait_cnt(6)
    );
\rwait_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rwait_cnt_reg[8]_i_2_n_5\,
      I1 => \rwait_cnt[15]_i_4_n_0\,
      O => rwait_cnt(7)
    );
\rwait_cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rwait_cnt_reg[8]_i_2_n_4\,
      I1 => \rwait_cnt[15]_i_4_n_0\,
      O => rwait_cnt(8)
    );
\rwait_cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rwait_cnt_reg[12]_i_2_n_7\,
      I1 => \rwait_cnt[15]_i_4_n_0\,
      O => rwait_cnt(9)
    );
\rwait_cnt_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \rwait_cnt[15]_i_1_n_0\,
      D => rwait_cnt(0),
      PRE => upg_rst_i_IBUF,
      Q => \rwait_cnt_reg_n_0_\(0)
    );
\rwait_cnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \rwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => rwait_cnt(10),
      Q => \rwait_cnt_reg_n_0_\(10)
    );
\rwait_cnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \rwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => rwait_cnt(11),
      Q => \rwait_cnt_reg_n_0_\(11)
    );
\rwait_cnt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \rwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => rwait_cnt(12),
      Q => \rwait_cnt_reg_n_0_\(12)
    );
\rwait_cnt_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rwait_cnt_reg[8]_i_2_n_0\,
      CO(3) => \rwait_cnt_reg[12]_i_2_n_0\,
      CO(2) => \rwait_cnt_reg[12]_i_2_n_1\,
      CO(1) => \rwait_cnt_reg[12]_i_2_n_2\,
      CO(0) => \rwait_cnt_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rwait_cnt_reg[12]_i_2_n_4\,
      O(2) => \rwait_cnt_reg[12]_i_2_n_5\,
      O(1) => \rwait_cnt_reg[12]_i_2_n_6\,
      O(0) => \rwait_cnt_reg[12]_i_2_n_7\,
      S(3 downto 0) => \rwait_cnt_reg_n_0_\(12 downto 9)
    );
\rwait_cnt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \rwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => rwait_cnt(13),
      Q => \rwait_cnt_reg_n_0_\(13)
    );
\rwait_cnt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \rwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => rwait_cnt(14),
      Q => \rwait_cnt_reg_n_0_\(14)
    );
\rwait_cnt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \rwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => rwait_cnt(15),
      Q => \rwait_cnt_reg_n_0_\(15)
    );
\rwait_cnt_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \rwait_cnt_reg[12]_i_2_n_0\,
      CO(3 downto 2) => \NLW_rwait_cnt_reg[15]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \rwait_cnt_reg[15]_i_3_n_2\,
      CO(0) => \rwait_cnt_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_rwait_cnt_reg[15]_i_3_O_UNCONNECTED\(3),
      O(2) => \rwait_cnt_reg[15]_i_3_n_5\,
      O(1) => \rwait_cnt_reg[15]_i_3_n_6\,
      O(0) => \rwait_cnt_reg[15]_i_3_n_7\,
      S(3) => '0',
      S(2 downto 0) => \rwait_cnt_reg_n_0_\(15 downto 13)
    );
\rwait_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \rwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => rwait_cnt(1),
      Q => \rwait_cnt_reg_n_0_\(1)
    );
\rwait_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \rwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => rwait_cnt(2),
      Q => \rwait_cnt_reg_n_0_\(2)
    );
\rwait_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \rwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => rwait_cnt(3),
      Q => \rwait_cnt_reg_n_0_\(3)
    );
\rwait_cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \rwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => rwait_cnt(4),
      Q => \rwait_cnt_reg_n_0_\(4)
    );
\rwait_cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rwait_cnt_reg[4]_i_2_n_0\,
      CO(2) => \rwait_cnt_reg[4]_i_2_n_1\,
      CO(1) => \rwait_cnt_reg[4]_i_2_n_2\,
      CO(0) => \rwait_cnt_reg[4]_i_2_n_3\,
      CYINIT => \rwait_cnt_reg_n_0_\(0),
      DI(3 downto 0) => B"0000",
      O(3) => \rwait_cnt_reg[4]_i_2_n_4\,
      O(2) => \rwait_cnt_reg[4]_i_2_n_5\,
      O(1) => \rwait_cnt_reg[4]_i_2_n_6\,
      O(0) => \rwait_cnt_reg[4]_i_2_n_7\,
      S(3 downto 0) => \rwait_cnt_reg_n_0_\(4 downto 1)
    );
\rwait_cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \rwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => rwait_cnt(5),
      Q => \rwait_cnt_reg_n_0_\(5)
    );
\rwait_cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \rwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => rwait_cnt(6),
      Q => \rwait_cnt_reg_n_0_\(6)
    );
\rwait_cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \rwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => rwait_cnt(7),
      Q => \rwait_cnt_reg_n_0_\(7)
    );
\rwait_cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \rwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => rwait_cnt(8),
      Q => \rwait_cnt_reg_n_0_\(8)
    );
\rwait_cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rwait_cnt_reg[4]_i_2_n_0\,
      CO(3) => \rwait_cnt_reg[8]_i_2_n_0\,
      CO(2) => \rwait_cnt_reg[8]_i_2_n_1\,
      CO(1) => \rwait_cnt_reg[8]_i_2_n_2\,
      CO(0) => \rwait_cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rwait_cnt_reg[8]_i_2_n_4\,
      O(2) => \rwait_cnt_reg[8]_i_2_n_5\,
      O(1) => \rwait_cnt_reg[8]_i_2_n_6\,
      O(0) => \rwait_cnt_reg[8]_i_2_n_7\,
      S(3 downto 0) => \rwait_cnt_reg_n_0_\(8 downto 5)
    );
\rwait_cnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \rwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => rwait_cnt(9),
      Q => \rwait_cnt_reg_n_0_\(9)
    );
rx_done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => recv_done_reg_n_0,
      I1 => rx_done,
      I2 => rx_done_reg_n_0,
      O => rx_done_i_1_n_0
    );
rx_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => '1',
      CLR => upg_rst_i_IBUF,
      D => rx_done_i_1_n_0,
      Q => rx_done_reg_n_0
    );
\s_axi_araddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => rdStat,
      I1 => \RCS_reg_n_0_\(2),
      I2 => upg_rst_i_IBUF,
      I3 => \RCS_reg_n_0_\(1),
      I4 => \RCS_reg_n_0_\(0),
      I5 => \s_axi_araddr_reg_n_0_\(3),
      O => \s_axi_araddr[3]_i_1_n_0\
    );
\s_axi_araddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => '1',
      D => \s_axi_araddr[3]_i_1_n_0\,
      Q => \s_axi_araddr_reg_n_0_\(3),
      R => '0'
    );
s_axi_arvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7373000C4040"
    )
        port map (
      I0 => s_axi_arready,
      I1 => s_axi_arvalid_i_2_n_0,
      I2 => \RCS_reg_n_0_\(1),
      I3 => s_axi_arvalid_i_3_n_0,
      I4 => \RCS_reg_n_0_\(0),
      I5 => s_axi_arvalid,
      O => s_axi_arvalid_i_1_n_0
    );
s_axi_arvalid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => upg_rst_i_IBUF,
      I1 => \RCS_reg_n_0_\(2),
      O => s_axi_arvalid_i_2_n_0
    );
s_axi_arvalid_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rdStat,
      I1 => \statReg_reg_n_0_\(0),
      O => s_axi_arvalid_i_3_n_0
    );
s_axi_arvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => '1',
      D => s_axi_arvalid_i_1_n_0,
      Q => s_axi_arvalid,
      R => '0'
    );
\s_axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => initFlag,
      I1 => \WCS_reg_n_0_\(2),
      I2 => upg_rst_i_IBUF,
      I3 => \WCS_reg_n_0_\(0),
      I4 => \WCS_reg_n_0_\(1),
      I5 => \s_axi_awaddr_reg_n_0_\(3),
      O => \s_axi_awaddr[3]_i_1_n_0\
    );
\s_axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => '1',
      D => \s_axi_awaddr[3]_i_1_n_0\,
      Q => \s_axi_awaddr_reg_n_0_\(3),
      R => '0'
    );
s_axi_awvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF558A00"
    )
        port map (
      I0 => s_axi_awvalid_i_2_n_0,
      I1 => uart_wen5_out,
      I2 => initFlag,
      I3 => \WCS_reg_n_0_\(0),
      I4 => s_axi_wvalid,
      O => s_axi_awvalid_i_1_n_0
    );
s_axi_awvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000F0008000F"
    )
        port map (
      I0 => s_axi_awready,
      I1 => s_axi_wready,
      I2 => upg_rst_i_IBUF,
      I3 => \WCS_reg_n_0_\(2),
      I4 => \WCS_reg_n_0_\(1),
      I5 => \WCS_reg_n_0_\(0),
      O => s_axi_awvalid_i_2_n_0
    );
s_axi_awvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => '1',
      D => s_axi_awvalid_i_1_n_0,
      Q => s_axi_wvalid,
      R => '0'
    );
\s_axi_wdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20AA2020AAAAAAAA"
    )
        port map (
      I0 => \WCS_reg_n_0_\(0),
      I1 => \s_axi_wdata[4]_i_4_n_0\,
      I2 => \s_axi_wdata[0]_i_2_n_0\,
      I3 => \s_axi_wdata[0]_i_3_n_0\,
      I4 => \s_axi_wdata[1]_i_4_n_0\,
      I5 => initFlag,
      O => \s_axi_wdata[0]_i_1_n_0\
    );
\s_axi_wdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004B560AB000"
    )
        port map (
      I0 => \msg_indx_reg__0\(1),
      I1 => \msg_indx_reg__0\(0),
      I2 => \msg_indx_reg__0\(2),
      I3 => \msg_indx_reg__0\(3),
      I4 => \msg_indx_reg__0\(4),
      I5 => \msg_indx_reg__0\(5),
      O => \s_axi_wdata[0]_i_2_n_0\
    );
\s_axi_wdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABEFABEFABEF0000"
    )
        port map (
      I0 => \s_axi_wdata[4]_i_8_n_0\,
      I1 => \s_axi_wdata[4]_i_7_n_0\,
      I2 => \bn_ascii_reg_n_0_\(0),
      I3 => data6(0),
      I4 => \s_axi_wdata[0]_i_4_n_0\,
      I5 => \msg_indx_reg__0\(3),
      O => \s_axi_wdata[0]_i_3_n_0\
    );
\s_axi_wdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000037F7FFFF37F7"
    )
        port map (
      I0 => \bn_ascii_reg_n_0_\(56),
      I1 => \msg_indx_reg__0\(1),
      I2 => \msg_indx_reg__0\(0),
      I3 => \bn_ascii_reg_n_0_\(48),
      I4 => \msg_indx_reg__0\(2),
      I5 => \s_axi_wdata[0]_i_5_n_0\,
      O => \s_axi_wdata[0]_i_4_n_0\
    );
\s_axi_wdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(0),
      I1 => data4(0),
      I2 => \msg_indx_reg__0\(1),
      I3 => data3(0),
      I4 => \msg_indx_reg__0\(0),
      I5 => data2(0),
      O => \s_axi_wdata[0]_i_5_n_0\
    );
\s_axi_wdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20AA2020AAAAAAAA"
    )
        port map (
      I0 => \WCS_reg_n_0_\(0),
      I1 => \s_axi_wdata[4]_i_4_n_0\,
      I2 => \s_axi_wdata[1]_i_2_n_0\,
      I3 => \s_axi_wdata[1]_i_3_n_0\,
      I4 => \s_axi_wdata[1]_i_4_n_0\,
      I5 => initFlag,
      O => \s_axi_wdata[1]_i_1_n_0\
    );
\s_axi_wdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F008800441500"
    )
        port map (
      I0 => \msg_indx_reg__0\(1),
      I1 => \msg_indx_reg__0\(0),
      I2 => \msg_indx_reg__0\(2),
      I3 => \msg_indx_reg__0\(5),
      I4 => \msg_indx_reg__0\(4),
      I5 => \msg_indx_reg__0\(3),
      O => \s_axi_wdata[1]_i_2_n_0\
    );
\s_axi_wdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABEFABEFABEF0000"
    )
        port map (
      I0 => \s_axi_wdata[4]_i_8_n_0\,
      I1 => \s_axi_wdata[4]_i_7_n_0\,
      I2 => \bn_ascii_reg_n_0_\(1),
      I3 => data6(1),
      I4 => \s_axi_wdata[1]_i_5_n_0\,
      I5 => \msg_indx_reg__0\(3),
      O => \s_axi_wdata[1]_i_3_n_0\
    );
\s_axi_wdata[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \msg_indx_reg__1\(7),
      I1 => \msg_indx_reg__1\(6),
      I2 => \msg_indx_reg__0\(5),
      I3 => \msg_indx_reg__0\(4),
      O => \s_axi_wdata[1]_i_4_n_0\
    );
\s_axi_wdata[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000057F757F7"
    )
        port map (
      I0 => \msg_indx_reg__0\(1),
      I1 => \bn_ascii_reg_n_0_\(57),
      I2 => \msg_indx_reg__0\(0),
      I3 => \bn_ascii_reg_n_0_\(49),
      I4 => \s_axi_wdata[1]_i_6_n_0\,
      I5 => \msg_indx_reg__0\(2),
      O => \s_axi_wdata[1]_i_5_n_0\
    );
\s_axi_wdata[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05F5030305F5F3F3"
    )
        port map (
      I0 => data3(1),
      I1 => data2(1),
      I2 => \msg_indx_reg__0\(1),
      I3 => data5(1),
      I4 => \msg_indx_reg__0\(0),
      I5 => data4(1),
      O => \s_axi_wdata[1]_i_6_n_0\
    );
\s_axi_wdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4FFF44444444"
    )
        port map (
      I0 => \s_axi_wdata[4]_i_4_n_0\,
      I1 => \s_axi_wdata[2]_i_2_n_0\,
      I2 => \s_axi_wdata[2]_i_3_n_0\,
      I3 => \s_axi_wdata[2]_i_4_n_0\,
      I4 => \msg_indx_reg__0\(3),
      I5 => \s_axi_wdata[1]_i_4_n_0\,
      O => \s_axi_wdata[2]_i_1_n_0\
    );
\s_axi_wdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000047C6526000"
    )
        port map (
      I0 => \msg_indx_reg__0\(1),
      I1 => \msg_indx_reg__0\(0),
      I2 => \msg_indx_reg__0\(2),
      I3 => \msg_indx_reg__0\(3),
      I4 => \msg_indx_reg__0\(4),
      I5 => \msg_indx_reg__0\(5),
      O => \s_axi_wdata[2]_i_2_n_0\
    );
\s_axi_wdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF7FFFFFFFF"
    )
        port map (
      I0 => \bn_ascii_reg_n_0_\(2),
      I1 => \msg_indx_reg__0\(0),
      I2 => \msg_indx_reg__0\(1),
      I3 => \msg_indx_reg__0\(2),
      I4 => data6(2),
      I5 => \msg_indx_reg__0\(3),
      O => \s_axi_wdata[2]_i_3_n_0\
    );
\s_axi_wdata[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000037F7FFFF37F7"
    )
        port map (
      I0 => \bn_ascii_reg_n_0_\(58),
      I1 => \msg_indx_reg__0\(1),
      I2 => \msg_indx_reg__0\(0),
      I3 => \bn_ascii_reg_n_0_\(50),
      I4 => \msg_indx_reg__0\(2),
      I5 => \s_axi_wdata[2]_i_5_n_0\,
      O => \s_axi_wdata[2]_i_4_n_0\
    );
\s_axi_wdata[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(2),
      I1 => data4(2),
      I2 => \msg_indx_reg__0\(1),
      I3 => data3(2),
      I4 => \msg_indx_reg__0\(0),
      I5 => data2(2),
      O => \s_axi_wdata[2]_i_5_n_0\
    );
\s_axi_wdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4FFF44444444"
    )
        port map (
      I0 => \s_axi_wdata[4]_i_4_n_0\,
      I1 => \s_axi_wdata[3]_i_2_n_0\,
      I2 => \s_axi_wdata[3]_i_3_n_0\,
      I3 => \s_axi_wdata[3]_i_4_n_0\,
      I4 => \msg_indx_reg__0\(3),
      I5 => \s_axi_wdata[1]_i_4_n_0\,
      O => \s_axi_wdata[3]_i_1_n_0\
    );
\s_axi_wdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000046431202"
    )
        port map (
      I0 => \msg_indx_reg__0\(5),
      I1 => \msg_indx_reg__0\(4),
      I2 => \msg_indx_reg__0\(3),
      I3 => \msg_indx_reg__0\(2),
      I4 => \msg_indx_reg__0\(0),
      I5 => \msg_indx_reg__0\(1),
      O => \s_axi_wdata[3]_i_2_n_0\
    );
\s_axi_wdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF35FFFFFFFF"
    )
        port map (
      I0 => data6(3),
      I1 => \bn_ascii_reg_n_0_\(3),
      I2 => \msg_indx_reg__0\(0),
      I3 => \msg_indx_reg__0\(1),
      I4 => \msg_indx_reg__0\(2),
      I5 => \msg_indx_reg__0\(3),
      O => \s_axi_wdata[3]_i_3_n_0\
    );
\s_axi_wdata[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000037F7FFFF37F7"
    )
        port map (
      I0 => \bn_ascii_reg_n_0_\(59),
      I1 => \msg_indx_reg__0\(1),
      I2 => \msg_indx_reg__0\(0),
      I3 => \bn_ascii_reg_n_0_\(51),
      I4 => \msg_indx_reg__0\(2),
      I5 => \s_axi_wdata[3]_i_5_n_0\,
      O => \s_axi_wdata[3]_i_4_n_0\
    );
\s_axi_wdata[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data5(3),
      I1 => data4(3),
      I2 => \msg_indx_reg__0\(1),
      I3 => data3(3),
      I4 => \msg_indx_reg__0\(0),
      I5 => data2(3),
      O => \s_axi_wdata[3]_i_5_n_0\
    );
\s_axi_wdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010101010101"
    )
        port map (
      I0 => \WCS_reg_n_0_\(1),
      I1 => upg_rst_i_IBUF,
      I2 => \WCS_reg_n_0_\(2),
      I3 => uart_wen5_out,
      I4 => initFlag,
      I5 => \WCS_reg_n_0_\(0),
      O => s_axi_wdata
    );
\s_axi_wdata[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA20AAAA"
    )
        port map (
      I0 => \WCS_reg_n_0_\(0),
      I1 => \s_axi_wdata[4]_i_4_n_0\,
      I2 => \s_axi_wdata[4]_i_5_n_0\,
      I3 => \s_axi_wdata[4]_i_6_n_0\,
      I4 => initFlag,
      O => \s_axi_wdata[4]_i_2_n_0\
    );
\s_axi_wdata[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => upg_done_o_i_2_n_0,
      I1 => uart_wen_reg_n_0,
      I2 => rx_done_reg_n_0,
      O => uart_wen5_out
    );
\s_axi_wdata[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A8"
    )
        port map (
      I0 => \s_axi_wdata[1]_i_4_n_0\,
      I1 => \msg_indx_reg__0\(1),
      I2 => \msg_indx_reg__0\(2),
      I3 => \msg_indx_reg__0\(3),
      O => \s_axi_wdata[4]_i_4_n_0\
    );
\s_axi_wdata[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000009D584FF"
    )
        port map (
      I0 => \msg_indx_reg__0\(1),
      I1 => \msg_indx_reg__0\(0),
      I2 => \msg_indx_reg__0\(2),
      I3 => \msg_indx_reg__0\(4),
      I4 => \msg_indx_reg__0\(3),
      I5 => \msg_indx_reg__0\(5),
      O => \s_axi_wdata[4]_i_5_n_0\
    );
\s_axi_wdata[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888AAA888A8"
    )
        port map (
      I0 => \s_axi_wdata[1]_i_4_n_0\,
      I1 => \s_axi_wdata[5]_i_4_n_0\,
      I2 => \bn_ascii_reg_n_0_\(5),
      I3 => \s_axi_wdata[4]_i_7_n_0\,
      I4 => data6(5),
      I5 => \s_axi_wdata[4]_i_8_n_0\,
      O => \s_axi_wdata[4]_i_6_n_0\
    );
\s_axi_wdata[4]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \msg_indx_reg__0\(2),
      I1 => \msg_indx_reg__0\(1),
      I2 => \msg_indx_reg__0\(0),
      O => \s_axi_wdata[4]_i_7_n_0\
    );
\s_axi_wdata[4]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \msg_indx_reg__0\(3),
      I1 => \msg_indx_reg__0\(2),
      I2 => \msg_indx_reg__0\(1),
      O => \s_axi_wdata[4]_i_8_n_0\
    );
\s_axi_wdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4444"
    )
        port map (
      I0 => \s_axi_wdata[4]_i_4_n_0\,
      I1 => \s_axi_wdata[5]_i_2_n_0\,
      I2 => \s_axi_wdata[5]_i_3_n_0\,
      I3 => \s_axi_wdata[5]_i_4_n_0\,
      I4 => \s_axi_wdata[1]_i_4_n_0\,
      O => \s_axi_wdata[5]_i_1_n_0\
    );
\s_axi_wdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000FFF7FFFFF"
    )
        port map (
      I0 => \msg_indx_reg__0\(0),
      I1 => \msg_indx_reg__0\(1),
      I2 => \msg_indx_reg__0\(2),
      I3 => \msg_indx_reg__0\(3),
      I4 => \msg_indx_reg__0\(4),
      I5 => \msg_indx_reg__0\(5),
      O => \s_axi_wdata[5]_i_2_n_0\
    );
\s_axi_wdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF35FFFFFFFF"
    )
        port map (
      I0 => data6(5),
      I1 => \bn_ascii_reg_n_0_\(5),
      I2 => \msg_indx_reg__0\(0),
      I3 => \msg_indx_reg__0\(1),
      I4 => \msg_indx_reg__0\(2),
      I5 => \msg_indx_reg__0\(3),
      O => \s_axi_wdata[5]_i_3_n_0\
    );
\s_axi_wdata[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0455"
    )
        port map (
      I0 => \msg_indx_reg__0\(3),
      I1 => \msg_indx_reg__0\(2),
      I2 => \s_axi_wdata[5]_i_5_n_0\,
      I3 => \s_axi_wdata[5]_i_6_n_0\,
      O => \s_axi_wdata[5]_i_4_n_0\
    );
\s_axi_wdata[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05F5030305F5F3F3"
    )
        port map (
      I0 => data3(5),
      I1 => data2(5),
      I2 => \msg_indx_reg__0\(1),
      I3 => data5(5),
      I4 => \msg_indx_reg__0\(0),
      I5 => data4(5),
      O => \s_axi_wdata[5]_i_5_n_0\
    );
\s_axi_wdata[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF47FF"
    )
        port map (
      I0 => \bn_ascii_reg_n_0_\(53),
      I1 => \msg_indx_reg__0\(0),
      I2 => \bn_ascii_reg_n_0_\(61),
      I3 => \msg_indx_reg__0\(1),
      I4 => \msg_indx_reg__0\(2),
      O => \s_axi_wdata[5]_i_6_n_0\
    );
\s_axi_wdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010101"
    )
        port map (
      I0 => \WCS_reg_n_0_\(2),
      I1 => upg_rst_i_IBUF,
      I2 => \WCS_reg_n_0_\(1),
      I3 => \WCS_reg_n_0_\(0),
      I4 => initFlag,
      O => \s_axi_wdata[6]_i_1_n_0\
    );
\s_axi_wdata[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3A3A3A0A"
    )
        port map (
      I0 => \s_axi_wdata[6]_i_3_n_0\,
      I1 => \s_axi_wdata[6]_i_4_n_0\,
      I2 => \s_axi_wdata[4]_i_4_n_0\,
      I3 => \msg_indx_reg__0\(3),
      I4 => \s_axi_wdata[6]_i_5_n_0\,
      O => \s_axi_wdata[6]_i_2_n_0\
    );
\s_axi_wdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00DF00F8009E0704"
    )
        port map (
      I0 => \msg_indx_reg__0\(1),
      I1 => \msg_indx_reg__0\(0),
      I2 => \msg_indx_reg__0\(2),
      I3 => \msg_indx_reg__0\(5),
      I4 => \msg_indx_reg__0\(4),
      I5 => \msg_indx_reg__0\(3),
      O => \s_axi_wdata[6]_i_3_n_0\
    );
\s_axi_wdata[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000005300000000"
    )
        port map (
      I0 => \bn_ascii_reg_n_0_\(6),
      I1 => data6(6),
      I2 => \msg_indx_reg__0\(0),
      I3 => \msg_indx_reg__0\(1),
      I4 => \msg_indx_reg__0\(2),
      I5 => \msg_indx_reg__0\(3),
      O => \s_axi_wdata[6]_i_4_n_0\
    );
\s_axi_wdata[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAFEAE"
    )
        port map (
      I0 => \s_axi_wdata[6]_i_6_n_0\,
      I1 => data2(6),
      I2 => \msg_indx_reg__0\(0),
      I3 => data3(6),
      I4 => \msg_indx_reg__0\(1),
      I5 => \s_axi_wdata[6]_i_7_n_0\,
      O => \s_axi_wdata[6]_i_5_n_0\
    );
\s_axi_wdata[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A80FFFF"
    )
        port map (
      I0 => \msg_indx_reg__0\(1),
      I1 => data5(6),
      I2 => \msg_indx_reg__0\(0),
      I3 => data4(6),
      I4 => \msg_indx_reg__0\(2),
      O => \s_axi_wdata[6]_i_6_n_0\
    );
\s_axi_wdata[6]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00103010"
    )
        port map (
      I0 => \bn_ascii_reg_n_0_\(62),
      I1 => \msg_indx_reg__0\(2),
      I2 => \msg_indx_reg__0\(1),
      I3 => \msg_indx_reg__0\(0),
      I4 => \bn_ascii_reg_n_0_\(54),
      O => \s_axi_wdata[6]_i_7_n_0\
    );
\s_axi_wdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => s_axi_wdata,
      D => \s_axi_wdata[0]_i_1_n_0\,
      Q => \s_axi_wdata_reg_n_0_\(0),
      R => '0'
    );
\s_axi_wdata_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => s_axi_wdata,
      D => \s_axi_wdata[1]_i_1_n_0\,
      Q => \s_axi_wdata_reg_n_0_\(1),
      R => '0'
    );
\s_axi_wdata_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => s_axi_wdata,
      D => \s_axi_wdata[2]_i_1_n_0\,
      Q => \s_axi_wdata_reg_n_0_\(2),
      R => \s_axi_wdata[6]_i_1_n_0\
    );
\s_axi_wdata_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => s_axi_wdata,
      D => \s_axi_wdata[3]_i_1_n_0\,
      Q => \s_axi_wdata_reg_n_0_\(3),
      R => \s_axi_wdata[6]_i_1_n_0\
    );
\s_axi_wdata_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => s_axi_wdata,
      D => \s_axi_wdata[4]_i_2_n_0\,
      Q => \s_axi_wdata_reg_n_0_\(4),
      R => '0'
    );
\s_axi_wdata_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => s_axi_wdata,
      D => \s_axi_wdata[5]_i_1_n_0\,
      Q => \s_axi_wdata_reg_n_0_\(5),
      R => \s_axi_wdata[6]_i_1_n_0\
    );
\s_axi_wdata_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => s_axi_wdata,
      D => \s_axi_wdata[6]_i_2_n_0\,
      Q => \s_axi_wdata_reg_n_0_\(6),
      R => \s_axi_wdata[6]_i_1_n_0\
    );
\s_axi_wstrb[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2220AAAA"
    )
        port map (
      I0 => \WCS_reg_n_0_\(0),
      I1 => upg_done_o_i_2_n_0,
      I2 => uart_wen_reg_n_0,
      I3 => rx_done_reg_n_0,
      I4 => initFlag,
      O => \s_axi_wstrb[3]_i_1_n_0\
    );
\s_axi_wstrb_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => s_axi_wdata,
      D => \s_axi_wstrb[3]_i_1_n_0\,
      Q => s_axi_wstrb(3),
      R => '0'
    );
\statReg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s_axi_rdata(0),
      I1 => \statReg[0]_i_2_n_0\,
      I2 => rdStat,
      I3 => \RCS_reg_n_0_\(2),
      I4 => \statReg_reg_n_0_\(0),
      O => \statReg[0]_i_1_n_0\
    );
\statReg[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \RCS_reg_n_0_\(0),
      I1 => \RCS_reg_n_0_\(1),
      I2 => s_axi_rvalid,
      O => \statReg[0]_i_2_n_0\
    );
\statReg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => '1',
      CLR => upg_rst_i_IBUF,
      D => \statReg[0]_i_1_n_0\,
      Q => \statReg_reg_n_0_\(0)
    );
\uart_rdat[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => s_axi_rvalid,
      I1 => \RCS_reg_n_0_\(1),
      I2 => \RCS_reg_n_0_\(0),
      I3 => upg_rst_i_IBUF,
      I4 => \RCS_reg_n_0_\(2),
      I5 => rdStat,
      O => uart_rdat
    );
\uart_rdat_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => uart_rdat,
      D => s_axi_rdata(0),
      Q => \uart_rdat_reg_n_0_\(0),
      R => '0'
    );
\uart_rdat_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => uart_rdat,
      D => s_axi_rdata(1),
      Q => \uart_rdat_reg_n_0_\(1),
      R => '0'
    );
\uart_rdat_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => uart_rdat,
      D => s_axi_rdata(2),
      Q => \uart_rdat_reg_n_0_\(2),
      R => '0'
    );
\uart_rdat_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => uart_rdat,
      D => s_axi_rdata(3),
      Q => \uart_rdat_reg_n_0_\(3),
      R => '0'
    );
\uart_rdat_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => uart_rdat,
      D => s_axi_rdata(4),
      Q => \uart_rdat_reg_n_0_\(4),
      R => '0'
    );
\uart_rdat_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => uart_rdat,
      D => s_axi_rdata(5),
      Q => \uart_rdat_reg_n_0_\(5),
      R => '0'
    );
\uart_rdat_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => uart_rdat,
      D => s_axi_rdata(6),
      Q => \uart_rdat_reg_n_0_\(6),
      R => '0'
    );
\uart_rdat_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => uart_rdat,
      D => s_axi_rdata(7),
      Q => \uart_rdat_reg_n_0_\(7),
      R => '0'
    );
uart_wen_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => uart_wen5_out,
      I1 => upg_rst_i_IBUF,
      I2 => \WCS_reg_n_0_\(0),
      I3 => \WCS_reg_n_0_\(1),
      I4 => \WCS_reg_n_0_\(2),
      I5 => uart_wen_reg_n_0,
      O => uart_wen_i_1_n_0
    );
uart_wen_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => '1',
      CLR => upg_rst_i_IBUF,
      D => uart_wen_i_1_n_0,
      Q => uart_wen_reg_n_0
    );
\upg_adr_o[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \disp[2]_i_2_n_0\,
      I1 => upg_wen_o_i_4_n_0,
      I2 => upg_rst_i_IBUF,
      O => \upg_adr_o[14]_i_1_n_0\
    );
\upg_adr_o_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_adr_o_OBUF(0),
      O => upg_adr_o(0)
    );
\upg_adr_o_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_adr_o_OBUF(10),
      O => upg_adr_o(10)
    );
\upg_adr_o_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_adr_o_OBUF(11),
      O => upg_adr_o(11)
    );
\upg_adr_o_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_adr_o_OBUF(12),
      O => upg_adr_o(12)
    );
\upg_adr_o_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_adr_o_OBUF(13),
      O => upg_adr_o(13)
    );
\upg_adr_o_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_adr_o_OBUF(14),
      O => upg_adr_o(14)
    );
\upg_adr_o_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_adr_o_OBUF(1),
      O => upg_adr_o(1)
    );
\upg_adr_o_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_adr_o_OBUF(2),
      O => upg_adr_o(2)
    );
\upg_adr_o_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_adr_o_OBUF(3),
      O => upg_adr_o(3)
    );
\upg_adr_o_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_adr_o_OBUF(4),
      O => upg_adr_o(4)
    );
\upg_adr_o_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_adr_o_OBUF(5),
      O => upg_adr_o(5)
    );
\upg_adr_o_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_adr_o_OBUF(6),
      O => upg_adr_o(6)
    );
\upg_adr_o_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_adr_o_OBUF(7),
      O => upg_adr_o(7)
    );
\upg_adr_o_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_adr_o_OBUF(8),
      O => upg_adr_o(8)
    );
\upg_adr_o_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_adr_o_OBUF(9),
      O => upg_adr_o(9)
    );
\upg_adr_o_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => p_0_in(0),
      Q => upg_adr_o_OBUF(0)
    );
\upg_adr_o_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => p_0_in(10),
      Q => upg_adr_o_OBUF(10)
    );
\upg_adr_o_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => p_0_in(11),
      Q => upg_adr_o_OBUF(11)
    );
\upg_adr_o_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => p_0_in(12),
      Q => upg_adr_o_OBUF(12)
    );
\upg_adr_o_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => p_0_in(13),
      Q => upg_adr_o_OBUF(13)
    );
\upg_adr_o_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => p_0_in(14),
      Q => upg_adr_o_OBUF(14)
    );
\upg_adr_o_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => p_0_in(1),
      Q => upg_adr_o_OBUF(1)
    );
\upg_adr_o_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => p_0_in(2),
      Q => upg_adr_o_OBUF(2)
    );
\upg_adr_o_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => p_0_in(3),
      Q => upg_adr_o_OBUF(3)
    );
\upg_adr_o_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => p_0_in(4),
      Q => upg_adr_o_OBUF(4)
    );
\upg_adr_o_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => p_0_in(5),
      Q => upg_adr_o_OBUF(5)
    );
\upg_adr_o_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => p_0_in(6),
      Q => upg_adr_o_OBUF(6)
    );
\upg_adr_o_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => p_0_in(7),
      Q => upg_adr_o_OBUF(7)
    );
\upg_adr_o_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => p_0_in(8),
      Q => upg_adr_o_OBUF(8)
    );
\upg_adr_o_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => p_0_in(9),
      Q => upg_adr_o_OBUF(9)
    );
upg_clk_i_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => upg_clk_i_IBUF,
      O => upg_clk_i_IBUF_BUFG
    );
upg_clk_i_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => upg_clk_i,
      O => upg_clk_i_IBUF
    );
upg_clk_o_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => upg_clk_o_OBUF,
      O => upg_clk_o
    );
upg_clk_o_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => \disp_reg_n_0_\(1),
      I1 => upg_clk_o_OBUF_inst_i_2_n_0,
      I2 => \disp_reg_n_0_\(0),
      I3 => \disp_reg_n_0_\(7),
      I4 => \disp_reg_n_0_\(6),
      O => upg_clk_o_OBUF
    );
upg_clk_o_OBUF_inst_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \disp_reg_n_0_\(5),
      I1 => \disp_reg_n_0_\(2),
      I2 => \disp_reg_n_0_\(4),
      I3 => \disp_reg_n_0_\(3),
      O => upg_clk_o_OBUF_inst_i_2_n_0
    );
\upg_dat_o_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(0),
      O => upg_dat_o(0)
    );
\upg_dat_o_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(10),
      O => upg_dat_o(10)
    );
\upg_dat_o_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(11),
      O => upg_dat_o(11)
    );
\upg_dat_o_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(12),
      O => upg_dat_o(12)
    );
\upg_dat_o_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(13),
      O => upg_dat_o(13)
    );
\upg_dat_o_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(14),
      O => upg_dat_o(14)
    );
\upg_dat_o_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(15),
      O => upg_dat_o(15)
    );
\upg_dat_o_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(16),
      O => upg_dat_o(16)
    );
\upg_dat_o_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(17),
      O => upg_dat_o(17)
    );
\upg_dat_o_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(18),
      O => upg_dat_o(18)
    );
\upg_dat_o_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(19),
      O => upg_dat_o(19)
    );
\upg_dat_o_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(1),
      O => upg_dat_o(1)
    );
\upg_dat_o_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(20),
      O => upg_dat_o(20)
    );
\upg_dat_o_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(21),
      O => upg_dat_o(21)
    );
\upg_dat_o_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(22),
      O => upg_dat_o(22)
    );
\upg_dat_o_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(23),
      O => upg_dat_o(23)
    );
\upg_dat_o_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(24),
      O => upg_dat_o(24)
    );
\upg_dat_o_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(25),
      O => upg_dat_o(25)
    );
\upg_dat_o_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(26),
      O => upg_dat_o(26)
    );
\upg_dat_o_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(27),
      O => upg_dat_o(27)
    );
\upg_dat_o_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(28),
      O => upg_dat_o(28)
    );
\upg_dat_o_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(29),
      O => upg_dat_o(29)
    );
\upg_dat_o_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(2),
      O => upg_dat_o(2)
    );
\upg_dat_o_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(30),
      O => upg_dat_o(30)
    );
\upg_dat_o_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(31),
      O => upg_dat_o(31)
    );
\upg_dat_o_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(3),
      O => upg_dat_o(3)
    );
\upg_dat_o_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(4),
      O => upg_dat_o(4)
    );
\upg_dat_o_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(5),
      O => upg_dat_o(5)
    );
\upg_dat_o_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(6),
      O => upg_dat_o(6)
    );
\upg_dat_o_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(7),
      O => upg_dat_o(7)
    );
\upg_dat_o_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(8),
      O => upg_dat_o(8)
    );
\upg_dat_o_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => upg_dat_o_OBUF(9),
      O => upg_dat_o(9)
    );
\upg_dat_o_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(0),
      Q => upg_dat_o_OBUF(0)
    );
\upg_dat_o_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(2),
      Q => upg_dat_o_OBUF(10)
    );
\upg_dat_o_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(3),
      Q => upg_dat_o_OBUF(11)
    );
\upg_dat_o_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(4),
      Q => upg_dat_o_OBUF(12)
    );
\upg_dat_o_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(5),
      Q => upg_dat_o_OBUF(13)
    );
\upg_dat_o_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(6),
      Q => upg_dat_o_OBUF(14)
    );
\upg_dat_o_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(7),
      Q => upg_dat_o_OBUF(15)
    );
\upg_dat_o_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(8),
      Q => upg_dat_o_OBUF(16)
    );
\upg_dat_o_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(9),
      Q => upg_dat_o_OBUF(17)
    );
\upg_dat_o_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(10),
      Q => upg_dat_o_OBUF(18)
    );
\upg_dat_o_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(11),
      Q => upg_dat_o_OBUF(19)
    );
\upg_dat_o_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(1),
      Q => upg_dat_o_OBUF(1)
    );
\upg_dat_o_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(12),
      Q => upg_dat_o_OBUF(20)
    );
\upg_dat_o_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(13),
      Q => upg_dat_o_OBUF(21)
    );
\upg_dat_o_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(14),
      Q => upg_dat_o_OBUF(22)
    );
\upg_dat_o_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(15),
      Q => upg_dat_o_OBUF(23)
    );
\upg_dat_o_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(16),
      Q => upg_dat_o_OBUF(24)
    );
\upg_dat_o_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(17),
      Q => upg_dat_o_OBUF(25)
    );
\upg_dat_o_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(18),
      Q => upg_dat_o_OBUF(26)
    );
\upg_dat_o_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(19),
      Q => upg_dat_o_OBUF(27)
    );
\upg_dat_o_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(20),
      Q => upg_dat_o_OBUF(28)
    );
\upg_dat_o_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(21),
      Q => upg_dat_o_OBUF(29)
    );
\upg_dat_o_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(2),
      Q => upg_dat_o_OBUF(2)
    );
\upg_dat_o_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(22),
      Q => upg_dat_o_OBUF(30)
    );
\upg_dat_o_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(23),
      Q => upg_dat_o_OBUF(31)
    );
\upg_dat_o_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(3),
      Q => upg_dat_o_OBUF(3)
    );
\upg_dat_o_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(4),
      Q => upg_dat_o_OBUF(4)
    );
\upg_dat_o_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(5),
      Q => upg_dat_o_OBUF(5)
    );
\upg_dat_o_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(6),
      Q => upg_dat_o_OBUF(6)
    );
\upg_dat_o_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => \uart_rdat_reg_n_0_\(7),
      Q => upg_dat_o_OBUF(7)
    );
\upg_dat_o_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(0),
      Q => upg_dat_o_OBUF(8)
    );
\upg_dat_o_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \upg_adr_o[14]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => dbuf(1),
      Q => upg_dat_o_OBUF(9)
    );
upg_done_o_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => upg_done_o_OBUF,
      O => upg_done_o
    );
upg_done_o_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => upg_done_o_i_2_n_0,
      I1 => \WCS_reg_n_0_\(0),
      I2 => \WCS_reg_n_0_\(1),
      I3 => \WCS_reg_n_0_\(2),
      O => upg_done_o_i_1_n_0
    );
upg_done_o_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFEEEEEEE"
    )
        port map (
      I0 => \msg_indx_reg__1\(7),
      I1 => \msg_indx_reg__1\(6),
      I2 => \msg_indx_reg__0\(5),
      I3 => \msg_indx_reg__0\(2),
      I4 => \msg_indx_reg__0\(1),
      I5 => upg_done_o_i_3_n_0,
      O => upg_done_o_i_2_n_0
    );
upg_done_o_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \msg_indx_reg__0\(3),
      I1 => \msg_indx_reg__0\(4),
      O => upg_done_o_i_3_n_0
    );
upg_done_o_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => upg_done_o_i_1_n_0,
      CLR => upg_rst_i_IBUF,
      D => upg_done_o_i_2_n_0,
      Q => upg_done_o_OBUF
    );
upg_rst_i_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => upg_rst_i,
      O => upg_rst_i_IBUF
    );
upg_rx_i_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => upg_rx_i,
      O => upg_rx_i_IBUF
    );
upg_tx_o_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => upg_tx_o_OBUF,
      O => upg_tx_o
    );
upg_wen_o_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => upg_wen_o_OBUF,
      O => upg_wen_o
    );
upg_wen_o_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAB"
    )
        port map (
      I0 => rx_done,
      I1 => upg_rst_i_IBUF,
      I2 => upg_wen_o_i_4_n_0,
      I3 => \disp[2]_i_2_n_0\,
      O => upg_wen_o2_out
    );
upg_wen_o_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => upg_wen_o_i_4_n_0,
      I1 => \disp[2]_i_2_n_0\,
      O => upg_wen_o_i_2_n_0
    );
upg_wen_o_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAA8"
    )
        port map (
      I0 => upg_wen_o_i_5_n_0,
      I1 => \disp_reg_n_0_\(0),
      I2 => \disp_reg_n_0_\(7),
      I3 => \disp_reg_n_0_\(6),
      I4 => upg_rst_i_IBUF,
      O => rx_done
    );
upg_wen_o_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBBB0"
    )
        port map (
      I0 => rx_done_reg_n_0,
      I1 => recv_done_reg_n_0,
      I2 => \disp_reg_n_0_\(2),
      I3 => \disp_reg_n_0_\(3),
      I4 => upg_wen_o_i_6_n_0,
      O => upg_wen_o_i_4_n_0
    );
upg_wen_o_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002800000000"
    )
        port map (
      I0 => upg_clk_o_OBUF_inst_i_2_n_0,
      I1 => \disp_reg_n_0_\(0),
      I2 => \disp_reg_n_0_\(1),
      I3 => \disp_reg_n_0_\(7),
      I4 => \disp_reg_n_0_\(6),
      I5 => disp1,
      O => upg_wen_o_i_5_n_0
    );
upg_wen_o_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFFFE00FEFE"
    )
        port map (
      I0 => \disp_reg_n_0_\(7),
      I1 => \disp_reg_n_0_\(4),
      I2 => \disp_reg_n_0_\(6),
      I3 => rx_done_reg_n_0,
      I4 => recv_done_reg_n_0,
      I5 => \disp_reg_n_0_\(5),
      O => upg_wen_o_i_6_n_0
    );
upg_wen_o_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => upg_wen_o2_out,
      CLR => upg_rst_i_IBUF,
      D => upg_wen_o_i_2_n_0,
      Q => upg_wen_o_OBUF
    );
wr_byte_len_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555554"
    )
        port map (
      I0 => wr_byte_len_done_reg_n_0,
      I1 => wr_byte_len_done_i_2_n_0,
      I2 => \uart_rdat_reg_n_0_\(4),
      I3 => \uart_rdat_reg_n_0_\(3),
      I4 => \uart_rdat_reg_n_0_\(7),
      I5 => \uart_rdat_reg_n_0_\(0),
      O => wr_byte_len_done0
    );
wr_byte_len_done_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \uart_rdat_reg_n_0_\(6),
      I1 => \uart_rdat_reg_n_0_\(5),
      I2 => \uart_rdat_reg_n_0_\(2),
      I3 => \uart_rdat_reg_n_0_\(1),
      O => wr_byte_len_done_i_2_n_0
    );
wr_byte_len_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => \byte_len[7]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => wr_byte_len_done0,
      Q => wr_byte_len_done_reg_n_0
    );
wr_byte_num_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAA9555"
    )
        port map (
      I0 => \len_cnt_reg__0\(3),
      I1 => \len_cnt_reg__0\(0),
      I2 => \len_cnt_reg__0\(1),
      I3 => \len_cnt_reg__0\(2),
      I4 => \byte_len_reg_n_0_\(3),
      I5 => wr_byte_num_done_i_2_n_0,
      O => wr_byte_num_done0
    );
wr_byte_num_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF96F6FF6"
    )
        port map (
      I0 => \len_cnt_reg__0\(2),
      I1 => \byte_len_reg_n_0_\(2),
      I2 => \byte_len_reg_n_0_\(1),
      I3 => \len_cnt_reg__0\(1),
      I4 => \len_cnt_reg__0\(0),
      I5 => wr_byte_num_done_i_3_n_0,
      O => wr_byte_num_done_i_2_n_0
    );
wr_byte_num_done_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFF"
    )
        port map (
      I0 => \byte_len_reg_n_0_\(5),
      I1 => \byte_len_reg_n_0_\(4),
      I2 => \byte_len_reg_n_0_\(7),
      I3 => \byte_len_reg_n_0_\(6),
      I4 => \byte_len_reg_n_0_\(0),
      I5 => \len_cnt_reg__0\(0),
      O => wr_byte_num_done_i_3_n_0
    );
wr_byte_num_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rdStat_BUFG,
      CE => wr_byte_num_done,
      CLR => upg_rst_i_IBUF,
      D => wr_byte_num_done0,
      Q => wr_byte_num_done_reg_n_0
    );
\wwait_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wwait_cnt_reg_n_0_\(0),
      O => wwait_cnt(0)
    );
\wwait_cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wwait_cnt_reg[12]_i_2_n_6\,
      I1 => \wwait_cnt[15]_i_4_n_0\,
      O => wwait_cnt(10)
    );
\wwait_cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wwait_cnt_reg[12]_i_2_n_5\,
      I1 => \wwait_cnt[15]_i_4_n_0\,
      O => wwait_cnt(11)
    );
\wwait_cnt[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wwait_cnt_reg[12]_i_2_n_4\,
      I1 => \wwait_cnt[15]_i_4_n_0\,
      O => wwait_cnt(12)
    );
\wwait_cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wwait_cnt_reg[15]_i_3_n_7\,
      I1 => \wwait_cnt[15]_i_4_n_0\,
      O => wwait_cnt(13)
    );
\wwait_cnt[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wwait_cnt_reg[15]_i_3_n_6\,
      I1 => \wwait_cnt[15]_i_4_n_0\,
      O => wwait_cnt(14)
    );
\wwait_cnt[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \WCS_reg_n_0_\(0),
      I1 => \WCS_reg_n_0_\(1),
      I2 => \WCS_reg_n_0_\(2),
      O => \wwait_cnt[15]_i_1_n_0\
    );
\wwait_cnt[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wwait_cnt_reg[15]_i_3_n_5\,
      I1 => \wwait_cnt[15]_i_4_n_0\,
      O => wwait_cnt(15)
    );
\wwait_cnt[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \wwait_cnt[15]_i_5_n_0\,
      I1 => \wwait_cnt_reg_n_0_\(5),
      I2 => \wwait_cnt_reg_n_0_\(4),
      I3 => \wwait_cnt_reg_n_0_\(6),
      I4 => \wwait_cnt_reg_n_0_\(9),
      I5 => \wwait_cnt[15]_i_6_n_0\,
      O => \wwait_cnt[15]_i_4_n_0\
    );
\wwait_cnt[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \wwait_cnt_reg_n_0_\(7),
      I1 => \wwait_cnt_reg_n_0_\(0),
      I2 => \wwait_cnt_reg_n_0_\(3),
      I3 => \wwait_cnt_reg_n_0_\(2),
      O => \wwait_cnt[15]_i_5_n_0\
    );
\wwait_cnt[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \wwait_cnt_reg_n_0_\(12),
      I1 => \wwait_cnt_reg_n_0_\(13),
      I2 => \wwait_cnt_reg_n_0_\(1),
      I3 => \wwait_cnt_reg_n_0_\(15),
      I4 => \wwait_cnt[15]_i_7_n_0\,
      O => \wwait_cnt[15]_i_6_n_0\
    );
\wwait_cnt[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \wwait_cnt_reg_n_0_\(8),
      I1 => \wwait_cnt_reg_n_0_\(14),
      I2 => \wwait_cnt_reg_n_0_\(11),
      I3 => \wwait_cnt_reg_n_0_\(10),
      O => \wwait_cnt[15]_i_7_n_0\
    );
\wwait_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wwait_cnt_reg[4]_i_2_n_7\,
      I1 => \wwait_cnt[15]_i_4_n_0\,
      O => wwait_cnt(1)
    );
\wwait_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wwait_cnt_reg[4]_i_2_n_6\,
      I1 => \wwait_cnt[15]_i_4_n_0\,
      O => wwait_cnt(2)
    );
\wwait_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wwait_cnt_reg[4]_i_2_n_5\,
      I1 => \wwait_cnt[15]_i_4_n_0\,
      O => wwait_cnt(3)
    );
\wwait_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wwait_cnt_reg[4]_i_2_n_4\,
      I1 => \wwait_cnt[15]_i_4_n_0\,
      O => wwait_cnt(4)
    );
\wwait_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wwait_cnt_reg[8]_i_2_n_7\,
      I1 => \wwait_cnt[15]_i_4_n_0\,
      O => wwait_cnt(5)
    );
\wwait_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wwait_cnt_reg[8]_i_2_n_6\,
      I1 => \wwait_cnt[15]_i_4_n_0\,
      O => wwait_cnt(6)
    );
\wwait_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wwait_cnt_reg[8]_i_2_n_5\,
      I1 => \wwait_cnt[15]_i_4_n_0\,
      O => wwait_cnt(7)
    );
\wwait_cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wwait_cnt_reg[8]_i_2_n_4\,
      I1 => \wwait_cnt[15]_i_4_n_0\,
      O => wwait_cnt(8)
    );
\wwait_cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wwait_cnt_reg[12]_i_2_n_7\,
      I1 => \wwait_cnt[15]_i_4_n_0\,
      O => wwait_cnt(9)
    );
\wwait_cnt_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \wwait_cnt[15]_i_1_n_0\,
      D => wwait_cnt(0),
      PRE => upg_rst_i_IBUF,
      Q => \wwait_cnt_reg_n_0_\(0)
    );
\wwait_cnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \wwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => wwait_cnt(10),
      Q => \wwait_cnt_reg_n_0_\(10)
    );
\wwait_cnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \wwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => wwait_cnt(11),
      Q => \wwait_cnt_reg_n_0_\(11)
    );
\wwait_cnt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \wwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => wwait_cnt(12),
      Q => \wwait_cnt_reg_n_0_\(12)
    );
\wwait_cnt_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \wwait_cnt_reg[8]_i_2_n_0\,
      CO(3) => \wwait_cnt_reg[12]_i_2_n_0\,
      CO(2) => \wwait_cnt_reg[12]_i_2_n_1\,
      CO(1) => \wwait_cnt_reg[12]_i_2_n_2\,
      CO(0) => \wwait_cnt_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wwait_cnt_reg[12]_i_2_n_4\,
      O(2) => \wwait_cnt_reg[12]_i_2_n_5\,
      O(1) => \wwait_cnt_reg[12]_i_2_n_6\,
      O(0) => \wwait_cnt_reg[12]_i_2_n_7\,
      S(3 downto 0) => \wwait_cnt_reg_n_0_\(12 downto 9)
    );
\wwait_cnt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \wwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => wwait_cnt(13),
      Q => \wwait_cnt_reg_n_0_\(13)
    );
\wwait_cnt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \wwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => wwait_cnt(14),
      Q => \wwait_cnt_reg_n_0_\(14)
    );
\wwait_cnt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \wwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => wwait_cnt(15),
      Q => \wwait_cnt_reg_n_0_\(15)
    );
\wwait_cnt_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \wwait_cnt_reg[12]_i_2_n_0\,
      CO(3 downto 2) => \NLW_wwait_cnt_reg[15]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \wwait_cnt_reg[15]_i_3_n_2\,
      CO(0) => \wwait_cnt_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_wwait_cnt_reg[15]_i_3_O_UNCONNECTED\(3),
      O(2) => \wwait_cnt_reg[15]_i_3_n_5\,
      O(1) => \wwait_cnt_reg[15]_i_3_n_6\,
      O(0) => \wwait_cnt_reg[15]_i_3_n_7\,
      S(3) => '0',
      S(2 downto 0) => \wwait_cnt_reg_n_0_\(15 downto 13)
    );
\wwait_cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \wwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => wwait_cnt(1),
      Q => \wwait_cnt_reg_n_0_\(1)
    );
\wwait_cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \wwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => wwait_cnt(2),
      Q => \wwait_cnt_reg_n_0_\(2)
    );
\wwait_cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \wwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => wwait_cnt(3),
      Q => \wwait_cnt_reg_n_0_\(3)
    );
\wwait_cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \wwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => wwait_cnt(4),
      Q => \wwait_cnt_reg_n_0_\(4)
    );
\wwait_cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wwait_cnt_reg[4]_i_2_n_0\,
      CO(2) => \wwait_cnt_reg[4]_i_2_n_1\,
      CO(1) => \wwait_cnt_reg[4]_i_2_n_2\,
      CO(0) => \wwait_cnt_reg[4]_i_2_n_3\,
      CYINIT => \wwait_cnt_reg_n_0_\(0),
      DI(3 downto 0) => B"0000",
      O(3) => \wwait_cnt_reg[4]_i_2_n_4\,
      O(2) => \wwait_cnt_reg[4]_i_2_n_5\,
      O(1) => \wwait_cnt_reg[4]_i_2_n_6\,
      O(0) => \wwait_cnt_reg[4]_i_2_n_7\,
      S(3 downto 0) => \wwait_cnt_reg_n_0_\(4 downto 1)
    );
\wwait_cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \wwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => wwait_cnt(5),
      Q => \wwait_cnt_reg_n_0_\(5)
    );
\wwait_cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \wwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => wwait_cnt(6),
      Q => \wwait_cnt_reg_n_0_\(6)
    );
\wwait_cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \wwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => wwait_cnt(7),
      Q => \wwait_cnt_reg_n_0_\(7)
    );
\wwait_cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \wwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => wwait_cnt(8),
      Q => \wwait_cnt_reg_n_0_\(8)
    );
\wwait_cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \wwait_cnt_reg[4]_i_2_n_0\,
      CO(3) => \wwait_cnt_reg[8]_i_2_n_0\,
      CO(2) => \wwait_cnt_reg[8]_i_2_n_1\,
      CO(1) => \wwait_cnt_reg[8]_i_2_n_2\,
      CO(0) => \wwait_cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wwait_cnt_reg[8]_i_2_n_4\,
      O(2) => \wwait_cnt_reg[8]_i_2_n_5\,
      O(1) => \wwait_cnt_reg[8]_i_2_n_6\,
      O(0) => \wwait_cnt_reg[8]_i_2_n_7\,
      S(3 downto 0) => \wwait_cnt_reg_n_0_\(8 downto 5)
    );
\wwait_cnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => upg_clk_i_IBUF_BUFG,
      CE => \wwait_cnt[15]_i_1_n_0\,
      CLR => upg_rst_i_IBUF,
      D => wwait_cnt(9),
      Q => \wwait_cnt_reg_n_0_\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_bmpg_0_upg is
  port (
    upg_clk_o : out STD_LOGIC;
    upg_wen_o : out STD_LOGIC;
    upg_adr_o : out STD_LOGIC_VECTOR ( 14 downto 0 );
    upg_dat_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    upg_done_o : out STD_LOGIC;
    upg_tx_o : out STD_LOGIC;
    upg_clk_i : in STD_LOGIC;
    upg_rst_i : in STD_LOGIC;
    upg_rx_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_bmpg_0_upg : entity is "upg";
end uart_bmpg_0_upg;

architecture STRUCTURE of uart_bmpg_0_upg is
begin
upg_inst: entity work.uart_bmpg_0_uart_bmpg
     port map (
      upg_adr_o(14 downto 0) => upg_adr_o(14 downto 0),
      upg_clk_i => upg_clk_i,
      upg_clk_o => upg_clk_o,
      upg_dat_o(31 downto 0) => upg_dat_o(31 downto 0),
      upg_done_o => upg_done_o,
      upg_rst_i => upg_rst_i,
      upg_rx_i => upg_rx_i,
      upg_tx_o => upg_tx_o,
      upg_wen_o => upg_wen_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_bmpg_0 is
  port (
    upg_clk_i : in STD_LOGIC;
    upg_rst_i : in STD_LOGIC;
    upg_clk_o : out STD_LOGIC;
    upg_wen_o : out STD_LOGIC;
    upg_adr_o : out STD_LOGIC_VECTOR ( 14 downto 0 );
    upg_dat_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    upg_done_o : out STD_LOGIC;
    upg_rx_i : in STD_LOGIC;
    upg_tx_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of uart_bmpg_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of uart_bmpg_0 : entity is "uart_bmpg_0,upg,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of uart_bmpg_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of uart_bmpg_0 : entity is "upg,Vivado 2017.4";
end uart_bmpg_0;

architecture STRUCTURE of uart_bmpg_0 is
begin
inst: entity work.uart_bmpg_0_upg
     port map (
      upg_adr_o(14 downto 0) => upg_adr_o(14 downto 0),
      upg_clk_i => upg_clk_i,
      upg_clk_o => upg_clk_o,
      upg_dat_o(31 downto 0) => upg_dat_o(31 downto 0),
      upg_done_o => upg_done_o,
      upg_rst_i => upg_rst_i,
      upg_rx_i => upg_rx_i,
      upg_tx_o => upg_tx_o,
      upg_wen_o => upg_wen_o
    );
end STRUCTURE;
