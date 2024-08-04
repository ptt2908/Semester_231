module xuat_xung(clk, PulseOut, mode);
input clk;
input [1:0] mode;
output reg PulseOut;
reg [24:0] cnt = 0;
always @(posedge clk) begin
cnt = cnt + 1;
case (mode)
0: begin
   if(cnt<501) PulseOut = 1;
   else if(cnt<1001) PulseOut = 0;
   else cnt = 0;
   end
1: begin
   if(cnt<2501) PulseOut = 1;
   else if(cnt<5001) PulseOut = 0;
   else cnt = 0;
   end
2: begin
   if(cnt<1001) PulseOut = 1;
   else if(cnt<2001) PulseOut = 0;
   else cnt = 0;
   end
3: begin
   if(cnt<5000001) PulseOut = 1;
   else if(cnt<10000001) PulseOut = 0;
   else cnt = 0;
   end
default: PulseOut = 0;
endcase
end
endmodule
