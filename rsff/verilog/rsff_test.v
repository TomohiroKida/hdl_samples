module rsff_test;

   parameter   CYCLE = 100;

   reg   [3:0]       R, S;
   wire  [3:0]          Q;
   wire        Q0, Q0_tmp;

   integer              I;

   rsff_inst i0(R, S, Q);

   initial begin
      for (I=0; I<=15; I=I+1) begin
         R=I;
         S=17-I;
         #CYCLE;
      end
      $finish;
   end

   //assign Q0      = ~(R[1] | Q0_tmp);
   //assign Q0_tmp  = ~(S[1] | Q0);

   initial begin
      $monitor($time,," R0=%b S0=%b Q0=%b", R, S, Q);
   end

endmodule
