##############################################################

#### DDR3
set_property PACKAGE_PIN W1   [get_ports {DDR3_ADDR[0]}]
set_property PACKAGE_PIN AA3  [get_ports {DDR3_ADDR[1]}]
set_property PACKAGE_PIN Y2   [get_ports {DDR3_ADDR[2]}]
set_property PACKAGE_PIN Y4   [get_ports {DDR3_ADDR[3]}]
set_property PACKAGE_PIN AB2  [get_ports {DDR3_ADDR[4]}]
set_property PACKAGE_PIN AB1  [get_ports {DDR3_ADDR[5]}]
set_property PACKAGE_PIN AA5  [get_ports {DDR3_ADDR[6]}]
set_property PACKAGE_PIN AA1  [get_ports {DDR3_ADDR[7]}]
set_property PACKAGE_PIN AB3  [get_ports {DDR3_ADDR[8]}]
set_property PACKAGE_PIN AB5  [get_ports {DDR3_ADDR[9]}]
set_property PACKAGE_PIN V2   [get_ports {DDR3_ADDR[10]}]
set_property PACKAGE_PIN AA6  [get_ports {DDR3_ADDR[11]}]
set_property PACKAGE_PIN Y6   [get_ports {DDR3_ADDR[12]}]
set_property PACKAGE_PIN AB6  [get_ports {DDR3_ADDR[13]}]
set_property PACKAGE_PIN AA4  [get_ports {DDR3_ADDR[14]}]
set_property IOSTANDARD  LVCMOS12 [get_ports {DDR3_ADDR[*]}]  

set_property PACKAGE_PIN F3   [get_ports {DDR3_D[0]}]
set_property PACKAGE_PIN G1   [get_ports {DDR3_D[1]}]
set_property PACKAGE_PIN A1   [get_ports {DDR3_D[2]}]
set_property PACKAGE_PIN H2   [get_ports {DDR3_D[3]}]
set_property PACKAGE_PIN F1   [get_ports {DDR3_D[4]}]
set_property PACKAGE_PIN J1   [get_ports {DDR3_D[5]}]
set_property PACKAGE_PIN C2   [get_ports {DDR3_D[6]}]
set_property PACKAGE_PIN G2   [get_ports {DDR3_D[7]}]
set_property PACKAGE_PIN H3   [get_ports {DDR3_D[8]}]
set_property PACKAGE_PIN D2   [get_ports {DDR3_D[9]}]
set_property PACKAGE_PIN K4   [get_ports {DDR3_D[10]}]
set_property PACKAGE_PIN B1   [get_ports {DDR3_D[11]}]
set_property PACKAGE_PIN H4   [get_ports {DDR3_D[12]}]
set_property PACKAGE_PIN B2   [get_ports {DDR3_D[13]}]
set_property PACKAGE_PIN J5   [get_ports {DDR3_D[14]}]
set_property PACKAGE_PIN G3   [get_ports {DDR3_D[15]}]
set_property PACKAGE_PIN J4   [get_ports {DDR3_D[16]}]
set_property PACKAGE_PIN P2   [get_ports {DDR3_D[17]}]
set_property PACKAGE_PIN K3   [get_ports {DDR3_D[18]}]
set_property PACKAGE_PIN N4   [get_ports {DDR3_D[19]}]
set_property PACKAGE_PIN P1   [get_ports {DDR3_D[20]}]
set_property PACKAGE_PIN R1   [get_ports {DDR3_D[21]}]
set_property PACKAGE_PIN K1   [get_ports {DDR3_D[22]}]
set_property PACKAGE_PIN N2   [get_ports {DDR3_D[23]}]
set_property PACKAGE_PIN N5   [get_ports {DDR3_D[24]}]
set_property PACKAGE_PIN M2   [get_ports {DDR3_D[25]}]
set_property PACKAGE_PIN L3   [get_ports {DDR3_D[26]}]
set_property PACKAGE_PIN L5   [get_ports {DDR3_D[27]}]
set_property PACKAGE_PIN M3   [get_ports {DDR3_D[28]}]
set_property PACKAGE_PIN K6   [get_ports {DDR3_D[29]}]
set_property PACKAGE_PIN P6   [get_ports {DDR3_D[30]}]
set_property PACKAGE_PIN M5   [get_ports {DDR3_D[31]}]
set_property IOSTANDARD  LVCMOS12 [get_ports {DDR3_D[*]}]  

