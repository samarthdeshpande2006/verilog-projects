module cmos_inverter (input A, output Y);

supply1 Vdd;
supply0 Gnd;

pmos p1 (Y, Vdd, A); // PMOS: ON when A=0
nmos n1 (Y, Gnd, A); // NMOS: ON when A=1

endmodule