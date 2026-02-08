
## Clock
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.0 [get_ports clk]

## SPI Interface
set_property PACKAGE_PIN W16 [get_ports sclk]
set_property IOSTANDARD LVCMOS33 [get_ports sclk]

set_property PACKAGE_PIN V16 [get_ports cs]
set_property IOSTANDARD LVCMOS33 [get_ports cs]

set_property PACKAGE_PIN U16 [get_ports miso]
set_property IOSTANDARD LVCMOS33 [get_ports miso]

## UART TX
set_property PACKAGE_PIN V17 [get_ports tx]
set_property IOSTANDARD LVCMOS33 [get_ports tx]
