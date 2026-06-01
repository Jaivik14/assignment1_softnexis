`timescale 1ns/1ps

module tb_full_adder;

    reg A, B, Cin;
    wire Sum, Cout;

    // Instantiate Full Adder
    full_adder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin

        // Generate VCD file for GTKWave
        $dumpfile("full_adder1.vcd");
        $dumpvars(0, tb_full_adder);

        // Display header
        $display("A B Cin | Sum Cout");
        $display("------------------");

        // Test Case 1
        A = 0; B = 0; Cin = 0; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        // Test Case 2
        A = 0; B = 0; Cin = 1; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        // Test Case 3
        A = 0; B = 1; Cin = 0; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        // Test Case 4
        A = 0; B = 1; Cin = 1; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        // Test Case 5
        A = 1; B = 0; Cin = 0; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        // Test Case 6
        A = 1; B = 0; Cin = 1; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        // Test Case 7
        A = 1; B = 1; Cin = 0; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        // Test Case 8
        A = 1; B = 1; Cin = 1; #10;
        $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

        $finish;

    end

endmodule