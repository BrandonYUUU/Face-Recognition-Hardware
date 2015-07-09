--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: controller_synthesis.vhd
-- /___/   /\     Timestamp: Sat Jul 04 18:44:17 2015
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm controller -w -dir netgen/synthesis -ofmt vhdl -sim controller.ngc controller_synthesis.vhd 
-- Device	: xc7a100t-1-csg324
-- Input file	: controller.ngc
-- Output file	: C:\Users\saidwivedi\OneDrive\Project\NIT\ANN_proto_final\netgen\synthesis\controller_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: controller
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity controller is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X' 
  );
end controller;

architecture Structure of controller is
  component test_image
    port (
      clka : in STD_LOGIC := 'X'; 
      wea : in STD_LOGIC_VECTOR ( 0 downto 0 ); 
      addra : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
      dina : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
      douta : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
    );
  end component;
  component weight_hid
    port (
      clka : in STD_LOGIC := 'X'; 
      wea : in STD_LOGIC_VECTOR ( 0 downto 0 ); 
      addra : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
      dina : in STD_LOGIC_VECTOR ( 23 downto 0 ); 
      douta : out STD_LOGIC_VECTOR ( 23 downto 0 ) 
    );
  end component;
  component weight_out
    port (
      clka : in STD_LOGIC := 'X'; 
      wea : in STD_LOGIC_VECTOR ( 0 downto 0 ); 
      addra : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
      dina : in STD_LOGIC_VECTOR ( 23 downto 0 ); 
      douta : out STD_LOGIC_VECTOR ( 23 downto 0 ) 
    );
  end component;
  component mul_hid
    port (
      clk : in STD_LOGIC := 'X'; 
      ce : in STD_LOGIC := 'X'; 
      sclr : in STD_LOGIC := 'X'; 
      bypass : in STD_LOGIC := 'X'; 
      a : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
      b : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
      s : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
    );
  end component;
  component acticv_mul
    port (
      clk : in STD_LOGIC := 'X'; 
      ce : in STD_LOGIC := 'X'; 
      a : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
      b : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
      d : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
      p : out STD_LOGIC_VECTOR ( 31 downto 0 ) 
    );
  end component;
  signal clk_BUFGP_0 : STD_LOGIC; 
  signal reset_IBUF_1 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shift_over_flag_34 : STD_LOGIC; 
  signal curr_state_FSM_FFd1_150 : STD_LOGIC; 
  signal \Q_n0319_3)\ : STD_LOGIC; 
  signal \Q_n0319_1)\ : STD_LOGIC; 
  signal transition_num_1_output_3_7_wide_mux_4_OUT_7_Q : STD_LOGIC; 
  signal transition_num_1_output_3_7_wide_mux_4_OUT_6_Q : STD_LOGIC; 
  signal transition_num_1_output_3_7_wide_mux_4_OUT_5_Q : STD_LOGIC; 
  signal transition_num_1_output_3_7_wide_mux_4_OUT_4_Q : STD_LOGIC; 
  signal transition_num_1_output_3_7_wide_mux_4_OUT_3_Q : STD_LOGIC; 
  signal transition_num_1_output_3_7_wide_mux_4_OUT_2_Q : STD_LOGIC; 
  signal transition_num_1_output_3_7_wide_mux_4_OUT_1_Q : STD_LOGIC; 
  signal transition_num_1_output_3_7_wide_mux_4_OUT_0_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_31_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_30_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_29_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_28_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_27_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_26_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_25_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_24_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_23_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_22_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_21_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_20_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_19_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_18_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_17_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_16_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_15_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_14_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_13_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_12_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_11_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_10_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_9_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_8_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_7_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_6_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_5_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_4_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_3_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_2_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_1_Q : STD_LOGIC; 
  signal transition_num_31_GND_7_o_add_6_OUT_0_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_31_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_30_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_29_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_28_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_27_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_26_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_25_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_24_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_23_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_22_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_21_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_20_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_19_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_18_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_17_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_16_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_15_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_14_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_13_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_12_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_11_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_10_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_9_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_8_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_7_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_6_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_5_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_4_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_3_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_2_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_1_Q : STD_LOGIC; 
  signal GND_7_o_transition_num_31_mux_7_OUT_0_Q : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal Q_n0240_inv : STD_LOGIC; 
  signal curr_state_FSM_FFd3_In : STD_LOGIC; 
  signal curr_state_FSM_FFd2_In : STD_LOGIC; 
  signal curr_state_FSM_FFd1_In : STD_LOGIC; 
  signal curr_state_FSM_FFd3_266 : STD_LOGIC; 
  signal curr_state_FSM_FFd2_267 : STD_LOGIC; 
  signal Mcount_addra_image : STD_LOGIC; 
  signal Mcount_addra_image1 : STD_LOGIC; 
  signal Mcount_addra_image2 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_lut_0_Q : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_0_Q_275 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_1_Q_276 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_2_Q_277 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_3_Q_278 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_4_Q_279 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_5_Q_280 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_6_Q_281 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_7_Q_282 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_8_Q_283 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_9_Q_284 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_10_Q_285 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_11_Q_286 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_12_Q_287 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_13_Q_288 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_14_Q_289 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_15_Q_290 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_16_Q_291 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_17_Q_292 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_18_Q_293 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_19_Q_294 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_20_Q_295 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_21_Q_296 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_22_Q_297 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_23_Q_298 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_24_Q_299 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_25_Q_300 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_26_Q_301 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_27_Q_302 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_28_Q_303 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_29_Q_304 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_30_Q_305 : STD_LOGIC; 
  signal Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi_306 : STD_LOGIC; 
  signal Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_0_Q_307 : STD_LOGIC; 
  signal Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_0_Q_308 : STD_LOGIC; 
  signal Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi1_309 : STD_LOGIC; 
  signal Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_1_Q_310 : STD_LOGIC; 
  signal Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_1_Q_311 : STD_LOGIC; 
  signal Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi2_312 : STD_LOGIC; 
  signal Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_2_Q_313 : STD_LOGIC; 
  signal Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_2_Q_314 : STD_LOGIC; 
  signal Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi3_315 : STD_LOGIC; 
  signal Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_3_Q_316 : STD_LOGIC; 
  signal Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_3_Q_317 : STD_LOGIC; 
  signal Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi4_318 : STD_LOGIC; 
  signal Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_4_Q_319 : STD_LOGIC; 
  signal Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_4_Q_320 : STD_LOGIC; 
  signal Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi5_321 : STD_LOGIC; 
  signal Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_5_Q_322 : STD_LOGIC; 
  signal Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323 : STD_LOGIC; 
  signal Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324 : STD_LOGIC; 
  signal layer_map_count_en_inv : STD_LOGIC; 
  signal layer_map_activation_hid_count_map_count_7_num_neurons_7_equal_1_o_inv : STD_LOGIC; 
  signal layer_map_activation_hid_count_map_count_7_num_neurons_7_equal_1_o : STD_LOGIC; 
  signal layer_map_ce : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_30_Q_401 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_29_Q_402 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_28_Q_403 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_27_Q_404 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_26_Q_405 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_25_Q_406 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_24_Q_407 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_23_Q_408 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_22_Q_409 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_21_Q_410 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_20_Q_411 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_19_Q_412 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_18_Q_413 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_17_Q_414 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_16_Q_415 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_15_Q_416 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_14_Q_417 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_13_Q_418 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_12_Q_419 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_11_Q_420 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_10_Q_421 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_9_Q_422 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_8_Q_423 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_7_Q_424 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_6_Q_425 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_5_Q_426 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_4_Q_427 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_3_Q_428 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_2_Q_429 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_1_Q_430 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_0_Q_431 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_lut_0_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_5_Q_433 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_5_Q_434 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_4_Q_435 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_4_Q_436 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_3_Q_437 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_3_Q_438 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_2_Q_439 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_2_Q_440 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_1_Q_441 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_1_Q_442 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_0_Q_443 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_0_Q_444 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lutdi_445 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_446 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_6_Q_447 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_5_Q_448 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_5_Q_449 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_4_Q_450 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_4_Q_451 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_3_Q_452 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_3_Q_453 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_2_Q_454 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_2_Q_455 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_1_Q_456 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_1_Q_457 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_0_Q_458 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_0_Q_459 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lutdi_460 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_31_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_30_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_29_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_28_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_27_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_26_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_25_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_24_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_23_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_22_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_21_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_20_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_19_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_18_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_17_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_16_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_15_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_14_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_13_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_12_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_11_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_10_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_9_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_8_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_7_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_6_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_5_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_4_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_3_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_2_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_1_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Result_0_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_n0056_inv : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_enable_inv : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_GND_14_o_GND_14_o_MUX_60_o : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_31_INV_16_o : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifted_output_temp_0_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifted_output_temp_1_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifted_output_temp_2_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifted_output_temp_3_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifted_output_temp_4_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifted_output_temp_5_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifted_output_temp_6_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifted_output_temp_7_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifted_output_temp_8_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifted_output_temp_9_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifted_output_temp_10_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifted_output_temp_11_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifted_output_temp_12_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifted_output_temp_13_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifted_output_temp_14_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifted_output_temp_15_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_0_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_1_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_2_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_3_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_4_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_5_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_6_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_7_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_8_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_9_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_10_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_11_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_12_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_13_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_14_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_15_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_16_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_17_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_18_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_19_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_20_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_21_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_22_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_23_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_24_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_25_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_26_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_27_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_28_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_29_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_30_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_shift_counter_31_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_0_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_1_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_2_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_3_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_4_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_5_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_6_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_7_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_8_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_9_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_10_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_11_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_12_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_13_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_14_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_acticv_mul_en_562 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_0_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_1_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_2_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_3_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_4_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_5_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_6_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_7_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_8_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_9_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_10_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_11_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_12_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_13_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_14_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_15_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_input_temp_0_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_input_temp_1_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_input_temp_2_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_input_temp_3_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_input_temp_4_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_input_temp_5_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_input_temp_6_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_input_temp_7_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_input_temp_8_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_input_temp_9_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_input_temp_10_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_input_temp_11_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_input_temp_12_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_input_temp_13_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_input_temp_14_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_input_temp_15_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_30_Q_595 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_29_Q_596 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_28_Q_597 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_27_Q_598 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_26_Q_599 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_25_Q_600 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_24_Q_601 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_23_Q_602 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_22_Q_603 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_21_Q_604 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_20_Q_605 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_19_Q_606 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_18_Q_607 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_17_Q_608 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_16_Q_609 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_15_Q_610 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_14_Q_611 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_13_Q_612 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_12_Q_613 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_11_Q_614 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_10_Q_615 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_9_Q_616 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_8_Q_617 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_7_Q_618 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_6_Q_619 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_5_Q_620 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_4_Q_621 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_3_Q_622 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_2_Q_623 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_1_Q_624 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_0_Q_625 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_lut_0_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_5_Q_627 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_5_Q_628 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_4_Q_629 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_4_Q_630 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_3_Q_631 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_3_Q_632 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_2_Q_633 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_2_Q_634 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_1_Q_635 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_1_Q_636 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_0_Q_637 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_0_Q_638 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lutdi_639 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_640 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_6_Q_641 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_5_Q_642 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_5_Q_643 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_4_Q_644 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_4_Q_645 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_3_Q_646 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_3_Q_647 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_2_Q_648 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_2_Q_649 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_1_Q_650 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_1_Q_651 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_0_Q_652 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_0_Q_653 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lutdi_654 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_31_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_30_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_29_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_28_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_27_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_26_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_25_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_24_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_23_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_22_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_21_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_20_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_19_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_18_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_17_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_16_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_15_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_14_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_13_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_12_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_11_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_10_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_9_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_8_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_7_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_6_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_5_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_4_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_3_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_2_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_1_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Result_0_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_n0056_inv : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_GND_14_o_GND_14_o_MUX_60_o : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_31_INV_16_o : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifted_output_temp_0_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifted_output_temp_1_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifted_output_temp_2_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifted_output_temp_3_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifted_output_temp_4_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifted_output_temp_5_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifted_output_temp_6_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifted_output_temp_7_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifted_output_temp_8_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifted_output_temp_9_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifted_output_temp_10_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifted_output_temp_11_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifted_output_temp_12_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifted_output_temp_13_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifted_output_temp_14_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifted_output_temp_15_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_0_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_1_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_2_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_3_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_4_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_5_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_6_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_7_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_8_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_9_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_10_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_11_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_12_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_13_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_14_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_15_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_16_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_17_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_18_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_19_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_20_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_21_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_22_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_23_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_24_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_25_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_26_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_27_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_28_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_29_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_30_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_shift_counter_31_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_0_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_1_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_2_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_3_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_4_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_5_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_6_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_7_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_8_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_9_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_10_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_11_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_12_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_13_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_14_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_acticv_mul_en_755 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_0_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_1_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_2_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_3_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_4_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_5_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_6_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_7_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_8_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_9_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_10_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_11_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_12_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_13_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_14_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_15_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_input_temp_0_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_input_temp_1_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_input_temp_2_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_input_temp_3_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_input_temp_4_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_input_temp_5_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_input_temp_6_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_input_temp_7_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_input_temp_8_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_input_temp_9_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_input_temp_10_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_input_temp_11_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_input_temp_12_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_input_temp_13_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_input_temp_14_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_input_temp_15_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_30_Q_788 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_29_Q_789 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_28_Q_790 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_27_Q_791 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_26_Q_792 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_25_Q_793 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_24_Q_794 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_23_Q_795 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_22_Q_796 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_21_Q_797 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_20_Q_798 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_19_Q_799 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_18_Q_800 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_17_Q_801 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_16_Q_802 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_15_Q_803 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_14_Q_804 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_13_Q_805 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_12_Q_806 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_11_Q_807 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_10_Q_808 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_9_Q_809 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_8_Q_810 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_7_Q_811 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_6_Q_812 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_5_Q_813 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_4_Q_814 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_3_Q_815 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_2_Q_816 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_1_Q_817 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_0_Q_818 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_lut_0_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_5_Q_820 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_5_Q_821 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_4_Q_822 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_4_Q_823 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_3_Q_824 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_3_Q_825 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_2_Q_826 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_2_Q_827 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_1_Q_828 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_1_Q_829 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_0_Q_830 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_0_Q_831 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lutdi_832 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_833 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_6_Q_834 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_5_Q_835 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_5_Q_836 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_4_Q_837 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_4_Q_838 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_3_Q_839 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_3_Q_840 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_2_Q_841 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_2_Q_842 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_1_Q_843 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_1_Q_844 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_0_Q_845 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_0_Q_846 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lutdi_847 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_31_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_30_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_29_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_28_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_27_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_26_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_25_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_24_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_23_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_22_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_21_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_20_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_19_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_18_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_17_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_16_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_15_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_14_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_13_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_12_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_11_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_10_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_9_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_8_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_7_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_6_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_5_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_4_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_3_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_2_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_1_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Result_0_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_n0056_inv : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_GND_14_o_GND_14_o_MUX_60_o : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_31_INV_16_o : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifted_output_temp_0_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifted_output_temp_1_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifted_output_temp_2_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifted_output_temp_3_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifted_output_temp_4_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifted_output_temp_5_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifted_output_temp_6_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifted_output_temp_7_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifted_output_temp_8_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifted_output_temp_9_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifted_output_temp_10_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifted_output_temp_11_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifted_output_temp_12_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifted_output_temp_13_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifted_output_temp_14_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifted_output_temp_15_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_0_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_1_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_2_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_3_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_4_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_5_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_6_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_7_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_8_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_9_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_10_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_11_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_12_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_13_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_14_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_15_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_16_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_17_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_18_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_19_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_20_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_21_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_22_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_23_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_24_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_25_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_26_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_27_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_28_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_29_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_30_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_shift_counter_31_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_0_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_1_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_2_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_3_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_4_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_5_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_6_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_7_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_8_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_9_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_10_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_11_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_12_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_13_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_14_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_acticv_mul_en_948 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_0_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_1_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_2_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_3_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_4_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_5_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_6_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_7_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_8_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_9_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_10_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_11_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_12_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_13_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_14_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_15_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_input_temp_0_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_input_temp_1_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_input_temp_2_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_input_temp_3_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_input_temp_4_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_input_temp_5_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_input_temp_6_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_input_temp_7_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_input_temp_8_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_input_temp_9_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_input_temp_10_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_input_temp_11_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_input_temp_12_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_input_temp_13_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_input_temp_14_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_input_temp_15_Q : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_Q : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_1_983 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_2_984 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_3_985 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_4_986 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_5_987 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_Q : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_1_989 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_2_990 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_3_991 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_4_992 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_5_993 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_Q : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_1_995 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_2_996 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_3_997 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_4_998 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_5_999 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_1_rt_1002 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_2_rt_1003 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_3_rt_1004 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_4_rt_1005 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_5_rt_1006 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_6_rt_1007 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_7_rt_1008 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_8_rt_1009 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_9_rt_1010 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_10_rt_1011 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_11_rt_1012 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_12_rt_1013 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_13_rt_1014 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_14_rt_1015 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_15_rt_1016 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_16_rt_1017 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_17_rt_1018 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_18_rt_1019 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_19_rt_1020 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_20_rt_1021 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_21_rt_1022 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_22_rt_1023 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_23_rt_1024 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_24_rt_1025 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_25_rt_1026 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_26_rt_1027 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_27_rt_1028 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_28_rt_1029 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_29_rt_1030 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_cy_30_rt_1031 : STD_LOGIC; 
  signal layer_map_activation_hid_count_map_Mcount_count_cy_6_rt_1032 : STD_LOGIC; 
  signal layer_map_activation_hid_count_map_Mcount_count_cy_5_rt_1033 : STD_LOGIC; 
  signal layer_map_activation_hid_count_map_Mcount_count_cy_4_rt_1034 : STD_LOGIC; 
  signal layer_map_activation_hid_count_map_Mcount_count_cy_3_rt_1035 : STD_LOGIC; 
  signal layer_map_activation_hid_count_map_Mcount_count_cy_2_rt_1036 : STD_LOGIC; 
  signal layer_map_activation_hid_count_map_Mcount_count_cy_1_rt_1037 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_30_rt_1038 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_29_rt_1039 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_28_rt_1040 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_27_rt_1041 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_26_rt_1042 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_25_rt_1043 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_24_rt_1044 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_23_rt_1045 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_22_rt_1046 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_21_rt_1047 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_20_rt_1048 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_19_rt_1049 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_18_rt_1050 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_17_rt_1051 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_16_rt_1052 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_15_rt_1053 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_14_rt_1054 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_13_rt_1055 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_12_rt_1056 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_11_rt_1057 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_10_rt_1058 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_9_rt_1059 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_8_rt_1060 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_7_rt_1061 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_6_rt_1062 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_5_rt_1063 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_4_rt_1064 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_3_rt_1065 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_2_rt_1066 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_1_rt_1067 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_30_rt_1068 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_29_rt_1069 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_28_rt_1070 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_27_rt_1071 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_26_rt_1072 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_25_rt_1073 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_24_rt_1074 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_23_rt_1075 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_22_rt_1076 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_21_rt_1077 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_20_rt_1078 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_19_rt_1079 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_18_rt_1080 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_17_rt_1081 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_16_rt_1082 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_15_rt_1083 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_14_rt_1084 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_13_rt_1085 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_12_rt_1086 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_11_rt_1087 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_10_rt_1088 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_9_rt_1089 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_8_rt_1090 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_7_rt_1091 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_6_rt_1092 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_5_rt_1093 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_4_rt_1094 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_3_rt_1095 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_2_rt_1096 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_1_rt_1097 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_30_rt_1098 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_29_rt_1099 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_28_rt_1100 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_27_rt_1101 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_26_rt_1102 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_25_rt_1103 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_24_rt_1104 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_23_rt_1105 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_22_rt_1106 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_21_rt_1107 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_20_rt_1108 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_19_rt_1109 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_18_rt_1110 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_17_rt_1111 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_16_rt_1112 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_15_rt_1113 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_14_rt_1114 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_13_rt_1115 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_12_rt_1116 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_11_rt_1117 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_10_rt_1118 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_9_rt_1119 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_8_rt_1120 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_7_rt_1121 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_6_rt_1122 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_5_rt_1123 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_4_rt_1124 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_3_rt_1125 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_2_rt_1126 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_1_rt_1127 : STD_LOGIC; 
  signal Madd_transition_num_31_GND_7_o_add_6_OUT_xor_31_rt_1128 : STD_LOGIC; 
  signal layer_map_activation_hid_count_map_Mcount_count_xor_7_rt_1129 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_31_rt_1130 : STD_LOGIC; 
  signal layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_31_rt_1131 : STD_LOGIC; 
  signal layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_31_rt_1132 : STD_LOGIC; 
  signal layer_map_shift_map_0_shifter_map_shift_over_flag_rstpot_1133 : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_0_UNCONNECTED : STD_LOGIC; 
  signal image : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal output_hid : STD_LOGIC_VECTOR2 ( 2 downto 0 , 7 downto 0 ); 
  signal out_weight_hid : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal out_weight_out : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal addra_image : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal output_3 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal output_2 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal output_1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal output_temp : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal transition_num : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal GND_7_o_GND_7_o_mux_14_OUT : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal input : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal weight : STD_LOGIC_VECTOR2 ( 2 downto 0 , 7 downto 0 ); 
  signal dina_image : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal addr_weight_out : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal layer_map_activation_hid_count_map_Mcount_count_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal layer_map_activation_hid_count_map_Mcount_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal layer_map_Result : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal layer_map_activation_hid_count_map_count : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal layer_map_weighted_sum : STD_LOGIC_VECTOR2 ( 2 downto 0 , 15 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => dina_image(0)
    );
  output_3_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(2, 0),
      Q => output_3(0)
    );
  output_3_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(2, 1),
      Q => output_3(1)
    );
  output_3_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(2, 2),
      Q => output_3(2)
    );
  output_3_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(2, 3),
      Q => output_3(3)
    );
  output_3_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(2, 4),
      Q => output_3(4)
    );
  output_3_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(2, 5),
      Q => output_3(5)
    );
  output_3_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(2, 6),
      Q => output_3(6)
    );
  output_3_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(2, 7),
      Q => output_3(7)
    );
  output_2_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(1, 0),
      Q => output_2(0)
    );
  output_2_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(1, 1),
      Q => output_2(1)
    );
  output_2_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(1, 2),
      Q => output_2(2)
    );
  output_2_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(1, 3),
      Q => output_2(3)
    );
  output_2_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(1, 4),
      Q => output_2(4)
    );
  output_2_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(1, 5),
      Q => output_2(5)
    );
  output_2_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(1, 6),
      Q => output_2(6)
    );
  output_2_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(1, 7),
      Q => output_2(7)
    );
  output_1_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(0, 0),
      Q => output_1(0)
    );
  output_1_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(0, 1),
      Q => output_1(1)
    );
  output_1_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(0, 2),
      Q => output_1(2)
    );
  output_1_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(0, 3),
      Q => output_1(3)
    );
  output_1_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(0, 4),
      Q => output_1(4)
    );
  output_1_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(0, 5),
      Q => output_1(5)
    );
  output_1_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(0, 6),
      Q => output_1(6)
    );
  output_1_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Q_n0240_inv,
      CLR => reset_IBUF_1,
      D => output_hid(0, 7),
      Q => output_1(7)
    );
  transition_num_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_0_Q,
      Q => transition_num(0)
    );
  transition_num_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_1_Q,
      Q => transition_num(1)
    );
  transition_num_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_2_Q,
      Q => transition_num(2)
    );
  transition_num_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_3_Q,
      Q => transition_num(3)
    );
  transition_num_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_4_Q,
      Q => transition_num(4)
    );
  transition_num_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_5_Q,
      Q => transition_num(5)
    );
  transition_num_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_6_Q,
      Q => transition_num(6)
    );
  transition_num_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_7_Q,
      Q => transition_num(7)
    );
  transition_num_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_8_Q,
      Q => transition_num(8)
    );
  transition_num_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_9_Q,
      Q => transition_num(9)
    );
  transition_num_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_10_Q,
      Q => transition_num(10)
    );
  transition_num_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_11_Q,
      Q => transition_num(11)
    );
  transition_num_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_12_Q,
      Q => transition_num(12)
    );
  transition_num_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_13_Q,
      Q => transition_num(13)
    );
  transition_num_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_14_Q,
      Q => transition_num(14)
    );
  transition_num_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_15_Q,
      Q => transition_num(15)
    );
  transition_num_16 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_16_Q,
      Q => transition_num(16)
    );
  transition_num_17 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_17_Q,
      Q => transition_num(17)
    );
  transition_num_18 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_18_Q,
      Q => transition_num(18)
    );
  transition_num_19 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_19_Q,
      Q => transition_num(19)
    );
  transition_num_20 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_20_Q,
      Q => transition_num(20)
    );
  transition_num_21 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_21_Q,
      Q => transition_num(21)
    );
  transition_num_22 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_22_Q,
      Q => transition_num(22)
    );
  transition_num_23 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_23_Q,
      Q => transition_num(23)
    );
  transition_num_24 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_24_Q,
      Q => transition_num(24)
    );
  transition_num_25 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_25_Q,
      Q => transition_num(25)
    );
  transition_num_26 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_26_Q,
      Q => transition_num(26)
    );
  transition_num_27 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_27_Q,
      Q => transition_num(27)
    );
  transition_num_28 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_28_Q,
      Q => transition_num(28)
    );
  transition_num_29 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_29_Q,
      Q => transition_num(29)
    );
  transition_num_30 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_30_Q,
      Q => transition_num(30)
    );
  transition_num_31 : FDCE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => GND_7_o_transition_num_31_mux_7_OUT_31_Q,
      Q => transition_num(31)
    );
  addr_weight_out_0 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => GND_7_o_GND_7_o_mux_14_OUT(0),
      Q => addr_weight_out(0)
    );
  addr_weight_out_1 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => GND_7_o_GND_7_o_mux_14_OUT(1),
      Q => addr_weight_out(1)
    );
  addr_weight_out_2 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => GND_7_o_GND_7_o_mux_14_OUT(2),
      Q => addr_weight_out(2)
    );
  output_temp_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => transition_num_1_output_3_7_wide_mux_4_OUT_0_Q,
      Q => output_temp(0)
    );
  output_temp_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => transition_num_1_output_3_7_wide_mux_4_OUT_1_Q,
      Q => output_temp(1)
    );
  output_temp_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => transition_num_1_output_3_7_wide_mux_4_OUT_2_Q,
      Q => output_temp(2)
    );
  output_temp_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => transition_num_1_output_3_7_wide_mux_4_OUT_3_Q,
      Q => output_temp(3)
    );
  output_temp_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => transition_num_1_output_3_7_wide_mux_4_OUT_4_Q,
      Q => output_temp(4)
    );
  output_temp_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => transition_num_1_output_3_7_wide_mux_4_OUT_5_Q,
      Q => output_temp(5)
    );
  output_temp_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => transition_num_1_output_3_7_wide_mux_4_OUT_6_Q,
      Q => output_temp(6)
    );
  output_temp_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324,
      CLR => reset_IBUF_1,
      D => transition_num_1_output_3_7_wide_mux_4_OUT_7_Q,
      Q => output_temp(7)
    );
  curr_state_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => curr_state_FSM_FFd3_In,
      Q => curr_state_FSM_FFd3_266
    );
  curr_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => curr_state_FSM_FFd2_In,
      Q => curr_state_FSM_FFd2_267
    );
  curr_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => curr_state_FSM_FFd1_In,
      Q => curr_state_FSM_FFd1_150
    );
  addra_image_0 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => Mcount_addra_image,
      Q => addra_image(0)
    );
  addra_image_1 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => Mcount_addra_image1,
      Q => addra_image(1)
    );
  addra_image_2 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => Mcount_addra_image2,
      Q => addra_image(2)
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_0_Q : MUXCY
    port map (
      CI => dina_image(0),
      DI => N0,
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_lut_0_Q,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_0_Q_275
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_0_Q : XORCY
    port map (
      CI => dina_image(0),
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_lut_0_Q,
      O => transition_num_31_GND_7_o_add_6_OUT_0_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_1_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_0_Q_275,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_1_rt_1002,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_1_Q_276
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_1_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_0_Q_275,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_1_rt_1002,
      O => transition_num_31_GND_7_o_add_6_OUT_1_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_2_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_1_Q_276,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_2_rt_1003,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_2_Q_277
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_2_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_1_Q_276,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_2_rt_1003,
      O => transition_num_31_GND_7_o_add_6_OUT_2_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_3_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_2_Q_277,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_3_rt_1004,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_3_Q_278
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_3_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_2_Q_277,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_3_rt_1004,
      O => transition_num_31_GND_7_o_add_6_OUT_3_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_4_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_3_Q_278,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_4_rt_1005,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_4_Q_279
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_4_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_3_Q_278,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_4_rt_1005,
      O => transition_num_31_GND_7_o_add_6_OUT_4_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_5_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_4_Q_279,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_5_rt_1006,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_5_Q_280
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_5_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_4_Q_279,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_5_rt_1006,
      O => transition_num_31_GND_7_o_add_6_OUT_5_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_6_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_5_Q_280,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_6_rt_1007,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_6_Q_281
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_6_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_5_Q_280,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_6_rt_1007,
      O => transition_num_31_GND_7_o_add_6_OUT_6_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_7_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_6_Q_281,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_7_rt_1008,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_7_Q_282
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_7_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_6_Q_281,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_7_rt_1008,
      O => transition_num_31_GND_7_o_add_6_OUT_7_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_8_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_7_Q_282,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_8_rt_1009,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_8_Q_283
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_8_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_7_Q_282,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_8_rt_1009,
      O => transition_num_31_GND_7_o_add_6_OUT_8_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_9_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_8_Q_283,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_9_rt_1010,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_9_Q_284
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_9_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_8_Q_283,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_9_rt_1010,
      O => transition_num_31_GND_7_o_add_6_OUT_9_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_10_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_9_Q_284,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_10_rt_1011,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_10_Q_285
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_10_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_9_Q_284,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_10_rt_1011,
      O => transition_num_31_GND_7_o_add_6_OUT_10_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_11_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_10_Q_285,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_11_rt_1012,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_11_Q_286
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_11_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_10_Q_285,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_11_rt_1012,
      O => transition_num_31_GND_7_o_add_6_OUT_11_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_12_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_11_Q_286,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_12_rt_1013,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_12_Q_287
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_12_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_11_Q_286,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_12_rt_1013,
      O => transition_num_31_GND_7_o_add_6_OUT_12_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_13_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_12_Q_287,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_13_rt_1014,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_13_Q_288
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_13_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_12_Q_287,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_13_rt_1014,
      O => transition_num_31_GND_7_o_add_6_OUT_13_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_14_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_13_Q_288,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_14_rt_1015,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_14_Q_289
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_14_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_13_Q_288,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_14_rt_1015,
      O => transition_num_31_GND_7_o_add_6_OUT_14_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_15_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_14_Q_289,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_15_rt_1016,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_15_Q_290
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_15_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_14_Q_289,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_15_rt_1016,
      O => transition_num_31_GND_7_o_add_6_OUT_15_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_16_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_15_Q_290,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_16_rt_1017,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_16_Q_291
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_16_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_15_Q_290,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_16_rt_1017,
      O => transition_num_31_GND_7_o_add_6_OUT_16_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_17_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_16_Q_291,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_17_rt_1018,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_17_Q_292
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_17_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_16_Q_291,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_17_rt_1018,
      O => transition_num_31_GND_7_o_add_6_OUT_17_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_18_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_17_Q_292,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_18_rt_1019,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_18_Q_293
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_18_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_17_Q_292,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_18_rt_1019,
      O => transition_num_31_GND_7_o_add_6_OUT_18_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_19_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_18_Q_293,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_19_rt_1020,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_19_Q_294
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_19_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_18_Q_293,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_19_rt_1020,
      O => transition_num_31_GND_7_o_add_6_OUT_19_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_20_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_19_Q_294,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_20_rt_1021,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_20_Q_295
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_20_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_19_Q_294,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_20_rt_1021,
      O => transition_num_31_GND_7_o_add_6_OUT_20_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_21_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_20_Q_295,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_21_rt_1022,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_21_Q_296
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_21_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_20_Q_295,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_21_rt_1022,
      O => transition_num_31_GND_7_o_add_6_OUT_21_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_22_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_21_Q_296,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_22_rt_1023,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_22_Q_297
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_22_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_21_Q_296,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_22_rt_1023,
      O => transition_num_31_GND_7_o_add_6_OUT_22_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_23_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_22_Q_297,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_23_rt_1024,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_23_Q_298
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_23_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_22_Q_297,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_23_rt_1024,
      O => transition_num_31_GND_7_o_add_6_OUT_23_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_24_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_23_Q_298,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_24_rt_1025,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_24_Q_299
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_24_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_23_Q_298,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_24_rt_1025,
      O => transition_num_31_GND_7_o_add_6_OUT_24_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_25_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_24_Q_299,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_25_rt_1026,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_25_Q_300
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_25_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_24_Q_299,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_25_rt_1026,
      O => transition_num_31_GND_7_o_add_6_OUT_25_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_26_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_25_Q_300,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_26_rt_1027,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_26_Q_301
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_26_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_25_Q_300,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_26_rt_1027,
      O => transition_num_31_GND_7_o_add_6_OUT_26_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_27_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_26_Q_301,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_27_rt_1028,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_27_Q_302
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_27_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_26_Q_301,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_27_rt_1028,
      O => transition_num_31_GND_7_o_add_6_OUT_27_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_28_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_27_Q_302,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_28_rt_1029,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_28_Q_303
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_28_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_27_Q_302,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_28_rt_1029,
      O => transition_num_31_GND_7_o_add_6_OUT_28_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_29_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_28_Q_303,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_29_rt_1030,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_29_Q_304
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_29_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_28_Q_303,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_29_rt_1030,
      O => transition_num_31_GND_7_o_add_6_OUT_29_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_30_Q : MUXCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_29_Q_304,
      DI => dina_image(0),
      S => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_30_rt_1031,
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_30_Q_305
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_30_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_29_Q_304,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_30_rt_1031,
      O => transition_num_31_GND_7_o_add_6_OUT_30_Q
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_31_Q : XORCY
    port map (
      CI => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_30_Q_305,
      LI => Madd_transition_num_31_GND_7_o_add_6_OUT_xor_31_rt_1128,
      O => transition_num_31_GND_7_o_add_6_OUT_31_Q
    );
  Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => transition_num(4),
      I1 => transition_num(3),
      I2 => transition_num(2),
      O => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi_306
    );
  Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_0_Q : LUT5
    generic map(
      INIT => X"01000000"
    )
    port map (
      I0 => transition_num(2),
      I1 => transition_num(3),
      I2 => transition_num(4),
      I3 => transition_num(1),
      I4 => transition_num(0),
      O => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_0_Q_307
    );
  Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi_306,
      S => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_0_Q_307,
      O => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_0_Q_308
    );
  Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi1 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => transition_num(9),
      I1 => transition_num(8),
      I2 => transition_num(7),
      I3 => transition_num(6),
      I4 => transition_num(5),
      O => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi1_309
    );
  Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_1_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => transition_num(5),
      I1 => transition_num(6),
      I2 => transition_num(7),
      I3 => transition_num(8),
      I4 => transition_num(9),
      O => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_1_Q_310
    );
  Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_0_Q_308,
      DI => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi1_309,
      S => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_1_Q_310,
      O => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_1_Q_311
    );
  Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi2 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => transition_num(14),
      I1 => transition_num(13),
      I2 => transition_num(12),
      I3 => transition_num(11),
      I4 => transition_num(10),
      O => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi2_312
    );
  Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_2_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => transition_num(10),
      I1 => transition_num(11),
      I2 => transition_num(12),
      I3 => transition_num(13),
      I4 => transition_num(14),
      O => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_2_Q_313
    );
  Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_1_Q_311,
      DI => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi2_312,
      S => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_2_Q_313,
      O => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_2_Q_314
    );
  Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi3 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => transition_num(19),
      I1 => transition_num(18),
      I2 => transition_num(17),
      I3 => transition_num(16),
      I4 => transition_num(15),
      O => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi3_315
    );
  Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => transition_num(15),
      I1 => transition_num(16),
      I2 => transition_num(17),
      I3 => transition_num(18),
      I4 => transition_num(19),
      O => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_3_Q_316
    );
  Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_2_Q_314,
      DI => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi3_315,
      S => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_3_Q_316,
      O => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_3_Q_317
    );
  Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi4 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => transition_num(24),
      I1 => transition_num(23),
      I2 => transition_num(22),
      I3 => transition_num(21),
      I4 => transition_num(20),
      O => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi4_318
    );
  Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => transition_num(20),
      I1 => transition_num(21),
      I2 => transition_num(22),
      I3 => transition_num(23),
      I4 => transition_num(24),
      O => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_4_Q_319
    );
  Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_3_Q_317,
      DI => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi4_318,
      S => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_4_Q_319,
      O => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_4_Q_320
    );
  Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi5 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => transition_num(29),
      I1 => transition_num(28),
      I2 => transition_num(27),
      I3 => transition_num(26),
      I4 => transition_num(25),
      O => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi5_321
    );
  Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_5_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => transition_num(25),
      I1 => transition_num(26),
      I2 => transition_num(27),
      I3 => transition_num(28),
      I4 => transition_num(29),
      O => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_5_Q_322
    );
  Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_4_Q_320,
      DI => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lutdi5_321,
      S => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_lut_5_Q_322,
      O => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323
    );
  layer_map_activation_hid_count_map_Mcount_count_xor_7_Q : XORCY
    port map (
      CI => layer_map_activation_hid_count_map_Mcount_count_cy(6),
      LI => layer_map_activation_hid_count_map_Mcount_count_xor_7_rt_1129,
      O => layer_map_Result(7)
    );
  layer_map_activation_hid_count_map_Mcount_count_xor_6_Q : XORCY
    port map (
      CI => layer_map_activation_hid_count_map_Mcount_count_cy(5),
      LI => layer_map_activation_hid_count_map_Mcount_count_cy_6_rt_1032,
      O => layer_map_Result(6)
    );
  layer_map_activation_hid_count_map_Mcount_count_cy_6_Q : MUXCY
    port map (
      CI => layer_map_activation_hid_count_map_Mcount_count_cy(5),
      DI => dina_image(0),
      S => layer_map_activation_hid_count_map_Mcount_count_cy_6_rt_1032,
      O => layer_map_activation_hid_count_map_Mcount_count_cy(6)
    );
  layer_map_activation_hid_count_map_Mcount_count_xor_5_Q : XORCY
    port map (
      CI => layer_map_activation_hid_count_map_Mcount_count_cy(4),
      LI => layer_map_activation_hid_count_map_Mcount_count_cy_5_rt_1033,
      O => layer_map_Result(5)
    );
  layer_map_activation_hid_count_map_Mcount_count_cy_5_Q : MUXCY
    port map (
      CI => layer_map_activation_hid_count_map_Mcount_count_cy(4),
      DI => dina_image(0),
      S => layer_map_activation_hid_count_map_Mcount_count_cy_5_rt_1033,
      O => layer_map_activation_hid_count_map_Mcount_count_cy(5)
    );
  layer_map_activation_hid_count_map_Mcount_count_xor_4_Q : XORCY
    port map (
      CI => layer_map_activation_hid_count_map_Mcount_count_cy(3),
      LI => layer_map_activation_hid_count_map_Mcount_count_cy_4_rt_1034,
      O => layer_map_Result(4)
    );
  layer_map_activation_hid_count_map_Mcount_count_cy_4_Q : MUXCY
    port map (
      CI => layer_map_activation_hid_count_map_Mcount_count_cy(3),
      DI => dina_image(0),
      S => layer_map_activation_hid_count_map_Mcount_count_cy_4_rt_1034,
      O => layer_map_activation_hid_count_map_Mcount_count_cy(4)
    );
  layer_map_activation_hid_count_map_Mcount_count_xor_3_Q : XORCY
    port map (
      CI => layer_map_activation_hid_count_map_Mcount_count_cy(2),
      LI => layer_map_activation_hid_count_map_Mcount_count_cy_3_rt_1035,
      O => layer_map_Result(3)
    );
  layer_map_activation_hid_count_map_Mcount_count_cy_3_Q : MUXCY
    port map (
      CI => layer_map_activation_hid_count_map_Mcount_count_cy(2),
      DI => dina_image(0),
      S => layer_map_activation_hid_count_map_Mcount_count_cy_3_rt_1035,
      O => layer_map_activation_hid_count_map_Mcount_count_cy(3)
    );
  layer_map_activation_hid_count_map_Mcount_count_xor_2_Q : XORCY
    port map (
      CI => layer_map_activation_hid_count_map_Mcount_count_cy(1),
      LI => layer_map_activation_hid_count_map_Mcount_count_cy_2_rt_1036,
      O => layer_map_Result(2)
    );
  layer_map_activation_hid_count_map_Mcount_count_cy_2_Q : MUXCY
    port map (
      CI => layer_map_activation_hid_count_map_Mcount_count_cy(1),
      DI => dina_image(0),
      S => layer_map_activation_hid_count_map_Mcount_count_cy_2_rt_1036,
      O => layer_map_activation_hid_count_map_Mcount_count_cy(2)
    );
  layer_map_activation_hid_count_map_Mcount_count_xor_1_Q : XORCY
    port map (
      CI => layer_map_activation_hid_count_map_Mcount_count_cy(0),
      LI => layer_map_activation_hid_count_map_Mcount_count_cy_1_rt_1037,
      O => layer_map_Result(1)
    );
  layer_map_activation_hid_count_map_Mcount_count_cy_1_Q : MUXCY
    port map (
      CI => layer_map_activation_hid_count_map_Mcount_count_cy(0),
      DI => dina_image(0),
      S => layer_map_activation_hid_count_map_Mcount_count_cy_1_rt_1037,
      O => layer_map_activation_hid_count_map_Mcount_count_cy(1)
    );
  layer_map_activation_hid_count_map_Mcount_count_xor_0_Q : XORCY
    port map (
      CI => dina_image(0),
      LI => layer_map_activation_hid_count_map_Mcount_count_lut(0),
      O => layer_map_Result(0)
    );
  layer_map_activation_hid_count_map_Mcount_count_cy_0_Q : MUXCY
    port map (
      CI => dina_image(0),
      DI => N0,
      S => layer_map_activation_hid_count_map_Mcount_count_lut(0),
      O => layer_map_activation_hid_count_map_Mcount_count_cy(0)
    );
  layer_map_activation_hid_count_map_count_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_activation_hid_count_map_count_7_num_neurons_7_equal_1_o_inv,
      CLR => layer_map_count_en_inv,
      D => layer_map_Result(7),
      Q => layer_map_activation_hid_count_map_count(7)
    );
  layer_map_activation_hid_count_map_count_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_activation_hid_count_map_count_7_num_neurons_7_equal_1_o_inv,
      CLR => layer_map_count_en_inv,
      D => layer_map_Result(6),
      Q => layer_map_activation_hid_count_map_count(6)
    );
  layer_map_activation_hid_count_map_count_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_activation_hid_count_map_count_7_num_neurons_7_equal_1_o_inv,
      CLR => layer_map_count_en_inv,
      D => layer_map_Result(5),
      Q => layer_map_activation_hid_count_map_count(5)
    );
  layer_map_activation_hid_count_map_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_activation_hid_count_map_count_7_num_neurons_7_equal_1_o_inv,
      CLR => layer_map_count_en_inv,
      D => layer_map_Result(4),
      Q => layer_map_activation_hid_count_map_count(4)
    );
  layer_map_activation_hid_count_map_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_activation_hid_count_map_count_7_num_neurons_7_equal_1_o_inv,
      CLR => layer_map_count_en_inv,
      D => layer_map_Result(3),
      Q => layer_map_activation_hid_count_map_count(3)
    );
  layer_map_activation_hid_count_map_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_activation_hid_count_map_count_7_num_neurons_7_equal_1_o_inv,
      CLR => layer_map_count_en_inv,
      D => layer_map_Result(2),
      Q => layer_map_activation_hid_count_map_count(2)
    );
  layer_map_activation_hid_count_map_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_activation_hid_count_map_count_7_num_neurons_7_equal_1_o_inv,
      CLR => layer_map_count_en_inv,
      D => layer_map_Result(1),
      Q => layer_map_activation_hid_count_map_count(1)
    );
  layer_map_activation_hid_count_map_count_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_activation_hid_count_map_count_7_num_neurons_7_equal_1_o_inv,
      CLR => layer_map_count_en_inv,
      D => layer_map_Result(0),
      Q => layer_map_activation_hid_count_map_count(0)
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_31_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_30_Q_401,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_31_rt_1130,
      O => layer_map_shift_map_0_shifter_map_Result_31_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_30_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_29_Q_402,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_30_rt_1038,
      O => layer_map_shift_map_0_shifter_map_Result_30_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_30_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_29_Q_402,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_30_rt_1038,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_30_Q_401
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_29_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_28_Q_403,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_29_rt_1039,
      O => layer_map_shift_map_0_shifter_map_Result_29_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_29_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_28_Q_403,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_29_rt_1039,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_29_Q_402
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_28_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_27_Q_404,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_28_rt_1040,
      O => layer_map_shift_map_0_shifter_map_Result_28_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_28_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_27_Q_404,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_28_rt_1040,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_28_Q_403
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_27_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_26_Q_405,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_27_rt_1041,
      O => layer_map_shift_map_0_shifter_map_Result_27_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_27_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_26_Q_405,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_27_rt_1041,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_27_Q_404
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_26_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_25_Q_406,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_26_rt_1042,
      O => layer_map_shift_map_0_shifter_map_Result_26_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_26_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_25_Q_406,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_26_rt_1042,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_26_Q_405
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_25_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_24_Q_407,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_25_rt_1043,
      O => layer_map_shift_map_0_shifter_map_Result_25_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_25_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_24_Q_407,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_25_rt_1043,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_25_Q_406
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_24_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_23_Q_408,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_24_rt_1044,
      O => layer_map_shift_map_0_shifter_map_Result_24_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_24_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_23_Q_408,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_24_rt_1044,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_24_Q_407
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_23_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_22_Q_409,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_23_rt_1045,
      O => layer_map_shift_map_0_shifter_map_Result_23_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_23_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_22_Q_409,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_23_rt_1045,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_23_Q_408
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_22_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_21_Q_410,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_22_rt_1046,
      O => layer_map_shift_map_0_shifter_map_Result_22_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_22_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_21_Q_410,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_22_rt_1046,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_22_Q_409
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_21_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_20_Q_411,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_21_rt_1047,
      O => layer_map_shift_map_0_shifter_map_Result_21_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_21_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_20_Q_411,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_21_rt_1047,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_21_Q_410
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_20_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_19_Q_412,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_20_rt_1048,
      O => layer_map_shift_map_0_shifter_map_Result_20_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_20_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_19_Q_412,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_20_rt_1048,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_20_Q_411
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_19_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_18_Q_413,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_19_rt_1049,
      O => layer_map_shift_map_0_shifter_map_Result_19_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_19_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_18_Q_413,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_19_rt_1049,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_19_Q_412
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_18_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_17_Q_414,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_18_rt_1050,
      O => layer_map_shift_map_0_shifter_map_Result_18_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_18_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_17_Q_414,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_18_rt_1050,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_18_Q_413
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_17_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_16_Q_415,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_17_rt_1051,
      O => layer_map_shift_map_0_shifter_map_Result_17_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_17_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_16_Q_415,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_17_rt_1051,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_17_Q_414
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_16_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_15_Q_416,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_16_rt_1052,
      O => layer_map_shift_map_0_shifter_map_Result_16_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_16_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_15_Q_416,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_16_rt_1052,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_16_Q_415
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_15_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_14_Q_417,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_15_rt_1053,
      O => layer_map_shift_map_0_shifter_map_Result_15_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_15_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_14_Q_417,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_15_rt_1053,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_15_Q_416
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_14_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_13_Q_418,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_14_rt_1054,
      O => layer_map_shift_map_0_shifter_map_Result_14_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_14_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_13_Q_418,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_14_rt_1054,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_14_Q_417
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_13_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_12_Q_419,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_13_rt_1055,
      O => layer_map_shift_map_0_shifter_map_Result_13_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_13_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_12_Q_419,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_13_rt_1055,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_13_Q_418
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_12_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_11_Q_420,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_12_rt_1056,
      O => layer_map_shift_map_0_shifter_map_Result_12_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_12_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_11_Q_420,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_12_rt_1056,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_12_Q_419
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_11_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_10_Q_421,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_11_rt_1057,
      O => layer_map_shift_map_0_shifter_map_Result_11_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_11_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_10_Q_421,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_11_rt_1057,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_11_Q_420
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_10_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_9_Q_422,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_10_rt_1058,
      O => layer_map_shift_map_0_shifter_map_Result_10_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_10_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_9_Q_422,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_10_rt_1058,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_10_Q_421
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_9_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_8_Q_423,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_9_rt_1059,
      O => layer_map_shift_map_0_shifter_map_Result_9_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_9_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_8_Q_423,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_9_rt_1059,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_9_Q_422
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_8_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_7_Q_424,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_8_rt_1060,
      O => layer_map_shift_map_0_shifter_map_Result_8_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_8_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_7_Q_424,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_8_rt_1060,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_8_Q_423
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_7_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_6_Q_425,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_7_rt_1061,
      O => layer_map_shift_map_0_shifter_map_Result_7_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_7_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_6_Q_425,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_7_rt_1061,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_7_Q_424
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_6_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_5_Q_426,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_6_rt_1062,
      O => layer_map_shift_map_0_shifter_map_Result_6_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_6_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_5_Q_426,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_6_rt_1062,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_6_Q_425
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_5_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_4_Q_427,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_5_rt_1063,
      O => layer_map_shift_map_0_shifter_map_Result_5_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_5_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_4_Q_427,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_5_rt_1063,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_5_Q_426
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_4_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_3_Q_428,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_4_rt_1064,
      O => layer_map_shift_map_0_shifter_map_Result_4_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_4_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_3_Q_428,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_4_rt_1064,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_4_Q_427
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_3_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_2_Q_429,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_3_rt_1065,
      O => layer_map_shift_map_0_shifter_map_Result_3_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_3_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_2_Q_429,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_3_rt_1065,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_3_Q_428
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_2_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_1_Q_430,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_2_rt_1066,
      O => layer_map_shift_map_0_shifter_map_Result_2_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_2_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_1_Q_430,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_2_rt_1066,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_2_Q_429
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_1_Q : XORCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_0_Q_431,
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_1_rt_1067,
      O => layer_map_shift_map_0_shifter_map_Result_1_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_1_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_0_Q_431,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_1_rt_1067,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_1_Q_430
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_0_Q : XORCY
    port map (
      CI => dina_image(0),
      LI => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_lut_0_Q,
      O => layer_map_shift_map_0_shifter_map_Result_0_Q
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_0_Q : MUXCY
    port map (
      CI => dina_image(0),
      DI => N0,
      S => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_lut_0_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_0_Q_431
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_6_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_5_Q_433,
      DI => layer_map_shift_map_0_shifter_map_shifter_shift_counter_31_Q,
      S => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_5_987,
      O => layer_map_shift_map_0_shifter_map_shifter_shift_counter_31_INV_16_o
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_6_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_30_Q,
      I1 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_31_Q,
      O => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_5_987
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_5_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_4_Q_435,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_5_Q_434,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_5_Q_433
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_5_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_25_Q,
      I1 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_26_Q,
      I2 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_27_Q,
      I3 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_28_Q,
      I4 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_29_Q,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_5_Q_434
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_4_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_3_Q_437,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_4_Q_436,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_4_Q_435
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_20_Q,
      I1 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_21_Q,
      I2 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_22_Q,
      I3 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_23_Q,
      I4 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_24_Q,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_4_Q_436
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_3_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_2_Q_439,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_3_Q_438,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_3_Q_437
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_15_Q,
      I1 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_16_Q,
      I2 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_17_Q,
      I3 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_18_Q,
      I4 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_19_Q,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_3_Q_438
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_2_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_1_Q_441,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_2_Q_440,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_2_Q_439
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_2_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_10_Q,
      I1 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_11_Q,
      I2 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_12_Q,
      I3 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_13_Q,
      I4 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_14_Q,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_2_Q_440
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_1_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_0_Q_443,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_1_Q_442,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_1_Q_441
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_1_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_5_Q,
      I1 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_6_Q,
      I2 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_7_Q,
      I3 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_8_Q,
      I4 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_9_Q,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_1_Q_442
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lutdi_445,
      S => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_0_Q_444,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_0_Q_443
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_0_Q,
      I1 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_1_Q,
      I2 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_3_Q,
      I3 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_4_Q,
      I4 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_2_Q,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_0_Q_444
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lutdi : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_2_Q,
      I1 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_3_Q,
      I2 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_4_Q,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lutdi_445
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_5_Q_448,
      DI => layer_map_shift_map_0_shifter_map_shifter_shift_counter_31_Q,
      S => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_6_Q_447,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_446
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_6_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_30_Q,
      I1 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_31_Q,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_6_Q_447
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_5_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_4_Q_450,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_5_Q_449,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_5_Q_448
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_5_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_25_Q,
      I1 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_26_Q,
      I2 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_27_Q,
      I3 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_28_Q,
      I4 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_29_Q,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_5_Q_449
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_4_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_3_Q_452,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_4_Q_451,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_4_Q_450
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_20_Q,
      I1 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_21_Q,
      I2 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_22_Q,
      I3 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_23_Q,
      I4 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_24_Q,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_4_Q_451
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_3_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_2_Q_454,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_3_Q_453,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_3_Q_452
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_15_Q,
      I1 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_16_Q,
      I2 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_17_Q,
      I3 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_18_Q,
      I4 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_19_Q,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_3_Q_453
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_2_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_1_Q_456,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_2_Q_455,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_2_Q_454
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_2_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_10_Q,
      I1 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_11_Q,
      I2 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_12_Q,
      I3 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_13_Q,
      I4 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_14_Q,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_2_Q_455
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_1_Q : MUXCY
    port map (
      CI => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_0_Q_458,
      DI => dina_image(0),
      S => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_1_Q_457,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_1_Q_456
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_1_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_5_Q,
      I1 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_6_Q,
      I2 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_7_Q,
      I3 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_8_Q,
      I4 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_9_Q,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_1_Q_457
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lutdi_460,
      S => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_0_Q_459,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_0_Q_458
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_0_Q,
      I1 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_2_Q,
      I2 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_3_Q,
      I3 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_4_Q,
      I4 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_1_Q,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_0_Q_459
    );
  layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lutdi : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_1_Q,
      I1 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_2_Q,
      I2 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_3_Q,
      I3 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_4_Q,
      O => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lutdi_460
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_31 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_31_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_31_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_30 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_30_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_30_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_29 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_29_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_29_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_28 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_28_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_28_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_27 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_27_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_27_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_26 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_26_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_26_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_25 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_25_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_25_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_24 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_24_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_24_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_23 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_23_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_23_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_22 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_22_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_22_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_21 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_21_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_21_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_20 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_20_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_20_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_19_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_19_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_18_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_18_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_17_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_17_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_16_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_16_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_15_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_15_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_14_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_14_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_13_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_13_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_12_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_12_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_11_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_11_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_10_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_10_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_9_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_9_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_8_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_8_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_7_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_7_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_6_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_6_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_5_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_5_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_4_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_4_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_3_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_3_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_2_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_2_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_1_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_1_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_shift_counter_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_Result_0_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_shift_counter_0_Q
    );
  layer_map_shift_map_0_shifter_map_acticv_mul_en : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_GND_14_o_GND_14_o_MUX_60_o,
      Q => layer_map_shift_map_0_shifter_map_acticv_mul_en_562
    );
  layer_map_shift_map_0_shifter_map_shifted_output_temp_15 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_Q,
      Q => layer_map_shift_map_0_shifter_map_shifted_output_temp_15_Q
    );
  layer_map_shift_map_0_shifter_map_shifted_output_temp_14 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_14_Q,
      Q => layer_map_shift_map_0_shifter_map_shifted_output_temp_14_Q
    );
  layer_map_shift_map_0_shifter_map_shifted_output_temp_13 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_13_Q,
      Q => layer_map_shift_map_0_shifter_map_shifted_output_temp_13_Q
    );
  layer_map_shift_map_0_shifter_map_shifted_output_temp_12 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_12_Q,
      Q => layer_map_shift_map_0_shifter_map_shifted_output_temp_12_Q
    );
  layer_map_shift_map_0_shifter_map_shifted_output_temp_11 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_11_Q,
      Q => layer_map_shift_map_0_shifter_map_shifted_output_temp_11_Q
    );
  layer_map_shift_map_0_shifter_map_shifted_output_temp_10 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_10_Q,
      Q => layer_map_shift_map_0_shifter_map_shifted_output_temp_10_Q
    );
  layer_map_shift_map_0_shifter_map_shifted_output_temp_9 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_9_Q,
      Q => layer_map_shift_map_0_shifter_map_shifted_output_temp_9_Q
    );
  layer_map_shift_map_0_shifter_map_shifted_output_temp_8 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_8_Q,
      Q => layer_map_shift_map_0_shifter_map_shifted_output_temp_8_Q
    );
  layer_map_shift_map_0_shifter_map_shifted_output_temp_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_7_Q,
      Q => layer_map_shift_map_0_shifter_map_shifted_output_temp_7_Q
    );
  layer_map_shift_map_0_shifter_map_shifted_output_temp_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_6_Q,
      Q => layer_map_shift_map_0_shifter_map_shifted_output_temp_6_Q
    );
  layer_map_shift_map_0_shifter_map_shifted_output_temp_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_5_Q,
      Q => layer_map_shift_map_0_shifter_map_shifted_output_temp_5_Q
    );
  layer_map_shift_map_0_shifter_map_shifted_output_temp_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_4_Q,
      Q => layer_map_shift_map_0_shifter_map_shifted_output_temp_4_Q
    );
  layer_map_shift_map_0_shifter_map_shifted_output_temp_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_3_Q,
      Q => layer_map_shift_map_0_shifter_map_shifted_output_temp_3_Q
    );
  layer_map_shift_map_0_shifter_map_shifted_output_temp_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_2_Q,
      Q => layer_map_shift_map_0_shifter_map_shifted_output_temp_2_Q
    );
  layer_map_shift_map_0_shifter_map_shifted_output_temp_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_1_Q,
      Q => layer_map_shift_map_0_shifter_map_shifted_output_temp_1_Q
    );
  layer_map_shift_map_0_shifter_map_shifted_output_temp_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_0_Q,
      Q => layer_map_shift_map_0_shifter_map_shifted_output_temp_0_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_temp_reg_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_15_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_temp_reg_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_14_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_temp_reg_14_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_temp_reg_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_13_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_temp_reg_13_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_temp_reg_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_12_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_temp_reg_12_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_temp_reg_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_11_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_temp_reg_11_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_temp_reg_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_10_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_temp_reg_10_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_temp_reg_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_9_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_temp_reg_9_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_temp_reg_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_8_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_temp_reg_8_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_temp_reg_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_7_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_temp_reg_7_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_temp_reg_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_6_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_temp_reg_6_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_temp_reg_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_5_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_temp_reg_5_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_temp_reg_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_4_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_temp_reg_4_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_temp_reg_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_3_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_temp_reg_3_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_temp_reg_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_2_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_temp_reg_2_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_temp_reg_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_1_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_temp_reg_1_Q
    );
  layer_map_shift_map_0_shifter_map_shifter_temp_reg_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_0_Q,
      Q => layer_map_shift_map_0_shifter_map_shifter_temp_reg_0_Q
    );
  layer_map_shift_map_0_shifter_map_input_temp_15 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(0, 15),
      Q => layer_map_shift_map_0_shifter_map_input_temp_15_Q
    );
  layer_map_shift_map_0_shifter_map_input_temp_14 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(0, 14),
      Q => layer_map_shift_map_0_shifter_map_input_temp_14_Q
    );
  layer_map_shift_map_0_shifter_map_input_temp_13 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(0, 13),
      Q => layer_map_shift_map_0_shifter_map_input_temp_13_Q
    );
  layer_map_shift_map_0_shifter_map_input_temp_12 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(0, 12),
      Q => layer_map_shift_map_0_shifter_map_input_temp_12_Q
    );
  layer_map_shift_map_0_shifter_map_input_temp_11 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(0, 11),
      Q => layer_map_shift_map_0_shifter_map_input_temp_11_Q
    );
  layer_map_shift_map_0_shifter_map_input_temp_10 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(0, 10),
      Q => layer_map_shift_map_0_shifter_map_input_temp_10_Q
    );
  layer_map_shift_map_0_shifter_map_input_temp_9 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(0, 9),
      Q => layer_map_shift_map_0_shifter_map_input_temp_9_Q
    );
  layer_map_shift_map_0_shifter_map_input_temp_8 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(0, 8),
      Q => layer_map_shift_map_0_shifter_map_input_temp_8_Q
    );
  layer_map_shift_map_0_shifter_map_input_temp_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(0, 7),
      Q => layer_map_shift_map_0_shifter_map_input_temp_7_Q
    );
  layer_map_shift_map_0_shifter_map_input_temp_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(0, 6),
      Q => layer_map_shift_map_0_shifter_map_input_temp_6_Q
    );
  layer_map_shift_map_0_shifter_map_input_temp_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(0, 5),
      Q => layer_map_shift_map_0_shifter_map_input_temp_5_Q
    );
  layer_map_shift_map_0_shifter_map_input_temp_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(0, 4),
      Q => layer_map_shift_map_0_shifter_map_input_temp_4_Q
    );
  layer_map_shift_map_0_shifter_map_input_temp_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(0, 3),
      Q => layer_map_shift_map_0_shifter_map_input_temp_3_Q
    );
  layer_map_shift_map_0_shifter_map_input_temp_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(0, 2),
      Q => layer_map_shift_map_0_shifter_map_input_temp_2_Q
    );
  layer_map_shift_map_0_shifter_map_input_temp_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(0, 1),
      Q => layer_map_shift_map_0_shifter_map_input_temp_1_Q
    );
  layer_map_shift_map_0_shifter_map_input_temp_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(0, 0),
      Q => layer_map_shift_map_0_shifter_map_input_temp_0_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_31_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_30_Q_595,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_31_rt_1131,
      O => layer_map_shift_map_1_shifter_map_Result_31_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_30_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_29_Q_596,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_30_rt_1068,
      O => layer_map_shift_map_1_shifter_map_Result_30_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_30_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_29_Q_596,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_30_rt_1068,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_30_Q_595
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_29_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_28_Q_597,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_29_rt_1069,
      O => layer_map_shift_map_1_shifter_map_Result_29_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_29_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_28_Q_597,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_29_rt_1069,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_29_Q_596
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_28_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_27_Q_598,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_28_rt_1070,
      O => layer_map_shift_map_1_shifter_map_Result_28_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_28_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_27_Q_598,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_28_rt_1070,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_28_Q_597
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_27_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_26_Q_599,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_27_rt_1071,
      O => layer_map_shift_map_1_shifter_map_Result_27_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_27_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_26_Q_599,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_27_rt_1071,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_27_Q_598
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_26_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_25_Q_600,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_26_rt_1072,
      O => layer_map_shift_map_1_shifter_map_Result_26_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_26_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_25_Q_600,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_26_rt_1072,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_26_Q_599
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_25_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_24_Q_601,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_25_rt_1073,
      O => layer_map_shift_map_1_shifter_map_Result_25_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_25_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_24_Q_601,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_25_rt_1073,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_25_Q_600
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_24_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_23_Q_602,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_24_rt_1074,
      O => layer_map_shift_map_1_shifter_map_Result_24_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_24_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_23_Q_602,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_24_rt_1074,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_24_Q_601
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_23_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_22_Q_603,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_23_rt_1075,
      O => layer_map_shift_map_1_shifter_map_Result_23_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_23_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_22_Q_603,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_23_rt_1075,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_23_Q_602
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_22_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_21_Q_604,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_22_rt_1076,
      O => layer_map_shift_map_1_shifter_map_Result_22_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_22_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_21_Q_604,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_22_rt_1076,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_22_Q_603
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_21_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_20_Q_605,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_21_rt_1077,
      O => layer_map_shift_map_1_shifter_map_Result_21_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_21_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_20_Q_605,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_21_rt_1077,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_21_Q_604
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_20_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_19_Q_606,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_20_rt_1078,
      O => layer_map_shift_map_1_shifter_map_Result_20_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_20_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_19_Q_606,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_20_rt_1078,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_20_Q_605
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_19_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_18_Q_607,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_19_rt_1079,
      O => layer_map_shift_map_1_shifter_map_Result_19_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_19_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_18_Q_607,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_19_rt_1079,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_19_Q_606
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_18_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_17_Q_608,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_18_rt_1080,
      O => layer_map_shift_map_1_shifter_map_Result_18_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_18_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_17_Q_608,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_18_rt_1080,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_18_Q_607
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_17_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_16_Q_609,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_17_rt_1081,
      O => layer_map_shift_map_1_shifter_map_Result_17_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_17_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_16_Q_609,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_17_rt_1081,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_17_Q_608
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_16_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_15_Q_610,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_16_rt_1082,
      O => layer_map_shift_map_1_shifter_map_Result_16_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_16_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_15_Q_610,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_16_rt_1082,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_16_Q_609
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_15_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_14_Q_611,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_15_rt_1083,
      O => layer_map_shift_map_1_shifter_map_Result_15_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_15_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_14_Q_611,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_15_rt_1083,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_15_Q_610
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_14_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_13_Q_612,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_14_rt_1084,
      O => layer_map_shift_map_1_shifter_map_Result_14_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_14_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_13_Q_612,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_14_rt_1084,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_14_Q_611
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_13_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_12_Q_613,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_13_rt_1085,
      O => layer_map_shift_map_1_shifter_map_Result_13_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_13_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_12_Q_613,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_13_rt_1085,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_13_Q_612
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_12_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_11_Q_614,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_12_rt_1086,
      O => layer_map_shift_map_1_shifter_map_Result_12_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_12_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_11_Q_614,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_12_rt_1086,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_12_Q_613
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_11_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_10_Q_615,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_11_rt_1087,
      O => layer_map_shift_map_1_shifter_map_Result_11_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_11_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_10_Q_615,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_11_rt_1087,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_11_Q_614
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_10_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_9_Q_616,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_10_rt_1088,
      O => layer_map_shift_map_1_shifter_map_Result_10_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_10_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_9_Q_616,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_10_rt_1088,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_10_Q_615
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_9_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_8_Q_617,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_9_rt_1089,
      O => layer_map_shift_map_1_shifter_map_Result_9_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_9_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_8_Q_617,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_9_rt_1089,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_9_Q_616
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_8_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_7_Q_618,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_8_rt_1090,
      O => layer_map_shift_map_1_shifter_map_Result_8_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_8_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_7_Q_618,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_8_rt_1090,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_8_Q_617
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_7_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_6_Q_619,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_7_rt_1091,
      O => layer_map_shift_map_1_shifter_map_Result_7_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_7_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_6_Q_619,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_7_rt_1091,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_7_Q_618
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_6_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_5_Q_620,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_6_rt_1092,
      O => layer_map_shift_map_1_shifter_map_Result_6_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_6_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_5_Q_620,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_6_rt_1092,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_6_Q_619
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_5_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_4_Q_621,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_5_rt_1093,
      O => layer_map_shift_map_1_shifter_map_Result_5_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_5_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_4_Q_621,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_5_rt_1093,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_5_Q_620
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_4_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_3_Q_622,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_4_rt_1094,
      O => layer_map_shift_map_1_shifter_map_Result_4_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_4_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_3_Q_622,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_4_rt_1094,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_4_Q_621
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_3_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_2_Q_623,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_3_rt_1095,
      O => layer_map_shift_map_1_shifter_map_Result_3_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_3_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_2_Q_623,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_3_rt_1095,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_3_Q_622
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_2_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_1_Q_624,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_2_rt_1096,
      O => layer_map_shift_map_1_shifter_map_Result_2_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_2_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_1_Q_624,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_2_rt_1096,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_2_Q_623
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_1_Q : XORCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_0_Q_625,
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_1_rt_1097,
      O => layer_map_shift_map_1_shifter_map_Result_1_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_1_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_0_Q_625,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_1_rt_1097,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_1_Q_624
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_0_Q : XORCY
    port map (
      CI => dina_image(0),
      LI => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_lut_0_Q,
      O => layer_map_shift_map_1_shifter_map_Result_0_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_0_Q : MUXCY
    port map (
      CI => dina_image(0),
      DI => N0,
      S => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_lut_0_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_0_Q_625
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_6_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_5_Q_627,
      DI => layer_map_shift_map_1_shifter_map_shifter_shift_counter_31_Q,
      S => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_5_993,
      O => layer_map_shift_map_1_shifter_map_shifter_shift_counter_31_INV_16_o
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_6_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_30_Q,
      I1 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_31_Q,
      O => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_5_993
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_5_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_4_Q_629,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_5_Q_628,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_5_Q_627
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_5_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_25_Q,
      I1 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_26_Q,
      I2 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_27_Q,
      I3 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_28_Q,
      I4 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_29_Q,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_5_Q_628
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_4_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_3_Q_631,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_4_Q_630,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_4_Q_629
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_20_Q,
      I1 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_21_Q,
      I2 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_22_Q,
      I3 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_23_Q,
      I4 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_24_Q,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_4_Q_630
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_3_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_2_Q_633,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_3_Q_632,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_3_Q_631
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_15_Q,
      I1 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_16_Q,
      I2 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_17_Q,
      I3 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_18_Q,
      I4 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_19_Q,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_3_Q_632
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_2_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_1_Q_635,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_2_Q_634,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_2_Q_633
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_2_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_10_Q,
      I1 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_11_Q,
      I2 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_12_Q,
      I3 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_13_Q,
      I4 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_14_Q,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_2_Q_634
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_1_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_0_Q_637,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_1_Q_636,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_1_Q_635
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_1_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_5_Q,
      I1 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_6_Q,
      I2 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_7_Q,
      I3 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_8_Q,
      I4 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_9_Q,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_1_Q_636
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lutdi_639,
      S => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_0_Q_638,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_0_Q_637
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_0_Q,
      I1 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_1_Q,
      I2 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_3_Q,
      I3 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_4_Q,
      I4 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_2_Q,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_0_Q_638
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lutdi : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_2_Q,
      I1 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_3_Q,
      I2 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_4_Q,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lutdi_639
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_5_Q_642,
      DI => layer_map_shift_map_1_shifter_map_shifter_shift_counter_31_Q,
      S => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_6_Q_641,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_640
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_6_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_30_Q,
      I1 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_31_Q,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_6_Q_641
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_5_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_4_Q_644,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_5_Q_643,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_5_Q_642
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_5_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_25_Q,
      I1 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_26_Q,
      I2 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_27_Q,
      I3 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_28_Q,
      I4 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_29_Q,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_5_Q_643
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_4_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_3_Q_646,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_4_Q_645,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_4_Q_644
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_20_Q,
      I1 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_21_Q,
      I2 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_22_Q,
      I3 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_23_Q,
      I4 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_24_Q,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_4_Q_645
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_3_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_2_Q_648,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_3_Q_647,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_3_Q_646
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_15_Q,
      I1 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_16_Q,
      I2 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_17_Q,
      I3 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_18_Q,
      I4 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_19_Q,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_3_Q_647
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_2_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_1_Q_650,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_2_Q_649,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_2_Q_648
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_2_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_10_Q,
      I1 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_11_Q,
      I2 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_12_Q,
      I3 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_13_Q,
      I4 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_14_Q,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_2_Q_649
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_1_Q : MUXCY
    port map (
      CI => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_0_Q_652,
      DI => dina_image(0),
      S => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_1_Q_651,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_1_Q_650
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_1_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_5_Q,
      I1 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_6_Q,
      I2 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_7_Q,
      I3 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_8_Q,
      I4 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_9_Q,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_1_Q_651
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lutdi_654,
      S => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_0_Q_653,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_0_Q_652
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_0_Q,
      I1 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_2_Q,
      I2 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_3_Q,
      I3 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_4_Q,
      I4 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_1_Q,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_0_Q_653
    );
  layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lutdi : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_1_Q,
      I1 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_2_Q,
      I2 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_3_Q,
      I3 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_4_Q,
      O => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lutdi_654
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_31 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_31_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_31_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_30 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_30_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_30_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_29 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_29_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_29_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_28 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_28_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_28_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_27 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_27_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_27_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_26 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_26_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_26_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_25 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_25_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_25_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_24 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_24_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_24_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_23 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_23_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_23_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_22 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_22_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_22_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_21 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_21_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_21_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_20 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_20_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_20_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_19_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_19_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_18_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_18_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_17_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_17_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_16_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_16_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_15_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_15_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_14_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_14_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_13_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_13_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_12_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_12_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_11_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_11_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_10_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_10_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_9_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_9_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_8_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_8_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_7_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_7_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_6_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_6_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_5_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_5_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_4_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_4_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_3_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_3_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_2_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_2_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_1_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_1_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_shift_counter_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_Result_0_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_shift_counter_0_Q
    );
  layer_map_shift_map_1_shifter_map_acticv_mul_en : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_GND_14_o_GND_14_o_MUX_60_o,
      Q => layer_map_shift_map_1_shifter_map_acticv_mul_en_755
    );
  layer_map_shift_map_1_shifter_map_shifted_output_temp_15 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_Q,
      Q => layer_map_shift_map_1_shifter_map_shifted_output_temp_15_Q
    );
  layer_map_shift_map_1_shifter_map_shifted_output_temp_14 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_14_Q,
      Q => layer_map_shift_map_1_shifter_map_shifted_output_temp_14_Q
    );
  layer_map_shift_map_1_shifter_map_shifted_output_temp_13 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_13_Q,
      Q => layer_map_shift_map_1_shifter_map_shifted_output_temp_13_Q
    );
  layer_map_shift_map_1_shifter_map_shifted_output_temp_12 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_12_Q,
      Q => layer_map_shift_map_1_shifter_map_shifted_output_temp_12_Q
    );
  layer_map_shift_map_1_shifter_map_shifted_output_temp_11 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_11_Q,
      Q => layer_map_shift_map_1_shifter_map_shifted_output_temp_11_Q
    );
  layer_map_shift_map_1_shifter_map_shifted_output_temp_10 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_10_Q,
      Q => layer_map_shift_map_1_shifter_map_shifted_output_temp_10_Q
    );
  layer_map_shift_map_1_shifter_map_shifted_output_temp_9 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_9_Q,
      Q => layer_map_shift_map_1_shifter_map_shifted_output_temp_9_Q
    );
  layer_map_shift_map_1_shifter_map_shifted_output_temp_8 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_8_Q,
      Q => layer_map_shift_map_1_shifter_map_shifted_output_temp_8_Q
    );
  layer_map_shift_map_1_shifter_map_shifted_output_temp_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_7_Q,
      Q => layer_map_shift_map_1_shifter_map_shifted_output_temp_7_Q
    );
  layer_map_shift_map_1_shifter_map_shifted_output_temp_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_6_Q,
      Q => layer_map_shift_map_1_shifter_map_shifted_output_temp_6_Q
    );
  layer_map_shift_map_1_shifter_map_shifted_output_temp_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_5_Q,
      Q => layer_map_shift_map_1_shifter_map_shifted_output_temp_5_Q
    );
  layer_map_shift_map_1_shifter_map_shifted_output_temp_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_4_Q,
      Q => layer_map_shift_map_1_shifter_map_shifted_output_temp_4_Q
    );
  layer_map_shift_map_1_shifter_map_shifted_output_temp_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_3_Q,
      Q => layer_map_shift_map_1_shifter_map_shifted_output_temp_3_Q
    );
  layer_map_shift_map_1_shifter_map_shifted_output_temp_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_2_Q,
      Q => layer_map_shift_map_1_shifter_map_shifted_output_temp_2_Q
    );
  layer_map_shift_map_1_shifter_map_shifted_output_temp_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_1_Q,
      Q => layer_map_shift_map_1_shifter_map_shifted_output_temp_1_Q
    );
  layer_map_shift_map_1_shifter_map_shifted_output_temp_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_0_Q,
      Q => layer_map_shift_map_1_shifter_map_shifted_output_temp_0_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_temp_reg_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_15_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_temp_reg_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_14_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_temp_reg_14_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_temp_reg_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_13_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_temp_reg_13_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_temp_reg_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_12_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_temp_reg_12_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_temp_reg_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_11_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_temp_reg_11_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_temp_reg_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_10_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_temp_reg_10_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_temp_reg_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_9_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_temp_reg_9_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_temp_reg_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_8_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_temp_reg_8_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_temp_reg_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_7_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_temp_reg_7_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_temp_reg_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_6_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_temp_reg_6_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_temp_reg_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_5_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_temp_reg_5_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_temp_reg_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_4_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_temp_reg_4_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_temp_reg_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_3_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_temp_reg_3_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_temp_reg_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_2_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_temp_reg_2_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_temp_reg_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_1_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_temp_reg_1_Q
    );
  layer_map_shift_map_1_shifter_map_shifter_temp_reg_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_0_Q,
      Q => layer_map_shift_map_1_shifter_map_shifter_temp_reg_0_Q
    );
  layer_map_shift_map_1_shifter_map_input_temp_15 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(1, 15),
      Q => layer_map_shift_map_1_shifter_map_input_temp_15_Q
    );
  layer_map_shift_map_1_shifter_map_input_temp_14 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(1, 14),
      Q => layer_map_shift_map_1_shifter_map_input_temp_14_Q
    );
  layer_map_shift_map_1_shifter_map_input_temp_13 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(1, 13),
      Q => layer_map_shift_map_1_shifter_map_input_temp_13_Q
    );
  layer_map_shift_map_1_shifter_map_input_temp_12 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(1, 12),
      Q => layer_map_shift_map_1_shifter_map_input_temp_12_Q
    );
  layer_map_shift_map_1_shifter_map_input_temp_11 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(1, 11),
      Q => layer_map_shift_map_1_shifter_map_input_temp_11_Q
    );
  layer_map_shift_map_1_shifter_map_input_temp_10 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(1, 10),
      Q => layer_map_shift_map_1_shifter_map_input_temp_10_Q
    );
  layer_map_shift_map_1_shifter_map_input_temp_9 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(1, 9),
      Q => layer_map_shift_map_1_shifter_map_input_temp_9_Q
    );
  layer_map_shift_map_1_shifter_map_input_temp_8 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(1, 8),
      Q => layer_map_shift_map_1_shifter_map_input_temp_8_Q
    );
  layer_map_shift_map_1_shifter_map_input_temp_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(1, 7),
      Q => layer_map_shift_map_1_shifter_map_input_temp_7_Q
    );
  layer_map_shift_map_1_shifter_map_input_temp_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(1, 6),
      Q => layer_map_shift_map_1_shifter_map_input_temp_6_Q
    );
  layer_map_shift_map_1_shifter_map_input_temp_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(1, 5),
      Q => layer_map_shift_map_1_shifter_map_input_temp_5_Q
    );
  layer_map_shift_map_1_shifter_map_input_temp_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(1, 4),
      Q => layer_map_shift_map_1_shifter_map_input_temp_4_Q
    );
  layer_map_shift_map_1_shifter_map_input_temp_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(1, 3),
      Q => layer_map_shift_map_1_shifter_map_input_temp_3_Q
    );
  layer_map_shift_map_1_shifter_map_input_temp_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(1, 2),
      Q => layer_map_shift_map_1_shifter_map_input_temp_2_Q
    );
  layer_map_shift_map_1_shifter_map_input_temp_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(1, 1),
      Q => layer_map_shift_map_1_shifter_map_input_temp_1_Q
    );
  layer_map_shift_map_1_shifter_map_input_temp_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(1, 0),
      Q => layer_map_shift_map_1_shifter_map_input_temp_0_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_31_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_30_Q_788,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_31_rt_1132,
      O => layer_map_shift_map_2_shifter_map_Result_31_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_30_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_29_Q_789,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_30_rt_1098,
      O => layer_map_shift_map_2_shifter_map_Result_30_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_30_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_29_Q_789,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_30_rt_1098,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_30_Q_788
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_29_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_28_Q_790,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_29_rt_1099,
      O => layer_map_shift_map_2_shifter_map_Result_29_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_29_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_28_Q_790,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_29_rt_1099,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_29_Q_789
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_28_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_27_Q_791,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_28_rt_1100,
      O => layer_map_shift_map_2_shifter_map_Result_28_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_28_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_27_Q_791,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_28_rt_1100,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_28_Q_790
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_27_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_26_Q_792,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_27_rt_1101,
      O => layer_map_shift_map_2_shifter_map_Result_27_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_27_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_26_Q_792,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_27_rt_1101,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_27_Q_791
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_26_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_25_Q_793,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_26_rt_1102,
      O => layer_map_shift_map_2_shifter_map_Result_26_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_26_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_25_Q_793,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_26_rt_1102,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_26_Q_792
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_25_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_24_Q_794,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_25_rt_1103,
      O => layer_map_shift_map_2_shifter_map_Result_25_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_25_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_24_Q_794,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_25_rt_1103,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_25_Q_793
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_24_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_23_Q_795,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_24_rt_1104,
      O => layer_map_shift_map_2_shifter_map_Result_24_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_24_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_23_Q_795,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_24_rt_1104,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_24_Q_794
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_23_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_22_Q_796,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_23_rt_1105,
      O => layer_map_shift_map_2_shifter_map_Result_23_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_23_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_22_Q_796,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_23_rt_1105,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_23_Q_795
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_22_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_21_Q_797,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_22_rt_1106,
      O => layer_map_shift_map_2_shifter_map_Result_22_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_22_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_21_Q_797,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_22_rt_1106,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_22_Q_796
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_21_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_20_Q_798,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_21_rt_1107,
      O => layer_map_shift_map_2_shifter_map_Result_21_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_21_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_20_Q_798,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_21_rt_1107,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_21_Q_797
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_20_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_19_Q_799,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_20_rt_1108,
      O => layer_map_shift_map_2_shifter_map_Result_20_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_20_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_19_Q_799,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_20_rt_1108,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_20_Q_798
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_19_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_18_Q_800,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_19_rt_1109,
      O => layer_map_shift_map_2_shifter_map_Result_19_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_19_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_18_Q_800,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_19_rt_1109,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_19_Q_799
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_18_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_17_Q_801,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_18_rt_1110,
      O => layer_map_shift_map_2_shifter_map_Result_18_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_18_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_17_Q_801,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_18_rt_1110,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_18_Q_800
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_17_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_16_Q_802,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_17_rt_1111,
      O => layer_map_shift_map_2_shifter_map_Result_17_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_17_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_16_Q_802,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_17_rt_1111,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_17_Q_801
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_16_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_15_Q_803,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_16_rt_1112,
      O => layer_map_shift_map_2_shifter_map_Result_16_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_16_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_15_Q_803,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_16_rt_1112,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_16_Q_802
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_15_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_14_Q_804,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_15_rt_1113,
      O => layer_map_shift_map_2_shifter_map_Result_15_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_15_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_14_Q_804,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_15_rt_1113,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_15_Q_803
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_14_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_13_Q_805,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_14_rt_1114,
      O => layer_map_shift_map_2_shifter_map_Result_14_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_14_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_13_Q_805,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_14_rt_1114,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_14_Q_804
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_13_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_12_Q_806,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_13_rt_1115,
      O => layer_map_shift_map_2_shifter_map_Result_13_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_13_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_12_Q_806,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_13_rt_1115,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_13_Q_805
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_12_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_11_Q_807,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_12_rt_1116,
      O => layer_map_shift_map_2_shifter_map_Result_12_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_12_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_11_Q_807,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_12_rt_1116,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_12_Q_806
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_11_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_10_Q_808,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_11_rt_1117,
      O => layer_map_shift_map_2_shifter_map_Result_11_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_11_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_10_Q_808,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_11_rt_1117,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_11_Q_807
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_10_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_9_Q_809,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_10_rt_1118,
      O => layer_map_shift_map_2_shifter_map_Result_10_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_10_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_9_Q_809,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_10_rt_1118,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_10_Q_808
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_9_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_8_Q_810,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_9_rt_1119,
      O => layer_map_shift_map_2_shifter_map_Result_9_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_9_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_8_Q_810,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_9_rt_1119,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_9_Q_809
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_8_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_7_Q_811,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_8_rt_1120,
      O => layer_map_shift_map_2_shifter_map_Result_8_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_8_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_7_Q_811,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_8_rt_1120,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_8_Q_810
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_7_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_6_Q_812,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_7_rt_1121,
      O => layer_map_shift_map_2_shifter_map_Result_7_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_7_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_6_Q_812,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_7_rt_1121,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_7_Q_811
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_6_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_5_Q_813,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_6_rt_1122,
      O => layer_map_shift_map_2_shifter_map_Result_6_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_6_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_5_Q_813,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_6_rt_1122,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_6_Q_812
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_5_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_4_Q_814,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_5_rt_1123,
      O => layer_map_shift_map_2_shifter_map_Result_5_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_5_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_4_Q_814,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_5_rt_1123,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_5_Q_813
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_4_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_3_Q_815,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_4_rt_1124,
      O => layer_map_shift_map_2_shifter_map_Result_4_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_4_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_3_Q_815,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_4_rt_1124,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_4_Q_814
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_3_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_2_Q_816,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_3_rt_1125,
      O => layer_map_shift_map_2_shifter_map_Result_3_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_3_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_2_Q_816,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_3_rt_1125,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_3_Q_815
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_2_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_1_Q_817,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_2_rt_1126,
      O => layer_map_shift_map_2_shifter_map_Result_2_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_2_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_1_Q_817,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_2_rt_1126,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_2_Q_816
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_1_Q : XORCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_0_Q_818,
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_1_rt_1127,
      O => layer_map_shift_map_2_shifter_map_Result_1_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_1_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_0_Q_818,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_1_rt_1127,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_1_Q_817
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_0_Q : XORCY
    port map (
      CI => dina_image(0),
      LI => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_lut_0_Q,
      O => layer_map_shift_map_2_shifter_map_Result_0_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_0_Q : MUXCY
    port map (
      CI => dina_image(0),
      DI => N0,
      S => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_lut_0_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_0_Q_818
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_6_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_5_Q_820,
      DI => layer_map_shift_map_2_shifter_map_shifter_shift_counter_31_Q,
      S => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_5_999,
      O => layer_map_shift_map_2_shifter_map_shifter_shift_counter_31_INV_16_o
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_6_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_30_Q,
      I1 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_31_Q,
      O => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_5_999
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_5_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_4_Q_822,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_5_Q_821,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_5_Q_820
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_5_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_25_Q,
      I1 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_26_Q,
      I2 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_27_Q,
      I3 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_28_Q,
      I4 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_29_Q,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_5_Q_821
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_4_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_3_Q_824,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_4_Q_823,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_4_Q_822
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_20_Q,
      I1 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_21_Q,
      I2 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_22_Q,
      I3 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_23_Q,
      I4 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_24_Q,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_4_Q_823
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_3_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_2_Q_826,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_3_Q_825,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_3_Q_824
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_15_Q,
      I1 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_16_Q,
      I2 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_17_Q,
      I3 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_18_Q,
      I4 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_19_Q,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_3_Q_825
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_2_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_1_Q_828,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_2_Q_827,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_2_Q_826
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_2_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_10_Q,
      I1 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_11_Q,
      I2 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_12_Q,
      I3 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_13_Q,
      I4 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_14_Q,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_2_Q_827
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_1_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_0_Q_830,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_1_Q_829,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_1_Q_828
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_1_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_5_Q,
      I1 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_6_Q,
      I2 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_7_Q,
      I3 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_8_Q,
      I4 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_9_Q,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_1_Q_829
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lutdi_832,
      S => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_0_Q_831,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_cy_0_Q_830
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_0_Q,
      I1 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_1_Q,
      I2 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_3_Q,
      I3 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_4_Q,
      I4 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_2_Q,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lut_0_Q_831
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lutdi : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_2_Q,
      I1 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_3_Q,
      I2 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_4_Q,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_INV_16_o_lutdi_832
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_5_Q_835,
      DI => layer_map_shift_map_2_shifter_map_shifter_shift_counter_31_Q,
      S => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_6_Q_834,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_833
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_6_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_30_Q,
      I1 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_31_Q,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_6_Q_834
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_5_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_4_Q_837,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_5_Q_836,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_5_Q_835
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_5_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_25_Q,
      I1 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_26_Q,
      I2 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_27_Q,
      I3 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_28_Q,
      I4 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_29_Q,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_5_Q_836
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_4_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_3_Q_839,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_4_Q_838,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_4_Q_837
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_20_Q,
      I1 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_21_Q,
      I2 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_22_Q,
      I3 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_23_Q,
      I4 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_24_Q,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_4_Q_838
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_3_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_2_Q_841,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_3_Q_840,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_3_Q_839
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_15_Q,
      I1 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_16_Q,
      I2 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_17_Q,
      I3 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_18_Q,
      I4 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_19_Q,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_3_Q_840
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_2_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_1_Q_843,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_2_Q_842,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_2_Q_841
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_2_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_10_Q,
      I1 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_11_Q,
      I2 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_12_Q,
      I3 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_13_Q,
      I4 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_14_Q,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_2_Q_842
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_1_Q : MUXCY
    port map (
      CI => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_0_Q_845,
      DI => dina_image(0),
      S => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_1_Q_844,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_1_Q_843
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_1_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_5_Q,
      I1 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_6_Q,
      I2 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_7_Q,
      I3 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_8_Q,
      I4 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_9_Q,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_1_Q_844
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lutdi_847,
      S => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_0_Q_846,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_0_Q_845
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_0_Q,
      I1 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_2_Q,
      I2 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_3_Q,
      I3 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_4_Q,
      I4 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_1_Q,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lut_0_Q_846
    );
  layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lutdi : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_1_Q,
      I1 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_2_Q,
      I2 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_3_Q,
      I3 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_4_Q,
      O => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_lutdi_847
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_31 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_31_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_31_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_30 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_30_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_30_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_29 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_29_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_29_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_28 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_28_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_28_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_27 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_27_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_27_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_26 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_26_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_26_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_25 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_25_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_25_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_24 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_24_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_24_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_23 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_23_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_23_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_22 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_22_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_22_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_21 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_21_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_21_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_20 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_20_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_20_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_19_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_19_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_18_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_18_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_17_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_17_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_16_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_16_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_15_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_15_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_14_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_14_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_13_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_13_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_12_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_12_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_11_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_11_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_10_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_10_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_9_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_9_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_8_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_8_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_7_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_7_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_6_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_6_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_5_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_5_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_4_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_4_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_3_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_3_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_2_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_2_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_1_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_1_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_shift_counter_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_Result_0_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_shift_counter_0_Q
    );
  layer_map_shift_map_2_shifter_map_acticv_mul_en : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_GND_14_o_GND_14_o_MUX_60_o,
      Q => layer_map_shift_map_2_shifter_map_acticv_mul_en_948
    );
  layer_map_shift_map_2_shifter_map_shifted_output_temp_15 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_Q,
      Q => layer_map_shift_map_2_shifter_map_shifted_output_temp_15_Q
    );
  layer_map_shift_map_2_shifter_map_shifted_output_temp_14 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_14_Q,
      Q => layer_map_shift_map_2_shifter_map_shifted_output_temp_14_Q
    );
  layer_map_shift_map_2_shifter_map_shifted_output_temp_13 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_13_Q,
      Q => layer_map_shift_map_2_shifter_map_shifted_output_temp_13_Q
    );
  layer_map_shift_map_2_shifter_map_shifted_output_temp_12 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_12_Q,
      Q => layer_map_shift_map_2_shifter_map_shifted_output_temp_12_Q
    );
  layer_map_shift_map_2_shifter_map_shifted_output_temp_11 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_11_Q,
      Q => layer_map_shift_map_2_shifter_map_shifted_output_temp_11_Q
    );
  layer_map_shift_map_2_shifter_map_shifted_output_temp_10 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_10_Q,
      Q => layer_map_shift_map_2_shifter_map_shifted_output_temp_10_Q
    );
  layer_map_shift_map_2_shifter_map_shifted_output_temp_9 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_9_Q,
      Q => layer_map_shift_map_2_shifter_map_shifted_output_temp_9_Q
    );
  layer_map_shift_map_2_shifter_map_shifted_output_temp_8 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_8_Q,
      Q => layer_map_shift_map_2_shifter_map_shifted_output_temp_8_Q
    );
  layer_map_shift_map_2_shifter_map_shifted_output_temp_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_7_Q,
      Q => layer_map_shift_map_2_shifter_map_shifted_output_temp_7_Q
    );
  layer_map_shift_map_2_shifter_map_shifted_output_temp_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_6_Q,
      Q => layer_map_shift_map_2_shifter_map_shifted_output_temp_6_Q
    );
  layer_map_shift_map_2_shifter_map_shifted_output_temp_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_5_Q,
      Q => layer_map_shift_map_2_shifter_map_shifted_output_temp_5_Q
    );
  layer_map_shift_map_2_shifter_map_shifted_output_temp_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_4_Q,
      Q => layer_map_shift_map_2_shifter_map_shifted_output_temp_4_Q
    );
  layer_map_shift_map_2_shifter_map_shifted_output_temp_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_3_Q,
      Q => layer_map_shift_map_2_shifter_map_shifted_output_temp_3_Q
    );
  layer_map_shift_map_2_shifter_map_shifted_output_temp_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_2_Q,
      Q => layer_map_shift_map_2_shifter_map_shifted_output_temp_2_Q
    );
  layer_map_shift_map_2_shifter_map_shifted_output_temp_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_1_Q,
      Q => layer_map_shift_map_2_shifter_map_shifted_output_temp_1_Q
    );
  layer_map_shift_map_2_shifter_map_shifted_output_temp_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_n0056_inv,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_0_Q,
      Q => layer_map_shift_map_2_shifter_map_shifted_output_temp_0_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_temp_reg_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_15_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_temp_reg_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_14_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_temp_reg_14_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_temp_reg_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_13_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_temp_reg_13_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_temp_reg_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_12_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_temp_reg_12_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_temp_reg_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_11_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_temp_reg_11_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_temp_reg_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_10_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_temp_reg_10_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_temp_reg_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_9_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_temp_reg_9_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_temp_reg_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_8_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_temp_reg_8_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_temp_reg_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_7_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_temp_reg_7_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_temp_reg_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_6_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_temp_reg_6_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_temp_reg_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_5_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_temp_reg_5_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_temp_reg_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_4_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_temp_reg_4_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_temp_reg_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_3_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_temp_reg_3_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_temp_reg_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_2_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_temp_reg_2_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_temp_reg_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_1_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_temp_reg_1_Q
    );
  layer_map_shift_map_2_shifter_map_shifter_temp_reg_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_0_Q,
      Q => layer_map_shift_map_2_shifter_map_shifter_temp_reg_0_Q
    );
  layer_map_shift_map_2_shifter_map_input_temp_15 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(2, 15),
      Q => layer_map_shift_map_2_shifter_map_input_temp_15_Q
    );
  layer_map_shift_map_2_shifter_map_input_temp_14 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(2, 14),
      Q => layer_map_shift_map_2_shifter_map_input_temp_14_Q
    );
  layer_map_shift_map_2_shifter_map_input_temp_13 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(2, 13),
      Q => layer_map_shift_map_2_shifter_map_input_temp_13_Q
    );
  layer_map_shift_map_2_shifter_map_input_temp_12 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(2, 12),
      Q => layer_map_shift_map_2_shifter_map_input_temp_12_Q
    );
  layer_map_shift_map_2_shifter_map_input_temp_11 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(2, 11),
      Q => layer_map_shift_map_2_shifter_map_input_temp_11_Q
    );
  layer_map_shift_map_2_shifter_map_input_temp_10 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(2, 10),
      Q => layer_map_shift_map_2_shifter_map_input_temp_10_Q
    );
  layer_map_shift_map_2_shifter_map_input_temp_9 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(2, 9),
      Q => layer_map_shift_map_2_shifter_map_input_temp_9_Q
    );
  layer_map_shift_map_2_shifter_map_input_temp_8 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(2, 8),
      Q => layer_map_shift_map_2_shifter_map_input_temp_8_Q
    );
  layer_map_shift_map_2_shifter_map_input_temp_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(2, 7),
      Q => layer_map_shift_map_2_shifter_map_input_temp_7_Q
    );
  layer_map_shift_map_2_shifter_map_input_temp_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(2, 6),
      Q => layer_map_shift_map_2_shifter_map_input_temp_6_Q
    );
  layer_map_shift_map_2_shifter_map_input_temp_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(2, 5),
      Q => layer_map_shift_map_2_shifter_map_input_temp_5_Q
    );
  layer_map_shift_map_2_shifter_map_input_temp_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(2, 4),
      Q => layer_map_shift_map_2_shifter_map_input_temp_4_Q
    );
  layer_map_shift_map_2_shifter_map_input_temp_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(2, 3),
      Q => layer_map_shift_map_2_shifter_map_input_temp_3_Q
    );
  layer_map_shift_map_2_shifter_map_input_temp_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(2, 2),
      Q => layer_map_shift_map_2_shifter_map_input_temp_2_Q
    );
  layer_map_shift_map_2_shifter_map_input_temp_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(2, 1),
      Q => layer_map_shift_map_2_shifter_map_input_temp_1_Q
    );
  layer_map_shift_map_2_shifter_map_input_temp_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_weighted_sum(2, 0),
      Q => layer_map_shift_map_2_shifter_map_input_temp_0_Q
    );
  Q_n0319_3_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      O => \Q_n0319_3)\
    );
  Mmux_GND_7_o_GND_7_o_mux_14_OUT211 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      O => Mmux_GND_7_o_GND_7_o_mux_14_OUT21_324
    );
  Mmux_transition_num_1_output_3_7_wide_mux_4_OUT81 : LUT5
    generic map(
      INIT => X"EC64A820"
    )
    port map (
      I0 => transition_num(0),
      I1 => transition_num(1),
      I2 => output_1(7),
      I3 => output_3(7),
      I4 => output_2(7),
      O => transition_num_1_output_3_7_wide_mux_4_OUT_7_Q
    );
  Mmux_transition_num_1_output_3_7_wide_mux_4_OUT71 : LUT5
    generic map(
      INIT => X"EC64A820"
    )
    port map (
      I0 => transition_num(0),
      I1 => transition_num(1),
      I2 => output_1(6),
      I3 => output_3(6),
      I4 => output_2(6),
      O => transition_num_1_output_3_7_wide_mux_4_OUT_6_Q
    );
  Mmux_transition_num_1_output_3_7_wide_mux_4_OUT61 : LUT5
    generic map(
      INIT => X"EC64A820"
    )
    port map (
      I0 => transition_num(0),
      I1 => transition_num(1),
      I2 => output_1(5),
      I3 => output_3(5),
      I4 => output_2(5),
      O => transition_num_1_output_3_7_wide_mux_4_OUT_5_Q
    );
  Mmux_transition_num_1_output_3_7_wide_mux_4_OUT51 : LUT5
    generic map(
      INIT => X"EC64A820"
    )
    port map (
      I0 => transition_num(0),
      I1 => transition_num(1),
      I2 => output_1(4),
      I3 => output_3(4),
      I4 => output_2(4),
      O => transition_num_1_output_3_7_wide_mux_4_OUT_4_Q
    );
  Mmux_transition_num_1_output_3_7_wide_mux_4_OUT41 : LUT5
    generic map(
      INIT => X"EC64A820"
    )
    port map (
      I0 => transition_num(0),
      I1 => transition_num(1),
      I2 => output_1(3),
      I3 => output_3(3),
      I4 => output_2(3),
      O => transition_num_1_output_3_7_wide_mux_4_OUT_3_Q
    );
  Mmux_transition_num_1_output_3_7_wide_mux_4_OUT31 : LUT5
    generic map(
      INIT => X"EC64A820"
    )
    port map (
      I0 => transition_num(0),
      I1 => transition_num(1),
      I2 => output_1(2),
      I3 => output_3(2),
      I4 => output_2(2),
      O => transition_num_1_output_3_7_wide_mux_4_OUT_2_Q
    );
  Mmux_transition_num_1_output_3_7_wide_mux_4_OUT21 : LUT5
    generic map(
      INIT => X"EC64A820"
    )
    port map (
      I0 => transition_num(0),
      I1 => transition_num(1),
      I2 => output_1(1),
      I3 => output_3(1),
      I4 => output_2(1),
      O => transition_num_1_output_3_7_wide_mux_4_OUT_1_Q
    );
  Mmux_transition_num_1_output_3_7_wide_mux_4_OUT11 : LUT5
    generic map(
      INIT => X"EC64A820"
    )
    port map (
      I0 => transition_num(0),
      I1 => transition_num(1),
      I2 => output_1(0),
      I3 => output_3(0),
      I4 => output_2(0),
      O => transition_num_1_output_3_7_wide_mux_4_OUT_0_Q
    );
  Q_n0240_inv1 : LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      I0 => curr_state_FSM_FFd2_267,
      I1 => curr_state_FSM_FFd1_150,
      I2 => curr_state_FSM_FFd3_266,
      O => Q_n0240_inv
    );
  Q_n0319_1_1 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => curr_state_FSM_FFd3_266,
      I1 => curr_state_FSM_FFd1_150,
      I2 => curr_state_FSM_FFd2_267,
      O => \Q_n0319_1)\
    );
  input_7_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => output_temp(7),
      I4 => image(7),
      O => input(7)
    );
  input_6_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => output_temp(6),
      I4 => image(6),
      O => input(6)
    );
  input_5_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => output_temp(5),
      I4 => image(5),
      O => input(5)
    );
  input_4_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => output_temp(4),
      I4 => image(4),
      O => input(4)
    );
  input_3_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => output_temp(3),
      I4 => image(3),
      O => input(3)
    );
  input_2_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => output_temp(2),
      I4 => image(2),
      O => input(2)
    );
  input_1_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => output_temp(1),
      I4 => image(1),
      O => input(1)
    );
  input_0_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => output_temp(0),
      I4 => image(0),
      O => input(0)
    );
  weight_2_7_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(23),
      I4 => out_weight_hid(23),
      O => weight(2, 7)
    );
  weight_2_6_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(22),
      I4 => out_weight_hid(22),
      O => weight(2, 6)
    );
  weight_2_5_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(21),
      I4 => out_weight_hid(21),
      O => weight(2, 5)
    );
  weight_2_4_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(20),
      I4 => out_weight_hid(20),
      O => weight(2, 4)
    );
  weight_2_3_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(19),
      I4 => out_weight_hid(19),
      O => weight(2, 3)
    );
  weight_2_2_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(18),
      I4 => out_weight_hid(18),
      O => weight(2, 2)
    );
  weight_2_1_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(17),
      I4 => out_weight_hid(17),
      O => weight(2, 1)
    );
  weight_2_0_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(16),
      I4 => out_weight_hid(16),
      O => weight(2, 0)
    );
  weight_1_7_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(15),
      I4 => out_weight_hid(15),
      O => weight(1, 7)
    );
  weight_1_6_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(14),
      I4 => out_weight_hid(14),
      O => weight(1, 6)
    );
  weight_1_5_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(13),
      I4 => out_weight_hid(13),
      O => weight(1, 5)
    );
  weight_1_4_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(12),
      I4 => out_weight_hid(12),
      O => weight(1, 4)
    );
  weight_1_3_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(11),
      I4 => out_weight_hid(11),
      O => weight(1, 3)
    );
  weight_1_2_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(10),
      I4 => out_weight_hid(10),
      O => weight(1, 2)
    );
  weight_1_1_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(9),
      I4 => out_weight_hid(9),
      O => weight(1, 1)
    );
  weight_1_0_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(8),
      I4 => out_weight_hid(8),
      O => weight(1, 0)
    );
  weight_0_7_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(7),
      I4 => out_weight_hid(7),
      O => weight(0, 7)
    );
  weight_0_6_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(6),
      I4 => out_weight_hid(6),
      O => weight(0, 6)
    );
  weight_0_5_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(5),
      I4 => out_weight_hid(5),
      O => weight(0, 5)
    );
  weight_0_4_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(4),
      I4 => out_weight_hid(4),
      O => weight(0, 4)
    );
  weight_0_3_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(3),
      I4 => out_weight_hid(3),
      O => weight(0, 3)
    );
  weight_0_2_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(2),
      I4 => out_weight_hid(2),
      O => weight(0, 2)
    );
  weight_0_1_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(1),
      I4 => out_weight_hid(1),
      O => weight(0, 1)
    );
  weight_0_0_1 : LUT5
    generic map(
      INIT => X"14041000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => out_weight_out(0),
      I4 => out_weight_hid(0),
      O => weight(0, 0)
    );
  Mcount_addra_image_xor_0_11 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => addra_image(0),
      I1 => curr_state_FSM_FFd1_150,
      I2 => curr_state_FSM_FFd3_266,
      I3 => curr_state_FSM_FFd2_267,
      O => Mcount_addra_image
    );
  Mcount_addra_image_xor_1_11 : LUT5
    generic map(
      INIT => X"00101000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd2_267,
      I2 => curr_state_FSM_FFd3_266,
      I3 => addra_image(0),
      I4 => addra_image(1),
      O => Mcount_addra_image1
    );
  Mcount_addra_image_xor_2_11 : LUT6
    generic map(
      INIT => X"0010100010001000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd2_267,
      I2 => curr_state_FSM_FFd3_266,
      I3 => addra_image(2),
      I4 => addra_image(0),
      I5 => addra_image(1),
      O => Mcount_addra_image2
    );
  layer_map_shift_map_0_shifter_map_Mmux_GND_14_o_GND_14_o_MUX_60_o11 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I1 => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_446,
      I2 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_31_INV_16_o,
      O => layer_map_shift_map_0_shifter_map_GND_14_o_GND_14_o_MUX_60_o
    );
  layer_map_shift_map_0_shifter_map_n0056_inv1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I1 => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_446,
      O => layer_map_shift_map_0_shifter_map_n0056_inv
    );
  layer_map_shift_map_1_shifter_map_Mmux_GND_14_o_GND_14_o_MUX_60_o11 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I1 => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_640,
      I2 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_31_INV_16_o,
      O => layer_map_shift_map_1_shifter_map_GND_14_o_GND_14_o_MUX_60_o
    );
  layer_map_shift_map_1_shifter_map_n0056_inv1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I1 => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_640,
      O => layer_map_shift_map_1_shifter_map_n0056_inv
    );
  layer_map_shift_map_2_shifter_map_Mmux_GND_14_o_GND_14_o_MUX_60_o11 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I1 => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_833,
      I2 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_31_INV_16_o,
      O => layer_map_shift_map_2_shifter_map_GND_14_o_GND_14_o_MUX_60_o
    );
  layer_map_shift_map_2_shifter_map_n0056_inv1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I1 => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_833,
      O => layer_map_shift_map_2_shifter_map_n0056_inv
    );
  layer_map_activation_hid_count_map_count_7_num_neurons_7_equal_1_o8_SW0 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => layer_map_activation_hid_count_map_count(7),
      I1 => layer_map_activation_hid_count_map_count(6),
      I2 => layer_map_activation_hid_count_map_count(5),
      I3 => layer_map_activation_hid_count_map_count(4),
      I4 => layer_map_activation_hid_count_map_count(3),
      O => N01
    );
  layer_map_activation_hid_count_map_count_7_num_neurons_7_equal_1_o8 : LUT6
    generic map(
      INIT => X"4001000000004001"
    )
    port map (
      I0 => N01,
      I1 => layer_map_activation_hid_count_map_count(1),
      I2 => layer_map_activation_hid_count_map_count(0),
      I3 => \Q_n0319_1)\,
      I4 => \Q_n0319_3)\,
      I5 => layer_map_activation_hid_count_map_count(2),
      O => layer_map_activation_hid_count_map_count_7_num_neurons_7_equal_1_o
    );
  layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_13_Q,
      I1 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_12_Q,
      I2 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_14_Q,
      I3 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_15_Q,
      I4 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_16_Q,
      I5 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_17_Q,
      O => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_Q
    );
  layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_19_Q,
      I1 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_18_Q,
      I2 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_20_Q,
      I3 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_21_Q,
      I4 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_22_Q,
      I5 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_23_Q,
      O => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_1_983
    );
  layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_3 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_1_Q,
      I1 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_0_Q,
      I2 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_2_Q,
      I3 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_3_Q,
      I4 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_4_Q,
      I5 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_5_Q,
      O => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_2_984
    );
  layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_4 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_7_Q,
      I1 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_6_Q,
      I2 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_8_Q,
      I3 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_9_Q,
      I4 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_10_Q,
      I5 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_11_Q,
      O => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_3_985
    );
  layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_5 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_25_Q,
      I1 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_24_Q,
      I2 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_26_Q,
      I3 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_27_Q,
      I4 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_28_Q,
      I5 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_29_Q,
      O => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_4_986
    );
  layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_7 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_Q,
      I1 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_1_983,
      I2 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_2_984,
      I3 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_3_985,
      I4 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_4_986,
      I5 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_5_987,
      O => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o
    );
  layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_13_Q,
      I1 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_12_Q,
      I2 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_14_Q,
      I3 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_15_Q,
      I4 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_16_Q,
      I5 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_17_Q,
      O => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_Q
    );
  layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_19_Q,
      I1 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_18_Q,
      I2 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_20_Q,
      I3 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_21_Q,
      I4 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_22_Q,
      I5 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_23_Q,
      O => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_1_989
    );
  layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_3 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_1_Q,
      I1 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_0_Q,
      I2 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_2_Q,
      I3 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_3_Q,
      I4 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_4_Q,
      I5 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_5_Q,
      O => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_2_990
    );
  layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_4 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_7_Q,
      I1 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_6_Q,
      I2 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_8_Q,
      I3 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_9_Q,
      I4 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_10_Q,
      I5 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_11_Q,
      O => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_3_991
    );
  layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_5 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_25_Q,
      I1 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_24_Q,
      I2 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_26_Q,
      I3 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_27_Q,
      I4 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_28_Q,
      I5 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_29_Q,
      O => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_4_992
    );
  layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_7 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_Q,
      I1 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_1_989,
      I2 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_2_990,
      I3 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_3_991,
      I4 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_4_992,
      I5 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_5_993,
      O => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o
    );
  layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_13_Q,
      I1 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_12_Q,
      I2 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_14_Q,
      I3 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_15_Q,
      I4 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_16_Q,
      I5 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_17_Q,
      O => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_Q
    );
  layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_19_Q,
      I1 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_18_Q,
      I2 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_20_Q,
      I3 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_21_Q,
      I4 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_22_Q,
      I5 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_23_Q,
      O => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_1_995
    );
  layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_3 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_1_Q,
      I1 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_0_Q,
      I2 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_2_Q,
      I3 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_3_Q,
      I4 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_4_Q,
      I5 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_5_Q,
      O => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_2_996
    );
  layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_4 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_7_Q,
      I1 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_6_Q,
      I2 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_8_Q,
      I3 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_9_Q,
      I4 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_10_Q,
      I5 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_11_Q,
      O => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_3_997
    );
  layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_5 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_25_Q,
      I1 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_24_Q,
      I2 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_26_Q,
      I3 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_27_Q,
      I4 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_28_Q,
      I5 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_29_Q,
      O => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_4_998
    );
  layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_7 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_Q,
      I1 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_1_995,
      I2 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_2_996,
      I3 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_3_997,
      I4 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_4_998,
      I5 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o_31_5_999,
      O => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_1
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(1),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_1_rt_1002
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(2),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_2_rt_1003
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(3),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_3_rt_1004
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(4),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_4_rt_1005
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(5),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_5_rt_1006
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(6),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_6_rt_1007
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(7),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_7_rt_1008
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(8),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_8_rt_1009
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(9),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_9_rt_1010
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(10),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_10_rt_1011
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(11),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_11_rt_1012
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(12),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_12_rt_1013
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(13),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_13_rt_1014
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(14),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_14_rt_1015
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(15),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_15_rt_1016
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(16),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_16_rt_1017
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(17),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_17_rt_1018
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(18),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_18_rt_1019
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(19),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_19_rt_1020
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(20),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_20_rt_1021
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(21),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_21_rt_1022
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(22),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_22_rt_1023
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(23),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_23_rt_1024
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(24),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_24_rt_1025
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(25),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_25_rt_1026
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(26),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_26_rt_1027
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(27),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_27_rt_1028
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(28),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_28_rt_1029
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(29),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_29_rt_1030
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(30),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_cy_30_rt_1031
    );
  layer_map_activation_hid_count_map_Mcount_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_activation_hid_count_map_count(6),
      O => layer_map_activation_hid_count_map_Mcount_count_cy_6_rt_1032
    );
  layer_map_activation_hid_count_map_Mcount_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_activation_hid_count_map_count(5),
      O => layer_map_activation_hid_count_map_Mcount_count_cy_5_rt_1033
    );
  layer_map_activation_hid_count_map_Mcount_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_activation_hid_count_map_count(4),
      O => layer_map_activation_hid_count_map_Mcount_count_cy_4_rt_1034
    );
  layer_map_activation_hid_count_map_Mcount_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_activation_hid_count_map_count(3),
      O => layer_map_activation_hid_count_map_Mcount_count_cy_3_rt_1035
    );
  layer_map_activation_hid_count_map_Mcount_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_activation_hid_count_map_count(2),
      O => layer_map_activation_hid_count_map_Mcount_count_cy_2_rt_1036
    );
  layer_map_activation_hid_count_map_Mcount_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_activation_hid_count_map_count(1),
      O => layer_map_activation_hid_count_map_Mcount_count_cy_1_rt_1037
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_30_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_30_rt_1038
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_29_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_29_rt_1039
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_28_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_28_rt_1040
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_27_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_27_rt_1041
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_26_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_26_rt_1042
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_25_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_25_rt_1043
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_24_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_24_rt_1044
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_23_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_23_rt_1045
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_22_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_22_rt_1046
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_21_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_21_rt_1047
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_20_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_20_rt_1048
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_19_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_19_rt_1049
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_18_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_18_rt_1050
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_17_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_17_rt_1051
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_16_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_16_rt_1052
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_15_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_15_rt_1053
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_14_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_14_rt_1054
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_13_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_13_rt_1055
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_12_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_12_rt_1056
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_11_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_11_rt_1057
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_10_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_10_rt_1058
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_9_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_9_rt_1059
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_8_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_8_rt_1060
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_7_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_7_rt_1061
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_6_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_6_rt_1062
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_5_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_5_rt_1063
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_4_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_4_rt_1064
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_3_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_3_rt_1065
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_2_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_2_rt_1066
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_1_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_cy_1_rt_1067
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_30_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_30_rt_1068
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_29_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_29_rt_1069
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_28_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_28_rt_1070
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_27_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_27_rt_1071
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_26_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_26_rt_1072
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_25_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_25_rt_1073
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_24_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_24_rt_1074
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_23_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_23_rt_1075
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_22_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_22_rt_1076
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_21_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_21_rt_1077
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_20_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_20_rt_1078
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_19_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_19_rt_1079
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_18_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_18_rt_1080
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_17_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_17_rt_1081
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_16_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_16_rt_1082
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_15_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_15_rt_1083
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_14_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_14_rt_1084
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_13_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_13_rt_1085
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_12_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_12_rt_1086
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_11_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_11_rt_1087
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_10_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_10_rt_1088
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_9_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_9_rt_1089
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_8_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_8_rt_1090
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_7_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_7_rt_1091
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_6_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_6_rt_1092
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_5_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_5_rt_1093
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_4_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_4_rt_1094
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_3_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_3_rt_1095
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_2_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_2_rt_1096
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_1_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_cy_1_rt_1097
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_30_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_30_rt_1098
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_29_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_29_rt_1099
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_28_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_28_rt_1100
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_27_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_27_rt_1101
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_26_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_26_rt_1102
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_25_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_25_rt_1103
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_24_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_24_rt_1104
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_23_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_23_rt_1105
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_22_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_22_rt_1106
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_21_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_21_rt_1107
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_20_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_20_rt_1108
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_19_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_19_rt_1109
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_18_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_18_rt_1110
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_17_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_17_rt_1111
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_16_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_16_rt_1112
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_15_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_15_rt_1113
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_14_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_14_rt_1114
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_13_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_13_rt_1115
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_12_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_12_rt_1116
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_11_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_11_rt_1117
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_10_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_10_rt_1118
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_9_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_9_rt_1119
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_8_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_8_rt_1120
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_7_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_7_rt_1121
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_6_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_6_rt_1122
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_5_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_5_rt_1123
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_4_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_4_rt_1124
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_3_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_3_rt_1125
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_2_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_2_rt_1126
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_1_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_cy_1_rt_1127
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => transition_num(31),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_xor_31_rt_1128
    );
  layer_map_activation_hid_count_map_Mcount_count_xor_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_activation_hid_count_map_count(7),
      O => layer_map_activation_hid_count_map_Mcount_count_xor_7_rt_1129
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_31_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_xor_31_rt_1130
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_1_shifter_map_shifter_shift_counter_31_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_xor_31_rt_1131
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => layer_map_shift_map_2_shifter_map_shifter_shift_counter_31_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_xor_31_rt_1132
    );
  layer_map_shift_map_0_shifter_map_shift_over_flag : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => layer_map_shift_map_0_shifter_map_enable_inv,
      D => layer_map_shift_map_0_shifter_map_shift_over_flag_rstpot_1133,
      Q => layer_map_shift_map_0_shifter_map_shift_over_flag_34
    );
  layer_map_shift_map_0_shifter_map_shift_over_flag_rstpot : LUT4
    generic map(
      INIT => X"FF01"
    )
    port map (
      I0 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I1 => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_446,
      I2 => layer_map_shift_map_0_shifter_map_shifter_shift_counter_31_INV_16_o,
      I3 => layer_map_shift_map_0_shifter_map_shift_over_flag_34,
      O => layer_map_shift_map_0_shifter_map_shift_over_flag_rstpot_1133
    );
  layer_map_count_en_inv1 : LUT3
    generic map(
      INIT => X"EB"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      O => layer_map_count_en_inv
    );
  layer_map_shift_map_0_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT18 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(0, 0),
      I1 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_446,
      I3 => layer_map_shift_map_0_shifter_map_shifter_temp_reg_1_Q,
      O => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_0_Q
    );
  layer_map_shift_map_0_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT21 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(0, 10),
      I1 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_446,
      I3 => layer_map_shift_map_0_shifter_map_shifter_temp_reg_11_Q,
      O => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_10_Q
    );
  layer_map_shift_map_0_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT31 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(0, 11),
      I1 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_446,
      I3 => layer_map_shift_map_0_shifter_map_shifter_temp_reg_12_Q,
      O => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_11_Q
    );
  layer_map_shift_map_0_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT41 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(0, 12),
      I1 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_446,
      I3 => layer_map_shift_map_0_shifter_map_shifter_temp_reg_13_Q,
      O => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_12_Q
    );
  layer_map_shift_map_0_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT51 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(0, 13),
      I1 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_446,
      I3 => layer_map_shift_map_0_shifter_map_shifter_temp_reg_14_Q,
      O => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_13_Q
    );
  layer_map_shift_map_0_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT71 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(0, 15),
      I1 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_446,
      I3 => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_Q,
      O => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_15_Q
    );
  layer_map_shift_map_0_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT81 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(0, 1),
      I1 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_446,
      I3 => layer_map_shift_map_0_shifter_map_shifter_temp_reg_2_Q,
      O => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_1_Q
    );
  layer_map_shift_map_0_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT91 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(0, 2),
      I1 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_446,
      I3 => layer_map_shift_map_0_shifter_map_shifter_temp_reg_3_Q,
      O => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_2_Q
    );
  layer_map_shift_map_0_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT101 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(0, 3),
      I1 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_446,
      I3 => layer_map_shift_map_0_shifter_map_shifter_temp_reg_4_Q,
      O => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_3_Q
    );
  layer_map_shift_map_0_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT111 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(0, 4),
      I1 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_446,
      I3 => layer_map_shift_map_0_shifter_map_shifter_temp_reg_5_Q,
      O => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_4_Q
    );
  layer_map_shift_map_0_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT121 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(0, 5),
      I1 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_446,
      I3 => layer_map_shift_map_0_shifter_map_shifter_temp_reg_6_Q,
      O => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_5_Q
    );
  layer_map_shift_map_0_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT131 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(0, 6),
      I1 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_446,
      I3 => layer_map_shift_map_0_shifter_map_shifter_temp_reg_7_Q,
      O => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_6_Q
    );
  layer_map_shift_map_0_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT141 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(0, 7),
      I1 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_446,
      I3 => layer_map_shift_map_0_shifter_map_shifter_temp_reg_8_Q,
      O => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_7_Q
    );
  layer_map_shift_map_0_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT151 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(0, 8),
      I1 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_446,
      I3 => layer_map_shift_map_0_shifter_map_shifter_temp_reg_9_Q,
      O => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_8_Q
    );
  layer_map_shift_map_0_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT161 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(0, 9),
      I1 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_446,
      I3 => layer_map_shift_map_0_shifter_map_shifter_temp_reg_10_Q,
      O => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_9_Q
    );
  layer_map_shift_map_1_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT18 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(1, 0),
      I1 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_640,
      I3 => layer_map_shift_map_1_shifter_map_shifter_temp_reg_1_Q,
      O => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_0_Q
    );
  layer_map_shift_map_1_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT21 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(1, 10),
      I1 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_640,
      I3 => layer_map_shift_map_1_shifter_map_shifter_temp_reg_11_Q,
      O => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_10_Q
    );
  layer_map_shift_map_1_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT31 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(1, 11),
      I1 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_640,
      I3 => layer_map_shift_map_1_shifter_map_shifter_temp_reg_12_Q,
      O => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_11_Q
    );
  layer_map_shift_map_1_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT41 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(1, 12),
      I1 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_640,
      I3 => layer_map_shift_map_1_shifter_map_shifter_temp_reg_13_Q,
      O => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_12_Q
    );
  layer_map_shift_map_1_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT51 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(1, 13),
      I1 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_640,
      I3 => layer_map_shift_map_1_shifter_map_shifter_temp_reg_14_Q,
      O => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_13_Q
    );
  layer_map_shift_map_1_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT71 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(1, 15),
      I1 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_640,
      I3 => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_Q,
      O => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_15_Q
    );
  layer_map_shift_map_1_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT81 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(1, 1),
      I1 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_640,
      I3 => layer_map_shift_map_1_shifter_map_shifter_temp_reg_2_Q,
      O => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_1_Q
    );
  layer_map_shift_map_1_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT91 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(1, 2),
      I1 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_640,
      I3 => layer_map_shift_map_1_shifter_map_shifter_temp_reg_3_Q,
      O => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_2_Q
    );
  layer_map_shift_map_1_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT101 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(1, 3),
      I1 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_640,
      I3 => layer_map_shift_map_1_shifter_map_shifter_temp_reg_4_Q,
      O => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_3_Q
    );
  layer_map_shift_map_1_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT111 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(1, 4),
      I1 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_640,
      I3 => layer_map_shift_map_1_shifter_map_shifter_temp_reg_5_Q,
      O => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_4_Q
    );
  layer_map_shift_map_1_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT121 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(1, 5),
      I1 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_640,
      I3 => layer_map_shift_map_1_shifter_map_shifter_temp_reg_6_Q,
      O => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_5_Q
    );
  layer_map_shift_map_1_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT131 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(1, 6),
      I1 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_640,
      I3 => layer_map_shift_map_1_shifter_map_shifter_temp_reg_7_Q,
      O => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_6_Q
    );
  layer_map_shift_map_1_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT141 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(1, 7),
      I1 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_640,
      I3 => layer_map_shift_map_1_shifter_map_shifter_temp_reg_8_Q,
      O => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_7_Q
    );
  layer_map_shift_map_1_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT151 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(1, 8),
      I1 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_640,
      I3 => layer_map_shift_map_1_shifter_map_shifter_temp_reg_9_Q,
      O => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_8_Q
    );
  layer_map_shift_map_1_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT161 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(1, 9),
      I1 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_640,
      I3 => layer_map_shift_map_1_shifter_map_shifter_temp_reg_10_Q,
      O => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_9_Q
    );
  layer_map_shift_map_2_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT18 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(2, 0),
      I1 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_833,
      I3 => layer_map_shift_map_2_shifter_map_shifter_temp_reg_1_Q,
      O => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_0_Q
    );
  layer_map_shift_map_2_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT21 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(2, 10),
      I1 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_833,
      I3 => layer_map_shift_map_2_shifter_map_shifter_temp_reg_11_Q,
      O => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_10_Q
    );
  layer_map_shift_map_2_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT31 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(2, 11),
      I1 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_833,
      I3 => layer_map_shift_map_2_shifter_map_shifter_temp_reg_12_Q,
      O => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_11_Q
    );
  layer_map_shift_map_2_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT41 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(2, 12),
      I1 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_833,
      I3 => layer_map_shift_map_2_shifter_map_shifter_temp_reg_13_Q,
      O => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_12_Q
    );
  layer_map_shift_map_2_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT51 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(2, 13),
      I1 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_833,
      I3 => layer_map_shift_map_2_shifter_map_shifter_temp_reg_14_Q,
      O => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_13_Q
    );
  layer_map_shift_map_2_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT71 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(2, 15),
      I1 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_833,
      I3 => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_Q,
      O => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_15_Q
    );
  layer_map_shift_map_2_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT81 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(2, 1),
      I1 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_833,
      I3 => layer_map_shift_map_2_shifter_map_shifter_temp_reg_2_Q,
      O => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_1_Q
    );
  layer_map_shift_map_2_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT91 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(2, 2),
      I1 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_833,
      I3 => layer_map_shift_map_2_shifter_map_shifter_temp_reg_3_Q,
      O => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_2_Q
    );
  layer_map_shift_map_2_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT101 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(2, 3),
      I1 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_833,
      I3 => layer_map_shift_map_2_shifter_map_shifter_temp_reg_4_Q,
      O => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_3_Q
    );
  layer_map_shift_map_2_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT111 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(2, 4),
      I1 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_833,
      I3 => layer_map_shift_map_2_shifter_map_shifter_temp_reg_5_Q,
      O => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_4_Q
    );
  layer_map_shift_map_2_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT121 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(2, 5),
      I1 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_833,
      I3 => layer_map_shift_map_2_shifter_map_shifter_temp_reg_6_Q,
      O => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_5_Q
    );
  layer_map_shift_map_2_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT131 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(2, 6),
      I1 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_833,
      I3 => layer_map_shift_map_2_shifter_map_shifter_temp_reg_7_Q,
      O => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_6_Q
    );
  layer_map_shift_map_2_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT141 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(2, 7),
      I1 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_833,
      I3 => layer_map_shift_map_2_shifter_map_shifter_temp_reg_8_Q,
      O => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_7_Q
    );
  layer_map_shift_map_2_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT151 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(2, 8),
      I1 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_833,
      I3 => layer_map_shift_map_2_shifter_map_shifter_temp_reg_9_Q,
      O => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_8_Q
    );
  layer_map_shift_map_2_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT161 : LUT4
    generic map(
      INIT => X"BA8A"
    )
    port map (
      I0 => layer_map_weighted_sum(2, 9),
      I1 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_833,
      I3 => layer_map_shift_map_2_shifter_map_shifter_temp_reg_10_Q,
      O => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_9_Q
    );
  layer_map_shift_map_0_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT61 : LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      I0 => layer_map_weighted_sum(0, 14),
      I1 => layer_map_shift_map_0_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_0_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_446,
      O => layer_map_shift_map_0_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_14_Q
    );
  layer_map_shift_map_1_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT61 : LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      I0 => layer_map_weighted_sum(1, 14),
      I1 => layer_map_shift_map_1_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_1_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_640,
      O => layer_map_shift_map_1_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_14_Q
    );
  layer_map_shift_map_2_shifter_map_Mmux_shifter_temp_reg_15_input_15_mux_4_OUT61 : LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      I0 => layer_map_weighted_sum(2, 14),
      I1 => layer_map_shift_map_2_shifter_map_GND_14_o_shifter_shift_counter_31_equal_1_o,
      I2 => layer_map_shift_map_2_shifter_map_Mcompar_shifter_shift_counter_31_GND_14_o_LessThan_2_o_cy_6_Q_833,
      O => layer_map_shift_map_2_shifter_map_shifter_temp_reg_15_input_15_mux_4_OUT_14_Q
    );
  layer_map_activation_hid_count_map_count_7_num_neurons_7_equal_1_o_inv1 : LUT6
    generic map(
      INIT => X"FFFFFFFF7FF7EFFE"
    )
    port map (
      I0 => layer_map_activation_hid_count_map_count(1),
      I1 => layer_map_activation_hid_count_map_count(0),
      I2 => \Q_n0319_3)\,
      I3 => layer_map_activation_hid_count_map_count(2),
      I4 => \Q_n0319_1)\,
      I5 => N01,
      O => layer_map_activation_hid_count_map_count_7_num_neurons_7_equal_1_o_inv
    );
  layer_map_ce1 : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => curr_state_FSM_FFd3_266,
      I1 => curr_state_FSM_FFd2_267,
      I2 => curr_state_FSM_FFd1_150,
      O => layer_map_ce
    );
  Mmux_GND_7_o_GND_7_o_mux_14_OUT11 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => addr_weight_out(0),
      I1 => curr_state_FSM_FFd1_150,
      I2 => curr_state_FSM_FFd2_267,
      I3 => curr_state_FSM_FFd3_266,
      O => GND_7_o_GND_7_o_mux_14_OUT(0)
    );
  Mmux_GND_7_o_GND_7_o_mux_14_OUT31 : LUT6
    generic map(
      INIT => X"0010100010001000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => addr_weight_out(2),
      I4 => addr_weight_out(0),
      I5 => addr_weight_out(1),
      O => GND_7_o_GND_7_o_mux_14_OUT(2)
    );
  Mmux_GND_7_o_GND_7_o_mux_14_OUT21 : LUT5
    generic map(
      INIT => X"00101000"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => addr_weight_out(0),
      I4 => addr_weight_out(1),
      O => GND_7_o_GND_7_o_mux_14_OUT(1)
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT321 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_9_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_9_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT311 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_8_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_8_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT301 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_7_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_7_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT291 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_6_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_6_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT281 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_5_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_5_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT271 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_4_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_4_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT261 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_3_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_3_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT231 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_2_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_2_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT121 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_1_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_1_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT11 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_0_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_0_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT21 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_10_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_10_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT31 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_11_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_11_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT41 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_12_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_12_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT51 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_13_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_13_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT61 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_14_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_14_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT71 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_15_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_15_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT81 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_16_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_16_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT91 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_17_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_17_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT101 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_18_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_18_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT111 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_19_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_19_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT131 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_20_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_20_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT251 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_31_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_31_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT241 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_30_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_30_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT221 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_29_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_29_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT211 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_28_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_28_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT201 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_27_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_27_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT191 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_26_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_26_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT181 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_25_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_25_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT171 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_24_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_24_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT161 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_23_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_23_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT151 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_22_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_22_Q
    );
  Mmux_GND_7_o_transition_num_31_mux_7_OUT141 : LUT4
    generic map(
      INIT => X"AA02"
    )
    port map (
      I0 => transition_num_31_GND_7_o_add_6_OUT_21_Q,
      I1 => transition_num(30),
      I2 => Mcompar_GND_7_o_transition_num_31_LessThan_6_o_cy_5_Q_323,
      I3 => transition_num(31),
      O => GND_7_o_transition_num_31_mux_7_OUT_21_Q
    );
  curr_state_FSM_FFd3_In1 : LUT4
    generic map(
      INIT => X"7D75"
    )
    port map (
      I0 => curr_state_FSM_FFd2_267,
      I1 => curr_state_FSM_FFd1_150,
      I2 => curr_state_FSM_FFd3_266,
      I3 => layer_map_shift_map_0_shifter_map_shift_over_flag_34,
      O => curr_state_FSM_FFd3_In
    );
  layer_map_shift_map_0_shifter_map_enable_inv1 : LUT4
    generic map(
      INIT => X"F137"
    )
    port map (
      I0 => layer_map_activation_hid_count_map_count_7_num_neurons_7_equal_1_o,
      I1 => curr_state_FSM_FFd2_267,
      I2 => curr_state_FSM_FFd1_150,
      I3 => curr_state_FSM_FFd3_266,
      O => layer_map_shift_map_0_shifter_map_enable_inv
    );
  curr_state_FSM_FFd2_In1 : LUT5
    generic map(
      INIT => X"B2BEA2AE"
    )
    port map (
      I0 => curr_state_FSM_FFd2_267,
      I1 => curr_state_FSM_FFd1_150,
      I2 => curr_state_FSM_FFd3_266,
      I3 => layer_map_shift_map_0_shifter_map_shift_over_flag_34,
      I4 => layer_map_activation_hid_count_map_count_7_num_neurons_7_equal_1_o,
      O => curr_state_FSM_FFd2_In
    );
  curr_state_FSM_FFd1_In1 : LUT5
    generic map(
      INIT => X"7A6A3A2A"
    )
    port map (
      I0 => curr_state_FSM_FFd1_150,
      I1 => curr_state_FSM_FFd3_266,
      I2 => curr_state_FSM_FFd2_267,
      I3 => layer_map_activation_hid_count_map_count_7_num_neurons_7_equal_1_o,
      I4 => layer_map_shift_map_0_shifter_map_shift_over_flag_34,
      O => curr_state_FSM_FFd1_In
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_0
    );
  Madd_transition_num_31_GND_7_o_add_6_OUT_lut_0_INV_0 : INV
    port map (
      I => transition_num(0),
      O => Madd_transition_num_31_GND_7_o_add_6_OUT_lut_0_Q
    );
  layer_map_activation_hid_count_map_Mcount_count_lut_0_INV_0 : INV
    port map (
      I => layer_map_activation_hid_count_map_count(0),
      O => layer_map_activation_hid_count_map_Mcount_count_lut(0)
    );
  layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_lut_0_INV_0 : INV
    port map (
      I => layer_map_shift_map_0_shifter_map_shifter_shift_counter_0_Q,
      O => layer_map_shift_map_0_shifter_map_Mcount_shifter_shift_counter_lut_0_Q
    );
  layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_lut_0_INV_0 : INV
    port map (
      I => layer_map_shift_map_1_shifter_map_shifter_shift_counter_0_Q,
      O => layer_map_shift_map_1_shifter_map_Mcount_shifter_shift_counter_lut_0_Q
    );
  layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_lut_0_INV_0 : INV
    port map (
      I => layer_map_shift_map_2_shifter_map_shifter_shift_counter_0_Q,
      O => layer_map_shift_map_2_shifter_map_Mcount_shifter_shift_counter_lut_0_Q
    );
  test_image_map : test_image
    port map (
      clka => clk_BUFGP_0,
      wea(0) => dina_image(0),
      addra(2) => addra_image(2),
      addra(1) => addra_image(1),
      addra(0) => addra_image(0),
      dina(7) => dina_image(0),
      dina(6) => dina_image(0),
      dina(5) => dina_image(0),
      dina(4) => dina_image(0),
      dina(3) => dina_image(0),
      dina(2) => dina_image(0),
      dina(1) => dina_image(0),
      dina(0) => dina_image(0),
      douta(7) => image(7),
      douta(6) => image(6),
      douta(5) => image(5),
      douta(4) => image(4),
      douta(3) => image(3),
      douta(2) => image(2),
      douta(1) => image(1),
      douta(0) => image(0)
    );
  weight_hid_map : weight_hid
    port map (
      clka => clk_BUFGP_0,
      wea(0) => dina_image(0),
      addra(2) => addra_image(2),
      addra(1) => addra_image(1),
      addra(0) => addra_image(0),
      dina(23) => dina_image(0),
      dina(22) => dina_image(0),
      dina(21) => dina_image(0),
      dina(20) => dina_image(0),
      dina(19) => dina_image(0),
      dina(18) => dina_image(0),
      dina(17) => dina_image(0),
      dina(16) => dina_image(0),
      dina(15) => dina_image(0),
      dina(14) => dina_image(0),
      dina(13) => dina_image(0),
      dina(12) => dina_image(0),
      dina(11) => dina_image(0),
      dina(10) => dina_image(0),
      dina(9) => dina_image(0),
      dina(8) => dina_image(0),
      dina(7) => dina_image(0),
      dina(6) => dina_image(0),
      dina(5) => dina_image(0),
      dina(4) => dina_image(0),
      dina(3) => dina_image(0),
      dina(2) => dina_image(0),
      dina(1) => dina_image(0),
      dina(0) => dina_image(0),
      douta(23) => out_weight_hid(23),
      douta(22) => out_weight_hid(22),
      douta(21) => out_weight_hid(21),
      douta(20) => out_weight_hid(20),
      douta(19) => out_weight_hid(19),
      douta(18) => out_weight_hid(18),
      douta(17) => out_weight_hid(17),
      douta(16) => out_weight_hid(16),
      douta(15) => out_weight_hid(15),
      douta(14) => out_weight_hid(14),
      douta(13) => out_weight_hid(13),
      douta(12) => out_weight_hid(12),
      douta(11) => out_weight_hid(11),
      douta(10) => out_weight_hid(10),
      douta(9) => out_weight_hid(9),
      douta(8) => out_weight_hid(8),
      douta(7) => out_weight_hid(7),
      douta(6) => out_weight_hid(6),
      douta(5) => out_weight_hid(5),
      douta(4) => out_weight_hid(4),
      douta(3) => out_weight_hid(3),
      douta(2) => out_weight_hid(2),
      douta(1) => out_weight_hid(1),
      douta(0) => out_weight_hid(0)
    );
  weight_out_map : weight_out
    port map (
      clka => clk_BUFGP_0,
      wea(0) => dina_image(0),
      addra(2) => addr_weight_out(2),
      addra(1) => addr_weight_out(1),
      addra(0) => addr_weight_out(0),
      dina(23) => dina_image(0),
      dina(22) => dina_image(0),
      dina(21) => dina_image(0),
      dina(20) => dina_image(0),
      dina(19) => dina_image(0),
      dina(18) => dina_image(0),
      dina(17) => dina_image(0),
      dina(16) => dina_image(0),
      dina(15) => dina_image(0),
      dina(14) => dina_image(0),
      dina(13) => dina_image(0),
      dina(12) => dina_image(0),
      dina(11) => dina_image(0),
      dina(10) => dina_image(0),
      dina(9) => dina_image(0),
      dina(8) => dina_image(0),
      dina(7) => dina_image(0),
      dina(6) => dina_image(0),
      dina(5) => dina_image(0),
      dina(4) => dina_image(0),
      dina(3) => dina_image(0),
      dina(2) => dina_image(0),
      dina(1) => dina_image(0),
      dina(0) => dina_image(0),
      douta(23) => out_weight_out(23),
      douta(22) => out_weight_out(22),
      douta(21) => out_weight_out(21),
      douta(20) => out_weight_out(20),
      douta(19) => out_weight_out(19),
      douta(18) => out_weight_out(18),
      douta(17) => out_weight_out(17),
      douta(16) => out_weight_out(16),
      douta(15) => out_weight_out(15),
      douta(14) => out_weight_out(14),
      douta(13) => out_weight_out(13),
      douta(12) => out_weight_out(12),
      douta(11) => out_weight_out(11),
      douta(10) => out_weight_out(10),
      douta(9) => out_weight_out(9),
      douta(8) => out_weight_out(8),
      douta(7) => out_weight_out(7),
      douta(6) => out_weight_out(6),
      douta(5) => out_weight_out(5),
      douta(4) => out_weight_out(4),
      douta(3) => out_weight_out(3),
      douta(2) => out_weight_out(2),
      douta(1) => out_weight_out(1),
      douta(0) => out_weight_out(0)
    );
  layer_map_neuron_map_2_neurons_mul_hid_map : mul_hid
    port map (
      clk => clk_BUFGP_0,
      ce => layer_map_ce,
      sclr => dina_image(0),
      bypass => dina_image(0),
      a(7) => input(7),
      a(6) => input(6),
      a(5) => input(5),
      a(4) => input(4),
      a(3) => input(3),
      a(2) => input(2),
      a(1) => input(1),
      a(0) => input(0),
      b(7) => weight(2, 7),
      b(6) => weight(2, 6),
      b(5) => weight(2, 5),
      b(4) => weight(2, 4),
      b(3) => weight(2, 3),
      b(2) => weight(2, 2),
      b(1) => weight(2, 1),
      b(0) => weight(2, 0),
      s(15) => layer_map_weighted_sum(2, 15),
      s(14) => layer_map_weighted_sum(2, 14),
      s(13) => layer_map_weighted_sum(2, 13),
      s(12) => layer_map_weighted_sum(2, 12),
      s(11) => layer_map_weighted_sum(2, 11),
      s(10) => layer_map_weighted_sum(2, 10),
      s(9) => layer_map_weighted_sum(2, 9),
      s(8) => layer_map_weighted_sum(2, 8),
      s(7) => layer_map_weighted_sum(2, 7),
      s(6) => layer_map_weighted_sum(2, 6),
      s(5) => layer_map_weighted_sum(2, 5),
      s(4) => layer_map_weighted_sum(2, 4),
      s(3) => layer_map_weighted_sum(2, 3),
      s(2) => layer_map_weighted_sum(2, 2),
      s(1) => layer_map_weighted_sum(2, 1),
      s(0) => layer_map_weighted_sum(2, 0)
    );
  layer_map_neuron_map_1_neurons_mul_hid_map : mul_hid
    port map (
      clk => clk_BUFGP_0,
      ce => layer_map_ce,
      sclr => dina_image(0),
      bypass => dina_image(0),
      a(7) => input(7),
      a(6) => input(6),
      a(5) => input(5),
      a(4) => input(4),
      a(3) => input(3),
      a(2) => input(2),
      a(1) => input(1),
      a(0) => input(0),
      b(7) => weight(1, 7),
      b(6) => weight(1, 6),
      b(5) => weight(1, 5),
      b(4) => weight(1, 4),
      b(3) => weight(1, 3),
      b(2) => weight(1, 2),
      b(1) => weight(1, 1),
      b(0) => weight(1, 0),
      s(15) => layer_map_weighted_sum(1, 15),
      s(14) => layer_map_weighted_sum(1, 14),
      s(13) => layer_map_weighted_sum(1, 13),
      s(12) => layer_map_weighted_sum(1, 12),
      s(11) => layer_map_weighted_sum(1, 11),
      s(10) => layer_map_weighted_sum(1, 10),
      s(9) => layer_map_weighted_sum(1, 9),
      s(8) => layer_map_weighted_sum(1, 8),
      s(7) => layer_map_weighted_sum(1, 7),
      s(6) => layer_map_weighted_sum(1, 6),
      s(5) => layer_map_weighted_sum(1, 5),
      s(4) => layer_map_weighted_sum(1, 4),
      s(3) => layer_map_weighted_sum(1, 3),
      s(2) => layer_map_weighted_sum(1, 2),
      s(1) => layer_map_weighted_sum(1, 1),
      s(0) => layer_map_weighted_sum(1, 0)
    );
  layer_map_neuron_map_0_neurons_mul_hid_map : mul_hid
    port map (
      clk => clk_BUFGP_0,
      ce => layer_map_ce,
      sclr => dina_image(0),
      bypass => dina_image(0),
      a(7) => input(7),
      a(6) => input(6),
      a(5) => input(5),
      a(4) => input(4),
      a(3) => input(3),
      a(2) => input(2),
      a(1) => input(1),
      a(0) => input(0),
      b(7) => weight(0, 7),
      b(6) => weight(0, 6),
      b(5) => weight(0, 5),
      b(4) => weight(0, 4),
      b(3) => weight(0, 3),
      b(2) => weight(0, 2),
      b(1) => weight(0, 1),
      b(0) => weight(0, 0),
      s(15) => layer_map_weighted_sum(0, 15),
      s(14) => layer_map_weighted_sum(0, 14),
      s(13) => layer_map_weighted_sum(0, 13),
      s(12) => layer_map_weighted_sum(0, 12),
      s(11) => layer_map_weighted_sum(0, 11),
      s(10) => layer_map_weighted_sum(0, 10),
      s(9) => layer_map_weighted_sum(0, 9),
      s(8) => layer_map_weighted_sum(0, 8),
      s(7) => layer_map_weighted_sum(0, 7),
      s(6) => layer_map_weighted_sum(0, 6),
      s(5) => layer_map_weighted_sum(0, 5),
      s(4) => layer_map_weighted_sum(0, 4),
      s(3) => layer_map_weighted_sum(0, 3),
      s(2) => layer_map_weighted_sum(0, 2),
      s(1) => layer_map_weighted_sum(0, 1),
      s(0) => layer_map_weighted_sum(0, 0)
    );
  layer_map_shift_map_2_shifter_map_acticv_mul_map : acticv_mul
    port map (
      clk => clk_BUFGP_0,
      ce => layer_map_shift_map_2_shifter_map_acticv_mul_en_948,
      a(15) => layer_map_shift_map_2_shifter_map_shifted_output_temp_15_Q,
      a(14) => layer_map_shift_map_2_shifter_map_shifted_output_temp_14_Q,
      a(13) => layer_map_shift_map_2_shifter_map_shifted_output_temp_13_Q,
      a(12) => layer_map_shift_map_2_shifter_map_shifted_output_temp_12_Q,
      a(11) => layer_map_shift_map_2_shifter_map_shifted_output_temp_11_Q,
      a(10) => layer_map_shift_map_2_shifter_map_shifted_output_temp_10_Q,
      a(9) => layer_map_shift_map_2_shifter_map_shifted_output_temp_9_Q,
      a(8) => layer_map_shift_map_2_shifter_map_shifted_output_temp_8_Q,
      a(7) => layer_map_shift_map_2_shifter_map_shifted_output_temp_7_Q,
      a(6) => layer_map_shift_map_2_shifter_map_shifted_output_temp_6_Q,
      a(5) => layer_map_shift_map_2_shifter_map_shifted_output_temp_5_Q,
      a(4) => layer_map_shift_map_2_shifter_map_shifted_output_temp_4_Q,
      a(3) => layer_map_shift_map_2_shifter_map_shifted_output_temp_3_Q,
      a(2) => layer_map_shift_map_2_shifter_map_shifted_output_temp_2_Q,
      a(1) => layer_map_shift_map_2_shifter_map_shifted_output_temp_1_Q,
      a(0) => layer_map_shift_map_2_shifter_map_shifted_output_temp_0_Q,
      b(15) => layer_map_shift_map_2_shifter_map_input_temp_15_Q,
      b(14) => layer_map_shift_map_2_shifter_map_input_temp_14_Q,
      b(13) => layer_map_shift_map_2_shifter_map_input_temp_13_Q,
      b(12) => layer_map_shift_map_2_shifter_map_input_temp_12_Q,
      b(11) => layer_map_shift_map_2_shifter_map_input_temp_11_Q,
      b(10) => layer_map_shift_map_2_shifter_map_input_temp_10_Q,
      b(9) => layer_map_shift_map_2_shifter_map_input_temp_9_Q,
      b(8) => layer_map_shift_map_2_shifter_map_input_temp_8_Q,
      b(7) => layer_map_shift_map_2_shifter_map_input_temp_7_Q,
      b(6) => layer_map_shift_map_2_shifter_map_input_temp_6_Q,
      b(5) => layer_map_shift_map_2_shifter_map_input_temp_5_Q,
      b(4) => layer_map_shift_map_2_shifter_map_input_temp_4_Q,
      b(3) => layer_map_shift_map_2_shifter_map_input_temp_3_Q,
      b(2) => layer_map_shift_map_2_shifter_map_input_temp_2_Q,
      b(1) => layer_map_shift_map_2_shifter_map_input_temp_1_Q,
      b(0) => layer_map_shift_map_2_shifter_map_input_temp_0_Q,
      d(15) => dina_image(0),
      d(14) => dina_image(0),
      d(13) => dina_image(0),
      d(12) => N0,
      d(11) => dina_image(0),
      d(10) => dina_image(0),
      d(9) => dina_image(0),
      d(8) => dina_image(0),
      d(7) => dina_image(0),
      d(6) => dina_image(0),
      d(5) => dina_image(0),
      d(4) => dina_image(0),
      d(3) => dina_image(0),
      d(2) => dina_image(0),
      d(1) => dina_image(0),
      d(0) => dina_image(0),
      p(31) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_31_UNCONNECTED,
      p(30) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_30_UNCONNECTED,
      p(29) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_29_UNCONNECTED,
      p(28) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_28_UNCONNECTED,
      p(27) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_27_UNCONNECTED,
      p(26) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_26_UNCONNECTED,
      p(25) => output_hid(2, 7),
      p(24) => output_hid(2, 6),
      p(23) => output_hid(2, 5),
      p(22) => output_hid(2, 4),
      p(21) => output_hid(2, 3),
      p(20) => output_hid(2, 2),
      p(19) => output_hid(2, 1),
      p(18) => output_hid(2, 0),
      p(17) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_17_UNCONNECTED,
      p(16) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_16_UNCONNECTED,
      p(15) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_15_UNCONNECTED,
      p(14) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_14_UNCONNECTED,
      p(13) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_13_UNCONNECTED,
      p(12) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_12_UNCONNECTED,
      p(11) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_11_UNCONNECTED,
      p(10) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_10_UNCONNECTED,
      p(9) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_9_UNCONNECTED,
      p(8) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_8_UNCONNECTED,
      p(7) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_7_UNCONNECTED,
      p(6) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_6_UNCONNECTED,
      p(5) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_5_UNCONNECTED,
      p(4) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_4_UNCONNECTED,
      p(3) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_3_UNCONNECTED,
      p(2) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_2_UNCONNECTED,
      p(1) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_1_UNCONNECTED,
      p(0) => NLW_layer_map_shift_map_2_shifter_map_acticv_mul_map_p_0_UNCONNECTED
    );
  layer_map_shift_map_1_shifter_map_acticv_mul_map : acticv_mul
    port map (
      clk => clk_BUFGP_0,
      ce => layer_map_shift_map_1_shifter_map_acticv_mul_en_755,
      a(15) => layer_map_shift_map_1_shifter_map_shifted_output_temp_15_Q,
      a(14) => layer_map_shift_map_1_shifter_map_shifted_output_temp_14_Q,
      a(13) => layer_map_shift_map_1_shifter_map_shifted_output_temp_13_Q,
      a(12) => layer_map_shift_map_1_shifter_map_shifted_output_temp_12_Q,
      a(11) => layer_map_shift_map_1_shifter_map_shifted_output_temp_11_Q,
      a(10) => layer_map_shift_map_1_shifter_map_shifted_output_temp_10_Q,
      a(9) => layer_map_shift_map_1_shifter_map_shifted_output_temp_9_Q,
      a(8) => layer_map_shift_map_1_shifter_map_shifted_output_temp_8_Q,
      a(7) => layer_map_shift_map_1_shifter_map_shifted_output_temp_7_Q,
      a(6) => layer_map_shift_map_1_shifter_map_shifted_output_temp_6_Q,
      a(5) => layer_map_shift_map_1_shifter_map_shifted_output_temp_5_Q,
      a(4) => layer_map_shift_map_1_shifter_map_shifted_output_temp_4_Q,
      a(3) => layer_map_shift_map_1_shifter_map_shifted_output_temp_3_Q,
      a(2) => layer_map_shift_map_1_shifter_map_shifted_output_temp_2_Q,
      a(1) => layer_map_shift_map_1_shifter_map_shifted_output_temp_1_Q,
      a(0) => layer_map_shift_map_1_shifter_map_shifted_output_temp_0_Q,
      b(15) => layer_map_shift_map_1_shifter_map_input_temp_15_Q,
      b(14) => layer_map_shift_map_1_shifter_map_input_temp_14_Q,
      b(13) => layer_map_shift_map_1_shifter_map_input_temp_13_Q,
      b(12) => layer_map_shift_map_1_shifter_map_input_temp_12_Q,
      b(11) => layer_map_shift_map_1_shifter_map_input_temp_11_Q,
      b(10) => layer_map_shift_map_1_shifter_map_input_temp_10_Q,
      b(9) => layer_map_shift_map_1_shifter_map_input_temp_9_Q,
      b(8) => layer_map_shift_map_1_shifter_map_input_temp_8_Q,
      b(7) => layer_map_shift_map_1_shifter_map_input_temp_7_Q,
      b(6) => layer_map_shift_map_1_shifter_map_input_temp_6_Q,
      b(5) => layer_map_shift_map_1_shifter_map_input_temp_5_Q,
      b(4) => layer_map_shift_map_1_shifter_map_input_temp_4_Q,
      b(3) => layer_map_shift_map_1_shifter_map_input_temp_3_Q,
      b(2) => layer_map_shift_map_1_shifter_map_input_temp_2_Q,
      b(1) => layer_map_shift_map_1_shifter_map_input_temp_1_Q,
      b(0) => layer_map_shift_map_1_shifter_map_input_temp_0_Q,
      d(15) => dina_image(0),
      d(14) => dina_image(0),
      d(13) => dina_image(0),
      d(12) => N0,
      d(11) => dina_image(0),
      d(10) => dina_image(0),
      d(9) => dina_image(0),
      d(8) => dina_image(0),
      d(7) => dina_image(0),
      d(6) => dina_image(0),
      d(5) => dina_image(0),
      d(4) => dina_image(0),
      d(3) => dina_image(0),
      d(2) => dina_image(0),
      d(1) => dina_image(0),
      d(0) => dina_image(0),
      p(31) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_31_UNCONNECTED,
      p(30) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_30_UNCONNECTED,
      p(29) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_29_UNCONNECTED,
      p(28) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_28_UNCONNECTED,
      p(27) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_27_UNCONNECTED,
      p(26) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_26_UNCONNECTED,
      p(25) => output_hid(1, 7),
      p(24) => output_hid(1, 6),
      p(23) => output_hid(1, 5),
      p(22) => output_hid(1, 4),
      p(21) => output_hid(1, 3),
      p(20) => output_hid(1, 2),
      p(19) => output_hid(1, 1),
      p(18) => output_hid(1, 0),
      p(17) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_17_UNCONNECTED,
      p(16) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_16_UNCONNECTED,
      p(15) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_15_UNCONNECTED,
      p(14) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_14_UNCONNECTED,
      p(13) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_13_UNCONNECTED,
      p(12) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_12_UNCONNECTED,
      p(11) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_11_UNCONNECTED,
      p(10) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_10_UNCONNECTED,
      p(9) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_9_UNCONNECTED,
      p(8) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_8_UNCONNECTED,
      p(7) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_7_UNCONNECTED,
      p(6) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_6_UNCONNECTED,
      p(5) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_5_UNCONNECTED,
      p(4) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_4_UNCONNECTED,
      p(3) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_3_UNCONNECTED,
      p(2) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_2_UNCONNECTED,
      p(1) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_1_UNCONNECTED,
      p(0) => NLW_layer_map_shift_map_1_shifter_map_acticv_mul_map_p_0_UNCONNECTED
    );
  layer_map_shift_map_0_shifter_map_acticv_mul_map : acticv_mul
    port map (
      clk => clk_BUFGP_0,
      ce => layer_map_shift_map_0_shifter_map_acticv_mul_en_562,
      a(15) => layer_map_shift_map_0_shifter_map_shifted_output_temp_15_Q,
      a(14) => layer_map_shift_map_0_shifter_map_shifted_output_temp_14_Q,
      a(13) => layer_map_shift_map_0_shifter_map_shifted_output_temp_13_Q,
      a(12) => layer_map_shift_map_0_shifter_map_shifted_output_temp_12_Q,
      a(11) => layer_map_shift_map_0_shifter_map_shifted_output_temp_11_Q,
      a(10) => layer_map_shift_map_0_shifter_map_shifted_output_temp_10_Q,
      a(9) => layer_map_shift_map_0_shifter_map_shifted_output_temp_9_Q,
      a(8) => layer_map_shift_map_0_shifter_map_shifted_output_temp_8_Q,
      a(7) => layer_map_shift_map_0_shifter_map_shifted_output_temp_7_Q,
      a(6) => layer_map_shift_map_0_shifter_map_shifted_output_temp_6_Q,
      a(5) => layer_map_shift_map_0_shifter_map_shifted_output_temp_5_Q,
      a(4) => layer_map_shift_map_0_shifter_map_shifted_output_temp_4_Q,
      a(3) => layer_map_shift_map_0_shifter_map_shifted_output_temp_3_Q,
      a(2) => layer_map_shift_map_0_shifter_map_shifted_output_temp_2_Q,
      a(1) => layer_map_shift_map_0_shifter_map_shifted_output_temp_1_Q,
      a(0) => layer_map_shift_map_0_shifter_map_shifted_output_temp_0_Q,
      b(15) => layer_map_shift_map_0_shifter_map_input_temp_15_Q,
      b(14) => layer_map_shift_map_0_shifter_map_input_temp_14_Q,
      b(13) => layer_map_shift_map_0_shifter_map_input_temp_13_Q,
      b(12) => layer_map_shift_map_0_shifter_map_input_temp_12_Q,
      b(11) => layer_map_shift_map_0_shifter_map_input_temp_11_Q,
      b(10) => layer_map_shift_map_0_shifter_map_input_temp_10_Q,
      b(9) => layer_map_shift_map_0_shifter_map_input_temp_9_Q,
      b(8) => layer_map_shift_map_0_shifter_map_input_temp_8_Q,
      b(7) => layer_map_shift_map_0_shifter_map_input_temp_7_Q,
      b(6) => layer_map_shift_map_0_shifter_map_input_temp_6_Q,
      b(5) => layer_map_shift_map_0_shifter_map_input_temp_5_Q,
      b(4) => layer_map_shift_map_0_shifter_map_input_temp_4_Q,
      b(3) => layer_map_shift_map_0_shifter_map_input_temp_3_Q,
      b(2) => layer_map_shift_map_0_shifter_map_input_temp_2_Q,
      b(1) => layer_map_shift_map_0_shifter_map_input_temp_1_Q,
      b(0) => layer_map_shift_map_0_shifter_map_input_temp_0_Q,
      d(15) => dina_image(0),
      d(14) => dina_image(0),
      d(13) => dina_image(0),
      d(12) => N0,
      d(11) => dina_image(0),
      d(10) => dina_image(0),
      d(9) => dina_image(0),
      d(8) => dina_image(0),
      d(7) => dina_image(0),
      d(6) => dina_image(0),
      d(5) => dina_image(0),
      d(4) => dina_image(0),
      d(3) => dina_image(0),
      d(2) => dina_image(0),
      d(1) => dina_image(0),
      d(0) => dina_image(0),
      p(31) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_31_UNCONNECTED,
      p(30) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_30_UNCONNECTED,
      p(29) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_29_UNCONNECTED,
      p(28) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_28_UNCONNECTED,
      p(27) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_27_UNCONNECTED,
      p(26) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_26_UNCONNECTED,
      p(25) => output_hid(0, 7),
      p(24) => output_hid(0, 6),
      p(23) => output_hid(0, 5),
      p(22) => output_hid(0, 4),
      p(21) => output_hid(0, 3),
      p(20) => output_hid(0, 2),
      p(19) => output_hid(0, 1),
      p(18) => output_hid(0, 0),
      p(17) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_17_UNCONNECTED,
      p(16) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_16_UNCONNECTED,
      p(15) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_15_UNCONNECTED,
      p(14) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_14_UNCONNECTED,
      p(13) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_13_UNCONNECTED,
      p(12) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_12_UNCONNECTED,
      p(11) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_11_UNCONNECTED,
      p(10) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_10_UNCONNECTED,
      p(9) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_9_UNCONNECTED,
      p(8) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_8_UNCONNECTED,
      p(7) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_7_UNCONNECTED,
      p(6) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_6_UNCONNECTED,
      p(5) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_5_UNCONNECTED,
      p(4) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_4_UNCONNECTED,
      p(3) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_3_UNCONNECTED,
      p(2) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_2_UNCONNECTED,
      p(1) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_1_UNCONNECTED,
      p(0) => NLW_layer_map_shift_map_0_shifter_map_acticv_mul_map_p_0_UNCONNECTED
    );

end Structure;

-- synthesis translate_on
