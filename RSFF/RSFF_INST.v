module RSFF_INST(R, S, Q);
   parameter WIDTH = 4;
   input [WIDTH-1:0] R, S;
   output [WIDTH-1:0] Q;

   RSFF RS0(.CLK(S[0]), .RESET(R[0]), .D(1'b1), .Q(Q[0]));
   RSFF RS1(.CLK(S[1]), .RESET(R[1]), .D(1'b1), .Q(Q[1]));
   RSFF RS2(.CLK(S[2]), .RESET(R[2]), .D(1'b1), .Q(Q[2]));
   RSFF RS3(.CLK(S[3]), .RESET(R[3]), .D(1'b1), .Q(Q[3]));
   
endmodule
