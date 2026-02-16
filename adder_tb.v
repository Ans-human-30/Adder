`timescale 1ns / 1ps
`include "full_adder.v"

module full_adder_tb;

    reg a;
    reg b;
    reg cin;
    wire sum;
    wire cout;

    full_adder out
    (
        .a(a), 
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $dumpfile("adder_sim.vcd");
        $dumpvars;
    end

    initial begin
        a = 1'b0; b = 1'b0; cin=1'b0; #10;
        $display("A=%d, B=%d, Cin=%d, Sum=%d, Cout=%d", a, b, cin, sum, cout);

        a = 1'b0; b = 1'b1; cin=1'b0; #10;
        $display("A=%d, B=%d, Cin=%d, Sum=%d, Cout=%d", a, b, cin, sum, cout);

        a = 1'b1; b = 1'b0; cin=1'b0; #10;
        $display("A=%d, B=%d, Cin=%d, Sum=%d, Cout=%d", a, b, cin, sum, cout);

        a = 1'b1; b = 1'b1; cin=1'b0; #10;
        $display("A=%d, B=%d, Cin=%d, Sum=%d, Cout=%d", a, b, cin, sum, cout);

        a = 1'b0; b = 1'b0; cin=1'b1; #10;
        $display("A=%d, B=%d, Cin=%d, Sum=%d, Cout=%d", a, b, cin, sum, cout);

        a = 1'b0; b = 1'b1; cin=1'b1; #10;
        $display("A=%d, B=%d, Cin=%d, Sum=%d, Cout=%d", a, b, cin, sum, cout);

        a = 1'b1; b = 1'b0; cin=1'b1; #10;
        $display("A=%d, B=%d, Cin=%d, Sum=%d, Cout=%d", a, b, cin, sum, cout);

        a = 1'b1; b = 1'b1; cin=1'b1; #10;
        $display("A=%d, B=%d, Cin=%d, Sum=%d, Cout=%d", a, b, cin, sum, cout);

        $finish;
    end
endmodule