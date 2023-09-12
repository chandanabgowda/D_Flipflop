`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2023 22:18:35
// Design Name: 
// Module Name: dff
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


module dff(
input d, clk, rst,
    output reg q, q_bar
);

    always @(posedge clk)
     begin
        if (rst) 
        begin
            q <= 0;
        end 
        else 
        begin
            q <= d;
        end
    

     q_bar = ~q;
end




endmodule
