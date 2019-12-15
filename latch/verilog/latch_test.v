module latch_test;

   parameter   LATCH_WIDTH = 4;
   parameter   CYCLE       = 100;

   reg               CLK;
   reg   [WIDTH-1:0] DIN;
   wire  [WIDTH-1:0] DOUT;

   integer              I;

   latch #(.LATCH_WIDTH(LATHC_WIDTH)) i0(.D(DIN), .G(CLK), .Q(DOUT));

   always #(CYCLE/2)
      CLK = ~CLK;

   initial begin
      CLK = 1'b0;
      #(CYCLE/4);
      for (I=0; I<=15; I=I+1) begin
         if (I == 8)
            #(CYCLE/2);
         D=I;
         #(CYCLE);
      end
      $finish;
   end

   initial begin
      $monitor($time,," R0=%b S0=%b Q0=%b", R, S, Q);
   end

endmodule
