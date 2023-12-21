onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_FIR_test1/clk
add wave -noupdate -format Analog-Step -height 74 -max 100.0 -min -100.0 -radix decimal /tb_FIR_test1/x
add wave -noupdate -format Analog-Step -height 74 -max 100.0 -min -100.0 -radix decimal /tb_FIR_test1/noise
add wave -noupdate -format Analog-Step -height 74 -max 292.00000000000006 -min -199.0 -radix decimal /tb_FIR_test1/signal
add wave -noupdate -group DUT -childformat {{{/tb_FIR_test1/DUT/delayLine[1]} -radix decimal} {{/tb_FIR_test1/DUT/delayLine[0]} -radix decimal}} -subitemconfig {{/tb_FIR_test1/DUT/delayLine[1]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/delayLine[0]} {-height 15 -radix decimal}} /tb_FIR_test1/DUT/delayLine
add wave -noupdate -group DUT -radix decimal -childformat {{{/tb_FIR_test1/DUT/multiplyResult[1]} -radix decimal} {{/tb_FIR_test1/DUT/multiplyResult[0]} -radix decimal}} -subitemconfig {{/tb_FIR_test1/DUT/multiplyResult[1]} {-height 15 -radix decimal} {/tb_FIR_test1/DUT/multiplyResult[0]} {-height 15 -radix decimal}} /tb_FIR_test1/DUT/multiplyResult
add wave -noupdate -group DUT /tb_FIR_test1/DUT/order
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1774315 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {4202625 ps}
