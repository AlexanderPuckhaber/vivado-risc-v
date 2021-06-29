# set_property BITSTREAM.CONFIG.UNUSEDPIN pulldown [current_design]
# set_property BITSTREAM.GENERAL.COMPRESS true [current_design]
# set_property BITSTREAM.CONFIG.BPI_SYNC_MODE Type1 [current_design]
# set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN div-1 [current_design]
# set_property CONFIG_MODE BPI16 [current_design]
# set_property CONFIG_VOLTAGE 1.8 [current_design]
# set_property CFGBVS GND [current_design]

# # SYSCLK 200MHz
# set_property -dict { PACKAGE_PIN E19 IOSTANDARD LVDS } [get_ports sys_diff_clock_clk_p]
# set_property -dict { PACKAGE_PIN E18 IOSTANDARD LVDS } [get_ports sys_diff_clock_clk_n]
# set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets -of_objects [get_pins -hier clk_wiz_0/clk_in1]]
# create_clock -period 5.000 -name sys_clock_bufds [get_pins -hier clk_wiz_0/clk_in1]

# # Reset
# set_property -dict { PACKAGE_PIN AV40 IOSTANDARD LVCMOS18 } [get_ports reset]

# # Cooling fan
# set_property -dict { PACKAGE_PIN BA37 IOSTANDARD LVCMOS18 } [get_ports fan_en]
# #set_property -dict { PACKAGE_PIN BB37 IOSTANDARD LVCMOS18 } [get_ports fan_tach]

set_property BITSTREAM.CONFIG.UNUSEDPIN pulldown [current_design]
set_property BITSTREAM.GENERAL.COMPRESS true [current_design]
set_property BITSTREAM.CONFIG.BPI_SYNC_MODE Type1 [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN div-1 [current_design]
set_property CONFIG_MODE BPI16 [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property CFGBVS GND [current_design]

# SYSCLK 200MHz
# H9 and G9 from manual
set_property -dict { PACKAGE_PIN H9 IOSTANDARD LVDS } [get_ports sys_diff_clock_clk_p]
set_property -dict { PACKAGE_PIN G9 IOSTANDARD LVDS } [get_ports sys_diff_clock_clk_n]
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets -of_objects [get_pins -hier clk_wiz_0/clk_in1]]
create_clock -period 10.000 -name sys_clock_bufds [get_pins -hier clk_wiz_0/clk_in1]

# Reset
# TODO: find reset pin in manual (A8 LVCMOS15)
set_property -dict { PACKAGE_PIN A8 IOSTANDARD LVCMOS15 } [get_ports reset]

# Cooling fan
# TODO: find cooling fan pin in manual

# The fan turns on when the ZC706 is powered up due to pull-up resistor R369. The
# SM_FAN_PWM and SM_FAN_TACH signals are wired to XC7Z045 SoC U1 pins AB19 and
# AA19 respectively, enabling the user to implement their own fan speed control IP in the SoC
# PL logic.

set_property -dict { PACKAGE_PIN AB19 IOSTANDARD LVCMOS18 } [get_ports fan_en]
#set_property -dict { PACKAGE_PIN AA19 IOSTANDARD LVCMOS18 } [get_ports fan_tach]
