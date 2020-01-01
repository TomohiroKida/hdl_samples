module RSFF_TEST;

   parameter CYCLE = 100;
   reg [3:0] R, S;
   wire [3:0] Q;
   integer 	  I;

   RSFF_INST i0(R, S, Q);

   initial begin
	  for(I=0;I<15;I=I+1) begin
		 R=I;
		 S=17-I;
		 #CYCLE;
	  end
	  $finish;
   end

   initial begin
	  $monitor($time, " R0=%b S0=%b Q0=%b", R[0], S[0], Q[0]);
   end
   
endmodule
