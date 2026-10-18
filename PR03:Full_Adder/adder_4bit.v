module adder_4bit (
    input [3:0] A,
    B,
    input C_in,
    output [3:0] Sum,
    output C_out
);

  wire [3:1] C;

  // Instatitaing fou, 1-bit adder
  adder ADDER0 (
      .A(A[0]),
      .B(B[0]),
      .C(C_in),
      .Sum(Sum[0]),
      .Carry(C[1])
  );
  adder ADDER1 (
      .A(A[1]),
      .B(B[1]),
      .C(C[1]),
      .Sum(Sum[1]),
      .Carry(C[2])
  );
  adder ADDER2 (
      .A(A[2]),
      .B(B[2]),
      .C(C[2]),
      .Sum(Sum[2]),
      .Carry(C[3])
  );
  adder ADDER3 (
      .A(A[3]),
      .B(B[3]),
      .C(C[3]),
      .Sum(Sum[3]),
      .Carry(C_out)
  );

endmodule

