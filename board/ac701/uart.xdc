# UART
# updated based on manual; note that signal names correspond to pin Function, not net name
set_property -dict {PACKAGE_PIN U19  IOSTANDARD LVCMOS18} [get_ports rs232_uart_txd]
set_property -dict {PACKAGE_PIN T19  IOSTANDARD LVCMOS18} [get_ports rs232_uart_rxd]
set_property -dict {PACKAGE_PIN V19  IOSTANDARD LVCMOS18} [get_ports rs232_uart_ctsn]
set_property -dict {PACKAGE_PIN W19  IOSTANDARD LVCMOS18} [get_ports rs232_uart_rtsn]
