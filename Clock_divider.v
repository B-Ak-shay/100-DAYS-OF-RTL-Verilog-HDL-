`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2023 22:09:55
// Design Name: 
// Module Name: Clock_divider
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


module Clock_divider(clk,dby2,dby4,dby8,dby16,rst);

input clk,rst;
output reg dby2,dby4,dby8,dby16;
reg [3:0]count;
always@(posedge clk)
begin
    if(rst==0)
    count=4'b0000;
    else
    count=count+1;
    dby2=count[0];
    dby4=count[1];
    dby8=count[2];
    dby16=count[3];
end

endmodule
