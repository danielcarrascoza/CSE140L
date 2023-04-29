#! /c/Source/iverilog-install/bin/vvp
:ivl_version "12.0 (devel)" "(s20150603-1539-g2693dd32b)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "C:\iverilog\lib\ivl\system.vpi";
:vpi_module "C:\iverilog\lib\ivl\vhdl_sys.vpi";
:vpi_module "C:\iverilog\lib\ivl\vhdl_textio.vpi";
:vpi_module "C:\iverilog\lib\ivl\v2005_math.vpi";
:vpi_module "C:\iverilog\lib\ivl\va_math.vpi";
S_000002c297252830 .scope module, "mux3" "mux3" 2 3;
 .timescale 0 0;
    .port_info 0 /INPUT 8 "d0";
    .port_info 1 /INPUT 8 "d1";
    .port_info 2 /INPUT 8 "d2";
    .port_info 3 /INPUT 2 "s";
    .port_info 4 /OUTPUT 8 "y";
P_000002c297286390 .param/l "WIDTH" 0 2 3, +C4<00000000000000000000000000001000>;
o000002c297286fa8 .functor BUFZ 8, C4<zzzzzzzz>; HiZ drive
v000002c297253100_0 .net "d0", 7 0, o000002c297286fa8;  0 drivers
o000002c297286fd8 .functor BUFZ 8, C4<zzzzzzzz>; HiZ drive
v000002c2972529c0_0 .net "d1", 7 0, o000002c297286fd8;  0 drivers
o000002c297287008 .functor BUFZ 8, C4<zzzzzzzz>; HiZ drive
v000002c297252a60_0 .net "d2", 7 0, o000002c297287008;  0 drivers
o000002c297287038 .functor BUFZ 2, C4<zz>; HiZ drive
v000002c297252b00_0 .net "s", 1 0, o000002c297287038;  0 drivers
v000002c2973bb380_0 .var "y", 7 0;
E_000002c297286b10 .event anyedge, v000002c297252b00_0, v000002c297252a60_0, v000002c2972529c0_0, v000002c297253100_0;
    .scope S_000002c297252830;
T_0 ;
    %wait E_000002c297286b10;
    %load/vec4 v000002c297252b00_0;
    %parti/s 1, 1, 2;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_0.0, 4;
    %load/vec4 v000002c297252a60_0;
    %store/vec4 v000002c2973bb380_0, 0, 8;
    %jmp T_0.1;
T_0.0 ;
    %load/vec4 v000002c297252b00_0;
    %parti/s 1, 0, 2;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_0.2, 4;
    %load/vec4 v000002c2972529c0_0;
    %store/vec4 v000002c2973bb380_0, 0, 8;
    %jmp T_0.3;
T_0.2 ;
    %load/vec4 v000002c297253100_0;
    %store/vec4 v000002c2973bb380_0, 0, 8;
T_0.3 ;
T_0.1 ;
    %jmp T_0;
    .thread T_0, $push;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "mux3.sv";
