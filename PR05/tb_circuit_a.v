module tb_circuit_a ();

  reg A, B, C, D;
  wire G;

  circuit_a uut (
      .A(A),
      .B(B),
      .C(C),
      .D(D),
      .G(G)
  );

  initial begin
    #10 A = 1'b0;
    B = 1'b0;
    C = 1'b0;
    D = 1'b0;
    #10 A = 1'b0;
    B = 1'b0;
    C = 1'b0;
    D = 1'b1;
    #10 A = 1'b0;
    B = 1'b0;
    C = 1'b1;
    D = 1'b0;
    #10 A = 1'b0;
    B = 1'b0;
    C = 1'b1;
    D = 1'b1;
    #10 A = 1'b0;
    B = 1'b1;
    C = 1'b0;
    D = 1'b0;
    #10 A = 1'b0;
    B = 1'b1;
    C = 1'b0;
    D = 1'b1;
    #10 A = 1'b0;
    B = 1'b1;
    C = 1'b1;
    D = 1'b0;
    #10 A = 1'b0;
    B = 1'b1;
    C = 1'b1;
    D = 1'b1;
    #10 A = 1'b1;
    B = 1'b0;
    C = 1'b0;
    D = 1'b0;
    #10 A = 1'b1;
    B = 1'b0;
    C = 1'b0;
    D = 1'b1;
    #10 A = 1'b1;
    B = 1'b0;
    C = 1'b1;
    D = 1'b0;
    #10 A = 1'b1;
    B = 1'b0;
    C = 1'b1;
    D = 1'b1;
    #10 A = 1'b1;
    B = 1'b1;
    C = 1'b0;
    D = 1'b0;
    #10 A = 1'b1;
    B = 1'b1;
    C = 1'b0;
    D = 1'b1;
    #10 A = 1'b1;
    B = 1'b1;
    C = 1'b1;
    D = 1'b0;
    #10 A = 1'b1;
    B = 1'b1;
    C = 1'b1;
    D = 1'b1;
    #10 $finish();
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_circuit_a);
  end
endmodule
