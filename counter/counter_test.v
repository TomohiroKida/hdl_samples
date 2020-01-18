`timescale 1ns/1ps
module COUNTER_TEST;
   
   parameter WIDTH = 4;
   parameter CYCLE = 100;
   
   reg  CLK, RESET, LOAD, INC;
   reg  [WIDTH-1:0] DATA;
   wire [WIDTH-1:0] COUNT;
   
   COUNTER #(WIDTH) I0(.CLK(CLK), .RESET(RESET), .LOAD(LOAD), .DATA(DATA), .INC(INC), .COUNT(COUNT));
   
   always #(CYCLE/2)
     CLK = ~CLK;
   
   initial begin
      CLK   = 1'b0;
      RESET = 1'b1;
      LOAD  = 1'b0;
      DATA  = 1100;
      INC   = 1'b1;
      #(CYCLE);
      RESET = 1'b0;
      #(CYCLE*3);
      LOAD  = 1'b1;
      #(CYCLE);
      LOAD  = 1'b0;
      #(CYCLE*5);
      INC   = 1'b0;
      #(CYCLE*5);
      $finish;
   end
   
   initial begin
      $dumpfile("counter.vcd");
      $dumpvars(0, COUNTER_TEST);
      $monitor($time,," CLK=%b RESET=%b LOAD=%b DATA=%b INC=%b COUNT=%b", CLK, RESET, LOAD, DATA, INC, COUNT);
   end
   
endmodule
