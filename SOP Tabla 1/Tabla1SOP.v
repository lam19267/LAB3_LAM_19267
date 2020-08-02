
module Tabla1SOP();


reg A, B, C;
wire n1, n2, n3, r1, r2, r3, r4, r5, out;


not na(n1, A);
not nb(n2, B);
not nc(n3, C);
and A1(r1,n1, n2, n3);
and A2(r2,n1, B, n3);
and A3(r3,A, n2, n3);
and A4(r4, A, n2, C);
and A5(r5, A, B, C);
or O1(out, r1, r2, r3, r4, r5);

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
    $dumpfile("Tabla1SOP_tb.vcd");
    $dumpvars(0, Tabla1SOP);
  end

endmodule
