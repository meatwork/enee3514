onerror {exit -code 1}
vlib work
vlog -work work lab1_082514.vo
vlog -work work WaveformSimulation.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.lab1_082514_vlg_vec_tst -voptargs="+acc"
vcd file -direction lab1_082514.msim.vcd
vcd add -internal lab1_082514_vlg_vec_tst/*
vcd add -internal lab1_082514_vlg_vec_tst/i1/*
run -all
quit -f
