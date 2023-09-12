`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2023 22:23:32
// Design Name: 
// Module Name: dff_tb
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


module dff_tb();

   reg d, clk, rst;
   wire q, q_bar;
   
   dff uut(.d(d), .clk(clk), .rst(rst), .q(q), .q_bar(q_bar));
   initial
   begin
     clk = 1'b0;
     forever #20 clk = ~clk;
       end
     initial
     begin
       rst = 1;d =0;
       #20 rst = 0;
       #20 d = 1;
       #20 rst = 1;
       #500 $finish;
       end
     
endmodule
