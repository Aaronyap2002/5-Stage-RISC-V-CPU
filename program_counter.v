`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2024 22:32:55
// Design Name: 
// Module Name: program_counter
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

// This module is just a simple counter that increments by 4 each cycle. 
// I have not considered flushing and multiplexing the pc to choose between the address when branch is taken vs branch not taken.
module program_counter(
    input wire clk,
    input wire reset,
    input wire [31:0] next_pc,
    output reg [31:0] pc
);

    always @(posedge clk or posedge reset) begin
        if (Reset)
            pc<= 32'h00000000;  // Reset to the start of memory
        else
            pc<=next_pc;
    end
endmodule