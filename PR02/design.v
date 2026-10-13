`timescale 1ns/1ps

module circuit (
    input  A,
    B,
    C,
    D,
    output Z
);

  wire w1, w2, E, F;

  assign #5 w1 = (A & B & C);
  assign #5 w2 = ~(B | C);

  assign #5 E = w1 | D;
  assign #5 F = ~(A & w2);

  assign #2 Fbar = ~(F);

  assign #5 Z = E ^ Fbar;
endmodule

