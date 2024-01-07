onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Input signal}
add wave -noupdate -format Analog-Step -height 74 -max 2808.0 -min -2808.0 -radix decimal -childformat {{{/tb_FIR/signal[23]} -radix decimal} {{/tb_FIR/signal[22]} -radix decimal} {{/tb_FIR/signal[21]} -radix decimal} {{/tb_FIR/signal[20]} -radix decimal} {{/tb_FIR/signal[19]} -radix decimal} {{/tb_FIR/signal[18]} -radix decimal} {{/tb_FIR/signal[17]} -radix decimal} {{/tb_FIR/signal[16]} -radix decimal} {{/tb_FIR/signal[15]} -radix decimal} {{/tb_FIR/signal[14]} -radix decimal} {{/tb_FIR/signal[13]} -radix decimal} {{/tb_FIR/signal[12]} -radix decimal} {{/tb_FIR/signal[11]} -radix decimal} {{/tb_FIR/signal[10]} -radix decimal} {{/tb_FIR/signal[9]} -radix decimal} {{/tb_FIR/signal[8]} -radix decimal} {{/tb_FIR/signal[7]} -radix decimal} {{/tb_FIR/signal[6]} -radix decimal} {{/tb_FIR/signal[5]} -radix decimal} {{/tb_FIR/signal[4]} -radix decimal} {{/tb_FIR/signal[3]} -radix decimal} {{/tb_FIR/signal[2]} -radix decimal} {{/tb_FIR/signal[1]} -radix decimal} {{/tb_FIR/signal[0]} -radix decimal}} -subitemconfig {{/tb_FIR/signal[23]} {-height 15 -radix decimal} {/tb_FIR/signal[22]} {-height 15 -radix decimal} {/tb_FIR/signal[21]} {-height 15 -radix decimal} {/tb_FIR/signal[20]} {-height 15 -radix decimal} {/tb_FIR/signal[19]} {-height 15 -radix decimal} {/tb_FIR/signal[18]} {-height 15 -radix decimal} {/tb_FIR/signal[17]} {-height 15 -radix decimal} {/tb_FIR/signal[16]} {-height 15 -radix decimal} {/tb_FIR/signal[15]} {-height 15 -radix decimal} {/tb_FIR/signal[14]} {-height 15 -radix decimal} {/tb_FIR/signal[13]} {-height 15 -radix decimal} {/tb_FIR/signal[12]} {-height 15 -radix decimal} {/tb_FIR/signal[11]} {-height 15 -radix decimal} {/tb_FIR/signal[10]} {-height 15 -radix decimal} {/tb_FIR/signal[9]} {-height 15 -radix decimal} {/tb_FIR/signal[8]} {-height 15 -radix decimal} {/tb_FIR/signal[7]} {-height 15 -radix decimal} {/tb_FIR/signal[6]} {-height 15 -radix decimal} {/tb_FIR/signal[5]} {-height 15 -radix decimal} {/tb_FIR/signal[4]} {-height 15 -radix decimal} {/tb_FIR/signal[3]} {-height 15 -radix decimal} {/tb_FIR/signal[2]} {-height 15 -radix decimal} {/tb_FIR/signal[1]} {-height 15 -radix decimal} {/tb_FIR/signal[0]} {-height 15 -radix decimal}} /tb_FIR/signal
add wave -noupdate -divider {Output Signals}
add wave -noupdate -format Analog-Step -height 74 -max 2267480.0 -min -2027710.0 -radix decimal /tb_FIR/y_symmetric
add wave -noupdate -format Analog-Step -height 74 -max 2267480.0 -min -2027710.0 -radix decimal /tb_FIR/y_adderTree
add wave -noupdate -group symmetric -radix decimal -childformat {{{/tb_FIR/DUT1/delayLine[52]} -radix decimal} {{/tb_FIR/DUT1/delayLine[51]} -radix decimal} {{/tb_FIR/DUT1/delayLine[50]} -radix decimal} {{/tb_FIR/DUT1/delayLine[49]} -radix decimal} {{/tb_FIR/DUT1/delayLine[48]} -radix decimal} {{/tb_FIR/DUT1/delayLine[47]} -radix decimal} {{/tb_FIR/DUT1/delayLine[46]} -radix decimal} {{/tb_FIR/DUT1/delayLine[45]} -radix decimal} {{/tb_FIR/DUT1/delayLine[44]} -radix decimal} {{/tb_FIR/DUT1/delayLine[43]} -radix decimal} {{/tb_FIR/DUT1/delayLine[42]} -radix decimal} {{/tb_FIR/DUT1/delayLine[41]} -radix decimal} {{/tb_FIR/DUT1/delayLine[40]} -radix decimal} {{/tb_FIR/DUT1/delayLine[39]} -radix decimal} {{/tb_FIR/DUT1/delayLine[38]} -radix decimal} {{/tb_FIR/DUT1/delayLine[37]} -radix decimal} {{/tb_FIR/DUT1/delayLine[36]} -radix decimal} {{/tb_FIR/DUT1/delayLine[35]} -radix decimal} {{/tb_FIR/DUT1/delayLine[34]} -radix decimal} {{/tb_FIR/DUT1/delayLine[33]} -radix decimal} {{/tb_FIR/DUT1/delayLine[32]} -radix decimal} {{/tb_FIR/DUT1/delayLine[31]} -radix decimal} {{/tb_FIR/DUT1/delayLine[30]} -radix decimal} {{/tb_FIR/DUT1/delayLine[29]} -radix decimal} {{/tb_FIR/DUT1/delayLine[28]} -radix decimal} {{/tb_FIR/DUT1/delayLine[27]} -radix decimal} {{/tb_FIR/DUT1/delayLine[26]} -radix decimal} {{/tb_FIR/DUT1/delayLine[25]} -radix decimal} {{/tb_FIR/DUT1/delayLine[24]} -radix decimal} {{/tb_FIR/DUT1/delayLine[23]} -radix decimal} {{/tb_FIR/DUT1/delayLine[22]} -radix decimal} {{/tb_FIR/DUT1/delayLine[21]} -radix decimal} {{/tb_FIR/DUT1/delayLine[20]} -radix decimal} {{/tb_FIR/DUT1/delayLine[19]} -radix decimal} {{/tb_FIR/DUT1/delayLine[18]} -radix decimal} {{/tb_FIR/DUT1/delayLine[17]} -radix decimal} {{/tb_FIR/DUT1/delayLine[16]} -radix decimal} {{/tb_FIR/DUT1/delayLine[15]} -radix decimal} {{/tb_FIR/DUT1/delayLine[14]} -radix decimal} {{/tb_FIR/DUT1/delayLine[13]} -radix decimal} {{/tb_FIR/DUT1/delayLine[12]} -radix decimal} {{/tb_FIR/DUT1/delayLine[11]} -radix decimal} {{/tb_FIR/DUT1/delayLine[10]} -radix decimal} {{/tb_FIR/DUT1/delayLine[9]} -radix decimal} {{/tb_FIR/DUT1/delayLine[8]} -radix decimal} {{/tb_FIR/DUT1/delayLine[7]} -radix decimal} {{/tb_FIR/DUT1/delayLine[6]} -radix decimal} {{/tb_FIR/DUT1/delayLine[5]} -radix decimal} {{/tb_FIR/DUT1/delayLine[4]} -radix decimal} {{/tb_FIR/DUT1/delayLine[3]} -radix decimal} {{/tb_FIR/DUT1/delayLine[2]} -radix decimal} {{/tb_FIR/DUT1/delayLine[1]} -radix decimal} {{/tb_FIR/DUT1/delayLine[0]} -radix decimal}} -subitemconfig {{/tb_FIR/DUT1/delayLine[52]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[51]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[50]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[49]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[48]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[47]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[46]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[45]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[44]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[43]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[42]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[41]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[40]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[39]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[38]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[37]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[36]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[35]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[34]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[33]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[32]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[31]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[30]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[29]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[28]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[27]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[26]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[25]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[24]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[23]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[22]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[21]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[20]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[19]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[18]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[17]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[16]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[15]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[14]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[13]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[12]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[11]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[10]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[9]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[8]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[7]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[6]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[5]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[4]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[3]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[2]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[1]} {-height 15 -radix decimal} {/tb_FIR/DUT1/delayLine[0]} {-height 15 -radix decimal}} /tb_FIR/DUT1/delayLine
add wave -noupdate -group symmetric -radix decimal -childformat {{{/tb_FIR/DUT1/multiplyResult[31]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[30]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[29]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[28]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[27]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[26]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[25]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[24]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[23]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[22]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[21]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[20]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[19]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[18]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[17]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[16]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[15]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[14]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[13]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[12]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[11]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[10]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[9]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[8]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[7]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[6]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[5]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[4]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[3]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[2]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[1]} -radix decimal} {{/tb_FIR/DUT1/multiplyResult[0]} -radix decimal}} -subitemconfig {{/tb_FIR/DUT1/multiplyResult[31]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[30]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[29]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[28]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[27]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[26]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[25]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[24]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[23]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[22]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[21]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[20]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[19]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[18]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[17]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[16]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[15]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[14]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[13]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[12]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[11]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[10]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[9]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[8]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[7]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[6]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[5]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[4]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[3]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[2]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[1]} {-height 15 -radix decimal} {/tb_FIR/DUT1/multiplyResult[0]} {-height 15 -radix decimal}} /tb_FIR/DUT1/multiplyResult
add wave -noupdate -group symmetric -radix decimal -childformat {{{/tb_FIR/DUT1/layer0Acc[15]} -radix decimal} {{/tb_FIR/DUT1/layer0Acc[14]} -radix decimal} {{/tb_FIR/DUT1/layer0Acc[13]} -radix decimal} {{/tb_FIR/DUT1/layer0Acc[12]} -radix decimal} {{/tb_FIR/DUT1/layer0Acc[11]} -radix decimal} {{/tb_FIR/DUT1/layer0Acc[10]} -radix decimal} {{/tb_FIR/DUT1/layer0Acc[9]} -radix decimal} {{/tb_FIR/DUT1/layer0Acc[8]} -radix decimal} {{/tb_FIR/DUT1/layer0Acc[7]} -radix decimal} {{/tb_FIR/DUT1/layer0Acc[6]} -radix decimal} {{/tb_FIR/DUT1/layer0Acc[5]} -radix decimal} {{/tb_FIR/DUT1/layer0Acc[4]} -radix decimal} {{/tb_FIR/DUT1/layer0Acc[3]} -radix decimal} {{/tb_FIR/DUT1/layer0Acc[2]} -radix decimal} {{/tb_FIR/DUT1/layer0Acc[1]} -radix decimal} {{/tb_FIR/DUT1/layer0Acc[0]} -radix decimal}} -subitemconfig {{/tb_FIR/DUT1/layer0Acc[15]} {-height 15 -radix decimal} {/tb_FIR/DUT1/layer0Acc[14]} {-height 15 -radix decimal} {/tb_FIR/DUT1/layer0Acc[13]} {-height 15 -radix decimal} {/tb_FIR/DUT1/layer0Acc[12]} {-height 15 -radix decimal} {/tb_FIR/DUT1/layer0Acc[11]} {-height 15 -radix decimal} {/tb_FIR/DUT1/layer0Acc[10]} {-height 15 -radix decimal} {/tb_FIR/DUT1/layer0Acc[9]} {-height 15 -radix decimal} {/tb_FIR/DUT1/layer0Acc[8]} {-height 15 -radix decimal} {/tb_FIR/DUT1/layer0Acc[7]} {-height 15 -radix decimal} {/tb_FIR/DUT1/layer0Acc[6]} {-height 15 -radix decimal} {/tb_FIR/DUT1/layer0Acc[5]} {-height 15 -radix decimal} {/tb_FIR/DUT1/layer0Acc[4]} {-height 15 -radix decimal} {/tb_FIR/DUT1/layer0Acc[3]} {-height 15 -radix decimal} {/tb_FIR/DUT1/layer0Acc[2]} {-height 15 -radix decimal} {/tb_FIR/DUT1/layer0Acc[1]} {-height 15 -radix decimal} {/tb_FIR/DUT1/layer0Acc[0]} {-height 15 -radix decimal}} /tb_FIR/DUT1/layer0Acc
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 2} {2426 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 140
configure wave -valuecolwidth 232
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {5384 ps}
