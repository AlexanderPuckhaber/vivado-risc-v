BOARD_PART  ?= xilinx.com:ac701:part0:1.4
XILINX_PART ?= xc7a200tfbg676-2
CFG_DEVICE  ?= SPIx4 -size 16 # TODO what is this?
MEMORY_SIZE ?= 0x10000000 # ac701 manual says 256 Mb of flash storage
ETHER_MAC   ?= 00 0a 35 00 00 04  # TODO make this unique maybe
ETHER_PHY   ?= rmii # TODO figure out how to implement ethernet
