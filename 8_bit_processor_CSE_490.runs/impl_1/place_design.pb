
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
42default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
4323.7622default:default2
0.0002default:default2
29112default:default2
343592default:defaultZ17-722h px? 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 1c4050e3d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.06 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2911 ; free virtual = 343592default:defaulth px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
4323.7622default:default2
0.0002default:default2
29112default:default2
343582default:defaultZ17-722h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?
9Poor placement for routing between an IO pin and BUFG. %s528*place2?
?This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	<MSGMETA::BEGIN::BLOCK>clk_IBUF_inst<MSGMETA::END> (IBUF.O) is locked to IOB_X0Y16
	<MSGMETA::BEGIN::BLOCK>clk_IBUF_BUFG_inst<MSGMETA::END> (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y0
"?
clk_IBUF_inst2?This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	:" (IBUF.O) is locked to IOB_X0Y16
	"Z
clk_IBUF_BUFG_inst:B (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y0
2default:default8Z30-574h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: dd6f4cc8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.85 ; elapsed = 00:00:01 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2854 ; free virtual = 343012default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 157fdd110
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.88 ; elapsed = 00:00:01 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2853 ; free virtual = 343002default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 157fdd110
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.89 ; elapsed = 00:00:01 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2853 ; free virtual = 343002default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 157fdd110
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.89 ; elapsed = 00:00:01 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2853 ; free virtual = 343002default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
C
.Phase 2.1 Floorplanning | Checksum: 157fdd110
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.90 ; elapsed = 00:00:01 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2852 ; free virtual = 342992default:defaulth px? 
x

Phase %s%s
101*constraints2
2.2 2default:default2)
Global Placement Core2default:defaultZ18-101h px? 
h
Eplace_design is not in timing mode. Skip physical synthesis in placer29*	placeflowZ46-29h px? 
K
6Phase 2.2 Global Placement Core | Checksum: 1333d2c14
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2882 ; free virtual = 343482default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 1333d2c14
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2882 ; free virtual = 343482default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 1333d2c14
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2882 ; free virtual = 343482default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1c4b76ebe
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2882 ; free virtual = 343482default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 1182fe110
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2882 ; free virtual = 343482default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 1182fe110
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2882 ; free virtual = 343482default:defaulth px? 


Phase %s%s
101*constraints2
3.5 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
Q
<Phase 3.5 Small Shape Detail Placement | Checksum: d30e6d77
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2872 ; free virtual = 343362default:defaulth px? 
u

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
G
2Phase 3.6 Re-assign LUT pins | Checksum: d30e6d77
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2872 ; free virtual = 343352default:defaulth px? 
?

Phase %s%s
101*constraints2
3.7 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
S
>Phase 3.7 Pipeline Register Optimization | Checksum: d30e6d77
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2871 ; free virtual = 343352default:defaulth px? 
C
.Phase 3 Detail Placement | Checksum: d30e6d77
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2875 ; free virtual = 343392default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
M
8Phase 4.1 Post Commit Optimization | Checksum: d30e6d77
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2884 ; free virtual = 343482default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
K
6Phase 4.2 Post Placement Cleanup | Checksum: d30e6d77
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2883 ; free virtual = 343472default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
E
0Phase 4.3 Placer Reporting | Checksum: d30e6d77
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2884 ; free virtual = 343472default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
4323.7622default:default2
0.0002default:default2
28842default:default2
343472default:defaultZ17-722h px? 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 1ac3b6027
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2884 ; free virtual = 343472default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 1ac3b6027
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2883 ; free virtual = 343472default:defaulth px? 
>
)Ending Placer Task | Checksum: 172b5082d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2883 ; free virtual = 343472default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
432default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
place_design: 2default:default2
00:00:062default:default2
00:00:122default:default2
4323.7622default:default2
0.0002default:default2
28872default:default2
343512default:defaultZ17-722h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
4323.7622default:default2
0.0002default:default2
28842default:default2
343482default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.052default:default2
00:00:00.042default:default2
4323.7622default:default2
0.0002default:default2
28702default:default2
343342default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2
k/home/csdue/kexinche/CSE_490/8_bit_processor_CSE_490/8_bit_processor_CSE_490.runs/impl_1/main_pc_placed.dcp2default:defaultZ17-1381h px? 
b
%s4*runtcl2F
2Executing : report_io -file main_pc_io_placed.rpt
2default:defaulth px? 
?
?report_io: Time (s): cpu = 00:00:00.09 ; elapsed = 00:00:00.24 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2840 ; free virtual = 34303
*commonh px? 
?
%s4*runtcl2z
fExecuting : report_utilization -file main_pc_utilization_placed.rpt -pb main_pc_utilization_placed.pb
2default:defaulth px? 

%s4*runtcl2c
OExecuting : report_control_sets -verbose -file main_pc_control_sets_placed.rpt
2default:defaulth px? 
?
?report_control_sets: Time (s): cpu = 00:00:00.02 ; elapsed = 00:00:00.23 . Memory (MB): peak = 4323.762 ; gain = 0.000 ; free physical = 2796 ; free virtual = 34271
*commonh px? 


End Record