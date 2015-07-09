

 
 
 

 



window new WaveWindow  -name  "Waves for BMG Example Design"
waveform  using  "Waves for BMG Example Design"

      waveform add -signals /weight_out_tb/status
      waveform add -signals /weight_out_tb/weight_out_synth_inst/bmg_port/CLKA
      waveform add -signals /weight_out_tb/weight_out_synth_inst/bmg_port/ADDRA
      waveform add -signals /weight_out_tb/weight_out_synth_inst/bmg_port/DINA
      waveform add -signals /weight_out_tb/weight_out_synth_inst/bmg_port/WEA
      waveform add -signals /weight_out_tb/weight_out_synth_inst/bmg_port/DOUTA

console submit -using simulator -wait no "run"
