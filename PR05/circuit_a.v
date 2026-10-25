module circuit_a (
    input  A,
    B,
    C,
    D,
    output G
);

  wire E, F;

  assign E = A && B;
  assign F = E || C;
  assign G = F && D;
endmodule

