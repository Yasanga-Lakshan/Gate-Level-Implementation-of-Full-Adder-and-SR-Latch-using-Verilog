`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/18/2024 02:58:48 PM
// Design Name: 
// Module Name: SR_Latch_TB
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


module sr_latch_TB;

reg S, R;
wire Q, Q_bar;

sr_latch dut (
    .S(S), 
    .R(R), 
    .Q(Q), 
    .Q_bar(Q_bar)
);

initial begin
    S = 1; R = 1; #10;
    S = 1; R = 0; #10;
    S = 1; R = 1; #10;
    S = 0; R = 1; #10;
    $finish;
end
             
endmodule

