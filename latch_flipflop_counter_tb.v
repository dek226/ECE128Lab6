`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2024 02:43:30 PM
// Design Name: 
// Module Name: memory_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
/**
module SR_tb;
    reg R, S;
    wire Q1, Q1bar, Q2, Q2bar;
    reg clk;
    
    SR_Latch DUT1(S, R, Q1, Q1bar);
    SR_FlipFlop DUT2(clk, S, R, Q2, Q2bar);
    
    initial begin
        clk = 0;
        forever #3 clk = ~clk;
    end
    
    initial begin
        R=0; S=0;
        #5 S=1;
        #5 S=0;
        #5 R=1;
        #5 R=0; S=1;
        #5 S=0; R=1;
        #5 R=0;
        #5 R=1; S=1;
        #10 $stop;
    end
        
endmodule
*/
/**
module dff_tb;
    reg clk, d, rstn;
    //reg [2:0] delay;
    wire q1, q2;
    
    dff_async DUT1(d, rstn, clk, q1);
    dff_sync DUT2(d, rstn, clk, q2);
    always #10 clk = ~clk;
    
    initial begin
        clk = 0;
        d = 1;
        rstn = 1;
        #20 rstn=0;
        #20 rstn=1;
        #20 d=0;
        #20 d=1;
        #20 rstn=0; d=0;
        #20 d=1;
        
        
        
    end
        
endmodule
*/
/**
module counter_tb();
    reg clk, rstn;
	wire q1, q2, q3;
	
	counters DUT(clk, rstn, q1, q2, q3);
	initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
    rstn=0;
    #5 rstn=1;
    #5 rstn=0;
    #30 rstn=1;
    #90 rstn=0;
    #120 $stop;
    end

endmodule
*/
/**
module memory_tb;
    reg clk_in;
    wire clk_out;
    
    clock_divider DUT(clk_in, clk_out);
    initial begin
        clk_in = 0;
        forever #10 clk_in = ~clk_in;
    end

endmodule
*/
