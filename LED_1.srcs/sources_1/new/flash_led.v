`timescale 1ns / 1ps
/* 
 *    Module Name: flash_led
 *    Module Function: Illustrate the functionalities of Vivado 2024.1.2 
 */

module flash_led #(
    parameter CNT_MAX=50_000_000
)

    (
        input               clk,
        input               rst_n,
        output reg [1:0]    led
    );
    reg [31:0] cnt;

    //***************cnt********************
    always@(posedge clk or negedge rst_n) begin
        if(!rst_n)
            cnt<='d0;
        else if(cnt==CNT_MAX-1'b1)
            cnt<='d0; 
        else
            cnt<=cnt+1'b1;
    end

    //**************led***********************
    always@(posedge clk or negedge rst_n) begin
        if(!rst_n)
            led<=2'b11;
        else if(cnt==CNT_MAX-1'b1)
            led<=~led;
        else
            led<=led;
    end

endmodule
