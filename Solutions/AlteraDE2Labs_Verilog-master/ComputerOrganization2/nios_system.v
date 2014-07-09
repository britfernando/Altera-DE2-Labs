//megafunction wizard: %Altera SOPC Builder%
//GENERATION: STANDARD
//VERSION: WM1.0


//Legal Notice: (C)2010 Altera Corporation. All rights reserved.  Your
//use of Altera Corporation's design tools, logic functions and other
//software and tools, and its AMPP partner logic functions, and any
//output files any of the foregoing (including device programming or
//simulation files), and any associated documentation or information are
//expressly subject to the terms and conditions of the Altera Program
//License Subscription Agreement or other applicable license agreement,
//including, without limitation, that your use is for the sole purpose
//of programming logic devices manufactured by Altera and sold by Altera
//or its authorized distributors.  Please refer to the applicable
//agreement for further details.

// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_0_jtag_debug_module_arbitrator (
                                            // inputs:
                                             clk,
                                             cpu_0_data_master_address_to_slave,
                                             cpu_0_data_master_byteenable,
                                             cpu_0_data_master_debugaccess,
                                             cpu_0_data_master_read,
                                             cpu_0_data_master_waitrequest,
                                             cpu_0_data_master_write,
                                             cpu_0_data_master_writedata,
                                             cpu_0_instruction_master_address_to_slave,
                                             cpu_0_instruction_master_latency_counter,
                                             cpu_0_instruction_master_read,
                                             cpu_0_jtag_debug_module_readdata,
                                             cpu_0_jtag_debug_module_resetrequest,
                                             reset_n,

                                            // outputs:
                                             cpu_0_data_master_granted_cpu_0_jtag_debug_module,
                                             cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module,
                                             cpu_0_data_master_read_data_valid_cpu_0_jtag_debug_module,
                                             cpu_0_data_master_requests_cpu_0_jtag_debug_module,
                                             cpu_0_instruction_master_granted_cpu_0_jtag_debug_module,
                                             cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module,
                                             cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module,
                                             cpu_0_instruction_master_requests_cpu_0_jtag_debug_module,
                                             cpu_0_jtag_debug_module_address,
                                             cpu_0_jtag_debug_module_begintransfer,
                                             cpu_0_jtag_debug_module_byteenable,
                                             cpu_0_jtag_debug_module_chipselect,
                                             cpu_0_jtag_debug_module_debugaccess,
                                             cpu_0_jtag_debug_module_readdata_from_sa,
                                             cpu_0_jtag_debug_module_reset_n,
                                             cpu_0_jtag_debug_module_resetrequest_from_sa,
                                             cpu_0_jtag_debug_module_write,
                                             cpu_0_jtag_debug_module_writedata,
                                             d1_cpu_0_jtag_debug_module_end_xfer
                                          )
