# NOTE: this is copied from nexys-a7-100t configuration
# I am not sure what the correct settings are!
set_property BITSTREAM.CONFIG.UNUSEDPIN pulldown [current_design]
set_property BITSTREAM.GENERAL.COMPRESS true [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## Clock Signal
set_property -dict { PACKAGE_PIN R3 IOSTANDARD LVDS_25 } [get_ports sys_diff_clock_clk_p]
set_property -dict { PACKAGE_PIN P3 IOSTANDARD LVDS_25 } [get_ports sys_diff_clock_clk_n]
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets riscv_i/clk_wiz_0/inst/clk_in1_riscv_clk_wiz_0_0]
create_clock -name sys_clk_pin -period 5.00 [get_ports sys_diff_clock]

## Reset button
set_property -dict { PACKAGE_PIN U4 IOSTANDARD SSTL15 } [get_ports reset];

#[Place 30-575] Sub-optimal placement for a clock-capable IO pin and MMCM pair. If this sub optimal condition is acceptable for this design, you may use the CLOCK_DEDICATED_ROUTE constraint in the .xdc file to demote this message to a WARNING. However, the use of this override is highly discouraged. These examples can be used directly in the .xdc file to override this clock rule.
#	< set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets riscv_i/clk_wiz_0/inst/clk_in1_riscv_clk_wiz_0_0] >

#	riscv_i/clk_wiz_0/inst/clkin1_ibufgds (IBUFDS.O) is locked to IOB_X1Y124
#	 riscv_i/clk_wiz_0/inst/mmcm_adv_inst (MMCME2_ADV.CLKIN1) is provisionally placed by clockplacer on MMCME2_ADV_X1Y3

#	The above error could possibly be related to other connected instances. Following is a list of 
#	all the related clock rules and their respective instances.

#	Clock Rule: rule_mmcm_bufg
#	Status: PASS 
#	Rule Description: An MMCM driving a BUFG must be placed on the same half side (top/bottom) of the device
#	 riscv_i/clk_wiz_0/inst/mmcm_adv_inst (MMCME2_ADV.CLKOUT0) is provisionally placed by clockplacer on MMCME2_ADV_X1Y3
#	 riscv_i/clk_wiz_0/inst/clkout1_buf (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y31

#	Clock Rule: rule_mmcm_mmcm
#	Status: PASS 
#	Rule Description: An MMCM driving an MMCM must be in the same CMT column, and they are adjacent to
#	each other (vertically), if the  CLOCK_DEDICATED_ROUTE=BACKBONE constraint is NOT set
#	 riscv_i/clk_wiz_0/inst/mmcm_adv_inst (MMCME2_ADV.CLKFBOUT) is provisionally placed by clockplacer on MMCME2_ADV_X1Y3
#	 and riscv_i/clk_wiz_0/inst/mmcm_adv_inst (MMCME2_ADV.CLKFBIN) is provisionally placed by clockplacer on MMCME2_ADV_X1Y3


