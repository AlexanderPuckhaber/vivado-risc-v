# UART
#nexys-a7-100t pins (IOSTANDARD has been changed)
# set_property -dict {PACKAGE_PIN D4  IOSTANDARD LVCMOS18} [get_ports rs232_uart_txd]
# set_property -dict {PACKAGE_PIN C4  IOSTANDARD LVCMOS18} [get_ports rs232_uart_rxd]
# set_property -dict {PACKAGE_PIN E5  IOSTANDARD LVCMOS18} [get_ports rs232_uart_ctsn]
# set_property -dict {PACKAGE_PIN D3  IOSTANDARD LVCMOS18} [get_ports rs232_uart_rtsn]

# updated based on manual; note that signal names correspond to pin Function, not net name
set_property -dict {PACKAGE_PIN U19  IOSTANDARD LVCMOS18} [get_ports rs232_uart_txd]
set_property -dict {PACKAGE_PIN T19  IOSTANDARD LVCMOS18} [get_ports rs232_uart_rxd]
set_property -dict {PACKAGE_PIN V19  IOSTANDARD LVCMOS18} [get_ports rs232_uart_ctsn]
set_property -dict {PACKAGE_PIN W19  IOSTANDARD LVCMOS18} [get_ports rs232_uart_rtsn]
