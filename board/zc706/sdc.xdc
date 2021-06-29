# SDIO
# set_property -dict { PACKAGE_PIN AN30  IOSTANDARD LVCMOS18  IOB TRUE } [get_ports {sdio_clk}]
# set_property -dict { PACKAGE_PIN AP30  IOSTANDARD LVCMOS18  IOB TRUE } [get_ports {sdio_cmd}]
# set_property -dict { PACKAGE_PIN AR30  IOSTANDARD LVCMOS18  IOB TRUE } [get_ports {sdio_dat[0]}]
# set_property -dict { PACKAGE_PIN AU31  IOSTANDARD LVCMOS18  IOB TRUE } [get_ports {sdio_dat[1]}]
# set_property -dict { PACKAGE_PIN AV31  IOSTANDARD LVCMOS18  IOB TRUE } [get_ports {sdio_dat[2]}]
# set_property -dict { PACKAGE_PIN AT30  IOSTANDARD LVCMOS18  IOB TRUE } [get_ports {sdio_dat[3]}]
# set_property -dict { PACKAGE_PIN AP32  IOSTANDARD LVCMOS18 } [get_ports {sdio_cd}]
# Note: card detect does not work on VC707 due to error in the VC707 schematics

# zc706
# note: idk what LVCMOS18 is but i hope it satisfies this from the zc706 manual:

# The SDIO signals are connected to XC7Z045 SoC PS bank 501 which has its VCCMIO set to
# 1.8V. A MAX13035E high-speed logic-level translator (U11) is used between XC7Z045 SoC
# 1.8V PS bank 501 and the 3.3V SD card connector (J30).

set_property -dict { PACKAGE_PIN B20  IOSTANDARD LVCMOS18  IOB TRUE } [get_ports {sdio_clk}]
set_property -dict { PACKAGE_PIN J18  IOSTANDARD LVCMOS18  IOB TRUE } [get_ports {sdio_cmd}]
set_property -dict { PACKAGE_PIN D20  IOSTANDARD LVCMOS18  IOB TRUE } [get_ports {sdio_dat[0]}]
set_property -dict { PACKAGE_PIN E18  IOSTANDARD LVCMOS18  IOB TRUE } [get_ports {sdio_dat[1]}]
set_property -dict { PACKAGE_PIN E20  IOSTANDARD LVCMOS18  IOB TRUE } [get_ports {sdio_dat[2]}]
# what is this? in the manual there is no DAT3, only CD_DAT3
set_property -dict { PACKAGE_PIN H18  IOSTANDARD LVCMOS18  IOB TRUE } [get_ports {sdio_dat[3]}]
