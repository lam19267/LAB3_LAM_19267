
module Tabla4SOP();


reg A, B, C, D;
wire n1, n2, n3, n4, r1, r2, r3, r4, r5, r6, r7, r8, r9, out;


not na(n1, A);
not nb(n2, B);
not nc(n3, C);
not nd(n4, D);
and A1(r1, n1, n2, n3, n4);
and A2(r2, n1, n2, C, n4);
and A3(r3, n1, n2, C, D);
and A4(r4, n1, B, C, n4);
and A5(r5, n1, B, C, D);
and A6(r6, A, n2, n3, n4);
and A7(r7, A, n2, C, n4);
or O1(out, r1, r2, r3, r4, r5, r6, r7);

initial begin
  $display("A B C D| Y");
  $display("-------");
  $monitor("%b %b %b %b | %b", A, B, C, D, out);
  A = 0; B = 0; C = 0; D = 0;
  #1 A = 0; B = 0; C = 0; D = 1;
  #1 A = 0; B = 0; C = 1; D = 0;
  #1 A = 0; B = 0; C = 1; D = 1;
  #1 A = 0; B = 1; C = 0; D = 0;
  #1 A = 0; B = 1; C = 0; D = 1;
  #1 A = 0; B = 1; C = 1; D = 0;
  #1 A = 0; B = 1; C = 1; D = 1;
  #1 A = 1; B = 0; C = 0; D = 0;
  #1 A = 1; B = 0; C = 0; D = 1;
  #1 A = 1; B = 0; C = 1; D = 0;
  #1 A = 1; B = 0; C = 1; D = 1;
  #1 A = 1; B = 1; C = 0; D = 0;
  #1 A = 1; B = 1; C = 0; D = 1;
  #1 A = 1; B = 1; C = 1; D = 0;
  #1 A = 1; B = 1; C = 1; D = 1;
  #1 $finish;
end

initial
  begin
    $dumpfile("Tabla4SOP_tb.vcd");
    $dumpvars(0, Tabla4SOP);
  end

endmodule
