module RSFF(CLK, RESET, D, Q);
   input CLK, RESET;
   input D;
   output Q;
   reg 	  Q;

   always @(posedge CLK or posedge RESET) begin
	  if(RESET)
		Q <= 0;
	  else
		Q <= D;
   end
   
endmodule
