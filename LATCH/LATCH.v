module LATCH(G, D, Q);
   parameter WIDTH = 1;
   input G;
   input [WIDTH-1:0] D;
   output [WIDTH-1:0] Q;
   reg [WIDTH-1:0] 	  Q;

   always @ (G or D) begin
	  if(G)
		Q <= D;
   end
   
endmodule
