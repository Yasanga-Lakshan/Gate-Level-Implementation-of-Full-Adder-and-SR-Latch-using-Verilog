`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/18/2024 02:53:00 PM
// Design Name: 
// Module Name: sr_latch
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


module sr_latch(
    input S, 
    input R, 
    output Q, 
    output Q_bar
);

// Gate-level implementation
wire S_bar, R_bar;
not(R_bar, R);
not(S_bar, S);
nand (Q, S_bar, Q_bar);
nand (Q_bar, R_bar, Q);

endmodule

