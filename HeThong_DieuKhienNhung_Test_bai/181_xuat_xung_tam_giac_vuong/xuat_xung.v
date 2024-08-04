module xuat_xung(clk,Smode,Fmode,D);
input clk, Smode, Fmode;
output reg [15:0] D;
reg [7:0] cnt = 0;
reg [15:0] cnt0 = 0;
wire [7:0] N;
assign N = Smode?(Fmode?39:19):(Fmode?19:9);
always @(posedge clk) begin  
if(cnt<N) cnt = cnt + 1;
else begin
	 cnt = 0;  
	 if(!Smode) begin
	 if(cnt0 < 1000) cnt0 = cnt0 + 1;
	 else cnt0 = 0; end
	 
	 else begin
	 if(cnt0 < 500) cnt0 = cnt0 + 1;
	 else cnt0 = 0; end
	 D = cnt0;
	 end
end
endmodule
