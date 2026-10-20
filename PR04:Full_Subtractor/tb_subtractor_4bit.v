module tb_subtractor_4bit ();

  reg [3:0] A, B;
  reg Borrow_in;
  wire [3:0] Diff;
  wire Borrow_out;

  subtractor_4bit uut(.A(A), .B(B), .Borrow_in(Borrow_in), .Diff(Diff), .Borrow_out(Borrow_out));

  initial begin
    A = 4'h8;
    B = 4'h1;
    Borrow_in = 1'b0;
    #10 A = 4'h4;
    B = 4'h3;
    Borrow_in = 1'b0;
    #10 A = 4'h5;
    B = 4'h6;
    Borrow_in = 1'b0;
    #10 A = 4'hA;
    B = 4'hA;
    Borrow_in = 1'b0;
    #10 A = 4'hC;
    B = 4'hB;
    Borrow_in = 1'b1;
    #10 A = 4'h2;
    B = 4'h3;
    Borrow_in = 1'b1;
    #10 A = 4'hE;
    B = 4'hD;
    Borrow_in = 1'b1;
    #10 A = 4'hF;
    B = 4'hF;
    Borrow_in = 1'b1;
    #10 $finish();
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_subtractor_4bit);
  end

  initial begin
    $display("---------------------------------------------------------------------------------");
    $display("|\tA\t|\tB\t|\tBorrow_in|\tDiff\t|\tBorrow_out");
    $display("---------------------------------------------------------------------------------");
    $monitor("|\t%0h\t|\t%0h\t|\t%0h\t|\t%0h\t|\t%0h\t|", A, B, Borrow_in, Diff, Borrow_out);
  end
endmodule
