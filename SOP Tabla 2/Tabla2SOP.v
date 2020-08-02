
module Tabla2SOP();


reg A, B, C;
wire n1, n2, n3, r1, r2, r3, out;


not na(n1, A);
not nb(n2, B);
not nc(n3, C);
and A1(r1, n1, n2, C);
and A2(r2, A, B, n3);
and A3(r3, A, B, C);

or O1(out, r1, r2, r3);

initial begin
  $display("A B C| Y");
  $display("-------");
  $monitor("%b %b %b | %b", A, B, C, out);
  A = 0; B = 0; C = 0;
  #1 A = 0; B = 0; C = 1;
  #1 A = 0; B = 1; C = 0;
  #1 A = 0; B = 1; C = 1;
  #1 A = 1; B = 0; C = 0;
  #1 A = 1; B = 0; C = 1;
  #1 A = 1; B = 1; C = 0;
  #1 A = 1; B = 1; C = 1;

  #1 $finish;
end

initial
  begin
    $dumpfile("Tabla2SOP_tb.vcd");
    $dumpvars(0, Tabla2SOP);
  end

endmodule
