# SDIO
# updated based on ac701 manual
set_property -dict { PACKAGE_PIN N24  IOSTANDARD LVCMOS33 IOB TRUE } [get_ports { sdio_clk }];
set_property -dict { PACKAGE_PIN N23  IOSTANDARD LVCMOS33 IOB TRUE } [get_ports { sdio_cmd }];
set_property -dict { PACKAGE_PIN P19  IOSTANDARD LVCMOS33 IOB TRUE } [get_ports { sdio_dat[0] }];
set_property -dict { PACKAGE_PIN N19  IOSTANDARD LVCMOS33 IOB TRUE } [get_ports { sdio_dat[1] }];
set_property -dict { PACKAGE_PIN P23  IOSTANDARD LVCMOS33 IOB TRUE } [get_ports { sdio_dat[2] }];
set_property -dict { PACKAGE_PIN P21  IOSTANDARD LVCMOS33 IOB TRUE } [get_ports { sdio_dat[3] }];
# card detect
set_property -dict { PACKAGE_PIN P24  IOSTANDARD LVCMOS33 } [get_ports { sdio_cd }];
