module COUNTER(CLK, RESET, LOAD, DATA, INC, COUNT);
   parameter WIDTH = 1;
   input CLK, RESET, LOAD, INC;
   input [WIDTH-1:0] DATA;
   output [WIDTH-1:0] COUNT;
   reg [WIDTH-1:0] 	  COUNT;

   integer i;

   always @(posedge CLK or posedge RESET) begin
      if(RESET)
         for(i=0;i<=WIDTH-1;i=i+1)
            COUNT[i] <= 0;
      else if(LOAD)
         COUNT <= DATA;
      else if(INC)
         COUNT <= COUNT + 1;
      else 
         COUNT <= COUNT - 1;
   end
   
endmodule
