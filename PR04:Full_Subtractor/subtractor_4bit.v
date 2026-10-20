module subtractor_4bit (
    input [3:0] A,
    B,
    input Borrow_in,
    output [3:0] Diff,
    output Borrow_out
);

  wire [3:1] Borrow;

  // Instatitaing fou, 1-bit adder
  subtractor SUB0 (
      .A(A[0]),
      .B(B[0]),
      .C(Borrow_in),
      .Diff(Diff[0]),
      .Borrow(Borrow[1])
  );
  subtractor SUB1 (
      .A(A[1]),
      .B(B[1]),
      .C(Borrow[1]),
      .Diff(Diff[1]),
      .Borrow(Borrow[2])
  );
  subtractor SUB2 (
      .A(A[2]),
      .B(B[2]),
      .C(Borrow[2]),
      .Diff(Diff[2]),
      .Borrow(Borrow[3])
  );
  subtractor SUB3 (
      .A(A[3]),
      .B(B[3]),
      .C(Borrow[3]),
      .Diff(Diff[3]),
      .Borrow(Borrow_out)
  );

endmodule