;

  output           cpu_0_data_master_granted_cpu_0_jtag_debug_module;
  output           cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module;
  output           cpu_0_data_master_read_data_valid_cpu_0_jtag_debug_module;
  output           cpu_0_data_master_requests_cpu_0_jtag_debug_module;
  output           cpu_0_instruction_master_granted_cpu_0_jtag_debug_module;
  output           cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module;
  output           cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module;
  output           cpu_0_instruction_master_requests_cpu_0_jtag_debug_module;
  output  [  8: 0] cpu_0_jtag_debug_module_address;
  output           cpu_0_jtag_debug_module_begintransfer;
  output  [  3: 0] cpu_0_jtag_debug_module_byteenable;
  output           cpu_0_jtag_debug_module_chipselect;
  output           cpu_0_jtag_debug_module_debugaccess;
  output  [ 31: 0] cpu_0_jtag_debug_module_readdata_from_sa;
  output           cpu_0_jtag_debug_module_reset_n;
  output           cpu_0_jtag_debug_module_resetrequest_from_sa;
  output           cpu_0_jtag_debug_module_write;
  output  [ 31: 0] cpu_0_jtag_debug_module_writedata;
  output           d1_cpu_0_jtag_debug_module_end_xfer;
  input            clk;
  input   [ 16: 0] cpu_0_data_master_address_to_slave;
  input   [  3: 0] cpu_0_data_master_byteenable;
  input            cpu_0_data_master_debugaccess;
  input            cpu_0_data_master_read;
  input            cpu_0_data_master_waitrequest;
  input            cpu_0_data_master_write;
  input   [ 31: 0] cpu_0_data_master_writedata;
  input   [ 16: 0] cpu_0_instruction_master_address_to_slave;
  input            cpu_0_instruction_master_latency_counter;
  input            cpu_0_instruction_master_read;
  input   [ 31: 0] cpu_0_jtag_debug_module_readdata;
  input            cpu_0_jtag_debug_module_resetrequest;
  input            reset_n;

  wire             cpu_0_data_master_arbiterlock;
  wire             cpu_0_data_master_arbiterlock2;
  wire             cpu_0_data_master_continuerequest;
  wire             cpu_0_data_master_granted_cpu_0_jtag_debug_module;
  wire             cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module;
  wire             cpu_0_data_master_read_data_valid_cpu_0_jtag_debug_module;
  wire             cpu_0_data_master_requests_cpu_0_jtag_debug_module;
  wire             cpu_0_data_master_saved_grant_cpu_0_jtag_debug_module;
  wire             cpu_0_instruction_master_arbiterlock;
  wire             cpu_0_instruction_master_arbiterlock2;
  wire             cpu_0_instruction_master_continuerequest;
  wire             cpu_0_instruction_master_granted_cpu_0_jtag_debug_module;
  wire             cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module;
  wire             cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module;
  wire             cpu_0_instruction_master_requests_cpu_0_jtag_debug_module;
  wire             cpu_0_instruction_master_saved_grant_cpu_0_jtag_debug_module;
  wire    [  8: 0] cpu_0_jtag_debug_module_address;
  wire             cpu_0_jtag_debug_module_allgrants;
  wire             cpu_0_jtag_debug_module_allow_new_arb_cycle;
  wire             cpu_0_jtag_debug_module_any_bursting_master_saved_grant;
  wire             cpu_0_jtag_debug_module_any_continuerequest;
  reg     [  1: 0] cpu_0_jtag_debug_module_arb_addend;
  wire             cpu_0_jtag_debug_module_arb_counter_enable;
  reg              cpu_0_jtag_debug_module_arb_share_counter;
  wire             cpu_0_jtag_debug_module_arb_share_counter_next_value;
  wire             cpu_0_jtag_debug_module_arb_share_set_values;
  wire    [  1: 0] cpu_0_jtag_debug_module_arb_winner;
  wire             cpu_0_jtag_debug_module_arbitration_holdoff_internal;
  wire             cpu_0_jtag_debug_module_beginbursttransfer_internal;
  wire             cpu_0_jtag_debug_module_begins_xfer;
  wire             cpu_0_jtag_debug_module_begintransfer;
  wire    [  3: 0] cpu_0_jtag_debug_module_byteenable;
  wire             cpu_0_jtag_debug_module_chipselect;
  wire    [  3: 0] cpu_0_jtag_debug_module_chosen_master_double_vector;
  wire    [  1: 0] cpu_0_jtag_debug_module_chosen_master_rot_left;
  wire             cpu_0_jtag_debug_module_debugaccess;
  wire             cpu_0_jtag_debug_module_end_xfer;
  wire             cpu_0_jtag_debug_module_firsttransfer;
  wire    [  1: 0] cpu_0_jtag_debug_module_grant_vector;
  wire             cpu_0_jtag_debug_module_in_a_read_cycle;
  wire             cpu_0_jtag_debug_module_in_a_write_cycle;
  wire    [  1: 0] cpu_0_jtag_debug_module_master_qreq_vector;
  wire             cpu_0_jtag_debug_module_non_bursting_master_requests;
  wire    [ 31: 0] cpu_0_jtag_debug_module_readdata_from_sa;
  reg              cpu_0_jtag_debug_module_reg_firsttransfer;
  wire             cpu_0_jtag_debug_module_reset_n;
  wire             cpu_0_jtag_debug_module_resetrequest_from_sa;
  reg     [  1: 0] cpu_0_jtag_debug_module_saved_chosen_master_vector;
  reg              cpu_0_jtag_debug_module_slavearbiterlockenable;
  wire             cpu_0_jtag_debug_module_slavearbiterlockenable2;
  wire             cpu_0_jtag_debug_module_unreg_firsttransfer;
  wire             cpu_0_jtag_debug_module_waits_for_read;
  wire             cpu_0_jtag_debug_module_waits_for_write;
  wire             cpu_0_jtag_debug_module_write;
  wire    [ 31: 0] cpu_0_jtag_debug_module_writedata;
  reg              d1_cpu_0_jtag_debug_module_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_cpu_0_jtag_debug_module;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg              last_cycle_cpu_0_data_master_granted_slave_cpu_0_jtag_debug_module;
  reg              last_cycle_cpu_0_instruction_master_granted_slave_cpu_0_jtag_debug_module;
  wire    [ 16: 0] shifted_address_to_cpu_0_jtag_debug_module_from_cpu_0_data_master;
  wire    [ 16: 0] shifted_address_to_cpu_0_jtag_debug_module_from_cpu_0_instruction_master;
  wire             wait_for_cpu_0_jtag_debug_module_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~cpu_0_jtag_debug_module_end_xfer;
    end


  assign cpu_0_jtag_debug_module_begins_xfer = ~d1_reasons_to_wait & ((cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module | cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module));
  //assign cpu_0_jtag_debug_module_readdata_from_sa = cpu_0_jtag_debug_module_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign cpu_0_jtag_debug_module_readdata_from_sa = cpu_0_jtag_debug_module_readdata;

  assign cpu_0_data_master_requests_cpu_0_jtag_debug_module = ({cpu_0_data_master_address_to_slave[16 : 11] , 11'b0} == 17'h10800) & (cpu_0_data_master_read | cpu_0_data_master_write);
  //cpu_0_jtag_debug_module_arb_share_counter set values, which is an e_mux
  assign cpu_0_jtag_debug_module_arb_share_set_values = 1;

  //cpu_0_jtag_debug_module_non_bursting_master_requests mux, which is an e_mux
  assign cpu_0_jtag_debug_module_non_bursting_master_requests = cpu_0_data_master_requests_cpu_0_jtag_debug_module |
    cpu_0_instruction_master_requests_cpu_0_jtag_debug_module |
    cpu_0_data_master_requests_cpu_0_jtag_debug_module |
    cpu_0_instruction_master_requests_cpu_0_jtag_debug_module;

  //cpu_0_jtag_debug_module_any_bursting_master_saved_grant mux, which is an e_mux
  assign cpu_0_jtag_debug_module_any_bursting_master_saved_grant = 0;

  //cpu_0_jtag_debug_module_arb_share_counter_next_value assignment, which is an e_assign
  assign cpu_0_jtag_debug_module_arb_share_counter_next_value = cpu_0_jtag_debug_module_firsttransfer ? (cpu_0_jtag_debug_module_arb_share_set_values - 1) : |cpu_0_jtag_debug_module_arb_share_counter ? (cpu_0_jtag_debug_module_arb_share_counter - 1) : 0;

  //cpu_0_jtag_debug_module_allgrants all slave grants, which is an e_mux
  assign cpu_0_jtag_debug_module_allgrants = (|cpu_0_jtag_debug_module_grant_vector) |
    (|cpu_0_jtag_debug_module_grant_vector) |
    (|cpu_0_jtag_debug_module_grant_vector) |
    (|cpu_0_jtag_debug_module_grant_vector);

  //cpu_0_jtag_debug_module_end_xfer assignment, which is an e_assign
  assign cpu_0_jtag_debug_module_end_xfer = ~(cpu_0_jtag_debug_module_waits_for_read | cpu_0_jtag_debug_module_waits_for_write);

  //end_xfer_arb_share_counter_term_cpu_0_jtag_debug_module arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_cpu_0_jtag_debug_module = cpu_0_jtag_debug_module_end_xfer & (~cpu_0_jtag_debug_module_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //cpu_0_jtag_debug_module_arb_share_counter arbitration counter enable, which is an e_assign
  assign cpu_0_jtag_debug_module_arb_counter_enable = (end_xfer_arb_share_counter_term_cpu_0_jtag_debug_module & cpu_0_jtag_debug_module_allgrants) | (end_xfer_arb_share_counter_term_cpu_0_jtag_debug_module & ~cpu_0_jtag_debug_module_non_bursting_master_requests);

  //cpu_0_jtag_debug_module_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_jtag_debug_module_arb_share_counter <= 0;
      else if (cpu_0_jtag_debug_module_arb_counter_enable)
          cpu_0_jtag_debug_module_arb_share_counter <= cpu_0_jtag_debug_module_arb_share_counter_next_value;
    end


  //cpu_0_jtag_debug_module_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_jtag_debug_module_slavearbiterlockenable <= 0;
      else if ((|cpu_0_jtag_debug_module_master_qreq_vector & end_xfer_arb_share_counter_term_cpu_0_jtag_debug_module) | (end_xfer_arb_share_counter_term_cpu_0_jtag_debug_module & ~cpu_0_jtag_debug_module_non_bursting_master_requests))
          cpu_0_jtag_debug_module_slavearbiterlockenable <= |cpu_0_jtag_debug_module_arb_share_counter_next_value;
    end


  //cpu_0/data_master cpu_0/jtag_debug_module arbiterlock, which is an e_assign
  assign cpu_0_data_master_arbiterlock = cpu_0_jtag_debug_module_slavearbiterlockenable & cpu_0_data_master_continuerequest;

  //cpu_0_jtag_debug_module_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign cpu_0_jtag_debug_module_slavearbiterlockenable2 = |cpu_0_jtag_debug_module_arb_share_counter_next_value;

  //cpu_0/data_master cpu_0/jtag_debug_module arbiterlock2, which is an e_assign
  assign cpu_0_data_master_arbiterlock2 = cpu_0_jtag_debug_module_slavearbiterlockenable2 & cpu_0_data_master_continuerequest;

  //cpu_0/instruction_master cpu_0/jtag_debug_module arbiterlock, which is an e_assign
  assign cpu_0_instruction_master_arbiterlock = cpu_0_jtag_debug_module_slavearbiterlockenable & cpu_0_instruction_master_continuerequest;

  //cpu_0/instruction_master cpu_0/jtag_debug_module arbiterlock2, which is an e_assign
  assign cpu_0_instruction_master_arbiterlock2 = cpu_0_jtag_debug_module_slavearbiterlockenable2 & cpu_0_instruction_master_continuerequest;

  //cpu_0/instruction_master granted cpu_0/jtag_debug_module last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_0_instruction_master_granted_slave_cpu_0_jtag_debug_module <= 0;
      else 
        last_cycle_cpu_0_instruction_master_granted_slave_cpu_0_jtag_debug_module <= cpu_0_instruction_master_saved_grant_cpu_0_jtag_debug_module ? 1 : (cpu_0_jtag_debug_module_arbitration_holdoff_internal | ~cpu_0_instruction_master_requests_cpu_0_jtag_debug_module) ? 0 : last_cycle_cpu_0_instruction_master_granted_slave_cpu_0_jtag_debug_module;
    end


  //cpu_0_instruction_master_continuerequest continued request, which is an e_mux
  assign cpu_0_instruction_master_continuerequest = last_cycle_cpu_0_instruction_master_granted_slave_cpu_0_jtag_debug_module & cpu_0_instruction_master_requests_cpu_0_jtag_debug_module;

  //cpu_0_jtag_debug_module_any_continuerequest at least one master continues requesting, which is an e_mux
  assign cpu_0_jtag_debug_module_any_continuerequest = cpu_0_instruction_master_continuerequest |
    cpu_0_data_master_continuerequest;

  assign cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module = cpu_0_data_master_requests_cpu_0_jtag_debug_module & ~(((~cpu_0_data_master_waitrequest) & cpu_0_data_master_write) | cpu_0_instruction_master_arbiterlock);
  //cpu_0_jtag_debug_module_writedata mux, which is an e_mux
  assign cpu_0_jtag_debug_module_writedata = cpu_0_data_master_writedata;

  assign cpu_0_instruction_master_requests_cpu_0_jtag_debug_module = (({cpu_0_instruction_master_address_to_slave[16 : 11] , 11'b0} == 17'h10800) & (cpu_0_instruction_master_read)) & cpu_0_instruction_master_read;
  //cpu_0/data_master granted cpu_0/jtag_debug_module last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_0_data_master_granted_slave_cpu_0_jtag_debug_module <= 0;
      else 
        last_cycle_cpu_0_data_master_granted_slave_cpu_0_jtag_debug_module <= cpu_0_data_master_saved_grant_cpu_0_jtag_debug_module ? 1 : (cpu_0_jtag_debug_module_arbitration_holdoff_internal | ~cpu_0_data_master_requests_cpu_0_jtag_debug_module) ? 0 : last_cycle_cpu_0_data_master_granted_slave_cpu_0_jtag_debug_module;
    end


  //cpu_0_data_master_continuerequest continued request, which is an e_mux
  assign cpu_0_data_master_continuerequest = last_cycle_cpu_0_data_master_granted_slave_cpu_0_jtag_debug_module & cpu_0_data_master_requests_cpu_0_jtag_debug_module;

  assign cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module = cpu_0_instruction_master_requests_cpu_0_jtag_debug_module & ~((cpu_0_instruction_master_read & ((cpu_0_instruction_master_latency_counter != 0))) | cpu_0_data_master_arbiterlock);
  //local readdatavalid cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module, which is an e_mux
  assign cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module = cpu_0_instruction_master_granted_cpu_0_jtag_debug_module & cpu_0_instruction_master_read & ~cpu_0_jtag_debug_module_waits_for_read;

  //allow new arb cycle for cpu_0/jtag_debug_module, which is an e_assign
  assign cpu_0_jtag_debug_module_allow_new_arb_cycle = ~cpu_0_data_master_arbiterlock & ~cpu_0_instruction_master_arbiterlock;

  //cpu_0/instruction_master assignment into master qualified-requests vector for cpu_0/jtag_debug_module, which is an e_assign
  assign cpu_0_jtag_debug_module_master_qreq_vector[0] = cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module;

  //cpu_0/instruction_master grant cpu_0/jtag_debug_module, which is an e_assign
  assign cpu_0_instruction_master_granted_cpu_0_jtag_debug_module = cpu_0_jtag_debug_module_grant_vector[0];

  //cpu_0/instruction_master saved-grant cpu_0/jtag_debug_module, which is an e_assign
  assign cpu_0_instruction_master_saved_grant_cpu_0_jtag_debug_module = cpu_0_jtag_debug_module_arb_winner[0] && cpu_0_instruction_master_requests_cpu_0_jtag_debug_module;

  //cpu_0/data_master assignment into master qualified-requests vector for cpu_0/jtag_debug_module, which is an e_assign
  assign cpu_0_jtag_debug_module_master_qreq_vector[1] = cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module;

  //cpu_0/data_master grant cpu_0/jtag_debug_module, which is an e_assign
  assign cpu_0_data_master_granted_cpu_0_jtag_debug_module = cpu_0_jtag_debug_module_grant_vector[1];

  //cpu_0/data_master saved-grant cpu_0/jtag_debug_module, which is an e_assign
  assign cpu_0_data_master_saved_grant_cpu_0_jtag_debug_module = cpu_0_jtag_debug_module_arb_winner[1] && cpu_0_data_master_requests_cpu_0_jtag_debug_module;

  //cpu_0/jtag_debug_module chosen-master double-vector, which is an e_assign
  assign cpu_0_jtag_debug_module_chosen_master_double_vector = {cpu_0_jtag_debug_module_master_qreq_vector, cpu_0_jtag_debug_module_master_qreq_vector} & ({~cpu_0_jtag_debug_module_master_qreq_vector, ~cpu_0_jtag_debug_module_master_qreq_vector} + cpu_0_jtag_debug_module_arb_addend);

  //stable onehot encoding of arb winner
  assign cpu_0_jtag_debug_module_arb_winner = (cpu_0_jtag_debug_module_allow_new_arb_cycle & | cpu_0_jtag_debug_module_grant_vector) ? cpu_0_jtag_debug_module_grant_vector : cpu_0_jtag_debug_module_saved_chosen_master_vector;

  //saved cpu_0_jtag_debug_module_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_jtag_debug_module_saved_chosen_master_vector <= 0;
      else if (cpu_0_jtag_debug_module_allow_new_arb_cycle)
          cpu_0_jtag_debug_module_saved_chosen_master_vector <= |cpu_0_jtag_debug_module_grant_vector ? cpu_0_jtag_debug_module_grant_vector : cpu_0_jtag_debug_module_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign cpu_0_jtag_debug_module_grant_vector = {(cpu_0_jtag_debug_module_chosen_master_double_vector[1] | cpu_0_jtag_debug_module_chosen_master_double_vector[3]),
    (cpu_0_jtag_debug_module_chosen_master_double_vector[0] | cpu_0_jtag_debug_module_chosen_master_double_vector[2])};

  //cpu_0/jtag_debug_module chosen master rotated left, which is an e_assign
  assign cpu_0_jtag_debug_module_chosen_master_rot_left = (cpu_0_jtag_debug_module_arb_winner << 1) ? (cpu_0_jtag_debug_module_arb_winner << 1) : 1;

  //cpu_0/jtag_debug_module's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_jtag_debug_module_arb_addend <= 1;
      else if (|cpu_0_jtag_debug_module_grant_vector)
          cpu_0_jtag_debug_module_arb_addend <= cpu_0_jtag_debug_module_end_xfer? cpu_0_jtag_debug_module_chosen_master_rot_left : cpu_0_jtag_debug_module_grant_vector;
    end


  assign cpu_0_jtag_debug_module_begintransfer = cpu_0_jtag_debug_module_begins_xfer;
  //cpu_0_jtag_debug_module_reset_n assignment, which is an e_assign
  assign cpu_0_jtag_debug_module_reset_n = reset_n;

  //assign cpu_0_jtag_debug_module_resetrequest_from_sa = cpu_0_jtag_debug_module_resetrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign cpu_0_jtag_debug_module_resetrequest_from_sa = cpu_0_jtag_debug_module_resetrequest;

  assign cpu_0_jtag_debug_module_chipselect = cpu_0_data_master_granted_cpu_0_jtag_debug_module | cpu_0_instruction_master_granted_cpu_0_jtag_debug_module;
  //cpu_0_jtag_debug_module_firsttransfer first transaction, which is an e_assign
  assign cpu_0_jtag_debug_module_firsttransfer = cpu_0_jtag_debug_module_begins_xfer ? cpu_0_jtag_debug_module_unreg_firsttransfer : cpu_0_jtag_debug_module_reg_firsttransfer;

  //cpu_0_jtag_debug_module_unreg_firsttransfer first transaction, which is an e_assign
  assign cpu_0_jtag_debug_module_unreg_firsttransfer = ~(cpu_0_jtag_debug_module_slavearbiterlockenable & cpu_0_jtag_debug_module_any_continuerequest);

  //cpu_0_jtag_debug_module_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_jtag_debug_module_reg_firsttransfer <= 1'b1;
      else if (cpu_0_jtag_debug_module_begins_xfer)
          cpu_0_jtag_debug_module_reg_firsttransfer <= cpu_0_jtag_debug_module_unreg_firsttransfer;
    end


  //cpu_0_jtag_debug_module_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign cpu_0_jtag_debug_module_beginbursttransfer_internal = cpu_0_jtag_debug_module_begins_xfer;

  //cpu_0_jtag_debug_module_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign cpu_0_jtag_debug_module_arbitration_holdoff_internal = cpu_0_jtag_debug_module_begins_xfer & cpu_0_jtag_debug_module_firsttransfer;

  //cpu_0_jtag_debug_module_write assignment, which is an e_mux
  assign cpu_0_jtag_debug_module_write = cpu_0_data_master_granted_cpu_0_jtag_debug_module & cpu_0_data_master_write;

  assign shifted_address_to_cpu_0_jtag_debug_module_from_cpu_0_data_master = cpu_0_data_master_address_to_slave;
  //cpu_0_jtag_debug_module_address mux, which is an e_mux
  assign cpu_0_jtag_debug_module_address = (cpu_0_data_master_granted_cpu_0_jtag_debug_module)? (shifted_address_to_cpu_0_jtag_debug_module_from_cpu_0_data_master >> 2) :
    (shifted_address_to_cpu_0_jtag_debug_module_from_cpu_0_instruction_master >> 2);

  assign shifted_address_to_cpu_0_jtag_debug_module_from_cpu_0_instruction_master = cpu_0_instruction_master_address_to_slave;
  //d1_cpu_0_jtag_debug_module_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_cpu_0_jtag_debug_module_end_xfer <= 1;
      else 
        d1_cpu_0_jtag_debug_module_end_xfer <= cpu_0_jtag_debug_module_end_xfer;
    end


  //cpu_0_jtag_debug_module_waits_for_read in a cycle, which is an e_mux
  assign cpu_0_jtag_debug_module_waits_for_read = cpu_0_jtag_debug_module_in_a_read_cycle & cpu_0_jtag_debug_module_begins_xfer;

  //cpu_0_jtag_debug_module_in_a_read_cycle assignment, which is an e_assign
  assign cpu_0_jtag_debug_module_in_a_read_cycle = (cpu_0_data_master_granted_cpu_0_jtag_debug_module & cpu_0_data_master_read) | (cpu_0_instruction_master_granted_cpu_0_jtag_debug_module & cpu_0_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = cpu_0_jtag_debug_module_in_a_read_cycle;

  //cpu_0_jtag_debug_module_waits_for_write in a cycle, which is an e_mux
  assign cpu_0_jtag_debug_module_waits_for_write = cpu_0_jtag_debug_module_in_a_write_cycle & 0;

  //cpu_0_jtag_debug_module_in_a_write_cycle assignment, which is an e_assign
  assign cpu_0_jtag_debug_module_in_a_write_cycle = cpu_0_data_master_granted_cpu_0_jtag_debug_module & cpu_0_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = cpu_0_jtag_debug_module_in_a_write_cycle;

  assign wait_for_cpu_0_jtag_debug_module_counter = 0;
  //cpu_0_jtag_debug_module_byteenable byte enable port mux, which is an e_mux
  assign cpu_0_jtag_debug_module_byteenable = (cpu_0_data_master_granted_cpu_0_jtag_debug_module)? cpu_0_data_master_byteenable :
    -1;

  //debugaccess mux, which is an e_mux
  assign cpu_0_jtag_debug_module_debugaccess = (cpu_0_data_master_granted_cpu_0_jtag_debug_module)? cpu_0_data_master_debugaccess :
    0;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //cpu_0/jtag_debug_module enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_0_data_master_granted_cpu_0_jtag_debug_module + cpu_0_instruction_master_granted_cpu_0_jtag_debug_module > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_0_data_master_saved_grant_cpu_0_jtag_debug_module + cpu_0_instruction_master_saved_grant_cpu_0_jtag_debug_module > 1)
        begin
          $write("%0d ns: > 1 of saved_grant signals are active simultaneously", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_0_data_master_arbitrator (
                                      // inputs:
                                       clk,
                                       cpu_0_data_master_address,
                                       cpu_0_data_master_granted_cpu_0_jtag_debug_module,
                                       cpu_0_data_master_granted_green_LEDs_s1,
                                       cpu_0_data_master_granted_new_number_s1,
                                       cpu_0_data_master_granted_onchip_memory2_0_s1,
                                       cpu_0_data_master_granted_red_LEDs_s1,
                                       cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module,
                                       cpu_0_data_master_qualified_request_green_LEDs_s1,
                                       cpu_0_data_master_qualified_request_new_number_s1,
                                       cpu_0_data_master_qualified_request_onchip_memory2_0_s1,
                                       cpu_0_data_master_qualified_request_red_LEDs_s1,
                                       cpu_0_data_master_read,
                                       cpu_0_data_master_read_data_valid_cpu_0_jtag_debug_module,
                                       cpu_0_data_master_read_data_valid_green_LEDs_s1,
                                       cpu_0_data_master_read_data_valid_new_number_s1,
                                       cpu_0_data_master_read_data_valid_onchip_memory2_0_s1,
                                       cpu_0_data_master_read_data_valid_red_LEDs_s1,
                                       cpu_0_data_master_requests_cpu_0_jtag_debug_module,
                                       cpu_0_data_master_requests_green_LEDs_s1,
                                       cpu_0_data_master_requests_new_number_s1,
                                       cpu_0_data_master_requests_onchip_memory2_0_s1,
                                       cpu_0_data_master_requests_red_LEDs_s1,
                                       cpu_0_data_master_write,
                                       cpu_0_jtag_debug_module_readdata_from_sa,
                                       d1_cpu_0_jtag_debug_module_end_xfer,
                                       d1_green_LEDs_s1_end_xfer,
                                       d1_new_number_s1_end_xfer,
                                       d1_onchip_memory2_0_s1_end_xfer,
                                       d1_red_LEDs_s1_end_xfer,
                                       green_LEDs_s1_readdata_from_sa,
                                       new_number_s1_readdata_from_sa,
                                       onchip_memory2_0_s1_readdata_from_sa,
                                       red_LEDs_s1_readdata_from_sa,
                                       registered_cpu_0_data_master_read_data_valid_onchip_memory2_0_s1,
                                       reset_n,

                                      // outputs:
                                       cpu_0_data_master_address_to_slave,
                                       cpu_0_data_master_readdata,
                                       cpu_0_data_master_waitrequest
                                    )
;

  output  [ 16: 0] cpu_0_data_master_address_to_slave;
  output  [ 31: 0] cpu_0_data_master_readdata;
  output           cpu_0_data_master_waitrequest;
  input            clk;
  input   [ 16: 0] cpu_0_data_master_address;
  input            cpu_0_data_master_granted_cpu_0_jtag_debug_module;
  input            cpu_0_data_master_granted_green_LEDs_s1;
  input            cpu_0_data_master_granted_new_number_s1;
  input            cpu_0_data_master_granted_onchip_memory2_0_s1;
  input            cpu_0_data_master_granted_red_LEDs_s1;
  input            cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module;
  input            cpu_0_data_master_qualified_request_green_LEDs_s1;
  input            cpu_0_data_master_qualified_request_new_number_s1;
  input            cpu_0_data_master_qualified_request_onchip_memory2_0_s1;
  input            cpu_0_data_master_qualified_request_red_LEDs_s1;
  input            cpu_0_data_master_read;
  input            cpu_0_data_master_read_data_valid_cpu_0_jtag_debug_module;
  input            cpu_0_data_master_read_data_valid_green_LEDs_s1;
  input            cpu_0_data_master_read_data_valid_new_number_s1;
  input            cpu_0_data_master_read_data_valid_onchip_memory2_0_s1;
  input            cpu_0_data_master_read_data_valid_red_LEDs_s1;
  input            cpu_0_data_master_requests_cpu_0_jtag_debug_module;
  input            cpu_0_data_master_requests_green_LEDs_s1;
  input            cpu_0_data_master_requests_new_number_s1;
  input            cpu_0_data_master_requests_onchip_memory2_0_s1;
  input            cpu_0_data_master_requests_red_LEDs_s1;
  input            cpu_0_data_master_write;
  input   [ 31: 0] cpu_0_jtag_debug_module_readdata_from_sa;
  input            d1_cpu_0_jtag_debug_module_end_xfer;
  input            d1_green_LEDs_s1_end_xfer;
  input            d1_new_number_s1_end_xfer;
  input            d1_onchip_memory2_0_s1_end_xfer;
  input            d1_red_LEDs_s1_end_xfer;
  input   [  7: 0] green_LEDs_s1_readdata_from_sa;
  input   [  7: 0] new_number_s1_readdata_from_sa;
  input   [ 31: 0] onchip_memory2_0_s1_readdata_from_sa;
  input   [ 15: 0] red_LEDs_s1_readdata_from_sa;
  input            registered_cpu_0_data_master_read_data_valid_onchip_memory2_0_s1;
  input            reset_n;

  wire    [ 16: 0] cpu_0_data_master_address_to_slave;
  wire    [ 31: 0] cpu_0_data_master_readdata;
  wire             cpu_0_data_master_run;
  reg              cpu_0_data_master_waitrequest;
  wire             r_0;
  wire             r_1;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & (cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module | ~cpu_0_data_master_requests_cpu_0_jtag_debug_module) & (cpu_0_data_master_granted_cpu_0_jtag_debug_module | ~cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module) & ((~cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module | ~cpu_0_data_master_read | (1 & 1 & cpu_0_data_master_read))) & ((~cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module | ~cpu_0_data_master_write | (1 & cpu_0_data_master_write))) & 1 & (cpu_0_data_master_qualified_request_green_LEDs_s1 | ~cpu_0_data_master_requests_green_LEDs_s1) & ((~cpu_0_data_master_qualified_request_green_LEDs_s1 | ~cpu_0_data_master_read | (1 & 1 & cpu_0_data_master_read))) & ((~cpu_0_data_master_qualified_request_green_LEDs_s1 | ~cpu_0_data_master_write | (1 & cpu_0_data_master_write))) & 1 & ((~cpu_0_data_master_qualified_request_new_number_s1 | ~cpu_0_data_master_read | (1 & 1 & cpu_0_data_master_read))) & ((~cpu_0_data_master_qualified_request_new_number_s1 | ~cpu_0_data_master_write | (1 & cpu_0_data_master_write))) & 1 & (cpu_0_data_master_qualified_request_onchip_memory2_0_s1 | registered_cpu_0_data_master_read_data_valid_onchip_memory2_0_s1 | ~cpu_0_data_master_requests_onchip_memory2_0_s1) & (cpu_0_data_master_granted_onchip_memory2_0_s1 | ~cpu_0_data_master_qualified_request_onchip_memory2_0_s1) & ((~cpu_0_data_master_qualified_request_onchip_memory2_0_s1 | ~cpu_0_data_master_read | (registered_cpu_0_data_master_read_data_valid_onchip_memory2_0_s1 & cpu_0_data_master_read))) & ((~cpu_0_data_master_qualified_request_onchip_memory2_0_s1 | ~(cpu_0_data_master_read | cpu_0_data_master_write) | (1 & (cpu_0_data_master_read | cpu_0_data_master_write)))) & 1 & (cpu_0_data_master_qualified_request_red_LEDs_s1 | ~cpu_0_data_master_requests_red_LEDs_s1) & ((~cpu_0_data_master_qualified_request_red_LEDs_s1 | ~cpu_0_data_master_read | (1 & 1 & cpu_0_data_master_read)));

  //cascaded wait assignment, which is an e_assign
  assign cpu_0_data_master_run = r_0 & r_1;

  //r_1 master_run cascaded wait assignment, which is an e_assign
  assign r_1 = ~cpu_0_data_master_qualified_request_red_LEDs_s1 | ~cpu_0_data_master_write | (1 & cpu_0_data_master_write);

  //optimize select-logic by passing only those address bits which matter.
  assign cpu_0_data_master_address_to_slave = cpu_0_data_master_address[16 : 0];

  //cpu_0/data_master readdata mux, which is an e_mux
  assign cpu_0_data_master_readdata = ({32 {~cpu_0_data_master_requests_cpu_0_jtag_debug_module}} | cpu_0_jtag_debug_module_readdata_from_sa) &
    ({32 {~cpu_0_data_master_requests_green_LEDs_s1}} | green_LEDs_s1_readdata_from_sa) &
    ({32 {~cpu_0_data_master_requests_new_number_s1}} | new_number_s1_readdata_from_sa) &
    ({32 {~cpu_0_data_master_requests_onchip_memory2_0_s1}} | onchip_memory2_0_s1_readdata_from_sa) &
    ({32 {~cpu_0_data_master_requests_red_LEDs_s1}} | red_LEDs_s1_readdata_from_sa);

  //actual waitrequest port, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_data_master_waitrequest <= ~0;
      else 
        cpu_0_data_master_waitrequest <= ~((~(cpu_0_data_master_read | cpu_0_data_master_write))? 0: (cpu_0_data_master_run & cpu_0_data_master_waitrequest));
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_0_instruction_master_arbitrator (
                                             // inputs:
                                              clk,
                                              cpu_0_instruction_master_address,
                                              cpu_0_instruction_master_granted_cpu_0_jtag_debug_module,
                                              cpu_0_instruction_master_granted_onchip_memory2_0_s1,
                                              cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module,
                                              cpu_0_instruction_master_qualified_request_onchip_memory2_0_s1,
                                              cpu_0_instruction_master_read,
                                              cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module,
                                              cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1,
                                              cpu_0_instruction_master_requests_cpu_0_jtag_debug_module,
                                              cpu_0_instruction_master_requests_onchip_memory2_0_s1,
                                              cpu_0_jtag_debug_module_readdata_from_sa,
                                              d1_cpu_0_jtag_debug_module_end_xfer,
                                              d1_onchip_memory2_0_s1_end_xfer,
                                              onchip_memory2_0_s1_readdata_from_sa,
                                              reset_n,

                                             // outputs:
                                              cpu_0_instruction_master_address_to_slave,
                                              cpu_0_instruction_master_latency_counter,
                                              cpu_0_instruction_master_readdata,
                                              cpu_0_instruction_master_readdatavalid,
                                              cpu_0_instruction_master_waitrequest
                                           )
;

  output  [ 16: 0] cpu_0_instruction_master_address_to_slave;
  output           cpu_0_instruction_master_latency_counter;
  output  [ 31: 0] cpu_0_instruction_master_readdata;
  output           cpu_0_instruction_master_readdatavalid;
  output           cpu_0_instruction_master_waitrequest;
  input            clk;
  input   [ 16: 0] cpu_0_instruction_master_address;
  input            cpu_0_instruction_master_granted_cpu_0_jtag_debug_module;
  input            cpu_0_instruction_master_granted_onchip_memory2_0_s1;
  input            cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module;
  input            cpu_0_instruction_master_qualified_request_onchip_memory2_0_s1;
  input            cpu_0_instruction_master_read;
  input            cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module;
  input            cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1;
  input            cpu_0_instruction_master_requests_cpu_0_jtag_debug_module;
  input            cpu_0_instruction_master_requests_onchip_memory2_0_s1;
  input   [ 31: 0] cpu_0_jtag_debug_module_readdata_from_sa;
  input            d1_cpu_0_jtag_debug_module_end_xfer;
  input            d1_onchip_memory2_0_s1_end_xfer;
  input   [ 31: 0] onchip_memory2_0_s1_readdata_from_sa;
  input            reset_n;

  reg              active_and_waiting_last_time;
  reg     [ 16: 0] cpu_0_instruction_master_address_last_time;
  wire    [ 16: 0] cpu_0_instruction_master_address_to_slave;
  wire             cpu_0_instruction_master_is_granted_some_slave;
  reg              cpu_0_instruction_master_latency_counter;
  reg              cpu_0_instruction_master_read_but_no_slave_selected;
  reg              cpu_0_instruction_master_read_last_time;
  wire    [ 31: 0] cpu_0_instruction_master_readdata;
  wire             cpu_0_instruction_master_readdatavalid;
  wire             cpu_0_instruction_master_run;
  wire             cpu_0_instruction_master_waitrequest;
  wire             latency_load_value;
  wire             p1_cpu_0_instruction_master_latency_counter;
  wire             pre_flush_cpu_0_instruction_master_readdatavalid;
  wire             r_0;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & (cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module | ~cpu_0_instruction_master_requests_cpu_0_jtag_debug_module) & (cpu_0_instruction_master_granted_cpu_0_jtag_debug_module | ~cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module) & ((~cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module | ~cpu_0_instruction_master_read | (1 & ~d1_cpu_0_jtag_debug_module_end_xfer & cpu_0_instruction_master_read))) & 1 & (cpu_0_instruction_master_qualified_request_onchip_memory2_0_s1 | ~cpu_0_instruction_master_requests_onchip_memory2_0_s1) & (cpu_0_instruction_master_granted_onchip_memory2_0_s1 | ~cpu_0_instruction_master_qualified_request_onchip_memory2_0_s1) & ((~cpu_0_instruction_master_qualified_request_onchip_memory2_0_s1 | ~cpu_0_instruction_master_read | (1 & cpu_0_instruction_master_read)));

  //cascaded wait assignment, which is an e_assign
  assign cpu_0_instruction_master_run = r_0;

  //optimize select-logic by passing only those address bits which matter.
  assign cpu_0_instruction_master_address_to_slave = cpu_0_instruction_master_address[16 : 0];

  //cpu_0_instruction_master_read_but_no_slave_selected assignment, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_instruction_master_read_but_no_slave_selected <= 0;
      else 
        cpu_0_instruction_master_read_but_no_slave_selected <= cpu_0_instruction_master_read & cpu_0_instruction_master_run & ~cpu_0_instruction_master_is_granted_some_slave;
    end


  //some slave is getting selected, which is an e_mux
  assign cpu_0_instruction_master_is_granted_some_slave = cpu_0_instruction_master_granted_cpu_0_jtag_debug_module |
    cpu_0_instruction_master_granted_onchip_memory2_0_s1;

  //latent slave read data valids which may be flushed, which is an e_mux
  assign pre_flush_cpu_0_instruction_master_readdatavalid = cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1;

  //latent slave read data valid which is not flushed, which is an e_mux
  assign cpu_0_instruction_master_readdatavalid = cpu_0_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu_0_instruction_master_readdatavalid |
    cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module |
    cpu_0_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu_0_instruction_master_readdatavalid;

  //cpu_0/instruction_master readdata mux, which is an e_mux
  assign cpu_0_instruction_master_readdata = ({32 {~(cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module & cpu_0_instruction_master_read)}} | cpu_0_jtag_debug_module_readdata_from_sa) &
    ({32 {~cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1}} | onchip_memory2_0_s1_readdata_from_sa);

  //actual waitrequest port, which is an e_assign
  assign cpu_0_instruction_master_waitrequest = ~cpu_0_instruction_master_run;

  //latent max counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_instruction_master_latency_counter <= 0;
      else 
        cpu_0_instruction_master_latency_counter <= p1_cpu_0_instruction_master_latency_counter;
    end


  //latency counter load mux, which is an e_mux
  assign p1_cpu_0_instruction_master_latency_counter = ((cpu_0_instruction_master_run & cpu_0_instruction_master_read))? latency_load_value :
    (cpu_0_instruction_master_latency_counter)? cpu_0_instruction_master_latency_counter - 1 :
    0;

  //read latency load values, which is an e_mux
  assign latency_load_value = {1 {cpu_0_instruction_master_requests_onchip_memory2_0_s1}} & 1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //cpu_0_instruction_master_address check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_instruction_master_address_last_time <= 0;
      else 
        cpu_0_instruction_master_address_last_time <= cpu_0_instruction_master_address;
    end


  //cpu_0/instruction_master waited last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          active_and_waiting_last_time <= 0;
      else 
        active_and_waiting_last_time <= cpu_0_instruction_master_waitrequest & (cpu_0_instruction_master_read);
    end


  //cpu_0_instruction_master_address matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu_0_instruction_master_address != cpu_0_instruction_master_address_last_time))
        begin
          $write("%0d ns: cpu_0_instruction_master_address did not heed wait!!!", $time);
          $stop;
        end
    end


  //cpu_0_instruction_master_read check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_instruction_master_read_last_time <= 0;
      else 
        cpu_0_instruction_master_read_last_time <= cpu_0_instruction_master_read;
    end


  //cpu_0_instruction_master_read matches last port_name, which is an e_process
  always @(posedge clk)
    begin
      if (active_and_waiting_last_time & (cpu_0_instruction_master_read != cpu_0_instruction_master_read_last_time))
        begin
          $write("%0d ns: cpu_0_instruction_master_read did not heed wait!!!", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module green_LEDs_s1_arbitrator (
                                  // inputs:
                                   clk,
                                   cpu_0_data_master_address_to_slave,
                                   cpu_0_data_master_byteenable,
                                   cpu_0_data_master_read,
                                   cpu_0_data_master_waitrequest,
                                   cpu_0_data_master_write,
                                   cpu_0_data_master_writedata,
                                   green_LEDs_s1_readdata,
                                   reset_n,

                                  // outputs:
                                   cpu_0_data_master_granted_green_LEDs_s1,
                                   cpu_0_data_master_qualified_request_green_LEDs_s1,
                                   cpu_0_data_master_read_data_valid_green_LEDs_s1,
                                   cpu_0_data_master_requests_green_LEDs_s1,
                                   d1_green_LEDs_s1_end_xfer,
                                   green_LEDs_s1_address,
                                   green_LEDs_s1_chipselect,
                                   green_LEDs_s1_readdata_from_sa,
                                   green_LEDs_s1_reset_n,
                                   green_LEDs_s1_write_n,
                                   green_LEDs_s1_writedata
                                )
;

  output           cpu_0_data_master_granted_green_LEDs_s1;
  output           cpu_0_data_master_qualified_request_green_LEDs_s1;
  output           cpu_0_data_master_read_data_valid_green_LEDs_s1;
  output           cpu_0_data_master_requests_green_LEDs_s1;
  output           d1_green_LEDs_s1_end_xfer;
  output  [  1: 0] green_LEDs_s1_address;
  output           green_LEDs_s1_chipselect;
  output  [  7: 0] green_LEDs_s1_readdata_from_sa;
  output           green_LEDs_s1_reset_n;
  output           green_LEDs_s1_write_n;
  output  [  7: 0] green_LEDs_s1_writedata;
  input            clk;
  input   [ 16: 0] cpu_0_data_master_address_to_slave;
  input   [  3: 0] cpu_0_data_master_byteenable;
  input            cpu_0_data_master_read;
  input            cpu_0_data_master_waitrequest;
  input            cpu_0_data_master_write;
  input   [ 31: 0] cpu_0_data_master_writedata;
  input   [  7: 0] green_LEDs_s1_readdata;
  input            reset_n;

  wire             cpu_0_data_master_arbiterlock;
  wire             cpu_0_data_master_arbiterlock2;
  wire             cpu_0_data_master_continuerequest;
  wire             cpu_0_data_master_granted_green_LEDs_s1;
  wire             cpu_0_data_master_qualified_request_green_LEDs_s1;
  wire             cpu_0_data_master_read_data_valid_green_LEDs_s1;
  wire             cpu_0_data_master_requests_green_LEDs_s1;
  wire             cpu_0_data_master_saved_grant_green_LEDs_s1;
  reg              d1_green_LEDs_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_green_LEDs_s1;
  wire    [  1: 0] green_LEDs_s1_address;
  wire             green_LEDs_s1_allgrants;
  wire             green_LEDs_s1_allow_new_arb_cycle;
  wire             green_LEDs_s1_any_bursting_master_saved_grant;
  wire             green_LEDs_s1_any_continuerequest;
  wire             green_LEDs_s1_arb_counter_enable;
  reg              green_LEDs_s1_arb_share_counter;
  wire             green_LEDs_s1_arb_share_counter_next_value;
  wire             green_LEDs_s1_arb_share_set_values;
  wire             green_LEDs_s1_beginbursttransfer_internal;
  wire             green_LEDs_s1_begins_xfer;
  wire             green_LEDs_s1_chipselect;
  wire             green_LEDs_s1_end_xfer;
  wire             green_LEDs_s1_firsttransfer;
  wire             green_LEDs_s1_grant_vector;
  wire             green_LEDs_s1_in_a_read_cycle;
  wire             green_LEDs_s1_in_a_write_cycle;
  wire             green_LEDs_s1_master_qreq_vector;
  wire             green_LEDs_s1_non_bursting_master_requests;
  wire             green_LEDs_s1_pretend_byte_enable;
  wire    [  7: 0] green_LEDs_s1_readdata_from_sa;
  reg              green_LEDs_s1_reg_firsttransfer;
  wire             green_LEDs_s1_reset_n;
  reg              green_LEDs_s1_slavearbiterlockenable;
  wire             green_LEDs_s1_slavearbiterlockenable2;
  wire             green_LEDs_s1_unreg_firsttransfer;
  wire             green_LEDs_s1_waits_for_read;
  wire             green_LEDs_s1_waits_for_write;
  wire             green_LEDs_s1_write_n;
  wire    [  7: 0] green_LEDs_s1_writedata;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 16: 0] shifted_address_to_green_LEDs_s1_from_cpu_0_data_master;
  wire             wait_for_green_LEDs_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~green_LEDs_s1_end_xfer;
    end


  assign green_LEDs_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu_0_data_master_qualified_request_green_LEDs_s1));
  //assign green_LEDs_s1_readdata_from_sa = green_LEDs_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign green_LEDs_s1_readdata_from_sa = green_LEDs_s1_readdata;

  assign cpu_0_data_master_requests_green_LEDs_s1 = ({cpu_0_data_master_address_to_slave[16 : 4] , 4'b0} == 17'h11010) & (cpu_0_data_master_read | cpu_0_data_master_write);
  //green_LEDs_s1_arb_share_counter set values, which is an e_mux
  assign green_LEDs_s1_arb_share_set_values = 1;

  //green_LEDs_s1_non_bursting_master_requests mux, which is an e_mux
  assign green_LEDs_s1_non_bursting_master_requests = cpu_0_data_master_requests_green_LEDs_s1;

  //green_LEDs_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign green_LEDs_s1_any_bursting_master_saved_grant = 0;

  //green_LEDs_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign green_LEDs_s1_arb_share_counter_next_value = green_LEDs_s1_firsttransfer ? (green_LEDs_s1_arb_share_set_values - 1) : |green_LEDs_s1_arb_share_counter ? (green_LEDs_s1_arb_share_counter - 1) : 0;

  //green_LEDs_s1_allgrants all slave grants, which is an e_mux
  assign green_LEDs_s1_allgrants = |green_LEDs_s1_grant_vector;

  //green_LEDs_s1_end_xfer assignment, which is an e_assign
  assign green_LEDs_s1_end_xfer = ~(green_LEDs_s1_waits_for_read | green_LEDs_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_green_LEDs_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_green_LEDs_s1 = green_LEDs_s1_end_xfer & (~green_LEDs_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //green_LEDs_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign green_LEDs_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_green_LEDs_s1 & green_LEDs_s1_allgrants) | (end_xfer_arb_share_counter_term_green_LEDs_s1 & ~green_LEDs_s1_non_bursting_master_requests);

  //green_LEDs_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          green_LEDs_s1_arb_share_counter <= 0;
      else if (green_LEDs_s1_arb_counter_enable)
          green_LEDs_s1_arb_share_counter <= green_LEDs_s1_arb_share_counter_next_value;
    end


  //green_LEDs_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          green_LEDs_s1_slavearbiterlockenable <= 0;
      else if ((|green_LEDs_s1_master_qreq_vector & end_xfer_arb_share_counter_term_green_LEDs_s1) | (end_xfer_arb_share_counter_term_green_LEDs_s1 & ~green_LEDs_s1_non_bursting_master_requests))
          green_LEDs_s1_slavearbiterlockenable <= |green_LEDs_s1_arb_share_counter_next_value;
    end


  //cpu_0/data_master green_LEDs/s1 arbiterlock, which is an e_assign
  assign cpu_0_data_master_arbiterlock = green_LEDs_s1_slavearbiterlockenable & cpu_0_data_master_continuerequest;

  //green_LEDs_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign green_LEDs_s1_slavearbiterlockenable2 = |green_LEDs_s1_arb_share_counter_next_value;

  //cpu_0/data_master green_LEDs/s1 arbiterlock2, which is an e_assign
  assign cpu_0_data_master_arbiterlock2 = green_LEDs_s1_slavearbiterlockenable2 & cpu_0_data_master_continuerequest;

  //green_LEDs_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign green_LEDs_s1_any_continuerequest = 1;

  //cpu_0_data_master_continuerequest continued request, which is an e_assign
  assign cpu_0_data_master_continuerequest = 1;

  assign cpu_0_data_master_qualified_request_green_LEDs_s1 = cpu_0_data_master_requests_green_LEDs_s1 & ~(((~cpu_0_data_master_waitrequest) & cpu_0_data_master_write));
  //green_LEDs_s1_writedata mux, which is an e_mux
  assign green_LEDs_s1_writedata = cpu_0_data_master_writedata;

  //master is always granted when requested
  assign cpu_0_data_master_granted_green_LEDs_s1 = cpu_0_data_master_qualified_request_green_LEDs_s1;

  //cpu_0/data_master saved-grant green_LEDs/s1, which is an e_assign
  assign cpu_0_data_master_saved_grant_green_LEDs_s1 = cpu_0_data_master_requests_green_LEDs_s1;

  //allow new arb cycle for green_LEDs/s1, which is an e_assign
  assign green_LEDs_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign green_LEDs_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign green_LEDs_s1_master_qreq_vector = 1;

  //green_LEDs_s1_reset_n assignment, which is an e_assign
  assign green_LEDs_s1_reset_n = reset_n;

  assign green_LEDs_s1_chipselect = cpu_0_data_master_granted_green_LEDs_s1;
  //green_LEDs_s1_firsttransfer first transaction, which is an e_assign
  assign green_LEDs_s1_firsttransfer = green_LEDs_s1_begins_xfer ? green_LEDs_s1_unreg_firsttransfer : green_LEDs_s1_reg_firsttransfer;

  //green_LEDs_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign green_LEDs_s1_unreg_firsttransfer = ~(green_LEDs_s1_slavearbiterlockenable & green_LEDs_s1_any_continuerequest);

  //green_LEDs_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          green_LEDs_s1_reg_firsttransfer <= 1'b1;
      else if (green_LEDs_s1_begins_xfer)
          green_LEDs_s1_reg_firsttransfer <= green_LEDs_s1_unreg_firsttransfer;
    end


  //green_LEDs_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign green_LEDs_s1_beginbursttransfer_internal = green_LEDs_s1_begins_xfer;

  //~green_LEDs_s1_write_n assignment, which is an e_mux
  assign green_LEDs_s1_write_n = ~(((cpu_0_data_master_granted_green_LEDs_s1 & cpu_0_data_master_write)) & green_LEDs_s1_pretend_byte_enable);

  assign shifted_address_to_green_LEDs_s1_from_cpu_0_data_master = cpu_0_data_master_address_to_slave;
  //green_LEDs_s1_address mux, which is an e_mux
  assign green_LEDs_s1_address = shifted_address_to_green_LEDs_s1_from_cpu_0_data_master >> 2;

  //d1_green_LEDs_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_green_LEDs_s1_end_xfer <= 1;
      else 
        d1_green_LEDs_s1_end_xfer <= green_LEDs_s1_end_xfer;
    end


  //green_LEDs_s1_waits_for_read in a cycle, which is an e_mux
  assign green_LEDs_s1_waits_for_read = green_LEDs_s1_in_a_read_cycle & green_LEDs_s1_begins_xfer;

  //green_LEDs_s1_in_a_read_cycle assignment, which is an e_assign
  assign green_LEDs_s1_in_a_read_cycle = cpu_0_data_master_granted_green_LEDs_s1 & cpu_0_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = green_LEDs_s1_in_a_read_cycle;

  //green_LEDs_s1_waits_for_write in a cycle, which is an e_mux
  assign green_LEDs_s1_waits_for_write = green_LEDs_s1_in_a_write_cycle & 0;

  //green_LEDs_s1_in_a_write_cycle assignment, which is an e_assign
  assign green_LEDs_s1_in_a_write_cycle = cpu_0_data_master_granted_green_LEDs_s1 & cpu_0_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = green_LEDs_s1_in_a_write_cycle;

  assign wait_for_green_LEDs_s1_counter = 0;
  //green_LEDs_s1_pretend_byte_enable byte enable port mux, which is an e_mux
  assign green_LEDs_s1_pretend_byte_enable = (cpu_0_data_master_granted_green_LEDs_s1)? cpu_0_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //green_LEDs/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module new_number_s1_arbitrator (
                                  // inputs:
                                   clk,
                                   cpu_0_data_master_address_to_slave,
                                   cpu_0_data_master_read,
                                   cpu_0_data_master_write,
                                   new_number_s1_readdata,
                                   reset_n,

                                  // outputs:
                                   cpu_0_data_master_granted_new_number_s1,
                                   cpu_0_data_master_qualified_request_new_number_s1,
                                   cpu_0_data_master_read_data_valid_new_number_s1,
                                   cpu_0_data_master_requests_new_number_s1,
                                   d1_new_number_s1_end_xfer,
                                   new_number_s1_address,
                                   new_number_s1_readdata_from_sa,
                                   new_number_s1_reset_n
                                )
;

  output           cpu_0_data_master_granted_new_number_s1;
  output           cpu_0_data_master_qualified_request_new_number_s1;
  output           cpu_0_data_master_read_data_valid_new_number_s1;
  output           cpu_0_data_master_requests_new_number_s1;
  output           d1_new_number_s1_end_xfer;
  output  [  1: 0] new_number_s1_address;
  output  [  7: 0] new_number_s1_readdata_from_sa;
  output           new_number_s1_reset_n;
  input            clk;
  input   [ 16: 0] cpu_0_data_master_address_to_slave;
  input            cpu_0_data_master_read;
  input            cpu_0_data_master_write;
  input   [  7: 0] new_number_s1_readdata;
  input            reset_n;

  wire             cpu_0_data_master_arbiterlock;
  wire             cpu_0_data_master_arbiterlock2;
  wire             cpu_0_data_master_continuerequest;
  wire             cpu_0_data_master_granted_new_number_s1;
  wire             cpu_0_data_master_qualified_request_new_number_s1;
  wire             cpu_0_data_master_read_data_valid_new_number_s1;
  wire             cpu_0_data_master_requests_new_number_s1;
  wire             cpu_0_data_master_saved_grant_new_number_s1;
  reg              d1_new_number_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_new_number_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [  1: 0] new_number_s1_address;
  wire             new_number_s1_allgrants;
  wire             new_number_s1_allow_new_arb_cycle;
  wire             new_number_s1_any_bursting_master_saved_grant;
  wire             new_number_s1_any_continuerequest;
  wire             new_number_s1_arb_counter_enable;
  reg              new_number_s1_arb_share_counter;
  wire             new_number_s1_arb_share_counter_next_value;
  wire             new_number_s1_arb_share_set_values;
  wire             new_number_s1_beginbursttransfer_internal;
  wire             new_number_s1_begins_xfer;
  wire             new_number_s1_end_xfer;
  wire             new_number_s1_firsttransfer;
  wire             new_number_s1_grant_vector;
  wire             new_number_s1_in_a_read_cycle;
  wire             new_number_s1_in_a_write_cycle;
  wire             new_number_s1_master_qreq_vector;
  wire             new_number_s1_non_bursting_master_requests;
  wire    [  7: 0] new_number_s1_readdata_from_sa;
  reg              new_number_s1_reg_firsttransfer;
  wire             new_number_s1_reset_n;
  reg              new_number_s1_slavearbiterlockenable;
  wire             new_number_s1_slavearbiterlockenable2;
  wire             new_number_s1_unreg_firsttransfer;
  wire             new_number_s1_waits_for_read;
  wire             new_number_s1_waits_for_write;
  wire    [ 16: 0] shifted_address_to_new_number_s1_from_cpu_0_data_master;
  wire             wait_for_new_number_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~new_number_s1_end_xfer;
    end


  assign new_number_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu_0_data_master_qualified_request_new_number_s1));
  //assign new_number_s1_readdata_from_sa = new_number_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign new_number_s1_readdata_from_sa = new_number_s1_readdata;

  assign cpu_0_data_master_requests_new_number_s1 = (({cpu_0_data_master_address_to_slave[16 : 4] , 4'b0} == 17'h11000) & (cpu_0_data_master_read | cpu_0_data_master_write)) & cpu_0_data_master_read;
  //new_number_s1_arb_share_counter set values, which is an e_mux
  assign new_number_s1_arb_share_set_values = 1;

  //new_number_s1_non_bursting_master_requests mux, which is an e_mux
  assign new_number_s1_non_bursting_master_requests = cpu_0_data_master_requests_new_number_s1;

  //new_number_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign new_number_s1_any_bursting_master_saved_grant = 0;

  //new_number_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign new_number_s1_arb_share_counter_next_value = new_number_s1_firsttransfer ? (new_number_s1_arb_share_set_values - 1) : |new_number_s1_arb_share_counter ? (new_number_s1_arb_share_counter - 1) : 0;

  //new_number_s1_allgrants all slave grants, which is an e_mux
  assign new_number_s1_allgrants = |new_number_s1_grant_vector;

  //new_number_s1_end_xfer assignment, which is an e_assign
  assign new_number_s1_end_xfer = ~(new_number_s1_waits_for_read | new_number_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_new_number_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_new_number_s1 = new_number_s1_end_xfer & (~new_number_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //new_number_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign new_number_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_new_number_s1 & new_number_s1_allgrants) | (end_xfer_arb_share_counter_term_new_number_s1 & ~new_number_s1_non_bursting_master_requests);

  //new_number_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          new_number_s1_arb_share_counter <= 0;
      else if (new_number_s1_arb_counter_enable)
          new_number_s1_arb_share_counter <= new_number_s1_arb_share_counter_next_value;
    end


  //new_number_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          new_number_s1_slavearbiterlockenable <= 0;
      else if ((|new_number_s1_master_qreq_vector & end_xfer_arb_share_counter_term_new_number_s1) | (end_xfer_arb_share_counter_term_new_number_s1 & ~new_number_s1_non_bursting_master_requests))
          new_number_s1_slavearbiterlockenable <= |new_number_s1_arb_share_counter_next_value;
    end


  //cpu_0/data_master new_number/s1 arbiterlock, which is an e_assign
  assign cpu_0_data_master_arbiterlock = new_number_s1_slavearbiterlockenable & cpu_0_data_master_continuerequest;

  //new_number_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign new_number_s1_slavearbiterlockenable2 = |new_number_s1_arb_share_counter_next_value;

  //cpu_0/data_master new_number/s1 arbiterlock2, which is an e_assign
  assign cpu_0_data_master_arbiterlock2 = new_number_s1_slavearbiterlockenable2 & cpu_0_data_master_continuerequest;

  //new_number_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign new_number_s1_any_continuerequest = 1;

  //cpu_0_data_master_continuerequest continued request, which is an e_assign
  assign cpu_0_data_master_continuerequest = 1;

  assign cpu_0_data_master_qualified_request_new_number_s1 = cpu_0_data_master_requests_new_number_s1;
  //master is always granted when requested
  assign cpu_0_data_master_granted_new_number_s1 = cpu_0_data_master_qualified_request_new_number_s1;

  //cpu_0/data_master saved-grant new_number/s1, which is an e_assign
  assign cpu_0_data_master_saved_grant_new_number_s1 = cpu_0_data_master_requests_new_number_s1;

  //allow new arb cycle for new_number/s1, which is an e_assign
  assign new_number_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign new_number_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign new_number_s1_master_qreq_vector = 1;

  //new_number_s1_reset_n assignment, which is an e_assign
  assign new_number_s1_reset_n = reset_n;

  //new_number_s1_firsttransfer first transaction, which is an e_assign
  assign new_number_s1_firsttransfer = new_number_s1_begins_xfer ? new_number_s1_unreg_firsttransfer : new_number_s1_reg_firsttransfer;

  //new_number_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign new_number_s1_unreg_firsttransfer = ~(new_number_s1_slavearbiterlockenable & new_number_s1_any_continuerequest);

  //new_number_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          new_number_s1_reg_firsttransfer <= 1'b1;
      else if (new_number_s1_begins_xfer)
          new_number_s1_reg_firsttransfer <= new_number_s1_unreg_firsttransfer;
    end


  //new_number_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign new_number_s1_beginbursttransfer_internal = new_number_s1_begins_xfer;

  assign shifted_address_to_new_number_s1_from_cpu_0_data_master = cpu_0_data_master_address_to_slave;
  //new_number_s1_address mux, which is an e_mux
  assign new_number_s1_address = shifted_address_to_new_number_s1_from_cpu_0_data_master >> 2;

  //d1_new_number_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_new_number_s1_end_xfer <= 1;
      else 
        d1_new_number_s1_end_xfer <= new_number_s1_end_xfer;
    end


  //new_number_s1_waits_for_read in a cycle, which is an e_mux
  assign new_number_s1_waits_for_read = new_number_s1_in_a_read_cycle & new_number_s1_begins_xfer;

  //new_number_s1_in_a_read_cycle assignment, which is an e_assign
  assign new_number_s1_in_a_read_cycle = cpu_0_data_master_granted_new_number_s1 & cpu_0_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = new_number_s1_in_a_read_cycle;

  //new_number_s1_waits_for_write in a cycle, which is an e_mux
  assign new_number_s1_waits_for_write = new_number_s1_in_a_write_cycle & 0;

  //new_number_s1_in_a_write_cycle assignment, which is an e_assign
  assign new_number_s1_in_a_write_cycle = cpu_0_data_master_granted_new_number_s1 & cpu_0_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = new_number_s1_in_a_write_cycle;

  assign wait_for_new_number_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //new_number/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module onchip_memory2_0_s1_arbitrator (
                                        // inputs:
                                         clk,
                                         cpu_0_data_master_address_to_slave,
                                         cpu_0_data_master_byteenable,
                                         cpu_0_data_master_read,
                                         cpu_0_data_master_waitrequest,
                                         cpu_0_data_master_write,
                                         cpu_0_data_master_writedata,
                                         cpu_0_instruction_master_address_to_slave,
                                         cpu_0_instruction_master_latency_counter,
                                         cpu_0_instruction_master_read,
                                         onchip_memory2_0_s1_readdata,
                                         reset_n,

                                        // outputs:
                                         cpu_0_data_master_granted_onchip_memory2_0_s1,
                                         cpu_0_data_master_qualified_request_onchip_memory2_0_s1,
                                         cpu_0_data_master_read_data_valid_onchip_memory2_0_s1,
                                         cpu_0_data_master_requests_onchip_memory2_0_s1,
                                         cpu_0_instruction_master_granted_onchip_memory2_0_s1,
                                         cpu_0_instruction_master_qualified_request_onchip_memory2_0_s1,
                                         cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1,
                                         cpu_0_instruction_master_requests_onchip_memory2_0_s1,
                                         d1_onchip_memory2_0_s1_end_xfer,
                                         onchip_memory2_0_s1_address,
                                         onchip_memory2_0_s1_byteenable,
                                         onchip_memory2_0_s1_chipselect,
                                         onchip_memory2_0_s1_clken,
                                         onchip_memory2_0_s1_readdata_from_sa,
                                         onchip_memory2_0_s1_write,
                                         onchip_memory2_0_s1_writedata,
                                         registered_cpu_0_data_master_read_data_valid_onchip_memory2_0_s1
                                      )
;

  output           cpu_0_data_master_granted_onchip_memory2_0_s1;
  output           cpu_0_data_master_qualified_request_onchip_memory2_0_s1;
  output           cpu_0_data_master_read_data_valid_onchip_memory2_0_s1;
  output           cpu_0_data_master_requests_onchip_memory2_0_s1;
  output           cpu_0_instruction_master_granted_onchip_memory2_0_s1;
  output           cpu_0_instruction_master_qualified_request_onchip_memory2_0_s1;
  output           cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1;
  output           cpu_0_instruction_master_requests_onchip_memory2_0_s1;
  output           d1_onchip_memory2_0_s1_end_xfer;
  output  [ 12: 0] onchip_memory2_0_s1_address;
  output  [  3: 0] onchip_memory2_0_s1_byteenable;
  output           onchip_memory2_0_s1_chipselect;
  output           onchip_memory2_0_s1_clken;
  output  [ 31: 0] onchip_memory2_0_s1_readdata_from_sa;
  output           onchip_memory2_0_s1_write;
  output  [ 31: 0] onchip_memory2_0_s1_writedata;
  output           registered_cpu_0_data_master_read_data_valid_onchip_memory2_0_s1;
  input            clk;
  input   [ 16: 0] cpu_0_data_master_address_to_slave;
  input   [  3: 0] cpu_0_data_master_byteenable;
  input            cpu_0_data_master_read;
  input            cpu_0_data_master_waitrequest;
  input            cpu_0_data_master_write;
  input   [ 31: 0] cpu_0_data_master_writedata;
  input   [ 16: 0] cpu_0_instruction_master_address_to_slave;
  input            cpu_0_instruction_master_latency_counter;
  input            cpu_0_instruction_master_read;
  input   [ 31: 0] onchip_memory2_0_s1_readdata;
  input            reset_n;

  wire             cpu_0_data_master_arbiterlock;
  wire             cpu_0_data_master_arbiterlock2;
  wire             cpu_0_data_master_continuerequest;
  wire             cpu_0_data_master_granted_onchip_memory2_0_s1;
  wire             cpu_0_data_master_qualified_request_onchip_memory2_0_s1;
  wire             cpu_0_data_master_read_data_valid_onchip_memory2_0_s1;
  reg              cpu_0_data_master_read_data_valid_onchip_memory2_0_s1_shift_register;
  wire             cpu_0_data_master_read_data_valid_onchip_memory2_0_s1_shift_register_in;
  wire             cpu_0_data_master_requests_onchip_memory2_0_s1;
  wire             cpu_0_data_master_saved_grant_onchip_memory2_0_s1;
  wire             cpu_0_instruction_master_arbiterlock;
  wire             cpu_0_instruction_master_arbiterlock2;
  wire             cpu_0_instruction_master_continuerequest;
  wire             cpu_0_instruction_master_granted_onchip_memory2_0_s1;
  wire             cpu_0_instruction_master_qualified_request_onchip_memory2_0_s1;
  wire             cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1;
  reg              cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1_shift_register;
  wire             cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1_shift_register_in;
  wire             cpu_0_instruction_master_requests_onchip_memory2_0_s1;
  wire             cpu_0_instruction_master_saved_grant_onchip_memory2_0_s1;
  reg              d1_onchip_memory2_0_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_onchip_memory2_0_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg              last_cycle_cpu_0_data_master_granted_slave_onchip_memory2_0_s1;
  reg              last_cycle_cpu_0_instruction_master_granted_slave_onchip_memory2_0_s1;
  wire    [ 12: 0] onchip_memory2_0_s1_address;
  wire             onchip_memory2_0_s1_allgrants;
  wire             onchip_memory2_0_s1_allow_new_arb_cycle;
  wire             onchip_memory2_0_s1_any_bursting_master_saved_grant;
  wire             onchip_memory2_0_s1_any_continuerequest;
  reg     [  1: 0] onchip_memory2_0_s1_arb_addend;
  wire             onchip_memory2_0_s1_arb_counter_enable;
  reg              onchip_memory2_0_s1_arb_share_counter;
  wire             onchip_memory2_0_s1_arb_share_counter_next_value;
  wire             onchip_memory2_0_s1_arb_share_set_values;
  wire    [  1: 0] onchip_memory2_0_s1_arb_winner;
  wire             onchip_memory2_0_s1_arbitration_holdoff_internal;
  wire             onchip_memory2_0_s1_beginbursttransfer_internal;
  wire             onchip_memory2_0_s1_begins_xfer;
  wire    [  3: 0] onchip_memory2_0_s1_byteenable;
  wire             onchip_memory2_0_s1_chipselect;
  wire    [  3: 0] onchip_memory2_0_s1_chosen_master_double_vector;
  wire    [  1: 0] onchip_memory2_0_s1_chosen_master_rot_left;
  wire             onchip_memory2_0_s1_clken;
  wire             onchip_memory2_0_s1_end_xfer;
  wire             onchip_memory2_0_s1_firsttransfer;
  wire    [  1: 0] onchip_memory2_0_s1_grant_vector;
  wire             onchip_memory2_0_s1_in_a_read_cycle;
  wire             onchip_memory2_0_s1_in_a_write_cycle;
  wire    [  1: 0] onchip_memory2_0_s1_master_qreq_vector;
  wire             onchip_memory2_0_s1_non_bursting_master_requests;
  wire    [ 31: 0] onchip_memory2_0_s1_readdata_from_sa;
  reg              onchip_memory2_0_s1_reg_firsttransfer;
  reg     [  1: 0] onchip_memory2_0_s1_saved_chosen_master_vector;
  reg              onchip_memory2_0_s1_slavearbiterlockenable;
  wire             onchip_memory2_0_s1_slavearbiterlockenable2;
  wire             onchip_memory2_0_s1_unreg_firsttransfer;
  wire             onchip_memory2_0_s1_waits_for_read;
  wire             onchip_memory2_0_s1_waits_for_write;
  wire             onchip_memory2_0_s1_write;
  wire    [ 31: 0] onchip_memory2_0_s1_writedata;
  wire             p1_cpu_0_data_master_read_data_valid_onchip_memory2_0_s1_shift_register;
  wire             p1_cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1_shift_register;
  wire             registered_cpu_0_data_master_read_data_valid_onchip_memory2_0_s1;
  wire    [ 16: 0] shifted_address_to_onchip_memory2_0_s1_from_cpu_0_data_master;
  wire    [ 16: 0] shifted_address_to_onchip_memory2_0_s1_from_cpu_0_instruction_master;
  wire             wait_for_onchip_memory2_0_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~onchip_memory2_0_s1_end_xfer;
    end


  assign onchip_memory2_0_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu_0_data_master_qualified_request_onchip_memory2_0_s1 | cpu_0_instruction_master_qualified_request_onchip_memory2_0_s1));
  //assign onchip_memory2_0_s1_readdata_from_sa = onchip_memory2_0_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign onchip_memory2_0_s1_readdata_from_sa = onchip_memory2_0_s1_readdata;

  assign cpu_0_data_master_requests_onchip_memory2_0_s1 = ({cpu_0_data_master_address_to_slave[16 : 15] , 15'b0} == 17'h8000) & (cpu_0_data_master_read | cpu_0_data_master_write);
  //registered rdv signal_name registered_cpu_0_data_master_read_data_valid_onchip_memory2_0_s1 assignment, which is an e_assign
  assign registered_cpu_0_data_master_read_data_valid_onchip_memory2_0_s1 = cpu_0_data_master_read_data_valid_onchip_memory2_0_s1_shift_register_in;

  //onchip_memory2_0_s1_arb_share_counter set values, which is an e_mux
  assign onchip_memory2_0_s1_arb_share_set_values = 1;

  //onchip_memory2_0_s1_non_bursting_master_requests mux, which is an e_mux
  assign onchip_memory2_0_s1_non_bursting_master_requests = cpu_0_data_master_requests_onchip_memory2_0_s1 |
    cpu_0_instruction_master_requests_onchip_memory2_0_s1 |
    cpu_0_data_master_requests_onchip_memory2_0_s1 |
    cpu_0_instruction_master_requests_onchip_memory2_0_s1;

  //onchip_memory2_0_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign onchip_memory2_0_s1_any_bursting_master_saved_grant = 0;

  //onchip_memory2_0_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign onchip_memory2_0_s1_arb_share_counter_next_value = onchip_memory2_0_s1_firsttransfer ? (onchip_memory2_0_s1_arb_share_set_values - 1) : |onchip_memory2_0_s1_arb_share_counter ? (onchip_memory2_0_s1_arb_share_counter - 1) : 0;

  //onchip_memory2_0_s1_allgrants all slave grants, which is an e_mux
  assign onchip_memory2_0_s1_allgrants = (|onchip_memory2_0_s1_grant_vector) |
    (|onchip_memory2_0_s1_grant_vector) |
    (|onchip_memory2_0_s1_grant_vector) |
    (|onchip_memory2_0_s1_grant_vector);

  //onchip_memory2_0_s1_end_xfer assignment, which is an e_assign
  assign onchip_memory2_0_s1_end_xfer = ~(onchip_memory2_0_s1_waits_for_read | onchip_memory2_0_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_onchip_memory2_0_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_onchip_memory2_0_s1 = onchip_memory2_0_s1_end_xfer & (~onchip_memory2_0_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //onchip_memory2_0_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign onchip_memory2_0_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_onchip_memory2_0_s1 & onchip_memory2_0_s1_allgrants) | (end_xfer_arb_share_counter_term_onchip_memory2_0_s1 & ~onchip_memory2_0_s1_non_bursting_master_requests);

  //onchip_memory2_0_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          onchip_memory2_0_s1_arb_share_counter <= 0;
      else if (onchip_memory2_0_s1_arb_counter_enable)
          onchip_memory2_0_s1_arb_share_counter <= onchip_memory2_0_s1_arb_share_counter_next_value;
    end


  //onchip_memory2_0_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          onchip_memory2_0_s1_slavearbiterlockenable <= 0;
      else if ((|onchip_memory2_0_s1_master_qreq_vector & end_xfer_arb_share_counter_term_onchip_memory2_0_s1) | (end_xfer_arb_share_counter_term_onchip_memory2_0_s1 & ~onchip_memory2_0_s1_non_bursting_master_requests))
          onchip_memory2_0_s1_slavearbiterlockenable <= |onchip_memory2_0_s1_arb_share_counter_next_value;
    end


  //cpu_0/data_master onchip_memory2_0/s1 arbiterlock, which is an e_assign
  assign cpu_0_data_master_arbiterlock = onchip_memory2_0_s1_slavearbiterlockenable & cpu_0_data_master_continuerequest;

  //onchip_memory2_0_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign onchip_memory2_0_s1_slavearbiterlockenable2 = |onchip_memory2_0_s1_arb_share_counter_next_value;

  //cpu_0/data_master onchip_memory2_0/s1 arbiterlock2, which is an e_assign
  assign cpu_0_data_master_arbiterlock2 = onchip_memory2_0_s1_slavearbiterlockenable2 & cpu_0_data_master_continuerequest;

  //cpu_0/instruction_master onchip_memory2_0/s1 arbiterlock, which is an e_assign
  assign cpu_0_instruction_master_arbiterlock = onchip_memory2_0_s1_slavearbiterlockenable & cpu_0_instruction_master_continuerequest;

  //cpu_0/instruction_master onchip_memory2_0/s1 arbiterlock2, which is an e_assign
  assign cpu_0_instruction_master_arbiterlock2 = onchip_memory2_0_s1_slavearbiterlockenable2 & cpu_0_instruction_master_continuerequest;

  //cpu_0/instruction_master granted onchip_memory2_0/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_0_instruction_master_granted_slave_onchip_memory2_0_s1 <= 0;
      else 
        last_cycle_cpu_0_instruction_master_granted_slave_onchip_memory2_0_s1 <= cpu_0_instruction_master_saved_grant_onchip_memory2_0_s1 ? 1 : (onchip_memory2_0_s1_arbitration_holdoff_internal | ~cpu_0_instruction_master_requests_onchip_memory2_0_s1) ? 0 : last_cycle_cpu_0_instruction_master_granted_slave_onchip_memory2_0_s1;
    end


  //cpu_0_instruction_master_continuerequest continued request, which is an e_mux
  assign cpu_0_instruction_master_continuerequest = last_cycle_cpu_0_instruction_master_granted_slave_onchip_memory2_0_s1 & cpu_0_instruction_master_requests_onchip_memory2_0_s1;

  //onchip_memory2_0_s1_any_continuerequest at least one master continues requesting, which is an e_mux
  assign onchip_memory2_0_s1_any_continuerequest = cpu_0_instruction_master_continuerequest |
    cpu_0_data_master_continuerequest;

  assign cpu_0_data_master_qualified_request_onchip_memory2_0_s1 = cpu_0_data_master_requests_onchip_memory2_0_s1 & ~((cpu_0_data_master_read & ((|cpu_0_data_master_read_data_valid_onchip_memory2_0_s1_shift_register))) | ((~cpu_0_data_master_waitrequest) & cpu_0_data_master_write) | cpu_0_instruction_master_arbiterlock);
  //cpu_0_data_master_read_data_valid_onchip_memory2_0_s1_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_0_data_master_read_data_valid_onchip_memory2_0_s1_shift_register_in = cpu_0_data_master_granted_onchip_memory2_0_s1 & cpu_0_data_master_read & ~onchip_memory2_0_s1_waits_for_read & ~(|cpu_0_data_master_read_data_valid_onchip_memory2_0_s1_shift_register);

  //shift register p1 cpu_0_data_master_read_data_valid_onchip_memory2_0_s1_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_0_data_master_read_data_valid_onchip_memory2_0_s1_shift_register = {cpu_0_data_master_read_data_valid_onchip_memory2_0_s1_shift_register, cpu_0_data_master_read_data_valid_onchip_memory2_0_s1_shift_register_in};

  //cpu_0_data_master_read_data_valid_onchip_memory2_0_s1_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_data_master_read_data_valid_onchip_memory2_0_s1_shift_register <= 0;
      else 
        cpu_0_data_master_read_data_valid_onchip_memory2_0_s1_shift_register <= p1_cpu_0_data_master_read_data_valid_onchip_memory2_0_s1_shift_register;
    end


  //local readdatavalid cpu_0_data_master_read_data_valid_onchip_memory2_0_s1, which is an e_mux
  assign cpu_0_data_master_read_data_valid_onchip_memory2_0_s1 = cpu_0_data_master_read_data_valid_onchip_memory2_0_s1_shift_register;

  //onchip_memory2_0_s1_writedata mux, which is an e_mux
  assign onchip_memory2_0_s1_writedata = cpu_0_data_master_writedata;

  //mux onchip_memory2_0_s1_clken, which is an e_mux
  assign onchip_memory2_0_s1_clken = 1'b1;

  assign cpu_0_instruction_master_requests_onchip_memory2_0_s1 = (({cpu_0_instruction_master_address_to_slave[16 : 15] , 15'b0} == 17'h8000) & (cpu_0_instruction_master_read)) & cpu_0_instruction_master_read;
  //cpu_0/data_master granted onchip_memory2_0/s1 last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_0_data_master_granted_slave_onchip_memory2_0_s1 <= 0;
      else 
        last_cycle_cpu_0_data_master_granted_slave_onchip_memory2_0_s1 <= cpu_0_data_master_saved_grant_onchip_memory2_0_s1 ? 1 : (onchip_memory2_0_s1_arbitration_holdoff_internal | ~cpu_0_data_master_requests_onchip_memory2_0_s1) ? 0 : last_cycle_cpu_0_data_master_granted_slave_onchip_memory2_0_s1;
    end


  //cpu_0_data_master_continuerequest continued request, which is an e_mux
  assign cpu_0_data_master_continuerequest = last_cycle_cpu_0_data_master_granted_slave_onchip_memory2_0_s1 & cpu_0_data_master_requests_onchip_memory2_0_s1;

  assign cpu_0_instruction_master_qualified_request_onchip_memory2_0_s1 = cpu_0_instruction_master_requests_onchip_memory2_0_s1 & ~((cpu_0_instruction_master_read & ((1 < cpu_0_instruction_master_latency_counter))) | cpu_0_data_master_arbiterlock);
  //cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1_shift_register_in = cpu_0_instruction_master_granted_onchip_memory2_0_s1 & cpu_0_instruction_master_read & ~onchip_memory2_0_s1_waits_for_read;

  //shift register p1 cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1_shift_register = {cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1_shift_register, cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1_shift_register_in};

  //cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1_shift_register <= 0;
      else 
        cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1_shift_register <= p1_cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1_shift_register;
    end


  //local readdatavalid cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1, which is an e_mux
  assign cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1 = cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1_shift_register;

  //allow new arb cycle for onchip_memory2_0/s1, which is an e_assign
  assign onchip_memory2_0_s1_allow_new_arb_cycle = ~cpu_0_data_master_arbiterlock & ~cpu_0_instruction_master_arbiterlock;

  //cpu_0/instruction_master assignment into master qualified-requests vector for onchip_memory2_0/s1, which is an e_assign
  assign onchip_memory2_0_s1_master_qreq_vector[0] = cpu_0_instruction_master_qualified_request_onchip_memory2_0_s1;

  //cpu_0/instruction_master grant onchip_memory2_0/s1, which is an e_assign
  assign cpu_0_instruction_master_granted_onchip_memory2_0_s1 = onchip_memory2_0_s1_grant_vector[0];

  //cpu_0/instruction_master saved-grant onchip_memory2_0/s1, which is an e_assign
  assign cpu_0_instruction_master_saved_grant_onchip_memory2_0_s1 = onchip_memory2_0_s1_arb_winner[0] && cpu_0_instruction_master_requests_onchip_memory2_0_s1;

  //cpu_0/data_master assignment into master qualified-requests vector for onchip_memory2_0/s1, which is an e_assign
  assign onchip_memory2_0_s1_master_qreq_vector[1] = cpu_0_data_master_qualified_request_onchip_memory2_0_s1;

  //cpu_0/data_master grant onchip_memory2_0/s1, which is an e_assign
  assign cpu_0_data_master_granted_onchip_memory2_0_s1 = onchip_memory2_0_s1_grant_vector[1];

  //cpu_0/data_master saved-grant onchip_memory2_0/s1, which is an e_assign
  assign cpu_0_data_master_saved_grant_onchip_memory2_0_s1 = onchip_memory2_0_s1_arb_winner[1] && cpu_0_data_master_requests_onchip_memory2_0_s1;

  //onchip_memory2_0/s1 chosen-master double-vector, which is an e_assign
  assign onchip_memory2_0_s1_chosen_master_double_vector = {onchip_memory2_0_s1_master_qreq_vector, onchip_memory2_0_s1_master_qreq_vector} & ({~onchip_memory2_0_s1_master_qreq_vector, ~onchip_memory2_0_s1_master_qreq_vector} + onchip_memory2_0_s1_arb_addend);

  //stable onehot encoding of arb winner
  assign onchip_memory2_0_s1_arb_winner = (onchip_memory2_0_s1_allow_new_arb_cycle & | onchip_memory2_0_s1_grant_vector) ? onchip_memory2_0_s1_grant_vector : onchip_memory2_0_s1_saved_chosen_master_vector;

  //saved onchip_memory2_0_s1_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          onchip_memory2_0_s1_saved_chosen_master_vector <= 0;
      else if (onchip_memory2_0_s1_allow_new_arb_cycle)
          onchip_memory2_0_s1_saved_chosen_master_vector <= |onchip_memory2_0_s1_grant_vector ? onchip_memory2_0_s1_grant_vector : onchip_memory2_0_s1_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign onchip_memory2_0_s1_grant_vector = {(onchip_memory2_0_s1_chosen_master_double_vector[1] | onchip_memory2_0_s1_chosen_master_double_vector[3]),
    (onchip_memory2_0_s1_chosen_master_double_vector[0] | onchip_memory2_0_s1_chosen_master_double_vector[2])};

  //onchip_memory2_0/s1 chosen master rotated left, which is an e_assign
  assign onchip_memory2_0_s1_chosen_master_rot_left = (onchip_memory2_0_s1_arb_winner << 1) ? (onchip_memory2_0_s1_arb_winner << 1) : 1;

  //onchip_memory2_0/s1's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          onchip_memory2_0_s1_arb_addend <= 1;
      else if (|onchip_memory2_0_s1_grant_vector)
          onchip_memory2_0_s1_arb_addend <= onchip_memory2_0_s1_end_xfer? onchip_memory2_0_s1_chosen_master_rot_left : onchip_memory2_0_s1_grant_vector;
    end


  assign onchip_memory2_0_s1_chipselect = cpu_0_data_master_granted_onchip_memory2_0_s1 | cpu_0_instruction_master_granted_onchip_memory2_0_s1;
  //onchip_memory2_0_s1_firsttransfer first transaction, which is an e_assign
  assign onchip_memory2_0_s1_firsttransfer = onchip_memory2_0_s1_begins_xfer ? onchip_memory2_0_s1_unreg_firsttransfer : onchip_memory2_0_s1_reg_firsttransfer;

  //onchip_memory2_0_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign onchip_memory2_0_s1_unreg_firsttransfer = ~(onchip_memory2_0_s1_slavearbiterlockenable & onchip_memory2_0_s1_any_continuerequest);

  //onchip_memory2_0_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          onchip_memory2_0_s1_reg_firsttransfer <= 1'b1;
      else if (onchip_memory2_0_s1_begins_xfer)
          onchip_memory2_0_s1_reg_firsttransfer <= onchip_memory2_0_s1_unreg_firsttransfer;
    end


  //onchip_memory2_0_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign onchip_memory2_0_s1_beginbursttransfer_internal = onchip_memory2_0_s1_begins_xfer;

  //onchip_memory2_0_s1_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign onchip_memory2_0_s1_arbitration_holdoff_internal = onchip_memory2_0_s1_begins_xfer & onchip_memory2_0_s1_firsttransfer;

  //onchip_memory2_0_s1_write assignment, which is an e_mux
  assign onchip_memory2_0_s1_write = cpu_0_data_master_granted_onchip_memory2_0_s1 & cpu_0_data_master_write;

  assign shifted_address_to_onchip_memory2_0_s1_from_cpu_0_data_master = cpu_0_data_master_address_to_slave;
  //onchip_memory2_0_s1_address mux, which is an e_mux
  assign onchip_memory2_0_s1_address = (cpu_0_data_master_granted_onchip_memory2_0_s1)? (shifted_address_to_onchip_memory2_0_s1_from_cpu_0_data_master >> 2) :
    (shifted_address_to_onchip_memory2_0_s1_from_cpu_0_instruction_master >> 2);

  assign shifted_address_to_onchip_memory2_0_s1_from_cpu_0_instruction_master = cpu_0_instruction_master_address_to_slave;
  //d1_onchip_memory2_0_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_onchip_memory2_0_s1_end_xfer <= 1;
      else 
        d1_onchip_memory2_0_s1_end_xfer <= onchip_memory2_0_s1_end_xfer;
    end


  //onchip_memory2_0_s1_waits_for_read in a cycle, which is an e_mux
  assign onchip_memory2_0_s1_waits_for_read = onchip_memory2_0_s1_in_a_read_cycle & 0;

  //onchip_memory2_0_s1_in_a_read_cycle assignment, which is an e_assign
  assign onchip_memory2_0_s1_in_a_read_cycle = (cpu_0_data_master_granted_onchip_memory2_0_s1 & cpu_0_data_master_read) | (cpu_0_instruction_master_granted_onchip_memory2_0_s1 & cpu_0_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = onchip_memory2_0_s1_in_a_read_cycle;

  //onchip_memory2_0_s1_waits_for_write in a cycle, which is an e_mux
  assign onchip_memory2_0_s1_waits_for_write = onchip_memory2_0_s1_in_a_write_cycle & 0;

  //onchip_memory2_0_s1_in_a_write_cycle assignment, which is an e_assign
  assign onchip_memory2_0_s1_in_a_write_cycle = cpu_0_data_master_granted_onchip_memory2_0_s1 & cpu_0_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = onchip_memory2_0_s1_in_a_write_cycle;

  assign wait_for_onchip_memory2_0_s1_counter = 0;
  //onchip_memory2_0_s1_byteenable byte enable port mux, which is an e_mux
  assign onchip_memory2_0_s1_byteenable = (cpu_0_data_master_granted_onchip_memory2_0_s1)? cpu_0_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //onchip_memory2_0/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_0_data_master_granted_onchip_memory2_0_s1 + cpu_0_instruction_master_granted_onchip_memory2_0_s1 > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_0_data_master_saved_grant_onchip_memory2_0_s1 + cpu_0_instruction_master_saved_grant_onchip_memory2_0_s1 > 1)
        begin
          $write("%0d ns: > 1 of saved_grant signals are active simultaneously", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module red_LEDs_s1_arbitrator (
                                // inputs:
                                 clk,
                                 cpu_0_data_master_address_to_slave,
                                 cpu_0_data_master_read,
                                 cpu_0_data_master_waitrequest,
                                 cpu_0_data_master_write,
                                 cpu_0_data_master_writedata,
                                 red_LEDs_s1_readdata,
                                 reset_n,

                                // outputs:
                                 cpu_0_data_master_granted_red_LEDs_s1,
                                 cpu_0_data_master_qualified_request_red_LEDs_s1,
                                 cpu_0_data_master_read_data_valid_red_LEDs_s1,
                                 cpu_0_data_master_requests_red_LEDs_s1,
                                 d1_red_LEDs_s1_end_xfer,
                                 red_LEDs_s1_address,
                                 red_LEDs_s1_chipselect,
                                 red_LEDs_s1_readdata_from_sa,
                                 red_LEDs_s1_reset_n,
                                 red_LEDs_s1_write_n,
                                 red_LEDs_s1_writedata
                              )
;

  output           cpu_0_data_master_granted_red_LEDs_s1;
  output           cpu_0_data_master_qualified_request_red_LEDs_s1;
  output           cpu_0_data_master_read_data_valid_red_LEDs_s1;
  output           cpu_0_data_master_requests_red_LEDs_s1;
  output           d1_red_LEDs_s1_end_xfer;
  output  [  1: 0] red_LEDs_s1_address;
  output           red_LEDs_s1_chipselect;
  output  [ 15: 0] red_LEDs_s1_readdata_from_sa;
  output           red_LEDs_s1_reset_n;
  output           red_LEDs_s1_write_n;
  output  [ 15: 0] red_LEDs_s1_writedata;
  input            clk;
  input   [ 16: 0] cpu_0_data_master_address_to_slave;
  input            cpu_0_data_master_read;
  input            cpu_0_data_master_waitrequest;
  input            cpu_0_data_master_write;
  input   [ 31: 0] cpu_0_data_master_writedata;
  input   [ 15: 0] red_LEDs_s1_readdata;
  input            reset_n;

  wire             cpu_0_data_master_arbiterlock;
  wire             cpu_0_data_master_arbiterlock2;
  wire             cpu_0_data_master_continuerequest;
  wire             cpu_0_data_master_granted_red_LEDs_s1;
  wire             cpu_0_data_master_qualified_request_red_LEDs_s1;
  wire             cpu_0_data_master_read_data_valid_red_LEDs_s1;
  wire             cpu_0_data_master_requests_red_LEDs_s1;
  wire             cpu_0_data_master_saved_grant_red_LEDs_s1;
  reg              d1_reasons_to_wait;
  reg              d1_red_LEDs_s1_end_xfer;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_red_LEDs_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [  1: 0] red_LEDs_s1_address;
  wire             red_LEDs_s1_allgrants;
  wire             red_LEDs_s1_allow_new_arb_cycle;
  wire             red_LEDs_s1_any_bursting_master_saved_grant;
  wire             red_LEDs_s1_any_continuerequest;
  wire             red_LEDs_s1_arb_counter_enable;
  reg              red_LEDs_s1_arb_share_counter;
  wire             red_LEDs_s1_arb_share_counter_next_value;
  wire             red_LEDs_s1_arb_share_set_values;
  wire             red_LEDs_s1_beginbursttransfer_internal;
  wire             red_LEDs_s1_begins_xfer;
  wire             red_LEDs_s1_chipselect;
  wire             red_LEDs_s1_end_xfer;
  wire             red_LEDs_s1_firsttransfer;
  wire             red_LEDs_s1_grant_vector;
  wire             red_LEDs_s1_in_a_read_cycle;
  wire             red_LEDs_s1_in_a_write_cycle;
  wire             red_LEDs_s1_master_qreq_vector;
  wire             red_LEDs_s1_non_bursting_master_requests;
  wire    [ 15: 0] red_LEDs_s1_readdata_from_sa;
  reg              red_LEDs_s1_reg_firsttransfer;
  wire             red_LEDs_s1_reset_n;
  reg              red_LEDs_s1_slavearbiterlockenable;
  wire             red_LEDs_s1_slavearbiterlockenable2;
  wire             red_LEDs_s1_unreg_firsttransfer;
  wire             red_LEDs_s1_waits_for_read;
  wire             red_LEDs_s1_waits_for_write;
  wire             red_LEDs_s1_write_n;
  wire    [ 15: 0] red_LEDs_s1_writedata;
  wire    [ 16: 0] shifted_address_to_red_LEDs_s1_from_cpu_0_data_master;
  wire             wait_for_red_LEDs_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else 
        d1_reasons_to_wait <= ~red_LEDs_s1_end_xfer;
    end


  assign red_LEDs_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu_0_data_master_qualified_request_red_LEDs_s1));
  //assign red_LEDs_s1_readdata_from_sa = red_LEDs_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign red_LEDs_s1_readdata_from_sa = red_LEDs_s1_readdata;

  assign cpu_0_data_master_requests_red_LEDs_s1 = ({cpu_0_data_master_address_to_slave[16 : 4] , 4'b0} == 17'h11020) & (cpu_0_data_master_read | cpu_0_data_master_write);
  //red_LEDs_s1_arb_share_counter set values, which is an e_mux
  assign red_LEDs_s1_arb_share_set_values = 1;

  //red_LEDs_s1_non_bursting_master_requests mux, which is an e_mux
  assign red_LEDs_s1_non_bursting_master_requests = cpu_0_data_master_requests_red_LEDs_s1;

  //red_LEDs_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign red_LEDs_s1_any_bursting_master_saved_grant = 0;

  //red_LEDs_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign red_LEDs_s1_arb_share_counter_next_value = red_LEDs_s1_firsttransfer ? (red_LEDs_s1_arb_share_set_values - 1) : |red_LEDs_s1_arb_share_counter ? (red_LEDs_s1_arb_share_counter - 1) : 0;

  //red_LEDs_s1_allgrants all slave grants, which is an e_mux
  assign red_LEDs_s1_allgrants = |red_LEDs_s1_grant_vector;

  //red_LEDs_s1_end_xfer assignment, which is an e_assign
  assign red_LEDs_s1_end_xfer = ~(red_LEDs_s1_waits_for_read | red_LEDs_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_red_LEDs_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_red_LEDs_s1 = red_LEDs_s1_end_xfer & (~red_LEDs_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //red_LEDs_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign red_LEDs_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_red_LEDs_s1 & red_LEDs_s1_allgrants) | (end_xfer_arb_share_counter_term_red_LEDs_s1 & ~red_LEDs_s1_non_bursting_master_requests);

  //red_LEDs_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          red_LEDs_s1_arb_share_counter <= 0;
      else if (red_LEDs_s1_arb_counter_enable)
          red_LEDs_s1_arb_share_counter <= red_LEDs_s1_arb_share_counter_next_value;
    end


  //red_LEDs_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          red_LEDs_s1_slavearbiterlockenable <= 0;
      else if ((|red_LEDs_s1_master_qreq_vector & end_xfer_arb_share_counter_term_red_LEDs_s1) | (end_xfer_arb_share_counter_term_red_LEDs_s1 & ~red_LEDs_s1_non_bursting_master_requests))
          red_LEDs_s1_slavearbiterlockenable <= |red_LEDs_s1_arb_share_counter_next_value;
    end


  //cpu_0/data_master red_LEDs/s1 arbiterlock, which is an e_assign
  assign cpu_0_data_master_arbiterlock = red_LEDs_s1_slavearbiterlockenable & cpu_0_data_master_continuerequest;

  //red_LEDs_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign red_LEDs_s1_slavearbiterlockenable2 = |red_LEDs_s1_arb_share_counter_next_value;

  //cpu_0/data_master red_LEDs/s1 arbiterlock2, which is an e_assign
  assign cpu_0_data_master_arbiterlock2 = red_LEDs_s1_slavearbiterlockenable2 & cpu_0_data_master_continuerequest;

  //red_LEDs_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign red_LEDs_s1_any_continuerequest = 1;

  //cpu_0_data_master_continuerequest continued request, which is an e_assign
  assign cpu_0_data_master_continuerequest = 1;

  assign cpu_0_data_master_qualified_request_red_LEDs_s1 = cpu_0_data_master_requests_red_LEDs_s1 & ~(((~cpu_0_data_master_waitrequest) & cpu_0_data_master_write));
  //red_LEDs_s1_writedata mux, which is an e_mux
  assign red_LEDs_s1_writedata = cpu_0_data_master_writedata;

  //master is always granted when requested
  assign cpu_0_data_master_granted_red_LEDs_s1 = cpu_0_data_master_qualified_request_red_LEDs_s1;

  //cpu_0/data_master saved-grant red_LEDs/s1, which is an e_assign
  assign cpu_0_data_master_saved_grant_red_LEDs_s1 = cpu_0_data_master_requests_red_LEDs_s1;

  //allow new arb cycle for red_LEDs/s1, which is an e_assign
  assign red_LEDs_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign red_LEDs_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign red_LEDs_s1_master_qreq_vector = 1;

  //red_LEDs_s1_reset_n assignment, which is an e_assign
  assign red_LEDs_s1_reset_n = reset_n;

  assign red_LEDs_s1_chipselect = cpu_0_data_master_granted_red_LEDs_s1;
  //red_LEDs_s1_firsttransfer first transaction, which is an e_assign
  assign red_LEDs_s1_firsttransfer = red_LEDs_s1_begins_xfer ? red_LEDs_s1_unreg_firsttransfer : red_LEDs_s1_reg_firsttransfer;

  //red_LEDs_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign red_LEDs_s1_unreg_firsttransfer = ~(red_LEDs_s1_slavearbiterlockenable & red_LEDs_s1_any_continuerequest);

  //red_LEDs_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          red_LEDs_s1_reg_firsttransfer <= 1'b1;
      else if (red_LEDs_s1_begins_xfer)
          red_LEDs_s1_reg_firsttransfer <= red_LEDs_s1_unreg_firsttransfer;
    end


  //red_LEDs_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign red_LEDs_s1_beginbursttransfer_internal = red_LEDs_s1_begins_xfer;

  //~red_LEDs_s1_write_n assignment, which is an e_mux
  assign red_LEDs_s1_write_n = ~(cpu_0_data_master_granted_red_LEDs_s1 & cpu_0_data_master_write);

  assign shifted_address_to_red_LEDs_s1_from_cpu_0_data_master = cpu_0_data_master_address_to_slave;
  //red_LEDs_s1_address mux, which is an e_mux
  assign red_LEDs_s1_address = shifted_address_to_red_LEDs_s1_from_cpu_0_data_master >> 2;

  //d1_red_LEDs_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_red_LEDs_s1_end_xfer <= 1;
      else 
        d1_red_LEDs_s1_end_xfer <= red_LEDs_s1_end_xfer;
    end


  //red_LEDs_s1_waits_for_read in a cycle, which is an e_mux
  assign red_LEDs_s1_waits_for_read = red_LEDs_s1_in_a_read_cycle & red_LEDs_s1_begins_xfer;

  //red_LEDs_s1_in_a_read_cycle assignment, which is an e_assign
  assign red_LEDs_s1_in_a_read_cycle = cpu_0_data_master_granted_red_LEDs_s1 & cpu_0_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = red_LEDs_s1_in_a_read_cycle;

  //red_LEDs_s1_waits_for_write in a cycle, which is an e_mux
  assign red_LEDs_s1_waits_for_write = red_LEDs_s1_in_a_write_cycle & 0;

  //red_LEDs_s1_in_a_write_cycle assignment, which is an e_assign
  assign red_LEDs_s1_in_a_write_cycle = cpu_0_data_master_granted_red_LEDs_s1 & cpu_0_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = red_LEDs_s1_in_a_write_cycle;

  assign wait_for_red_LEDs_s1_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //red_LEDs/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else 
        enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module nios_system_reset_clk_0_domain_synch_module (
                                                     // inputs:
                                                      clk,
                                                      data_in,
                                                      reset_n,

                                                     // outputs:
                                                      data_out
                                                   )
;

  output           data_out;
  input            clk;
  input            data_in;
  input            reset_n;

  reg              data_in_d1 /* synthesis ALTERA_ATTRIBUTE = "{-from \"*\"} CUT=ON ; PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg              data_out /* synthesis ALTERA_ATTRIBUTE = "PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_in_d1 <= 0;
      else 
        data_in_d1 <= data_in;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_out <= 0;
      else 
        data_out <= data_in_d1;
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module nios_system (
                     // 1) global signals:
                      clk_0,
                      reset_n,

                     // the_green_LEDs
                      out_port_from_the_green_LEDs,

                     // the_new_number
                      in_port_to_the_new_number,

                     // the_red_LEDs
                      out_port_from_the_red_LEDs
                   )
;

  output  [  7: 0] out_port_from_the_green_LEDs;
  output  [ 15: 0] out_port_from_the_red_LEDs;
  input            clk_0;
  input   [  7: 0] in_port_to_the_new_number;
  input            reset_n;

  wire             clk_0_reset_n;
  wire    [ 16: 0] cpu_0_data_master_address;
  wire    [ 16: 0] cpu_0_data_master_address_to_slave;
  wire    [  3: 0] cpu_0_data_master_byteenable;
  wire             cpu_0_data_master_debugaccess;
  wire             cpu_0_data_master_granted_cpu_0_jtag_debug_module;
  wire             cpu_0_data_master_granted_green_LEDs_s1;
  wire             cpu_0_data_master_granted_new_number_s1;
  wire             cpu_0_data_master_granted_onchip_memory2_0_s1;
  wire             cpu_0_data_master_granted_red_LEDs_s1;
  wire    [ 31: 0] cpu_0_data_master_irq;
  wire             cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module;
  wire             cpu_0_data_master_qualified_request_green_LEDs_s1;
  wire             cpu_0_data_master_qualified_request_new_number_s1;
  wire             cpu_0_data_master_qualified_request_onchip_memory2_0_s1;
  wire             cpu_0_data_master_qualified_request_red_LEDs_s1;
  wire             cpu_0_data_master_read;
  wire             cpu_0_data_master_read_data_valid_cpu_0_jtag_debug_module;
  wire             cpu_0_data_master_read_data_valid_green_LEDs_s1;
  wire             cpu_0_data_master_read_data_valid_new_number_s1;
  wire             cpu_0_data_master_read_data_valid_onchip_memory2_0_s1;
  wire             cpu_0_data_master_read_data_valid_red_LEDs_s1;
  wire    [ 31: 0] cpu_0_data_master_readdata;
  wire             cpu_0_data_master_requests_cpu_0_jtag_debug_module;
  wire             cpu_0_data_master_requests_green_LEDs_s1;
  wire             cpu_0_data_master_requests_new_number_s1;
  wire             cpu_0_data_master_requests_onchip_memory2_0_s1;
  wire             cpu_0_data_master_requests_red_LEDs_s1;
  wire             cpu_0_data_master_waitrequest;
  wire             cpu_0_data_master_write;
  wire    [ 31: 0] cpu_0_data_master_writedata;
  wire    [ 16: 0] cpu_0_instruction_master_address;
  wire    [ 16: 0] cpu_0_instruction_master_address_to_slave;
  wire             cpu_0_instruction_master_granted_cpu_0_jtag_debug_module;
  wire             cpu_0_instruction_master_granted_onchip_memory2_0_s1;
  wire             cpu_0_instruction_master_latency_counter;
  wire             cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module;
  wire             cpu_0_instruction_master_qualified_request_onchip_memory2_0_s1;
  wire             cpu_0_instruction_master_read;
  wire             cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module;
  wire             cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1;
  wire    [ 31: 0] cpu_0_instruction_master_readdata;
  wire             cpu_0_instruction_master_readdatavalid;
  wire             cpu_0_instruction_master_requests_cpu_0_jtag_debug_module;
  wire             cpu_0_instruction_master_requests_onchip_memory2_0_s1;
  wire             cpu_0_instruction_master_waitrequest;
  wire    [  8: 0] cpu_0_jtag_debug_module_address;
  wire             cpu_0_jtag_debug_module_begintransfer;
  wire    [  3: 0] cpu_0_jtag_debug_module_byteenable;
  wire             cpu_0_jtag_debug_module_chipselect;
  wire             cpu_0_jtag_debug_module_debugaccess;
  wire    [ 31: 0] cpu_0_jtag_debug_module_readdata;
  wire    [ 31: 0] cpu_0_jtag_debug_module_readdata_from_sa;
  wire             cpu_0_jtag_debug_module_reset_n;
  wire             cpu_0_jtag_debug_module_resetrequest;
  wire             cpu_0_jtag_debug_module_resetrequest_from_sa;
  wire             cpu_0_jtag_debug_module_write;
  wire    [ 31: 0] cpu_0_jtag_debug_module_writedata;
  wire             d1_cpu_0_jtag_debug_module_end_xfer;
  wire             d1_green_LEDs_s1_end_xfer;
  wire             d1_new_number_s1_end_xfer;
  wire             d1_onchip_memory2_0_s1_end_xfer;
  wire             d1_red_LEDs_s1_end_xfer;
  wire    [  1: 0] green_LEDs_s1_address;
  wire             green_LEDs_s1_chipselect;
  wire    [  7: 0] green_LEDs_s1_readdata;
  wire    [  7: 0] green_LEDs_s1_readdata_from_sa;
  wire             green_LEDs_s1_reset_n;
  wire             green_LEDs_s1_write_n;
  wire    [  7: 0] green_LEDs_s1_writedata;
  wire    [  1: 0] new_number_s1_address;
  wire    [  7: 0] new_number_s1_readdata;
  wire    [  7: 0] new_number_s1_readdata_from_sa;
  wire             new_number_s1_reset_n;
  wire    [ 12: 0] onchip_memory2_0_s1_address;
  wire    [  3: 0] onchip_memory2_0_s1_byteenable;
  wire             onchip_memory2_0_s1_chipselect;
  wire             onchip_memory2_0_s1_clken;
  wire    [ 31: 0] onchip_memory2_0_s1_readdata;
  wire    [ 31: 0] onchip_memory2_0_s1_readdata_from_sa;
  wire             onchip_memory2_0_s1_write;
  wire    [ 31: 0] onchip_memory2_0_s1_writedata;
  wire    [  7: 0] out_port_from_the_green_LEDs;
  wire    [ 15: 0] out_port_from_the_red_LEDs;
  wire    [  1: 0] red_LEDs_s1_address;
  wire             red_LEDs_s1_chipselect;
  wire    [ 15: 0] red_LEDs_s1_readdata;
  wire    [ 15: 0] red_LEDs_s1_readdata_from_sa;
  wire             red_LEDs_s1_reset_n;
  wire             red_LEDs_s1_write_n;
  wire    [ 15: 0] red_LEDs_s1_writedata;
  wire             registered_cpu_0_data_master_read_data_valid_onchip_memory2_0_s1;
  wire             reset_n_sources;
  cpu_0_jtag_debug_module_arbitrator the_cpu_0_jtag_debug_module
    (
      .clk                                                                (clk_0),
      .cpu_0_data_master_address_to_slave                                 (cpu_0_data_master_address_to_slave),
      .cpu_0_data_master_byteenable                                       (cpu_0_data_master_byteenable),
      .cpu_0_data_master_debugaccess                                      (cpu_0_data_master_debugaccess),
      .cpu_0_data_master_granted_cpu_0_jtag_debug_module                  (cpu_0_data_master_granted_cpu_0_jtag_debug_module),
      .cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module        (cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module),
      .cpu_0_data_master_read                                             (cpu_0_data_master_read),
      .cpu_0_data_master_read_data_valid_cpu_0_jtag_debug_module          (cpu_0_data_master_read_data_valid_cpu_0_jtag_debug_module),
      .cpu_0_data_master_requests_cpu_0_jtag_debug_module                 (cpu_0_data_master_requests_cpu_0_jtag_debug_module),
      .cpu_0_data_master_waitrequest                                      (cpu_0_data_master_waitrequest),
      .cpu_0_data_master_write                                            (cpu_0_data_master_write),
      .cpu_0_data_master_writedata                                        (cpu_0_data_master_writedata),
      .cpu_0_instruction_master_address_to_slave                          (cpu_0_instruction_master_address_to_slave),
      .cpu_0_instruction_master_granted_cpu_0_jtag_debug_module           (cpu_0_instruction_master_granted_cpu_0_jtag_debug_module),
      .cpu_0_instruction_master_latency_counter                           (cpu_0_instruction_master_latency_counter),
      .cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module (cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module),
      .cpu_0_instruction_master_read                                      (cpu_0_instruction_master_read),
      .cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module   (cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module),
      .cpu_0_instruction_master_requests_cpu_0_jtag_debug_module          (cpu_0_instruction_master_requests_cpu_0_jtag_debug_module),
      .cpu_0_jtag_debug_module_address                                    (cpu_0_jtag_debug_module_address),
      .cpu_0_jtag_debug_module_begintransfer                              (cpu_0_jtag_debug_module_begintransfer),
      .cpu_0_jtag_debug_module_byteenable                                 (cpu_0_jtag_debug_module_byteenable),
      .cpu_0_jtag_debug_module_chipselect                                 (cpu_0_jtag_debug_module_chipselect),
      .cpu_0_jtag_debug_module_debugaccess                                (cpu_0_jtag_debug_module_debugaccess),
      .cpu_0_jtag_debug_module_readdata                                   (cpu_0_jtag_debug_module_readdata),
      .cpu_0_jtag_debug_module_readdata_from_sa                           (cpu_0_jtag_debug_module_readdata_from_sa),
      .cpu_0_jtag_debug_module_reset_n                                    (cpu_0_jtag_debug_module_reset_n),
      .cpu_0_jtag_debug_module_resetrequest                               (cpu_0_jtag_debug_module_resetrequest),
      .cpu_0_jtag_debug_module_resetrequest_from_sa                       (cpu_0_jtag_debug_module_resetrequest_from_sa),
      .cpu_0_jtag_debug_module_write                                      (cpu_0_jtag_debug_module_write),
      .cpu_0_jtag_debug_module_writedata                                  (cpu_0_jtag_debug_module_writedata),
      .d1_cpu_0_jtag_debug_module_end_xfer                                (d1_cpu_0_jtag_debug_module_end_xfer),
      .reset_n                                                            (clk_0_reset_n)
    );

  cpu_0_data_master_arbitrator the_cpu_0_data_master
    (
      .clk                                                              (clk_0),
      .cpu_0_data_master_address                                        (cpu_0_data_master_address),
      .cpu_0_data_master_address_to_slave                               (cpu_0_data_master_address_to_slave),
      .cpu_0_data_master_granted_cpu_0_jtag_debug_module                (cpu_0_data_master_granted_cpu_0_jtag_debug_module),
      .cpu_0_data_master_granted_green_LEDs_s1                          (cpu_0_data_master_granted_green_LEDs_s1),
      .cpu_0_data_master_granted_new_number_s1                          (cpu_0_data_master_granted_new_number_s1),
      .cpu_0_data_master_granted_onchip_memory2_0_s1                    (cpu_0_data_master_granted_onchip_memory2_0_s1),
      .cpu_0_data_master_granted_red_LEDs_s1                            (cpu_0_data_master_granted_red_LEDs_s1),
      .cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module      (cpu_0_data_master_qualified_request_cpu_0_jtag_debug_module),
      .cpu_0_data_master_qualified_request_green_LEDs_s1                (cpu_0_data_master_qualified_request_green_LEDs_s1),
      .cpu_0_data_master_qualified_request_new_number_s1                (cpu_0_data_master_qualified_request_new_number_s1),
      .cpu_0_data_master_qualified_request_onchip_memory2_0_s1          (cpu_0_data_master_qualified_request_onchip_memory2_0_s1),
      .cpu_0_data_master_qualified_request_red_LEDs_s1                  (cpu_0_data_master_qualified_request_red_LEDs_s1),
      .cpu_0_data_master_read                                           (cpu_0_data_master_read),
      .cpu_0_data_master_read_data_valid_cpu_0_jtag_debug_module        (cpu_0_data_master_read_data_valid_cpu_0_jtag_debug_module),
      .cpu_0_data_master_read_data_valid_green_LEDs_s1                  (cpu_0_data_master_read_data_valid_green_LEDs_s1),
      .cpu_0_data_master_read_data_valid_new_number_s1                  (cpu_0_data_master_read_data_valid_new_number_s1),
      .cpu_0_data_master_read_data_valid_onchip_memory2_0_s1            (cpu_0_data_master_read_data_valid_onchip_memory2_0_s1),
      .cpu_0_data_master_read_data_valid_red_LEDs_s1                    (cpu_0_data_master_read_data_valid_red_LEDs_s1),
      .cpu_0_data_master_readdata                                       (cpu_0_data_master_readdata),
      .cpu_0_data_master_requests_cpu_0_jtag_debug_module               (cpu_0_data_master_requests_cpu_0_jtag_debug_module),
      .cpu_0_data_master_requests_green_LEDs_s1                         (cpu_0_data_master_requests_green_LEDs_s1),
      .cpu_0_data_master_requests_new_number_s1                         (cpu_0_data_master_requests_new_number_s1),
      .cpu_0_data_master_requests_onchip_memory2_0_s1                   (cpu_0_data_master_requests_onchip_memory2_0_s1),
      .cpu_0_data_master_requests_red_LEDs_s1                           (cpu_0_data_master_requests_red_LEDs_s1),
      .cpu_0_data_master_waitrequest                                    (cpu_0_data_master_waitrequest),
      .cpu_0_data_master_write                                          (cpu_0_data_master_write),
      .cpu_0_jtag_debug_module_readdata_from_sa                         (cpu_0_jtag_debug_module_readdata_from_sa),
      .d1_cpu_0_jtag_debug_module_end_xfer                              (d1_cpu_0_jtag_debug_module_end_xfer),
      .d1_green_LEDs_s1_end_xfer                                        (d1_green_LEDs_s1_end_xfer),
      .d1_new_number_s1_end_xfer                                        (d1_new_number_s1_end_xfer),
      .d1_onchip_memory2_0_s1_end_xfer                                  (d1_onchip_memory2_0_s1_end_xfer),
      .d1_red_LEDs_s1_end_xfer                                          (d1_red_LEDs_s1_end_xfer),
      .green_LEDs_s1_readdata_from_sa                                   (green_LEDs_s1_readdata_from_sa),
      .new_number_s1_readdata_from_sa                                   (new_number_s1_readdata_from_sa),
      .onchip_memory2_0_s1_readdata_from_sa                             (onchip_memory2_0_s1_readdata_from_sa),
      .red_LEDs_s1_readdata_from_sa                                     (red_LEDs_s1_readdata_from_sa),
      .registered_cpu_0_data_master_read_data_valid_onchip_memory2_0_s1 (registered_cpu_0_data_master_read_data_valid_onchip_memory2_0_s1),
      .reset_n                                                          (clk_0_reset_n)
    );

  cpu_0_instruction_master_arbitrator the_cpu_0_instruction_master
    (
      .clk                                                                (clk_0),
      .cpu_0_instruction_master_address                                   (cpu_0_instruction_master_address),
      .cpu_0_instruction_master_address_to_slave                          (cpu_0_instruction_master_address_to_slave),
      .cpu_0_instruction_master_granted_cpu_0_jtag_debug_module           (cpu_0_instruction_master_granted_cpu_0_jtag_debug_module),
      .cpu_0_instruction_master_granted_onchip_memory2_0_s1               (cpu_0_instruction_master_granted_onchip_memory2_0_s1),
      .cpu_0_instruction_master_latency_counter                           (cpu_0_instruction_master_latency_counter),
      .cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module (cpu_0_instruction_master_qualified_request_cpu_0_jtag_debug_module),
      .cpu_0_instruction_master_qualified_request_onchip_memory2_0_s1     (cpu_0_instruction_master_qualified_request_onchip_memory2_0_s1),
      .cpu_0_instruction_master_read                                      (cpu_0_instruction_master_read),
      .cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module   (cpu_0_instruction_master_read_data_valid_cpu_0_jtag_debug_module),
      .cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1       (cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1),
      .cpu_0_instruction_master_readdata                                  (cpu_0_instruction_master_readdata),
      .cpu_0_instruction_master_readdatavalid                             (cpu_0_instruction_master_readdatavalid),
      .cpu_0_instruction_master_requests_cpu_0_jtag_debug_module          (cpu_0_instruction_master_requests_cpu_0_jtag_debug_module),
      .cpu_0_instruction_master_requests_onchip_memory2_0_s1              (cpu_0_instruction_master_requests_onchip_memory2_0_s1),
      .cpu_0_instruction_master_waitrequest                               (cpu_0_instruction_master_waitrequest),
      .cpu_0_jtag_debug_module_readdata_from_sa                           (cpu_0_jtag_debug_module_readdata_from_sa),
      .d1_cpu_0_jtag_debug_module_end_xfer                                (d1_cpu_0_jtag_debug_module_end_xfer),
      .d1_onchip_memory2_0_s1_end_xfer                                    (d1_onchip_memory2_0_s1_end_xfer),
      .onchip_memory2_0_s1_readdata_from_sa                               (onchip_memory2_0_s1_readdata_from_sa),
      .reset_n                                                            (clk_0_reset_n)
    );

  cpu_0 the_cpu_0
    (
      .clk                                   (clk_0),
      .d_address                             (cpu_0_data_master_address),
      .d_byteenable                          (cpu_0_data_master_byteenable),
      .d_irq                                 (cpu_0_data_master_irq),
      .d_read                                (cpu_0_data_master_read),
      .d_readdata                            (cpu_0_data_master_readdata),
      .d_waitrequest                         (cpu_0_data_master_waitrequest),
      .d_write                               (cpu_0_data_master_write),
      .d_writedata                           (cpu_0_data_master_writedata),
      .i_address                             (cpu_0_instruction_master_address),
      .i_read                                (cpu_0_instruction_master_read),
      .i_readdata                            (cpu_0_instruction_master_readdata),
      .i_readdatavalid                       (cpu_0_instruction_master_readdatavalid),
      .i_waitrequest                         (cpu_0_instruction_master_waitrequest),
      .jtag_debug_module_address             (cpu_0_jtag_debug_module_address),
      .jtag_debug_module_begintransfer       (cpu_0_jtag_debug_module_begintransfer),
      .jtag_debug_module_byteenable          (cpu_0_jtag_debug_module_byteenable),
      .jtag_debug_module_debugaccess         (cpu_0_jtag_debug_module_debugaccess),
      .jtag_debug_module_debugaccess_to_roms (cpu_0_data_master_debugaccess),
      .jtag_debug_module_readdata            (cpu_0_jtag_debug_module_readdata),
      .jtag_debug_module_resetrequest        (cpu_0_jtag_debug_module_resetrequest),
      .jtag_debug_module_select              (cpu_0_jtag_debug_module_chipselect),
      .jtag_debug_module_write               (cpu_0_jtag_debug_module_write),
      .jtag_debug_module_writedata           (cpu_0_jtag_debug_module_writedata),
      .reset_n                               (cpu_0_jtag_debug_module_reset_n)
    );

  green_LEDs_s1_arbitrator the_green_LEDs_s1
    (
      .clk                                               (clk_0),
      .cpu_0_data_master_address_to_slave                (cpu_0_data_master_address_to_slave),
      .cpu_0_data_master_byteenable                      (cpu_0_data_master_byteenable),
      .cpu_0_data_master_granted_green_LEDs_s1           (cpu_0_data_master_granted_green_LEDs_s1),
      .cpu_0_data_master_qualified_request_green_LEDs_s1 (cpu_0_data_master_qualified_request_green_LEDs_s1),
      .cpu_0_data_master_read                            (cpu_0_data_master_read),
      .cpu_0_data_master_read_data_valid_green_LEDs_s1   (cpu_0_data_master_read_data_valid_green_LEDs_s1),
      .cpu_0_data_master_requests_green_LEDs_s1          (cpu_0_data_master_requests_green_LEDs_s1),
      .cpu_0_data_master_waitrequest                     (cpu_0_data_master_waitrequest),
      .cpu_0_data_master_write                           (cpu_0_data_master_write),
      .cpu_0_data_master_writedata                       (cpu_0_data_master_writedata),
      .d1_green_LEDs_s1_end_xfer                         (d1_green_LEDs_s1_end_xfer),
      .green_LEDs_s1_address                             (green_LEDs_s1_address),
      .green_LEDs_s1_chipselect                          (green_LEDs_s1_chipselect),
      .green_LEDs_s1_readdata                            (green_LEDs_s1_readdata),
      .green_LEDs_s1_readdata_from_sa                    (green_LEDs_s1_readdata_from_sa),
      .green_LEDs_s1_reset_n                             (green_LEDs_s1_reset_n),
      .green_LEDs_s1_write_n                             (green_LEDs_s1_write_n),
      .green_LEDs_s1_writedata                           (green_LEDs_s1_writedata),
      .reset_n                                           (clk_0_reset_n)
    );

  green_LEDs the_green_LEDs
    (
      .address    (green_LEDs_s1_address),
      .chipselect (green_LEDs_s1_chipselect),
      .clk        (clk_0),
      .out_port   (out_port_from_the_green_LEDs),
      .readdata   (green_LEDs_s1_readdata),
      .reset_n    (green_LEDs_s1_reset_n),
      .write_n    (green_LEDs_s1_write_n),
      .writedata  (green_LEDs_s1_writedata)
    );

  new_number_s1_arbitrator the_new_number_s1
    (
      .clk                                               (clk_0),
      .cpu_0_data_master_address_to_slave                (cpu_0_data_master_address_to_slave),
      .cpu_0_data_master_granted_new_number_s1           (cpu_0_data_master_granted_new_number_s1),
      .cpu_0_data_master_qualified_request_new_number_s1 (cpu_0_data_master_qualified_request_new_number_s1),
      .cpu_0_data_master_read                            (cpu_0_data_master_read),
      .cpu_0_data_master_read_data_valid_new_number_s1   (cpu_0_data_master_read_data_valid_new_number_s1),
      .cpu_0_data_master_requests_new_number_s1          (cpu_0_data_master_requests_new_number_s1),
      .cpu_0_data_master_write                           (cpu_0_data_master_write),
      .d1_new_number_s1_end_xfer                         (d1_new_number_s1_end_xfer),
      .new_number_s1_address                             (new_number_s1_address),
      .new_number_s1_readdata                            (new_number_s1_readdata),
      .new_number_s1_readdata_from_sa                    (new_number_s1_readdata_from_sa),
      .new_number_s1_reset_n                             (new_number_s1_reset_n),
      .reset_n                                           (clk_0_reset_n)
    );

  new_number the_new_number
    (
      .address  (new_number_s1_address),
      .clk      (clk_0),
      .in_port  (in_port_to_the_new_number),
      .readdata (new_number_s1_readdata),
      .reset_n  (new_number_s1_reset_n)
    );

  onchip_memory2_0_s1_arbitrator the_onchip_memory2_0_s1
    (
      .clk                                                              (clk_0),
      .cpu_0_data_master_address_to_slave                               (cpu_0_data_master_address_to_slave),
      .cpu_0_data_master_byteenable                                     (cpu_0_data_master_byteenable),
      .cpu_0_data_master_granted_onchip_memory2_0_s1                    (cpu_0_data_master_granted_onchip_memory2_0_s1),
      .cpu_0_data_master_qualified_request_onchip_memory2_0_s1          (cpu_0_data_master_qualified_request_onchip_memory2_0_s1),
      .cpu_0_data_master_read                                           (cpu_0_data_master_read),
      .cpu_0_data_master_read_data_valid_onchip_memory2_0_s1            (cpu_0_data_master_read_data_valid_onchip_memory2_0_s1),
      .cpu_0_data_master_requests_onchip_memory2_0_s1                   (cpu_0_data_master_requests_onchip_memory2_0_s1),
      .cpu_0_data_master_waitrequest                                    (cpu_0_data_master_waitrequest),
      .cpu_0_data_master_write                                          (cpu_0_data_master_write),
      .cpu_0_data_master_writedata                                      (cpu_0_data_master_writedata),
      .cpu_0_instruction_master_address_to_slave                        (cpu_0_instruction_master_address_to_slave),
      .cpu_0_instruction_master_granted_onchip_memory2_0_s1             (cpu_0_instruction_master_granted_onchip_memory2_0_s1),
      .cpu_0_instruction_master_latency_counter                         (cpu_0_instruction_master_latency_counter),
      .cpu_0_instruction_master_qualified_request_onchip_memory2_0_s1   (cpu_0_instruction_master_qualified_request_onchip_memory2_0_s1),
      .cpu_0_instruction_master_read                                    (cpu_0_instruction_master_read),
      .cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1     (cpu_0_instruction_master_read_data_valid_onchip_memory2_0_s1),
      .cpu_0_instruction_master_requests_onchip_memory2_0_s1            (cpu_0_instruction_master_requests_onchip_memory2_0_s1),
      .d1_onchip_memory2_0_s1_end_xfer                                  (d1_onchip_memory2_0_s1_end_xfer),
      .onchip_memory2_0_s1_address                                      (onchip_memory2_0_s1_address),
      .onchip_memory2_0_s1_byteenable                                   (onchip_memory2_0_s1_byteenable),
      .onchip_memory2_0_s1_chipselect                                   (onchip_memory2_0_s1_chipselect),
      .onchip_memory2_0_s1_clken                                        (onchip_memory2_0_s1_clken),
      .onchip_memory2_0_s1_readdata                                     (onchip_memory2_0_s1_readdata),
      .onchip_memory2_0_s1_readdata_from_sa                             (onchip_memory2_0_s1_readdata_from_sa),
      .onchip_memory2_0_s1_write                                        (onchip_memory2_0_s1_write),
      .onchip_memory2_0_s1_writedata                                    (onchip_memory2_0_s1_writedata),
      .registered_cpu_0_data_master_read_data_valid_onchip_memory2_0_s1 (registered_cpu_0_data_master_read_data_valid_onchip_memory2_0_s1),
      .reset_n                                                          (clk_0_reset_n)
    );

  onchip_memory2_0 the_onchip_memory2_0
    (
      .address    (onchip_memory2_0_s1_address),
      .byteenable (onchip_memory2_0_s1_byteenable),
      .chipselect (onchip_memory2_0_s1_chipselect),
      .clk        (clk_0),
      .clken      (onchip_memory2_0_s1_clken),
      .readdata   (onchip_memory2_0_s1_readdata),
      .write      (onchip_memory2_0_s1_write),
      .writedata  (onchip_memory2_0_s1_writedata)
    );

  red_LEDs_s1_arbitrator the_red_LEDs_s1
    (
      .clk                                             (clk_0),
      .cpu_0_data_master_address_to_slave              (cpu_0_data_master_address_to_slave),
      .cpu_0_data_master_granted_red_LEDs_s1           (cpu_0_data_master_granted_red_LEDs_s1),
      .cpu_0_data_master_qualified_request_red_LEDs_s1 (cpu_0_data_master_qualified_request_red_LEDs_s1),
      .cpu_0_data_master_read                          (cpu_0_data_master_read),
      .cpu_0_data_master_read_data_valid_red_LEDs_s1   (cpu_0_data_master_read_data_valid_red_LEDs_s1),
      .cpu_0_data_master_requests_red_LEDs_s1          (cpu_0_data_master_requests_red_LEDs_s1),
      .cpu_0_data_master_waitrequest                   (cpu_0_data_master_waitrequest),
      .cpu_0_data_master_write                         (cpu_0_data_master_write),
      .cpu_0_data_master_writedata                     (cpu_0_data_master_writedata),
      .d1_red_LEDs_s1_end_xfer                         (d1_red_LEDs_s1_end_xfer),
      .red_LEDs_s1_address                             (red_LEDs_s1_address),
      .red_LEDs_s1_chipselect                          (red_LEDs_s1_chipselect),
      .red_LEDs_s1_readdata                            (red_LEDs_s1_readdata),
      .red_LEDs_s1_readdata_from_sa                    (red_LEDs_s1_readdata_from_sa),
      .red_LEDs_s1_reset_n                             (red_LEDs_s1_reset_n),
      .red_LEDs_s1_write_n                             (red_LEDs_s1_write_n),
      .red_LEDs_s1_writedata                           (red_LEDs_s1_writedata),
      .reset_n                                         (clk_0_reset_n)
    );

  red_LEDs the_red_LEDs
    (
      .address    (red_LEDs_s1_address),
      .chipselect (red_LEDs_s1_chipselect),
      .clk        (clk_0),
      .out_port   (out_port_from_the_red_LEDs),
      .readdata   (red_LEDs_s1_readdata),
      .reset_n    (red_LEDs_s1_reset_n),
      .write_n    (red_LEDs_s1_write_n),
      .writedata  (red_LEDs_s1_writedata)
    );

  //reset is asserted asynchronously and deasserted synchronously
  nios_system_reset_clk_0_domain_synch_module nios_system_reset_clk_0_domain_synch
    (
      .clk      (clk_0),
      .data_in  (1'b1),
      .data_out (clk_0_reset_n),
      .reset_n  (reset_n_sources)
    );

  //reset sources mux, which is an e_mux
  assign reset_n_sources = ~(~reset_n |
    0 |
    cpu_0_jtag_debug_module_resetrequest_from_sa |
    cpu_0_jtag_debug_module_resetrequest_from_sa);

  //cpu_0_data_master_irq of type irq does not connect to anything so wire it to default (0)
  assign cpu_0_data_master_irq = 0;


endmodule


//synthesis translate_off



// <ALTERA_NOTE> CODE INSERTED BETWEEN HERE

// AND HERE WILL BE PRESERVED </ALTERA_NOTE>


// If user logic components use Altsync_Ram with convert_hex2ver.dll,
// set USE_convert_hex2ver in the user comments section above

// `ifdef USE_convert_hex2ver
// `else
// `define NO_PLI 1
// `endif

`include "c:/altera/91sp2/quartus/eda/sim_lib/altera_mf.v"
`include "c:/altera/91sp2/quartus/eda/sim_lib/220model.v"
`include "c:/altera/91sp2/quartus/eda/sim_lib/sgate.v"
`include "new_number.v"
`include "cpu_0_test_bench.v"
`include "cpu_0_mult_cell.v"
`include "cpu_0_oci_test_bench.v"
`include "cpu_0_jtag_debug_module_tck.v"
`include "cpu_0_jtag_debug_module_sysclk.v"
`include "cpu_0_jtag_debug_module_wrapper.v"
`include "cpu_0.v"
`include "green_LEDs.v"
`include "onchip_memory2_0.v"
`include "red_LEDs.v"

`timescale 1ns / 1ps

module test_bench 
;


  wire             clk;
  reg              clk_0;
  wire    [ 31: 0] cpu_0_data_master_irq;
  wire    [  7: 0] in_port_to_the_new_number;
  wire    [  7: 0] out_port_from_the_green_LEDs;
  wire    [ 15: 0] out_port_from_the_red_LEDs;
  reg              reset_n;


// <ALTERA_NOTE> CODE INSERTED BETWEEN HERE
//  add your signals and additional architecture here
// AND HERE WILL BE PRESERVED </ALTERA_NOTE>

  //Set us up the Dut
  nios_system DUT
    (
      .clk_0                        (clk_0),
      .in_port_to_the_new_number    (in_port_to_the_new_number),
      .out_port_from_the_green_LEDs (out_port_from_the_green_LEDs),
      .out_port_from_the_red_LEDs   (out_port_from_the_red_LEDs),
      .reset_n                      (reset_n)
    );

  initial
    clk_0 = 1'b0;
  always
    #10 clk_0 <= ~clk_0;
  
  initial 
    begin
      reset_n <= 0;
      #200 reset_n <= 1;
    end

endmodule


//synthesis translate_on