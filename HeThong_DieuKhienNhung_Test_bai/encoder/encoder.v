module encoder(clk, ENCA, D,clk1,temp);
input clk, ENCA;
output reg [15:0] D;
output reg clk1 = 0;
reg PRE_ENCA = 0,pre_clk1 = 0;
reg [15:0] cnt = 0;
output reg [15:0] temp = 0;
always @(posedge clk) begin
cnt = cnt + 1;
if (cnt < 5001) clk1 = 1;
else if (cnt < 10001) clk1 = 0;
else cnt = 0;
PRE_ENCA <= ENCA;
if({PRE_ENCA,ENCA} == 2'b01) temp = temp + 1;
pre_clk1 <= clk1;
if({pre_clk1,clk1} == 2'b01) begin
D <= temp;
temp <= 0;
end
end
endmodule
