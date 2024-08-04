module do_dolechpha (clk, encA, encB, D);
input clk, encA, encB;
output [7:0] D;
reg [7:0] D = 8'h00; 
reg [7:0] temp = 8'h00;
reg pre_encA = 0, pre_encB = 0; 
reg en_temp = 0;
always @(posedge clk) begin
pre_encA <= encA;
pre_encB <= encB;
if ({pre_encA, encA} == 2'b01)
en_temp = 1;
if ({pre_encB, encB} == 2'b01) begin
D <= temp; en_temp <= 0;
end
if (en_temp == 1) 
temp <= (temp < 8'hFF) ? temp + 1 : 8'hFF;
else temp = 0; 
end
endmodule
