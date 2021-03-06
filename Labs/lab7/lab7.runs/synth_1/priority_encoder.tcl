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
set_property webtalk.parent_dir /home/ugrads/d/dmimar382/ecen248/lab7/lab7.cache/wt [current_project]
set_property parent.project_path /home/ugrads/d/dmimar382/ecen248/lab7/lab7.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
read_verilog -library xil_defaultlib /home/ugrads/d/dmimar382/ecen248/lab7/priority_encoder.v
read_xdc /home/ugrads/d/dmimar382/ecen248/lab7/two_four_decoder.xdc
set_property used_in_implementation false [get_files /home/ugrads/d/dmimar382/ecen248/lab7/two_four_decoder.xdc]

read_xdc /home/ugrads/d/dmimar382/ecen248/lab7/priority_encoder.xdc
set_property used_in_implementation false [get_files /home/ugrads/d/dmimar382/ecen248/lab7/priority_encoder.xdc]

synth_design -top priority_encoder -part xc7z010clg400-1
write_checkpoint -noxdef priority_encoder.dcp
catch { report_utilization -file priority_encoder_utilization_synth.rpt -pb priority_encoder_utilization_synth.pb }
