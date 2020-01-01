module E_DFF_TEST;

   parameter WIDTH = 4;
   parameter CYCLE = 100;

   reg CLK, EN;
   reg [WIDTH-1:0] DIN;
   wire [WIDTH-1:0] DOUT;
   integer 			I;

   E_DFF #(WIDTH) I0(.CLK(CLK), .D(DIN), .EN(EN), .Q(DOUT));

   always #(CYCLE/2)
      CLK = ~CLK;

   always #(CYCLE)
      EN = ~EN;

   initial begin
      CLK = 1'b0;
      EN  = 1'b0;
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
      $monitor($time,," CLK=%b DIN=%b EN=%b DOUT=%b", CLK, DIN, EN, DOUT);
   end

endmodule
