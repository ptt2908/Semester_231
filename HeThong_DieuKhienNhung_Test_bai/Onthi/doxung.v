module doxung(clk,PULSEIN,MODE,D,cnt);
input clk, PULSEIN; 
input [1:0] MODE;
output reg [15:0] D;
reg [15:0] temp = 0;
output reg [8:0] cnt = 0;
reg PREPULSEIN = 0;
always @(posedge clk) begin
PREPULSEIN <= PULSEIN;
temp <= temp + 1;
case(MODE)
	1: if({PREPULSEIN,PULSEIN} == 2'b01) begin
	D <= temp;
	temp <= 0; end
	
	2: if({PREPULSEIN,PULSEIN} == 2'b01) begin
	cnt = cnt + 1;
	if(cnt == 2) begin
	cnt = 0;
	D <= temp;
	temp <= 0; end
	end
endcase
end
endmodule
