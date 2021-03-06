# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/ugrads/d/dmimar382/ecen248/lab11/lab11.cache/wt [current_project]
set_property parent.project_path /home/ugrads/d/dmimar382/ecen248/lab11/lab11.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
read_verilog -library xil_defaultlib {
  /home/ugrads/d/dmimar382/ecen248/lab11/synchronizer.v
  /home/ugrads/d/dmimar382/ecen248/lab11/combination_lock_fsm.v
  /home/ugrads/d/dmimar382/ecen248/lab11/combination_lock.v
}
read_xdc /home/ugrads/d/dmimar382/ecen248/lab11/combination_lock.xdc
set_property used_in_implementation false [get_files /home/ugrads/d/dmimar382/ecen248/lab11/combination_lock.xdc]

synth_design -top combination_lock -part xc7z010clg400-1
write_checkpoint -noxdef combination_lock.dcp
catch { report_utilization -file combination_lock_utilization_synth.rpt -pb combination_lock_utilization_synth.pb }
