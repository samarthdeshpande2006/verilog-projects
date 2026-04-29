module alu_1bit (
    input A, B,
    input S0, S1,
    output Y, Cout
);

wire and_out, or_out, xor_out;
wire sum, carry;

// Logic operations
and_cmos a1 (.A(A), .B(B), .Y(and_out));
or_cmos  o1 (.A(A), .B(B), .Y(or_out));
xor_cmos x1 (.A(A), .B(B), .Y(xor_out));

// Half adder (switch-level logic)
assign sum   = xor_out;
assign carry = and_out;

// Multiplexer (simple logic selection)
assign Y = (S1==0 && S0==0) ? and_out :
           (S1==0 && S0==1) ? or_out  :
           (S1==1 && S0==0) ? xor_out :
                              sum;

assign Cout = (S1==1 && S0==1) ? carry : 0;

endmodule