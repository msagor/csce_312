module first_module(s,c, a, b);
    input    a, b;
    output   s,c;
    

    
    and    and1(c, a, b);
    xor     xor1(s,a,b);
endmodule



module test_first();              /* test bench module for first_module() */
    reg    a, b;
    wire   s,c;

    first_module fm(s,c,a,b);

    initial begin
        $monitor ($time,"\ta=%b\tb=%b\ts=%b\tc=%b",a,b,s,c);
        a = 0; b = 0;
        #1 
        a = 0; b = 1;
        #1
        a = 1; b = 0;
        #1
        a = 1; b = 1;
        #1 
        $finish;
    end
endmodule