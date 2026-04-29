module sr_ff (input S, R, output Q, Qbar);

wire n1, n2;
supply1 Vdd;
supply0 Gnd;

// NAND Gate 1
pmos p1 (n1, Vdd, S);
pmos p2 (n1, Vdd, Qbar);
nmos n1_1 (n1, n2, S);
nmos n1_2 (n2, Gnd, Qbar);

// NAND Gate 2
pmos p3 (Qbar, Vdd, R);
pmos p4 (Qbar, Vdd, Q);
nmos n2_1 (Qbar, n1, R);
nmos n2_2 (n1, Gnd, Q);

assign Q = n1;

endmodule