set_property PACKAGE_PIN T1   [get_ports {DDR3_RAS}]
set_property PACKAGE_PIN U2   [get_ports {DDR3_CAS}]
set_property PACKAGE_PIN U1   [get_ports {DDR3_WE}]
set_property PACKAGE_PIN T5   [get_ports {DDR3_S0}]
set_property PACKAGE_PIN R6   [get_ports {DDR3_ODT}]
set_property PACKAGE_PIN W2   [get_ports {DDR3_SKE0}]
set_property PACKAGE_PIN AB7  [get_ports {DDR3_RESET}]

set_property PACKAGE_PIN Y3   [get_ports {DDR3_BA0}]
set_property PACKAGE_PIN Y1   [get_ports {DDR3_BA1}]
set_property PACKAGE_PIN W4   [get_ports {DDR3_BA2}]
#set_property IOSTANDARD  LVCMOS25 [get_ports {DDR3_BA*}]  

set_property PACKAGE_PIN H5   [get_ports {DDR3_DM0}]
set_property PACKAGE_PIN E2   [get_ports {DDR3_DM1}]
set_property PACKAGE_PIN M6   [get_ports {DDR3_DM2}]
set_property PACKAGE_PIN L4   [get_ports {DDR3_DM3}]
#set_property IOSTANDARD  LVCMOS25 [get_ports {DDR3_DM*}]  

set_property PACKAGE_PIN R3   [get_ports {DDR3_CLK_P}]
set_property PACKAGE_PIN R2   [get_ports {DDR3_CLK_N}]
set_property IOSTANDARD  LVDS [get_ports {DDR3_CLK*}]

set_property PACKAGE_PIN E1   [get_ports {DDR3_DQS_P0}]
set_property PACKAGE_PIN D1   [get_ports {DDR3_DQS_N0}]
set_property PACKAGE_PIN K2   [get_ports {DDR3_DQS_P1}]
set_property PACKAGE_PIN J2   [get_ports {DDR3_DQS_N1}]
set_property PACKAGE_PIN M1   [get_ports {DDR3_DQS_P2}]
set_property PACKAGE_PIN L1   [get_ports {DDR3_DQS_N2}]
set_property PACKAGE_PIN P5   [get_ports {DDR3_DQS_P3}]
set_property PACKAGE_PIN P4   [get_ports {DDR3_DQS_N3}]
set_property IOSTANDARD  LVDS [get_ports {DDR3_DQS*}]

# E3,N3  - VTTREF

#### Ethernet SGMII
set_property PACKAGE_PIN K17  [get_ports {SGMII_S_IN_P}]
set_property PACKAGE_PIN J17  [get_ports {SGMII_S_IN_N}]
set_property PACKAGE_PIN J14  [get_ports {SGMII_S_OUT_P}]
set_property PACKAGE_PIN H14  [get_ports {SGMII_S_OUT_N}]
set_property PACKAGE_PIN J15  [get_ports {SGMII_S_CLK_P}]
set_property PACKAGE_PIN H15  [get_ports {SGMII_S_CLK_N}]
set_property IOSTANDARD  LVDS [get_ports {SGMII_S*}]

#### Ethernet RGMII
set_property PACKAGE_PIN J21  [get_ports {RGMII_RXD[0]}]
set_property PACKAGE_PIN H20  [get_ports {RGMII_RXD[1]}]
set_property PACKAGE_PIN H17  [get_ports {RGMII_RXD[2]}]
set_property PACKAGE_PIN L16  [get_ports {RGMII_RXD[3]}]
set_property PACKAGE_PIN L14  [get_ports {RGMII_TXD[0]}]
set_property PACKAGE_PIN L18  [get_ports {RGMII_TXD[1]}]
set_property PACKAGE_PIN K21  [get_ports {RGMII_TXD[2]}]
set_property PACKAGE_PIN L21  [get_ports {RGMII_TXD[3]}]

