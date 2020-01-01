module DFF(CLK, D, Q);
   parameter WIDTH = 1;
   input CLK;
   input [WIDTH-1:0] D;
   output [WIDTH-1:0] Q;
   reg [WIDTH-1:0] 	  Q;

   always @(posedge CLK) begin
	  Q <= D;
   end
   
endmodule
