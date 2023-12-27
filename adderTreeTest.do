onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group tb_signal -format Analog-Step -height 74 -max 2808.0 -min -2808.0 /tb_FIR_directForm/signal
add wave -noupdate -format Analog-Step -height 74 -max 580998494.99999988 -min -519496589.0 /tb_FIR_directForm/DUT/output_signal_y
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {405 ps} 0}
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