set_property PACKAGE_PIN H22  [get_ports {RGMII_TXC}]
set_property PACKAGE_PIN J19  [get_ports {RGMII_TX_EN}]
set_property PACKAGE_PIN K22  [get_ports {RGMII_RXC}]
set_property PACKAGE_PIN J20  [get_ports {RGMII_RX_DV}]

#### Ethernet MDIO
set_property PACKAGE_PIN G16  [get_ports {ENET_MDC}]
set_property PACKAGE_PIN M21  [get_ports {ENET_MDIO}]

#### Ethernet control
set_property PACKAGE_PIN N22  [get_ports {ENET_INTn}]
set_property PACKAGE_PIN G18  [get_ports {ENET_125MHZ}]
set_property PACKAGE_PIN J22  [get_ports {ENET_RESETn}]

#### Ethernet noused
#set_property PACKAGE_PIN ?  [get_ports {PXY_RX_CLK}]
set_property PACKAGE_PIN G17  [get_ports {PXY_RX_ERR}]
set_property PACKAGE_PIN L20  [get_ports {ENET_TRSTn}]
set_property PACKAGE_PIN K19  [get_ports {PHY_COL}]
set_property PACKAGE_PIN H19  [get_ports {PHY_CRS}]

#### ADC0  ส5101อย04FI for channel A
set_property PACKAGE_PIN W15  [get_ports {ADC0_D[0]}]
set_property PACKAGE_PIN V14  [get_ports {ADC0_D[1]}]
set_property PACKAGE_PIN U15  [get_ports {ADC0_D[2]}]
set_property PACKAGE_PIN T15  [get_ports {ADC0_D[3]}]
set_property PACKAGE_PIN U16  [get_ports {ADC0_D[4]}]
set_property PACKAGE_PIN T16  [get_ports {ADC0_D[5]}]
set_property PACKAGE_PIN N18  [get_ports {ADC0_D[6]}]
set_property PACKAGE_PIN N19  [get_ports {ADC0_D[7]}]
set_property PACKAGE_PIN V15  [get_ports {ADC0_D[8]}]
set_property PACKAGE_PIN M22  [get_ports {ADC0_D[9]}]
set_property PACKAGE_PIN N20  [get_ports {ADC0_D[10]}]
set_property PACKAGE_PIN K18  [get_ports {ADC0_D[11]}]
set_property PACKAGE_PIN M18  [get_ports {ADC0_D[12]}]
set_property PACKAGE_PIN W16  [get_ports {ADC0_D[13]}]
set_property PACKAGE_PIN AB17 [get_ports {ADC0_D[14]}]
set_property PACKAGE_PIN Y17  [get_ports {ADC0_D[15]}]
set_property IOSTANDARD  LVCMOS25 [get_ports {ADC0_D[*]}]  

set_property PACKAGE_PIN W14  [get_ports {ADC0_DCO}]
set_property PACKAGE_PIN Y14  [get_ports {ADC0_CSn}]
set_property PACKAGE_PIN M16  [get_ports {ADC0_OR}]

set_property PACKAGE_PIN W12  [get_ports {ADC0_CLK_P}]
set_property PACKAGE_PIN W11  [get_ports {ADC0_CLK_N}]

set_property IOSTANDARD  LVDS     [get_ports {ADC0_CLK_P}]
set_property IOSTANDARD  LVDS     [get_ports {ADC0_CLK_N}]

