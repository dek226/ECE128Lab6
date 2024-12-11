module SR_Latch(S, R, Q, Qbar);
	input S, R;
	output Q, Qbar;
	
	nor #1 N1(Q, R, Qbar);
	nor #1 N2(Qbar, S, Q);
endmodule


module SR_FlipFlop(clk, S, R, Q, Qbar);
	input clk, S, R;
	output reg Q, Qbar;
	
	always@(posedge clk or posedge R)
	begin
		if (R) 
		begin
			Q <= 0;
			Qbar <= 1;
		end
		else 
		begin
			Q <= S;
			Qbar <= ~S;
		end
	end
endmodule


module dff_async(d, rstn, clk, q);
	input d, rstn, clk;
	output reg q;
	
	always@(posedge clk)
	begin
	if (!rstn)
		q <= 0;
	else 
		q <= d;
	end
endmodule


module dff_sync(d, rstn, clk, q);
	input d, rstn, clk;
	output reg q;
	
	always@(posedge clk or negedge rstn)
	begin
	if (!rstn)
		q <= 0;
	else 
		q <= d;
	end
endmodule


module tff(clk, rstn, t, q);
	input clk, rstn, t;
	output reg q;
	
	always@(posedge clk)
	begin
		if (!rstn)
			q <= 0;
		else
		begin
			if(t)
				q <= ~q;
			else
				q <= q;
		end
	end
endmodule


module counter(clk, rstn, cnt);
	input clk, rstn;
	output reg [2:0] cnt;
	
	always@(posedge clk)
	begin
		if(rstn)
			cnt <= 3'b000;
		else
			cnt <= cnt + 3'b001;
	end
endmodule
