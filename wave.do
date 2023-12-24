onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_FIR_test1/clk
add wave -noupdate /tb_FIR_test1/reset
add wave -noupdate -group tb_noise -format Analog-Step -height 74 -max 100.0 -min -100.0 -radix decimal /tb_FIR_test1/noise
add wave -noupdate -expand -group tb_signal -format Analog-Step -height 74 -max 2808.0 -min -2808.0 -radix decimal /tb_FIR_test1/signal
add wave -noupdate -group DUT -childformat {{{/tb_FIR_test1/DUT/delayLine[1]} -radix decimal} {{/tb_FIR_test1/DUT/delayLine[0]} -radix decimal}} -subitemconfig {{/tb_FIR_test1/DUT/delayLine[1]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/delayLine[0]} {-height 15 -radix decimal}} /tb_FIR_test1/DUT/delayLine
add wave -noupdate -group DUT -radix decimal -childformat {{{/tb_FIR_test1/DUT/multiplyResult[52]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[51]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[50]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[49]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[48]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[47]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[46]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[45]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[44]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[43]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[42]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[41]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[40]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[39]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[38]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[37]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[36]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[35]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[34]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[33]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[32]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[31]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[30]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[29]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[28]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[27]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[26]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[25]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[24]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[23]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[22]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[21]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[20]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[19]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[18]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[17]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[16]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[15]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[14]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[13]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[12]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[11]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[10]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[9]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[8]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[7]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[6]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[5]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[4]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[3]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[2]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[1]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[0]} -radix decimal}} -subitemconfig {{/tb_FIR_test1/DUT/multiplyResult[52]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[51]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[50]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[49]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[48]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[47]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[46]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[45]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[44]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[43]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[42]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[41]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[40]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[39]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[38]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[37]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[36]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[35]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[34]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[33]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[32]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[31]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[30]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[29]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[28]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[27]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[26]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[25]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[24]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[23]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[22]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[21]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[20]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[19]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[18]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[17]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[16]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[15]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[14]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[13]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[12]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[11]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[10]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[9]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[8]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[7]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[6]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[5]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[4]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[3]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[2]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[1]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[0]} {-height 15 -radix decimal}} /tb_FIR_test1/DUT/multiplyResult
add wave -noupdate -group DUT /tb_FIR_test1/DUT/order
add wave -noupdate -group {input signal} -format Analog-Step -height 74 -max 2808.0 -min -2808.0 -radix decimal /tb_FIR_test1/DUT/incoming_signal_x
add wave -noupdate -expand -group {output signal} -format Analog-Step -height 74 -max 580998000.00000012 -min -519497000.0 -radix decimal -childformat {{{/tb_FIR_test1/DUT/output_signal_y[31]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[30]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[29]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[28]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[27]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[26]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[25]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[24]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[23]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[22]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[21]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[20]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[19]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[18]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[17]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[16]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[15]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[14]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[13]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[12]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[11]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[10]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[9]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[8]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[7]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[6]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[5]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[4]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[3]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[2]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[1]} -radix decimal} {{/tb_FIR_test1/DUT/output_signal_y[0]} -radix decimal}} -subitemconfig {{/tb_FIR_test1/DUT/output_signal_y[31]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[30]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[29]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[28]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[27]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[26]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[25]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[24]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[23]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[22]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[21]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[20]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[19]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[18]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[17]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[16]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[15]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[14]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[13]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[12]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[11]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[10]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[9]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[8]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[7]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[6]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[5]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[4]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[3]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[2]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[1]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/output_signal_y[0]} {-height 15 -radix decimal}} /tb_FIR_test1/DUT/output_signal_y
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {345 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 293
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 10
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {2520 ps}
