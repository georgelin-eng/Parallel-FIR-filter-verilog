# Project: Parallel FIR Filter
# Creator: George Lin

# Specifying a 500MHz clock frequency and assigning a pin as a clk pin
create_clock -period 2 clk
set_location_assignment CLKSTRL_G10 -to clk

#**************************************************************
# Set Max Fanout Limits
#**************************************************************


# set_max_fanout -from delayLine[43][18] -to delayLine[44][18] -max_fanout 10


# set_max_fanout 20