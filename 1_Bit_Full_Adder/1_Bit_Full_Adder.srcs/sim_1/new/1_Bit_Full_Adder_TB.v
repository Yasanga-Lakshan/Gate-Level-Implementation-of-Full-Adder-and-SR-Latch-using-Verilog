`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/18/2024 02:31:26 PM
// Design Name: 
// Module Name: 1_Bit_Full_Adder_TB
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


module full_adder_TB;

reg A, B, Carry_in;
reg Sum, Carry_out;

full_adder dut(
        .A(A),
        .B(B),
        .Carry_in(Carry_in),
        .Sum(Sum),
        .Carry_out(Carry_out)
);

initial begin
    A = 1; B = 1; Carry_in = 1; #10;
    A = 0; B = 0; Carry_in = 0; #10;
    A = 1; B = 1; Carry_in = 0; #10;
    A = 0; B = 0; Carry_in = 1; #10;
    $finish;
end            
endmodule

