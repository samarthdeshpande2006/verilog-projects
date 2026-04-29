module traffic_light_controller (
    input clk,
    input reset,
    input x,
    output Qa,
    output Qb
);

    wire Da, Db;

    // Instantiate D Flip-Flops (Structural Part)
    d_ff dff1 (.clk(clk), .reset(reset), .d(Da), .q(Qa));
    d_ff dff2 (.clk(clk), .reset(reset), .d(Db), .q(Qb));

    // Next State Logic (Behavioral Part)
    reg next_Qa, next_Qb;

    always @(*) begin
        case ({Qa, Qb})
            2'b00: begin // RED
                if (x)
                    {next_Qa, next_Qb} = 2'b01; // GREEN
                else
                    {next_Qa, next_Qb} = 2'b00;
            end

            2'b01: begin // GREEN
                {next_Qa, next_Qb} = 2'b10; // YELLOW
            end

            2'b10: begin // YELLOW
                {next_Qa, next_Qb} = 2'b00; // RED
            end

            default: begin
                {next_Qa, next_Qb} = 2'b00;
            end
        endcase
    end

    // Assign next states to D inputs
    assign Da = next_Qa;
    assign Db = next_Qb;

endmodule