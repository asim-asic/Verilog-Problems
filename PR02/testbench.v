`timescale 1ns/1ps

module tb_circuit ();

  reg A, B, C, D;
  wire Z;

  circuit uut (
      .A(A),
      .B(B),
      .C(C),
      .D(D),
      .Z(Z)
  );

  initial begin
    A = 1'b0;
    B = 1'b0;
    C = 1'b0;
    D = 1'b0;

    #10 A = 1'b0;
    B = 1'b0;
    C = 1'b0;
    D = 1'b0;

    #10 A = 1'b0;
    B = 1'b0;
    C = 1'b0;
    D = 1'b0;

    #10 A = 1'b0;
    B = 1'b0;
    C = 1'b0;
    D = 1'b0;

    #10 A = 1'b0;
    B = 1'b0;
    C = 1'b0;
    D = 1'b0;

    #10 $finish();
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_circuit);
  end
endmodule
