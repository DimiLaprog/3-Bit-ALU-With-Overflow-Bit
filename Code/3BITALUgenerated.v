// DSCH 3.5
// 14/01/2021 19:46:19
// C:\Users\dimla\OneDrive\Desktop\UNIVERSITY SEMESTERS\7th semester\ROH H\VLSI\dsch3p5\3BITALUallaxwrisbuffersstamux.sch

module 3BITALUallaxwrisbuffersstamux( A1,B_INV,CIN,B2,A2,B1,X,A0,
 OP1,OP0,B0,Output_2,out5,Output_0,Output_1,out6,
 Output_3);
 input A1,B_INV,CIN,B2,A2,B1,X,A0;
 input OP1,OP0,B0;
 output Output_2,out5,Output_0,Output_1,out6,Output_3;
 wire w5,w7,w9,w10,w11,w13,w15,w26;
 wire w27,w28,w29,w30,w31,w32,w33,w34;
 wire w35,w36,w37,w38,w39,w40,w41,w42;
 wire w43,w44,w45,w46,w47,w48,w49,w50;
 wire w51,w52,w53,w54,w55,w56,w57,w58;
 wire w59,w60,w61,w62,w63,w64,w65,w66;
 wire w67,w68,w69,w70,w71;
 wire antistrofione;
 wire antistrofitwo;
 wire antistrofitrhee;
 not (antistrofione,w36);
 not (antistrofitwo,w50);
 not (antistrofithree,w64);
 
 
 and #(3) and2_1(Output_3,w15,X);
 xor #(3) xor2_2(w15,w13,w11);
 xor #(3) xor2_1_3(w30,w7,B2);
 mux #(1) mux_2_4(Output_2,w31,w32,w9);
 and #(2) and2_3_5(w34,B2,A2);
 xor #(2) xor2_4_6(w35,B2,A2);
 mux #(1) mux_5_7(w32,w34,w35,antistrofione);
 not #(2) inv_6_8(w33,w9);
 nand #(1) nand2_7_9(w36,w10,w33);
 xor #(1) xor21_8_10(w31,w37,w5);
 xor #(1) xor22_9_11(w37,A2,w30);
 nand #(1) nand21_10_12(w38,w30,A2);
 nand #(1) nand22_11_13(w39,w30,w5);
 nand #(1) nand23_12_14(w40,A2,w5);
 nand #(1) nand31_13_15(w11,w38,w39,w40);
 not #(1) not1_14_16(w41,vdd);
 nmos #(2) nmos1_15_17(out5,w9,vdd); //  
 pmos #(2) pmos1_16_18(out5,w9,w41); //  
 not #(1) not1_17_19(w42,vdd);
 nmos #(2) nmos1_18_20(out6,w10,vdd); //  
 pmos #(2) pmos1_19_21(out6,w10,w42); //  
 not #(1) not1_20_22(w43,vdd);
 nmos #(2) nmos1_21_23(w13,w7,vdd); //  
 pmos #(2) pmos1_22_24(w13,w7,w43); //  
 xor #(3) xor2_1_25(w44,B_INV,B0);
 mux #(1) mux_2_26(Output_0,w45,w46,OP1);
 and #(2) and2_3_27(w48,B0,A0);
 xor #(2) xor2_4_28(w49,B0,A0);
 mux #(1) mux_5_29(w46,w48,w49,antistrofitwo);
 not #(2) inv_6_30(w47,OP1);
 nand #(1) nand2_7_31(w50,OP0,w47);
 xor #(1) xor21_8_32(w45,w51,CIN);
 xor #(1) xor22_9_33(w51,A0,w44);
 nand #(1) nand21_10_34(w52,w44,A0);
 nand #(1) nand22_11_35(w53,w44,CIN);
 nand #(1) nand23_12_36(w54,A0,CIN);
 nand #(2) nand31_13_37(w27,w52,w53,w54);
 not #(1) not1_14_38(w55,vdd);
 nmos #(3) nmos1_15_39(w26,OP1,vdd); //  
 pmos #(3) pmos1_16_40(w26,OP1,w55); //  
 not #(1) not1_17_41(w56,vdd);
 nmos #(3) nmos1_18_42(w28,OP0,vdd); //  
 pmos #(3) pmos1_19_43(w28,OP0,w56); //  
 not #(1) not1_20_44(w57,vdd);
 nmos #(3) nmos1_21_45(w29,B_INV,vdd); //  
 pmos #(3) pmos1_22_46(w29,B_INV,w57); //  
 xor #(3) xor2_1_47(w58,w29,B1);
 mux #(1) mux_2_48(Output_1,w59,w60,w26);
 and #(2) and2_3_49(w62,B1,A1);
 xor #(2) xor2_4_50(w63,B1,A1);
 mux #(1) mux_5_51(w60,w62,w63,antistrofithree);
 not #(2) inv_6_52(w61,w26);
 nand #(1) nand2_7_53(w64,w28,w61);
 xor #(1) xor21_8_54(w59,w65,w27);
 xor #(1) xor22_9_55(w65,A1,w58);
 nand #(1) nand21_10_56(w66,w58,A1);
 nand #(1) nand22_11_57(w67,w58,w27);
 nand #(1) nand23_12_58(w68,A1,w27);
 nand #(2) nand31_13_59(w5,w66,w67,w68);
 not #(1) not1_14_60(w69,vdd);
 nmos #(3) nmos1_15_61(w9,w26,vdd); //  
 pmos #(3) pmos1_16_62(w9,w26,w69); //  
 not #(1) not1_17_63(w70,vdd);
 nmos #(3) nmos1_18_64(w10,w28,vdd); //  
 pmos #(3) pmos1_19_65(w10,w28,w70); //  
 not #(1) not1_20_66(w71,vdd);
 nmos #(3) nmos1_21_67(w7,w29,vdd); //  
 pmos #(3) pmos1_22_68(w7,w29,w71); //  
endmodule

// Simulation parameters in Verilog Format
//always
//#200 A1=~A1;
//#400 B_INV=~B_INV;
//#800 CIN=~CIN;
//#1600 B2=~B2;
//#3200 A2=~A2;
//#6400 B1=~B1;
//#12800 X=~X;
//#25600 A0=~A0;
//#51200 OP1=~OP1;
//#102400 OP0=~OP0;
//#102400 B0=~B0;

// Simulation parameters
// A1 CLK 1 1
// B_INV CLK 2 2
// CIN CLK 4 4
// B2 CLK 8 8
// A2 CLK 16 16
// B1 CLK 32 32
// X CLK 64 64
// A0 CLK 128 128
// OP1 CLK 256 256
// OP0 CLK 512 512
// B0 CLK 1024 1024