#### ADC1  ส5101อย04FI for channel B
set_property PACKAGE_PIN AA16 [get_ports {ADC1_D[0]}]
set_property PACKAGE_PIN AB15 [get_ports {ADC1_D[1]}]
set_property PACKAGE_PIN AA15 [get_ports {ADC1_D[2]}]
set_property PACKAGE_PIN AA14 [get_ports {ADC1_D[3]}]
set_property PACKAGE_PIN V13  [get_ports {ADC1_D[4]}]
set_property PACKAGE_PIN AB13 [get_ports {ADC1_D[5]}]
set_property PACKAGE_PIN AA13 [get_ports {ADC1_D[6]}]
set_property PACKAGE_PIN Y13  [get_ports {ADC1_D[7]}]
set_property PACKAGE_PIN AB12 [get_ports {ADC1_D[8]}]
set_property PACKAGE_PIN Y11  [get_ports {ADC1_D[9]}]
set_property PACKAGE_PIN AB11 [get_ports {ADC1_D[10]}]
set_property PACKAGE_PIN AA11 [get_ports {ADC1_D[11]}]
set_property PACKAGE_PIN AB10 [get_ports {ADC1_D[12]}]
set_property PACKAGE_PIN AA10 [get_ports {ADC1_D[13]}]
set_property PACKAGE_PIN K14  [get_ports {ADC1_D[14]}]
set_property PACKAGE_PIN K13  [get_ports {ADC1_D[15]}]

set_property PACKAGE_PIN AB16 [get_ports {ADC1_DCO}]
set_property PACKAGE_PIN Y12  [get_ports {ADC1_CSn}]
set_property PACKAGE_PIN AA9  [get_ports {ADC1_OR}]

set_property PACKAGE_PIN V10  [get_ports {ADC1_CLK_P[1]}]
set_property PACKAGE_PIN W10  [get_ports {ADC1_CLK_N[1]}]

set_property IOSTANDARD  LVCMOS25 [get_ports {ADC1_D0[*]}]  
set_property IOSTANDARD  LVDS     [get_ports {ADC1_CLK_P[1]}]
set_property IOSTANDARD  LVDS     [get_ports {ADC1_CLK_N[1]}]

#### ADC common control
set_property PACKAGE_PIN Y16   [get_ports {ADC_PWR}]
set_property PACKAGE_PIN T14   [get_ports {ADC_RESn}]
set_property PACKAGE_PIN M15   [get_ports {ADC_SDIO}]
set_property PACKAGE_PIN Y7    [get_ports {ADC_SDA}]
set_property PACKAGE_PIN Y8    [get_ports {ADC_SCL}]
set_property PACKAGE_PIN V3    [get_ports {ADC_LDAC}]
set_property PACKAGE_PIN W6    [get_ports {ADC_INT}]
set_property PACKAGE_PIN W5    [get_ports {ADC_HV_EN}]

#### USB 2.0  USB3300-EZK 
set_property PACKAGE_PIN AB21  [get_ports {USB_DATA[0]}]
set_property PACKAGE_PIN AB22  [get_ports {USB_DATA[1]}]
set_property PACKAGE_PIN AA21  [get_ports {USB_DATA[2]}]
set_property PACKAGE_PIN Y22   [get_ports {USB_DATA[3]}]
set_property PACKAGE_PIN Y21   [get_ports {USB_DATA[4]}]
set_property PACKAGE_PIN W22   [get_ports {USB_DATA[5]}]
set_property PACKAGE_PIN W21   [get_ports {USB_DATA[6]}]
set_property PACKAGE_PIN V22   [get_ports {USB_DATA[7]}]

set_property PACKAGE_PIN R22   [get_ports {USB_NXP}]
set_property PACKAGE_PIN R21   [get_ports {USB_DIR}]
set_property PACKAGE_PIN U22   [get_ports {USB_STP}]
set_property PACKAGE_PIN P20   [get_ports {USB_RES}]
set_property PACKAGE_PIN W20   [get_ports {USB_24MHZ}]
set_property PACKAGE_PIN U21   [get_ports {USB_SCK}]

#### CAN BUS MCP2542WFD
set_property PACKAGE_PIN T20   [get_ports {CAN_TX}]
set_property PACKAGE_PIN T19   [get_ports {CAN_RX}]
set_property PACKAGE_PIN P17   [get_ports {CAN_STB}]

