module xor_cmos (input A, B, output Y);

wire w1, w2;

supply1 Vdd;
supply0 Gnd;

// XOR using pass transistor logic (simplified)

nmos n1 (w1, B, A);
nmos n2 (w2, A, B);

pmos p1 (w1, B, A);
pmos p2 (w2, A, B);

assign Y = w1 | w2;

endmodule






module t_ff (input T, clk, output reg Q);

wire D;

xor_cmos x1 (.A(T), .B(Q), .Y(D));

always @(posedge clk)
    Q <= D;

endmodule