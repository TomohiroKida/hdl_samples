module BCDCNT(CLK, RESET, LOAD, DATA, INC, COUNT);
   input CLK, RESET, LOAD, INC;
   input [3:0] DATA;
   output [3:0] COUNT;
   reg [3:0] 	COUNT;

   integer i;

   always @(posedge CLK or posedge RESET) begin
	  // NG (RESET == 1'b1) || (COUNT == 4'b9)
	  // when sequential circuit has non-synchronized reset,
	  // 1. you should descript non-synchronized reset signal in sensitibity-list other clock sig.
	  // 2. non-synchronized reset is highest order of reference.
      if(RESET == 1'b1)
         for(i=0;i<=3;i=i+1)
            COUNT[i] <= 0;
      else if(LOAD == 1'b1)
         COUNT <= DATA;
      else if(INC == 1'b1)
		if(COUNT == 4'd9)
		  COUNT <= 0;
		else
          COUNT <= COUNT + 4'd1;
      else
		if(COUNT == 4'd0)
		  COUNT <= 9;
		else
          COUNT <= COUNT - 4'd1;
   end
   
endmodule
