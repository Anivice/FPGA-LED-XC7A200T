`timescale 1ns / 1ps

module tb_flash_led();
    reg         clk;
    reg         rst_n;
    wire [1:0]  led;

    flash_led #(
        .CNT_MAX(5000)
    ) flash_led
    (
        .clk(clk),
        .rst_n(rst_n),
        .led(led)
    );

    initial begin
        clk=1;
        forever begin
            #10 clk=~clk;
        end
    end

    initial begin
        rst_n=0;
        repeat(20) @(posedge clk);
        rst_n=1;
    end
endmodule
