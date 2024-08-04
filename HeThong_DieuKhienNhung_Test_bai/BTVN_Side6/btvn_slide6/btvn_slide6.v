module do_dolechpha (clk, encA, encB, D);
input clk, encA, encB;
output [7:0] D;
reg [7:0] D = 8'h00, temp = 8'h00;
reg pre_enc = 0;
always @(posedge clk or posedge encB) begin
pre_enc <= encA;
if ({pre_enc, encA} == 2'b11)
temp <= temp+1;
else if ({pre_enc, encA} == 210) begin
D <= temp; temp <= 0;
end
end
endmodule
