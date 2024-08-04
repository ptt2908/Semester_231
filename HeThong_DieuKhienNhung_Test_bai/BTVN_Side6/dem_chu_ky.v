module do_dorongxung (clk, enc, D);
input clk, enc;
output [7:0] D;
reg [7:0] D = 8�h00; 
reg [7:0] temp = 8�h01;
reg pre_enc = 0;
always @(posedge clk) begin
pre_enc <= enc;
if ({pre_enc, enc} == 2�b11)
temp <= temp+1;
else if ({pre_enc, enc} == 2�b10) begin
D <= temp; temp <= 0;
end
end
endmodule
