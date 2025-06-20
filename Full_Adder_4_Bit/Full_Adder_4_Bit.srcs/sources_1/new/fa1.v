`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/18/2024 03:43:27 PM
// Design Name: 
// Module Name: fa1
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


module fa1(
    input A, 
    input B, 
    input Carry_in, 
    output Sum, 
    output Carry_out
);

// Internal wires
wire w1, w2, w3;

// Gate-level implementation
xor (w1, A, B);           // A ? B
xor (Sum, w1, Carry_in);  // (A ? B) ? Carry_in
and (w2, A, B);           // A · B
and (w3, w1, Carry_in);   // (A ? B) · Carry_in
or  (Carry_out, w2, w3);  // Carry_out = A·B + (A?B)·Carry_in

endmodule


