# 3-Bit-ALU-With-Overflow-Bit
3 Bit ALU With Overflow Bit implemented via DSCH 3.5 logic designer program , converted to Verilog file from which the physical layout was generated and simulated in Microwind. 
Implementation was also done directly with verilog programming in a hierarchical-modular method.
## How it operates
The name of the module is a bit misleading, as it does not only perform arithmetical operations, but also bitwise logical ones based on three inputs: OP0,OP1,X.
### Operations Supported
X=0 |OP1=0|OP0=0| Bitwise XOR
X=0 |OP1=0|OP0=1| Bitwise AND
X=1 |OP1=1|OP0=0| Arithmetic Binary Subtraction
X=1 |OP1=1|OP1=1| Arithmetic Binary Addition

It is obvious that X=0 signals a logical operation,whilst X=1 signals arithemtic operation.
Regarding the selection between Addition and Subtraction,it is implemented via the same full adder circuit based on the two's complement of one of the operands.
The transformation to complement of two is decided by Cin and B_inv signals in the classical way.
 * To make the above more clear, below are presented in the following order: 
  1. DSCH logical circuit diagrams(In a modular manner).
  2. Generated Verilog Code (slightly corrected)
  3. Microwind Physical Layout
  4. Verilog Code written from scratch in order to be modular.
  
  
