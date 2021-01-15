module mux2_1(OUT,IN1,IN0,SELECT);
	output OUT;
	input IN1,IN0,SELECT;
	tri OUT;
	bufif1 (OUT,IN1,SELECT);
	bufif0 (OUT,IN0,SELECT);
endmodule

module half_adder ( output S, C, input x, y);
    xor (S, x, y);
    and (C, x, y);
endmodule
module full_adder ( output S, C, input x, y, CIN);
    wire S1, C1, C2;
    half_adder HA1 (S1, C1, x, y); // Instantiate HAs
    half_adder HA2 (S, C2, S1, CIN);
    or G1 (C, C2, C1);
endmodule

module one_bit_adder_subtracter (input CIN,B_INV,input A, B,output Sout,output Cout);
    wire second_operand;
    xor (second_operand,B,B_INV);
	//for the first one_bit_adder_subtracter B_INV=CIN=M
	//Depending on input M, addition(M=0) or substraction(M=1)
    //selected. XOR output is B if M=0 and 
    // B' if  M=1 (1s' complement)
    full_adder FA (Sout,Cout,A,second_operand,CIN); // If M=1, Cin=1 so we get 2s'                                             
	// complement of A
endmodule

module Logical_Operations (Outlogical,Input_1,Input_0,E1);
//Logical_Operations module that decides between bitwise XOR or AND via MUX
    input Input_1,Input_0,E1;
    output Outlogical;
	wire in1,in0;
	and (in0,Input_0,Input_1);
	xor (in1,Input_0,Input_1);
	mux2_1 exitlogical (Outlogical,in1,in0,E1);
endmodule

module ALU_1_BIT (A,B,B_INV,CIN,OP,OUTPUT,OPout,COUT,B_INVout);
//1 BIT ALU module that decides between arithmetic addition,subtraction or
//bitwise logical AND,XOR. 
	input B_INV,CIN,A,B;
	input [1:0] OP;
	output OUTPUT,COUT,B_INVout;
	output [1:0] OPout;
	supply1 vdd;
	wire secondMUXin0;
	wire secondMUXin1;
	wire E1;
	wire E0; 
	not (E0,OP[1]);
	nand (E1,E0,OP[0]);
	one_bit_adder_subtracter arithmetic (CIN,B_INV,A,B,secondMUXin0,COUT);
	Logical_Operations logical (secondMUXin1,A,B,E1);
	mux2_1 finalexit (OUTPUT,secondMUXin1,secondMUXin0,E0);
	bufif1 (OPout[0],OP[0],vdd);
	bufif1 (OPout[1],OP[1],vdd);
	bufif1 (B_INVout,B_INV,vdd);
endmodule


module hierarchical3BITALU (A,B,X,B_INV,Cin,OP,OUTPUT);
input [2:0] A,B;
input [1:0] OP;
input X,B_INV,Cin;
output [3:0] OUTPUT;
wire [1:0] opALU0,opALU1,opALU2;
wire COUT0,COUT1,COUT2;
wire B_INVout0,B_INVout1,B_INVout2;
wire overflow;
ALU_1_BIT bit0 (A[0],B[0],B_INV,Cin,OP,OUTPUT[0],opALU0,COUT0,B_INVout0);
ALU_1_BIT bit1 (A[1],B[1],B_INVout0,COUT0,opALU0,OUTPUT[1],opALU1,COUT1,B_INVout1);
ALU_1_BIT bit2 (A[2],B[2],B_INVout1,COUT1,opALU1,OUTPUT[2],opALU2,COUT2,B_INVout2);
xor (overflow,COUT2,B_INVout2); //In case of arithmetic subtraction (B_INV==1), we must inverse final COUT)
and (OUTPUT[3],X,overflow);	// If (X==0),final COUT is ignored (Bitwise Logical operation), else if (X==1), 
//overflow bit from XOR is delivered to MSB output
endmodule

