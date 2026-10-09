# Problem

Given the concurrent Verilog statements:
assign #3 B = A && C;
assign #2 C = !B;
(a) Draw the circuit the statements represent.
(b) Draw a timing diagram if initially A = B = 0 and C = 1, and A changes to 1 at time 5 ns.
