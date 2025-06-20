`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/18/2024 03:41:59 PM
// Design Name: 
// Module Name: Full_Add_4
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


module FullAdder_4bit (
    input [3:0] A,    // 4-bit input A
    input [3:0] B,    // 4-bit input B
    input Carry_in,        // Carry-in
    output [3:0] Sum, // 4-bit Sum output
    output Carry_out       // Final Carry-out
);
    wire c1, c2, c3;  // Internal carry wires

    // Instantiate 1-bit full adders
    fa0 fa0 (.A(A[0]), .B(B[0]), .Carry_in(Carry_in),   .Sum(Sum[0]), .Carry_out(c1));
    fa1 fa1 (.A(A[1]), .B(B[1]), .Carry_in(c1),    .Sum(Sum[1]), .Carry_out(c2));
    fa2 fa2 (.A(A[2]), .B(B[2]), .Carry_in(c2),    .Sum(Sum[2]), .Carry_out(c3));
    fa3 fa3 (.A(A[3]), .B(B[3]), .Carry_in(c3),    .Sum(Sum[3]), .Carry_out(Carry_out));

endmodule