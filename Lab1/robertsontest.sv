#! /c/Source/iverilog-install/bin/vvp
:ivl_version "12.0 (devel)" "(s20150603-1539-g2693dd32b)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "C:\iverilog\lib\ivl\system.vpi";
:vpi_module "C:\iverilog\lib\ivl\vhdl_sys.vpi";
:vpi_module "C:\iverilog\lib\ivl\vhdl_textio.vpi";
:vpi_module "C:\iverilog\lib\ivl\v2005_math.vpi";
:vpi_module "C:\iverilog\lib\ivl\va_math.vpi";
S_0000026aa6c46d00 .scope module, "addsub" "addsub" 2 4;
 .timescale 0 0;
    .port_info 0 /INPUT 8 "dataa";
    .port_info 1 /INPUT 8 "datab";
    .port_info 2 /INPUT 1 "add_sub";
    .port_info 3 /OUTPUT 8 "result";
P_0000026aa6c484e0 .param/l "dw" 0 2 4, +C4<00000000000000000000000000001000>;
o0000026aa6ea6fd8 .functor BUFZ 1, C4<z>; HiZ drive
v0000026aa6c475f0_0 .net "add_sub", 0 0, o0000026aa6ea6fd8;  0 drivers
o0000026aa6ea7008 .functor BUFZ 8, C4<zzzzzzzz>; HiZ drive
v0000026aa6c46e90_0 .net "dataa", 7 0, o0000026aa6ea7008;  0 drivers
o0000026aa6ea7038 .functor BUFZ 8, C4<zzzzzzzz>; HiZ drive
v0000026aa6c46f30_0 .net "datab", 7 0, o0000026aa6ea7038;  0 drivers
v0000026aa6c46fd0_0 .var "result", 7 0;
E_0000026aa6c48660 .event anyedge, v0000026aa6c475f0_0, v0000026aa6c46e90_0, v0000026aa6c46f30_0;
    .scope S_0000026aa6c46d00;
T_0 ;
    %wait E_0000026aa6c48660;
    %load/vec4 v0000026aa6c475f0_0;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_0.0, 4;
    %load/vec4 v0000026aa6c46e90_0;
    %load/vec4 v0000026aa6c46f30_0;
    %add;
    %store/vec4 v0000026aa6c46fd0_0, 0, 8;
    %jmp T_0.1;
T_0.0 ;
    %load/vec4 v0000026aa6c46e90_0;
    %load/vec4 v0000026aa6c46f30_0;
    %sub;
    %store/vec4 v0000026aa6c46fd0_0, 0, 8;
T_0.1 ;
    %jmp T_0;
    .thread T_0, $push;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "addsub.sv";
