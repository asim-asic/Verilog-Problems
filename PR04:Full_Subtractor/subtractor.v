module subtractor (
    input  A,
    B,
    C,
    output Diff,
    Borrow
);

  assign Diff   = A ^ B ^ C;
  assign Borrow = (~A & B) | (B & C) | (~A & C);
endmodule
