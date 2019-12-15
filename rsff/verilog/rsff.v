module rsff(CLK, RESET, D, Q);
   input      CLK;
   input    RESET;
   input        D;
   output       Q;

   reg          Q;

   always @ (posedge CLK or posedge RESET) begin
      if (RESET == 1'b1)
         Q  <= 1'b0;
      else
         Q  <=    D;
   end
   
endmodule
