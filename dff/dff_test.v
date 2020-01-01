module DFF_TEST;

   parameter WIDTH = 4;
   parameter CYCLE = 100;

   reg CLK;
   reg [WIDTH-1:0] DIN;
   wire [WIDTH-1:0] DOUT;
   integer 			I;

   DFF #(WIDTH) I0(.CLK(CLK), .D(DIN), .Q(DOUT));

   always #(CYCLE/2)
      CLK = ~CLK;

   initial begin
      CLK = 1'b0;
      #(CYCLE/4);
      for (I=0; I<=15; I=I+1) begin
         if (I == 8)
            #(CYCLE/2);
         DIN <= I;
         #(CYCLE);
      end
      $finish;
   end

   initial begin
      $monitor($time,," CLK=%b DIN=%b DOUT=%b", CLK, DIN, DOUT);
   end

endmodule
