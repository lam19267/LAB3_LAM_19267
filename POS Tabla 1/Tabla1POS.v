
module Tabla1POS();


reg A, B, C;
wire n1, n2, n3, o1, o2, o3, out;


not na(n1, A);
not nb(n2, B);
not nc(n3, C);
or oa(o1, A, B, n3);
or ob(o2, A, n2, n3);
or oc(o3, n1, n2, C);
and an(out, o1, o2, o3);

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
    $dumpfile("Tabla1POS_tb.vcd");
    $dumpvars(0, Tabla1POS);
  end

endmodule
