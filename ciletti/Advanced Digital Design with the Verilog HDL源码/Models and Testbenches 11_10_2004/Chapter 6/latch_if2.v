module latch_if2 (data_out, data_in, latch_enable);
  output	[3: 0] 	data_out; 
  input 	[3: 0] 	data_in;
  input 		latch_enable;
  reg 	[3: 0] 	data_out;
 
  always @  (latch_enable or data_in)
    if (latch_enable) data_out = data_in;	// Incompletely specified	
endmodule

