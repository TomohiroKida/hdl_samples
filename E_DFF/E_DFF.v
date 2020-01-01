module E_DFF(CLK, D, EN, Q);
   parameter WIDTH = 1;
   input CLK;
   input EN;
   input [WIDTH-1:0] D;
   output [WIDTH-1:0] Q;
   reg [WIDTH-1:0] 	  Q;

   always @(posedge CLK) begin
      if(EN)
         Q <= D;
   end
   
endmodule
