`timescale 1ns/1ps
module ;
   
   initial begin
      $finish;
   end
   
   initial begin
      $dumpfile("bcdcnt.vcd");
      $dumpvars(0, BCDCNT_TEST);
      $monitor($time,," CLK=%b RESET=%b LOAD=%b DATA=%d INC=%b COUNT=%d", CLK, RESET, LOAD, DATA, INC, COUNT);
   end
   
endmodule
