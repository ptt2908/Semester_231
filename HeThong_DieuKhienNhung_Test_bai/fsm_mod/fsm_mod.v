module fsm_mod(q1,q0,in,clk);
input clk,in;
output q1,q0;
reg q1,q0;

always @(posedge clk) begin
q1 <= in;
q0 <= in | q1;
end
endmodule
