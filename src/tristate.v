`default_nettype none
`timescale 1ns/1ns
`ifdef COCTB
`include "/home/andres/asic_tools/pdk/sky130A/libs.ref/sky130_fd_sc_hd/verilog/primiives.v"
`include "/home/andres/asic_tools/pdk/sky130A/libs.ref/sky130_fd_sc_hd/verilog/sky130_fd_sc_hd.v"
`endif

module tristate(
    input  A   ,
    input  TE_B,
    output Z  
    );

wire OUT1;

//    sky130_fd_sc_hd__ebufn_4 _0_ ( .A(A), .Z(Z), .TE_B(TE_B));
sky130_fd_sc_hd__ebufn_4 tr1(
    .Z(Z)   ,
    .A (A)  ,
    .TE_B(TE_B),
    .VPWR(1'b1),
    .VGND(1'b0),
    .VPB(1'b0) ,
    .VNB(1'b0)
);





endmodule
