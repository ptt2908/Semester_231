module fsm_mod (q1, q0, in, clk);
output q1, q0;
input clk, in;
reg q1, q0;
always @(posedge clk) begin
q1 <= in;
q0 <= in | q1;
end
endmodule
