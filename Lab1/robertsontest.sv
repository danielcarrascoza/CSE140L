#! /opt/homebrew/Cellar/icarus-verilog/11.0/bin/vvp
:ivl_version "11.0 (stable)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "/opt/homebrew/Cellar/icarus-verilog/11.0/lib/ivl/system.vpi";
:vpi_module "/opt/homebrew/Cellar/icarus-verilog/11.0/lib/ivl/vhdl_sys.vpi";
:vpi_module "/opt/homebrew/Cellar/icarus-verilog/11.0/lib/ivl/vhdl_textio.vpi";
:vpi_module "/opt/homebrew/Cellar/icarus-verilog/11.0/lib/ivl/v2005_math.vpi";
:vpi_module "/opt/homebrew/Cellar/icarus-verilog/11.0/lib/ivl/va_math.vpi";
S_0x148f041c0 .scope module, "addsub" "addsub" 2 4;
 .timescale 0 0;
    .port_info 0 /INPUT 8 "dataa";
    .port_info 1 /INPUT 8 "datab";
    .port_info 2 /INPUT 1 "add_sub";
    .port_info 3 /OUTPUT 8 "result";
P_0x6000023a0300 .param/l "dw" 0 2 4, +C4<00000000000000000000000000001000>;
o0x150018010 .functor BUFZ 1, C4<z>; HiZ drive
v0x6000004a4090_0 .net "add_sub", 0 0, o0x150018010;  0 drivers
o0x150018040 .functor BUFZ 8, C4<zzzzzzzz>; HiZ drive
v0x6000004a4120_0 .net "dataa", 7 0, o0x150018040;  0 drivers
o0x150018070 .functor BUFZ 8, C4<zzzzzzzz>; HiZ drive
v0x6000004a41b0_0 .net "datab", 7 0, o0x150018070;  0 drivers
v0x6000004a4240_0 .var "result", 7 0;
E_0x6000038ac2a0 .event edge, v0x6000004a4090_0, v0x6000004a4120_0, v0x6000004a41b0_0;
    .scope S_0x148f041c0;
T_0 ;
    %wait E_0x6000038ac2a0;
    %load/vec4 v0x6000004a4090_0;
    %pad/u 32;
    %cmpi/e 1, 0, 32;
    %jmp/0xz  T_0.0, 4;
    %load/vec4 v0x6000004a4120_0;
    %load/vec4 v0x6000004a41b0_0;
    %add;
    %store/vec4 v0x6000004a4240_0, 0, 8;
    %jmp T_0.1;
T_0.0 ;
    %load/vec4 v0x6000004a4120_0;
    %load/vec4 v0x6000004a41b0_0;
    %sub;
    %store/vec4 v0x6000004a4240_0, 0, 8;
T_0.1 ;
    %jmp T_0;
    .thread T_0, $push;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "addsub.sv";
