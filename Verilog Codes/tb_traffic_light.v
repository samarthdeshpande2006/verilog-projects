`timescale 1ns/1ps

module tb_traffic_light();

    reg clk;
    reg reset;
    reg x;
    wire Qa, Qb;

    // Instantiate DUT
    traffic_light_controller uut (
        .clk(clk),
        .reset(reset),
        .x(x),
        .Qa(Qa),
        .Qb(Qb)
    );

    // Clock Generation
    always #5 clk = ~clk; // 10ns period

    initial begin
        // Initialize
        clk = 0;
        reset = 1;
        x = 0;

        // Apply reset
        #10 reset = 0;

        // Stay in RED (x = 0)
        #20;

        // Move to GREEN
        x = 1;
        #20;

        // Back to RED via YELLOW
        x = 0;
        #40;

        // Again trigger
        x = 1;
        #30;

        $finish;
    end

    // Monitor Output
    initial begin
        $monitor("Time=%0t | x=%b | Qa=%b Qb=%b", $time, x, Qa, Qb);
    end

endmodule