#### BISS 
set_property PACKAGE_PIN N17   [get_ports {BISS1_DATA}]
set_property PACKAGE_PIN P15   [get_ports {BISS1_CLK}]
set_property PACKAGE_PIN N15   [get_ports {BISS2_DATA}]
set_property PACKAGE_PIN N14   [get_ports {BISS2_CLK}]
set_property PACKAGE_PIN U6    [get_ports {BISS_ZPNT}]

#### USB-UART  FT232R
set_property PACKAGE_PIN AA20  [get_ports {UART_TX}]
set_property PACKAGE_PIN AA19  [get_ports {UART_RX}]

#### Camera 
set_property PACKAGE_PIN C22   [get_ports {CAM_MD_P0}]
set_property PACKAGE_PIN B22   [get_ports {CAM_MD_N0}]
set_property PACKAGE_PIN A13   [get_ports {CAM_MD_P1}]
set_property PACKAGE_PIN A14   [get_ports {CAM_MD_N1}]
set_property PACKAGE_PIN A18   [get_ports {CAM_MD_P2}]
set_property PACKAGE_PIN A19   [get_ports {CAM_MD_N2}]
set_property PACKAGE_PIN A15   [get_ports {CAM_MD_P3}]
set_property PACKAGE_PIN A16   [get_ports {CAM_MD_N3}]
set_property PACKAGE_PIN E22   [get_ports {CAM_MC_P}]
set_property PACKAGE_PIN B22   [get_ports {CAM_MC_N}]

set_property PACKAGE_PIN B21   [get_ports {CAM_RES}]
set_property PACKAGE_PIN A21   [get_ports {CAM_FSTROB}]
set_property PACKAGE_PIN A20   [get_ports {CAM_MCLK}]
set_property PACKAGE_PIN G20   [get_ports {CAM_PWR_EN}]
set_property PACKAGE_PIN AB8   [get_ports {CAM_SDA}]
set_property PACKAGE_PIN Y9    [get_ports {CAM_SCL}]

#### Laser control
set_property PACKAGE_PIN P22   [get_ports {LASER_SHDN}]
set_property PACKAGE_PIN P21   [get_ports {LASER_DISABLE}]
set_property PACKAGE_PIN AB20  [get_ports {LASER_EN_POW}]
set_property PACKAGE_PIN N13   [get_ports {LASER_LVDS}]
set_property PACKAGE_PIN W7    [get_ports {LASER_SDA}]
set_property PACKAGE_PIN V8    [get_ports {LASER_SCL}]

#### Other shit.
set_property PACKAGE_PIN W9    [get_ports {EXTERN_SDA}]
set_property PACKAGE_PIN AA8   [get_ports {EXTERN_SCL}]
set_property PACKAGE_PIN V7    [get_ports {LED_1}]
set_property PACKAGE_PIN Y19   [get_ports {USER_OUT}]

set_property PACKAGE_PIN R4    [get_ports {SYS_CLK_P}]
set_property PACKAGE_PIN T4    [get_ports {SYS_CLK_N}]

#set_property PACKAGE_PIN ?    [get_ports {ADC0_DCO}]
#set_property PACKAGE_PIN ?    [get_ports {ADC0_DCO}]
#set_property IOSTANDARD   LVDS   [get_ports {ADC_DA_P[2]}]
#set_property IOSTANDARD   LVDS   [get_ports {ADC_DA_N[2]}]

#set_property OFFCHIP_TERM NONE [get_ports ADC_LED_GREEN]
#set_property OFFCHIP_TERM NONE [get_ports SDIO_CMD]
#set_property OFFCHIP_TERM NONE [get_ports SM_FAN_PWM]
#set_property OFFCHIP_TERM NONE [get_ports ADC_SYNCB[0]]

#set_property PULLUP true [get_ports ADC_LED_GREEN]
#set_property DRIVE 16 [get_ports {ADC_SYNCB[0]}]
#set_property SLEW SLOW [get_ports {ADC_SYNCB[0]}]
#set_property OUTPUT_IMPEDANCE RDRV_40_40 [get_ports {ADC_SYNCB[0]}]

