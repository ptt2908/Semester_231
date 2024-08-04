module adc_read(clk, D, Start, LED_TR, LED_CH, LED_DV);
input clk;
input [7:0] D;
output reg Start;
output reg [6:0] LED_TR,LED_CH,LED_DV;
//output reg [6:0] LED_CH;
//output reg [6:0] LED_DV;
reg [15:0] cnt = 0;
reg [3:0] a,b,c = 0;
parameter s0 = 7'b0111111, s1 = 7'b0000110, s2 = 7'b1011011, s3 = 7'b1001111, s4 = 7'b1100110, 
s5 = 7'b1101101, s6 = 7'b1111101, s7 = 7'b0000111, s8 = 7'b1111111, s9 = 7'b1101111;
always @(posedge clk) begin
cnt = cnt + 1;
if (cnt<11) Start = 1;
else if(cnt<101) Start = 0;
else if (101 < cnt < 1001) begin 
Start = 0;    //chu ky LED 1ms,  de yeu cau 50ms (chinh lai 50001)
a = D/100;
b = (D%100)/10;
c = D%10;
case(a)
0: LED_TR = s0;
1: LED_TR = s1;
2: LED_TR = s2;
3: LED_TR = s3;
4: LED_TR = s4;
5: LED_TR = s5;
6: LED_TR = s6;
7: LED_TR = s7;
8: LED_TR = s8;
9: LED_TR = s9;
endcase
case(b)
0: LED_CH = s0;
1: LED_CH = s1;
2: LED_CH = s2;
3: LED_CH = s3;
4: LED_CH = s4;
5: LED_CH = s5;
6: LED_CH = s6;
7: LED_CH = s7;
8: LED_CH = s8;
9: LED_CH = s9;
endcase
case(c)
0: LED_DV = s0;
1: LED_DV = s1;
2: LED_DV = s2;
3: LED_DV = s3;
4: LED_DV = s4;
5: LED_DV = s5;
6: LED_DV = s6;
7: LED_DV = s7;
8: LED_DV = s8;
9: LED_DV = s9;
endcase
end
else cnt = 0;
end
endmodule
