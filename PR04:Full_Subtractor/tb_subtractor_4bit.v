module tb_adder_4bit ();

  reg [3:0] A, B;
  reg C_in;
  wire [3:0] Sum;
  wire C_out;

  adder_4bit uut(.A(A), .B(B), .C_in(C_in), .Sum(Sum), .C_out(C_out));

  initial begin
    A = 4'h8;
    B = 4'h1;
    C_in = 1'b0;
    #10 A = 4'h4;
    B = 4'h3;
    C_in = 1'b0;
    #10 A = 4'h5;
    B = 4'h6;
    C_in = 1'b0;
    #10 A = 4'hA;
    B = 4'hA;
    C_in = 1'b0;
    #10 A = 4'hC;
    B = 4'hB;
    C_in = 1'b1;
    #10 A = 4'h2;
    B = 4'h3;
    C_in = 1'b1;
    #10 A = 4'hE;
    B = 4'hD;
    C_in = 1'b1;
    #10 A = 4'hF;
    B = 4'hF;
    C_in = 1'b1;
    #10 $finish();
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_adder_4bit);
  end

  initial begin
    $display("---------------------------------------------------------------------------------");
    $display("|\tA\t|\tB\t|\tC_in\t|\tSum\t|\tC_out\t|");
    $display("---------------------------------------------------------------------------------");
    $monitor("|\t%0h\t|\t%0h\t|\t%0h\t|\t%0h\t|\t%0h\t|", A, B, C_in, Sum, C_out);
  end
endmodule
