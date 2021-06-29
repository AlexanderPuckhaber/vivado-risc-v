# UART
# xc707
# set_property -dict {PACKAGE_PIN AU36 IOSTANDARD LVCMOS18} [get_ports rs232_uart_txd]
# set_property -dict {PACKAGE_PIN AU33 IOSTANDARD LVCMOS18} [get_ports rs232_uart_rxd]
# set_property -dict {PACKAGE_PIN AT32 IOSTANDARD LVCMOS18} [get_ports rs232_uart_ctsn]
# set_property -dict {PACKAGE_PIN AR34 IOSTANDARD LVCMOS18} [get_ports rs232_uart_rtsn]

# from zc706 master constraints file https://github.com/fpgadeveloper/zc706-bsb/blob/master/EDK/data/ps7_constraints.xdc
#  UART 1 / rx / MIO[49]
set_property iostandard "LVCMOS18" [get_ports rs232_uart_txd]
set_property PACKAGE_PIN "D18" [get_ports rs232_uart_txd]
set_property slew "slow" [get_ports rs232_uart_txd]
set_property drive "8" [get_ports rs232_uart_txd]
set_property PIO_DIRECTION "INPUT" [get_ports rs232_uart_txd]
#  UART 1 / tx / MIO[48]
set_property iostandard "LVCMOS18" [get_ports rs232_uart_rxd]
set_property PACKAGE_PIN "C19" [get_ports rs232_uart_rxd]
set_property slew "slow" [get_ports rs232_uart_rxd]
set_property drive "8" [get_ports rs232_uart_rxd]
set_property PIO_DIRECTION "OUTPUT" [get_ports rs232_uart_rxd]

# NOTE: for some reason, Input is txd and Output is rxd (it's like that in vc707 config)

# Also, the manual says that there are only 2 pins for UART. This is similar to the configuration for the vcu1525, so look at that maybe
# there will very likely be changes to the tcl script...
