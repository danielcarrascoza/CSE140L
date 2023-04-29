// 5:1 MULTIPLEXER	(combinational 5-way switch)
module mux5 (input        d0, d1, d2, d3, d4,
             input [2:0]  s, 
             output logic y);

always@(*)  // always @(*)    // always @(d0, d1, d2, d3, d4, s);
begin
case(s)
    3'd0:  y = d0;
    3'd1:  y = d1;
    3'd2:  y = d2;
    3'd3:  y = d3;
    3'd4:  y = d4;
    default: y = 0;
endcase
end


// fill in guts
// when using always_comb, be sure to cover all cases & use =, not <=
// case(s)
//     0: y = ...;
//	 ...
//	 default: y = ...;  // shorthand for last N cases with same output
// endcase
//  s      y
//  0	  d0		s = 3'b000
//  1	  d1
//  2	  d2
//  3	  d3
//  4	  d4
//  5	   0
//  6	   0
//  7	   0	    s = 3'b111
endmodule
