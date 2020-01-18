`timescale 1ns/1ps
module BCDCNT_TEST;
   
   parameter CYCLE = 100;
   
   reg  CLK, RESET, LOAD, INC;
   reg  [3:0] DATA;
   wire [3:0] COUNT;
   
   BCDCNT I0(.CLK(CLK), .RESET(RESET), .LOAD(LOAD), .DATA(DATA), .INC(INC), .COUNT(COUNT));
   
   always #(CYCLE/2)
     CLK = ~CLK;
   
   initial begin
      CLK   = 1'b0;
      RESET = 1'b1;
      DATA  = 4'd8;
	  LOAD  = 1'b0;
      INC   = 1'b1;
      #(CYCLE);
      RESET = 1'b0;
      #(CYCLE*3);
      LOAD  = 1'b1;
      #(CYCLE);
      LOAD  = 1'b0;
      #(CYCLE*5);
      INC   = 1'b0;
	  DATA  = 4'd2;
      #(CYCLE*5);
	  LOAD  = 1'b1;
	  #(CYCLE);
	  LOAD  = 1'b0;
	  #(CYCLE*5);
	  RESET = 1'b1;
      DATA  = 4'd6;
	  LOAD  = 1'b1;
      INC   = 1'b1;	  
	  #(CYCLE);
	  RESET = 1'b0;
      $finish;
   end
   
   initial begin
      $dumpfile("bcdcnt.vcd");
      $dumpvars(0, BCDCNT_TEST);
      $monitor($time,," CLK=%b RESET=%b LOAD=%b DATA=%d INC=%b COUNT=%d", CLK, RESET, LOAD, DATA, INC, COUNT);
   end
   
endmodule
