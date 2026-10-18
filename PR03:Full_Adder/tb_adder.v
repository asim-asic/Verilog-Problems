module tb_adder ();
  reg A, B, C;
  wire Sum, Carry;

  adder uut (
      .A(A),
      .B(B),
      .C(C),
      .Sum(Sum),
      .Carry(Carry)
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
    $dumpvars(0, tb_adder);
  end

  initial begin
    $display("---------------------------------------------------------------------------------");
    $display("|\tA\t|\tB\t|\tC\t|\tSum\t|\tCarry\t|");
    $display("---------------------------------------------------------------------------------");
    $monitor("|\t%0b\t|\t%0b\t|\t%0b\t|\t%0b\t|\t%0b\t|", A, B, C, Sum, Carry); 
  end
endmodule
