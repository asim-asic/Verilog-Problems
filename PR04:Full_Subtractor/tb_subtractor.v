module tb_subtractor ();
  reg A, B, C;
  wire Diff, Borrow;

  subtractor uut (
      .A(A),
      .B(B),
      .C(C),
      .Diff(Diff),
      .Borrow(Borrow)
  );

  initial begin
    A = 1'b0;
    B = 1'b0;
    C = 1'b0;
    #10 A = 1'b0;
    B = 1'b0;
    C = 1'b1;
    #10 A = 1'b0;
    B = 1'b1;
    C = 1'b0;
    #10 A = 1'b0;
    B = 1'b1;
    C = 1'b1;
    #10 A = 1'b1;
    B = 1'b0;
    C = 1'b0;
    #10 A = 1'b1;
    B = 1'b0;
    C = 1'b1;
    #10 A = 1'b1;
    B = 1'b1;
    C = 1'b0;
    #10 A = 1'b1;
    B = 1'b1;
    C = 1'b1;
    #10 $finish();
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_subtractor);
  end

  initial begin
    $display("---------------------------------------------------------------------------------");
    $display("|\tA\t|\tB\t|\tC\t|\tDiff\t|\tBorrow\t|");
    $display("---------------------------------------------------------------------------------");
    $monitor("|\t%0b\t|\t%0b\t|\t%0b\t|\t%0b\t|\t%0b\t|", A, B, C, Diff, Borrow); 
  end
endmodule