# Set +/- 0.5ns between the rising edges of the clock and sysref
#set_input_delay -clock jesd204_0_refclk -max  0.5   [get_ports ADC_FPGA_JESD_SYSREF_P]
#set_input_delay -clock jesd204_0_refclk -min -0.5   [get_ports ADC_FPGA_JESD_SYSREF_P]

# REFCLK period is 6.4 ns (6.25 Gb/s line rate).
# SYSREF input delay = ฑ0.5 ns.

#create_clock -period 4.000 -name CLK_AB_P -waveform {1.000 2.000} [get_ports CLK_AB_P]
#create_clock -period 4.000 -name CLK_CD_P -waveform {1.000 2.000} [get_ports CLK_CD_P]
#create_clock -period 4.000 -name CLK_EF_P -waveform {1.000 2.000} [get_ports CLK_EF_P]
#create_clock -period 4.000 -name CLK_GH_P -waveform {1.000 2.000} [get_ports CLK_GH_P]
##create_clock -period 4.000 -name EXT_CLOCK_P -waveform {1.000 2.000} [get_ports EXT_CLOCK_P]

#set_input_delay -clock [get_clocks CLK_AB_P] 2.000 [get_ports -filter { NAME =~  "*ADC_CHA_*" && DIRECTION == "IN" }]
#set_input_delay -clock [get_clocks CLK_CD_P] 2.000 [get_ports -filter { NAME =~  "*ADC_CHC_*" && DIRECTION == "IN" }]
#set_input_delay -clock [get_clocks CLK_EF_P] 2.000 [get_ports -filter { NAME =~  "*ADC_CHE_*" && DIRECTION == "IN" }]
#set_input_delay -clock [get_clocks CLK_GH_P] 2.000 [get_ports -filter { NAME =~  "*ADC_CHG_*" && DIRECTION == "IN" }]

#set_output_delay -clock [get_clocks -of_objects [get_pins base_zynq_i/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT3]] 5.000 [get_ports AD9510_N_CS]
#set_output_delay -clock [get_clocks -of_objects [get_pins base_zynq_i/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT3]] 5.000 [get_ports AD9510_SCLK]
#set_output_delay -clock [get_clocks -of_objects [get_pins base_zynq_i/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT3]] 5.000 [get_ports AD9510_SDATA]
#set_output_delay -clock [get_clocks -of_objects [get_pins base_zynq_i/clk_wiz_0/inst/mmcm_adv_inst/CLKOUT3]] 5.000 [get_ports RES_G2]

#create_clock -period 2.500 -name ADC_FPGA_JESD_CLK [get_ports {ADC_FPGA_JESD_CLK_P ADC_FPGA_JESD_CLK_N}]
#set_property IOSTANDARD LVDS [get_ports ADC_FPGA_JESD_SYSREF_P]
#set_property IOSTANDARD LVDS [get_ports ADC_FPGA_JESD_SYSREF_N]
#create_clock -period 2.500 -name ADC_FPGA_JESD_SYSREF [get_ports {ADC_FPGA_JESD_SYSREF_P ADC_FPGA_JESD_SYSREF_N}]
#set_property IOSTANDARD LVDS [get_ports ADC_CLK_LAO_P]
#set_property IOSTANDARD LVDS [get_ports ADC_CLK_LAO_N]
#create_clock -period 1000.000 -name ADC_CLK_LAO [get_ports {ADC_CLK_LAO_P ADC_CLK_LAO_N}]
#set_property IOSTANDARD LVDS [get_ports {ADC_SYNCB_P[0]}]
#set_property IOSTANDARD LVDS [get_ports {ADC_SYNCB_N[0]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {ADC_SYNCB[0]}]
#set_property IOSTANDARD LVCMOS18 [get_ports ADC_LED_GREEN]
#set_property SLEW SLOW [get_ports ADC_LED_GREEN]
#
####################################################################################

