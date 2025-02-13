; ModuleID = 'timevar.c'
source_filename = "timevar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timevar_def = type { %struct.timevar_time_def, %struct.timevar_time_def, ptr, i8 }
%struct.timevar_time_def = type { double, double, double, i32 }
%struct.timevar_stack_def = type { ptr, ptr }
%struct.tms = type { i64, i64, i64, i64 }

@timevar_enable = dso_local local_unnamed_addr global i8 0, align 1
@timevar_ggc_mem_total = dso_local local_unnamed_addr global i64 0, align 8
@timevars = internal global [172 x %struct.timevar_def] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"total time\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"garbage collection\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"dump files\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"callgraph construction\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"callgraph optimization\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ipa cp\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"ipa lto gimple I/O\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"ipa lto decl I/O\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"ipa lto cgraph I/O\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"lto\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"whopr wpa\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"whopr wpa I/O\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"whopr ltrans\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"whopr wpa fixup\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"whopr wpa->ltrans\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"ipa reference\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"ipa pure const\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"ipa type escape\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"ipa points-to\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"ipa SRA\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"ipa free lang data\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"cfg construction\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"cfg cleanup\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"CFG verifier\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"trivially dead code\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"life analysis\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"life info update\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"df scan insns\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"df multiple defs\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"df reaching defs\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"df live regs\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"df live&initialized regs\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"df uninitialized regs 2\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"df use-def / def-use chains\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"df live byte regs\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"df reg dead/unused notes\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"register information\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"alias analysis\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"alias stmt walking\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"register scan\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"rebuild jump labels\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"preprocessing\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"lexical analysis\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"parser\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"name lookup\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"inline heuristics\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"integration\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"tree gimplify\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"tree eh\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"tree CFG construction\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"tree CFG cleanup\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"tree VRP\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"tree copy propagation\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"tree store copy prop\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"tree find ref. vars\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"tree PTA\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"tree PHI insertion\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"tree SSA rewrite\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"tree SSA other\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"tree SSA incremental\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"tree operand scan\00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"dominator optimization\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"tree SRA\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"tree STORE-CCP\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"tree CCP\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"tree PHI const/copy prop\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"tree split crit edges\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"tree reassociation\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"tree PRE\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"tree redundant PHIs\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"tree FRE\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"tree code sinking\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"tree linearize phis\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"tree forward propagate\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"tree phiprop\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"tree conservative DCE\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"tree aggressive DCE\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"tree buildin call DCE\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"tree DSE\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"PHI merge\00", align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"tree loop optimization\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"tree loop bounds\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"tree loop invariant motion\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"tree canonical iv\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"scev constant prop\00", align 1
@.str.85 = private unnamed_addr constant [22 x i8] c"tree loop unswitching\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"complete unrolling\00", align 1
@.str.87 = private unnamed_addr constant [23 x i8] c"tree parallelize loops\00", align 1
@.str.88 = private unnamed_addr constant [19 x i8] c"tree vectorization\00", align 1
@.str.89 = private unnamed_addr constant [23 x i8] c"tree slp vectorization\00", align 1
@.str.90 = private unnamed_addr constant [25 x i8] c"Graphite loop transforms\00", align 1
@.str.91 = private unnamed_addr constant [27 x i8] c"Graphite data dep analysis\00", align 1
@.str.92 = private unnamed_addr constant [25 x i8] c"Graphite code generation\00", align 1
@.str.93 = private unnamed_addr constant [17 x i8] c"tree loop linear\00", align 1
@.str.94 = private unnamed_addr constant [23 x i8] c"tree loop distribution\00", align 1
@.str.95 = private unnamed_addr constant [28 x i8] c"tree check data dependences\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"tree prefetching\00", align 1
@.str.97 = private unnamed_addr constant [21 x i8] c"tree iv optimization\00", align 1
@.str.98 = private unnamed_addr constant [21 x i8] c"predictive commoning\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"tree loop init\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"tree loop fini\00", align 1
@.str.101 = private unnamed_addr constant [18 x i8] c"tree copy headers\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"tree SSA uncprop\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"tree SSA to normal\00", align 1
@.str.104 = private unnamed_addr constant [22 x i8] c"tree NRV optimization\00", align 1
@.str.105 = private unnamed_addr constant [23 x i8] c"tree rename SSA copies\00", align 1
@.str.106 = private unnamed_addr constant [18 x i8] c"tree SSA verifier\00", align 1
@.str.107 = private unnamed_addr constant [19 x i8] c"tree STMT verifier\00", align 1
@.str.108 = private unnamed_addr constant [38 x i8] c"tree switch initialization conversion\00", align 1
@.str.109 = private unnamed_addr constant [19 x i8] c"callgraph verifier\00", align 1
@.str.110 = private unnamed_addr constant [20 x i8] c"dominance frontiers\00", align 1
@.str.111 = private unnamed_addr constant [22 x i8] c"dominance computation\00", align 1
@.str.112 = private unnamed_addr constant [20 x i8] c"control dependences\00", align 1
@.str.113 = private unnamed_addr constant [20 x i8] c"overload resolution\00", align 1
@.str.114 = private unnamed_addr constant [23 x i8] c"template instantiation\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"expand\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"varconst\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"lower subreg\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"jump\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"forward prop\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"CSE\00", align 1
@.str.121 = private unnamed_addr constant [22 x i8] c"dead code elimination\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"dead store elim1\00", align 1
@.str.123 = private unnamed_addr constant [17 x i8] c"dead store elim2\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"loop analysis\00", align 1
@.str.125 = private unnamed_addr constant [22 x i8] c"loop invariant motion\00", align 1
@.str.126 = private unnamed_addr constant [17 x i8] c"loop unswitching\00", align 1
@.str.127 = private unnamed_addr constant [15 x i8] c"loop unrolling\00", align 1
@.str.128 = private unnamed_addr constant [12 x i8] c"loop doloop\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"CPROP\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"PRE\00", align 1
@.str.131 = private unnamed_addr constant [14 x i8] c"code hoisting\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"LSM\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"tracer\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"web\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"auto inc dec\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"CSE 2\00", align 1
@.str.137 = private unnamed_addr constant [18 x i8] c"branch prediction\00", align 1
@.str.138 = private unnamed_addr constant [19 x i8] c"value profile opts\00", align 1
@.str.139 = private unnamed_addr constant [9 x i8] c"combiner\00", align 1
@.str.140 = private unnamed_addr constant [14 x i8] c"if-conversion\00", align 1
@.str.141 = private unnamed_addr constant [8 x i8] c"regmove\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"mode switching\00", align 1
@.str.143 = private unnamed_addr constant [22 x i8] c"sms modulo scheduling\00", align 1
@.str.144 = private unnamed_addr constant [11 x i8] c"scheduling\00", align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"local alloc\00", align 1
@.str.146 = private unnamed_addr constant [13 x i8] c"global alloc\00", align 1
@.str.147 = private unnamed_addr constant [14 x i8] c"integrated RA\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"reload\00", align 1
@.str.149 = private unnamed_addr constant [16 x i8] c"reload CSE regs\00", align 1
@.str.150 = private unnamed_addr constant [21 x i8] c"sequence abstraction\00", align 1
@.str.151 = private unnamed_addr constant [22 x i8] c"load CSE after reload\00", align 1
@.str.152 = private unnamed_addr constant [23 x i8] c"thread pro- & epilogue\00", align 1
@.str.153 = private unnamed_addr constant [16 x i8] c"if-conversion 2\00", align 1
@.str.154 = private unnamed_addr constant [26 x i8] c"combine stack adjustments\00", align 1
@.str.155 = private unnamed_addr constant [11 x i8] c"peephole 2\00", align 1
@.str.156 = private unnamed_addr constant [17 x i8] c"rename registers\00", align 1
@.str.157 = private unnamed_addr constant [15 x i8] c"hard reg cprop\00", align 1
@.str.158 = private unnamed_addr constant [13 x i8] c"scheduling 2\00", align 1
@.str.159 = private unnamed_addr constant [18 x i8] c"machine dep reorg\00", align 1
@.str.160 = private unnamed_addr constant [19 x i8] c"delay branch sched\00", align 1
@.str.161 = private unnamed_addr constant [15 x i8] c"reorder blocks\00", align 1
@.str.162 = private unnamed_addr constant [17 x i8] c"shorten branches\00", align 1
@.str.163 = private unnamed_addr constant [10 x i8] c"reg stack\00", align 1
@.str.164 = private unnamed_addr constant [6 x i8] c"final\00", align 1
@.str.165 = private unnamed_addr constant [7 x i8] c"symout\00", align 1
@.str.166 = private unnamed_addr constant [18 x i8] c"variable tracking\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c"tree if-combine\00", align 1
@.str.168 = private unnamed_addr constant [22 x i8] c"plugin initialization\00", align 1
@.str.169 = private unnamed_addr constant [17 x i8] c"plugin execution\00", align 1
@.str.170 = private unnamed_addr constant [20 x i8] c"rest of compilation\00", align 1
@ticks_to_msec = internal unnamed_addr global double 0.000000e+00, align 8
@.str.171 = private unnamed_addr constant [10 x i8] c"timevar.c\00", align 1
@.str.172 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@stack = internal unnamed_addr global ptr null, align 8
@start_time = internal global %struct.timevar_time_def zeroinitializer, align 8
@unused_stack_instances = internal unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.173 = private unnamed_addr constant [28 x i8] c"\0AExecution times (seconds)\0A\00", align 1
@.str.174 = private unnamed_addr constant [8 x i8] c" %-22s:\00", align 1
@.str.175 = private unnamed_addr constant [20 x i8] c"%7.2f (%2.0f%%) usr\00", align 1
@.str.176 = private unnamed_addr constant [20 x i8] c"%7.2f (%2.0f%%) sys\00", align 1
@.str.177 = private unnamed_addr constant [21 x i8] c"%7.2f (%2.0f%%) wall\00", align 1
@.str.178 = private unnamed_addr constant [21 x i8] c"%8u kB (%2.0f%%) ggc\00", align 1
@.str.179 = private unnamed_addr constant [25 x i8] c" TOTAL                 :\00", align 1
@.str.180 = private unnamed_addr constant [16 x i8] c"%7.2f          \00", align 1
@.str.181 = private unnamed_addr constant [17 x i8] c"%7.2f           \00", align 1
@.str.182 = private unnamed_addr constant [8 x i8] c"%8u kB\0A\00", align 1
@.str.183 = private unnamed_addr constant [31 x i8] c"time in %s: %ld.%06ld (%ld%%)\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @timevar_init() local_unnamed_addr #0 {
  store i8 1, ptr @timevar_enable, align 1, !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(13760) @timevars, i8 0, i64 13760, i1 false)
  store ptr @.str, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 1, i32 2), align 16, !tbaa !9
  store ptr @.str.1, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 2, i32 2), align 16, !tbaa !9
  store ptr @.str.2, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 3, i32 2), align 16, !tbaa !9
  store ptr @.str.3, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 4, i32 2), align 16, !tbaa !9
  store ptr @.str.4, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 5, i32 2), align 16, !tbaa !9
  store ptr @.str.5, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 6, i32 2), align 16, !tbaa !9
  store ptr @.str.6, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 7, i32 2), align 16, !tbaa !9
  store ptr @.str.7, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 8, i32 2), align 16, !tbaa !9
  store ptr @.str.8, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 9, i32 2), align 16, !tbaa !9
  store ptr @.str.9, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 10, i32 2), align 16, !tbaa !9
  store ptr @.str.10, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 11, i32 2), align 16, !tbaa !9
  store ptr @.str.11, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 12, i32 2), align 16, !tbaa !9
  store ptr @.str.12, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 13, i32 2), align 16, !tbaa !9
  store ptr @.str.13, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 14, i32 2), align 16, !tbaa !9
  store ptr @.str.14, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 15, i32 2), align 16, !tbaa !9
  store ptr @.str.15, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 16, i32 2), align 16, !tbaa !9
  store ptr @.str.16, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 17, i32 2), align 16, !tbaa !9
  store ptr @.str.17, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 18, i32 2), align 16, !tbaa !9
  store ptr @.str.18, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 19, i32 2), align 16, !tbaa !9
  store ptr @.str.19, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 20, i32 2), align 16, !tbaa !9
  store ptr @.str.20, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 21, i32 2), align 16, !tbaa !9
  store ptr @.str.21, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 22, i32 2), align 16, !tbaa !9
  store ptr @.str.22, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 23, i32 2), align 16, !tbaa !9
  store ptr @.str.23, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 24, i32 2), align 16, !tbaa !9
  store ptr @.str.24, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 25, i32 2), align 16, !tbaa !9
  store ptr @.str.25, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 26, i32 2), align 16, !tbaa !9
  store ptr @.str.26, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 27, i32 2), align 16, !tbaa !9
  store ptr @.str.27, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 28, i32 2), align 16, !tbaa !9
  store ptr @.str.28, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 29, i32 2), align 16, !tbaa !9
  store ptr @.str.29, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 30, i32 2), align 16, !tbaa !9
  store ptr @.str.30, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 31, i32 2), align 16, !tbaa !9
  store ptr @.str.31, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 32, i32 2), align 16, !tbaa !9
  store ptr @.str.32, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 33, i32 2), align 16, !tbaa !9
  store ptr @.str.33, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 34, i32 2), align 16, !tbaa !9
  store ptr @.str.34, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 35, i32 2), align 16, !tbaa !9
  store ptr @.str.35, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 36, i32 2), align 16, !tbaa !9
  store ptr @.str.36, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 37, i32 2), align 16, !tbaa !9
  store ptr @.str.37, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 38, i32 2), align 16, !tbaa !9
  store ptr @.str.38, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 39, i32 2), align 16, !tbaa !9
  store ptr @.str.39, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 40, i32 2), align 16, !tbaa !9
  store ptr @.str.40, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 41, i32 2), align 16, !tbaa !9
  store ptr @.str.41, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 42, i32 2), align 16, !tbaa !9
  store ptr @.str.42, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 43, i32 2), align 16, !tbaa !9
  store ptr @.str.43, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 44, i32 2), align 16, !tbaa !9
  store ptr @.str.44, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 45, i32 2), align 16, !tbaa !9
  store ptr @.str.45, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 46, i32 2), align 16, !tbaa !9
  store ptr @.str.46, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 47, i32 2), align 16, !tbaa !9
  store ptr @.str.47, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 48, i32 2), align 16, !tbaa !9
  store ptr @.str.48, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 49, i32 2), align 16, !tbaa !9
  store ptr @.str.49, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 50, i32 2), align 16, !tbaa !9
  store ptr @.str.50, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 51, i32 2), align 16, !tbaa !9
  store ptr @.str.51, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 52, i32 2), align 16, !tbaa !9
  store ptr @.str.52, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 53, i32 2), align 16, !tbaa !9
  store ptr @.str.53, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 54, i32 2), align 16, !tbaa !9
  store ptr @.str.54, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 55, i32 2), align 16, !tbaa !9
  store ptr @.str.55, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 56, i32 2), align 16, !tbaa !9
  store ptr @.str.56, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 57, i32 2), align 16, !tbaa !9
  store ptr @.str.57, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 58, i32 2), align 16, !tbaa !9
  store ptr @.str.58, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 59, i32 2), align 16, !tbaa !9
  store ptr @.str.59, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 60, i32 2), align 16, !tbaa !9
  store ptr @.str.60, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 61, i32 2), align 16, !tbaa !9
  store ptr @.str.61, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 62, i32 2), align 16, !tbaa !9
  store ptr @.str.62, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 63, i32 2), align 16, !tbaa !9
  store ptr @.str.63, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 64, i32 2), align 16, !tbaa !9
  store ptr @.str.64, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 65, i32 2), align 16, !tbaa !9
  store ptr @.str.65, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 66, i32 2), align 16, !tbaa !9
  store ptr @.str.66, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 67, i32 2), align 16, !tbaa !9
  store ptr @.str.67, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 68, i32 2), align 16, !tbaa !9
  store ptr @.str.68, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 69, i32 2), align 16, !tbaa !9
  store ptr @.str.69, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 70, i32 2), align 16, !tbaa !9
  store ptr @.str.70, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 71, i32 2), align 16, !tbaa !9
  store ptr @.str.71, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 72, i32 2), align 16, !tbaa !9
  store ptr @.str.72, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 73, i32 2), align 16, !tbaa !9
  store ptr @.str.73, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 74, i32 2), align 16, !tbaa !9
  store ptr @.str.74, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 75, i32 2), align 16, !tbaa !9
  store ptr @.str.75, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 76, i32 2), align 16, !tbaa !9
  store ptr @.str.76, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 77, i32 2), align 16, !tbaa !9
  store ptr @.str.77, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 78, i32 2), align 16, !tbaa !9
  store ptr @.str.78, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 79, i32 2), align 16, !tbaa !9
  store ptr @.str.79, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 80, i32 2), align 16, !tbaa !9
  store ptr @.str.80, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 81, i32 2), align 16, !tbaa !9
  store ptr @.str.81, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 82, i32 2), align 16, !tbaa !9
  store ptr @.str.82, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 83, i32 2), align 16, !tbaa !9
  store ptr @.str.83, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 84, i32 2), align 16, !tbaa !9
  store ptr @.str.84, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 85, i32 2), align 16, !tbaa !9
  store ptr @.str.85, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 86, i32 2), align 16, !tbaa !9
  store ptr @.str.86, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 87, i32 2), align 16, !tbaa !9
  store ptr @.str.87, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 88, i32 2), align 16, !tbaa !9
  store ptr @.str.88, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 89, i32 2), align 16, !tbaa !9
  store ptr @.str.89, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 90, i32 2), align 16, !tbaa !9
  store ptr @.str.90, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 91, i32 2), align 16, !tbaa !9
  store ptr @.str.91, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 92, i32 2), align 16, !tbaa !9
  store ptr @.str.92, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 93, i32 2), align 16, !tbaa !9
  store ptr @.str.93, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 94, i32 2), align 16, !tbaa !9
  store ptr @.str.94, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 95, i32 2), align 16, !tbaa !9
  store ptr @.str.95, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 96, i32 2), align 16, !tbaa !9
  store ptr @.str.96, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 97, i32 2), align 16, !tbaa !9
  store ptr @.str.97, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 98, i32 2), align 16, !tbaa !9
  store ptr @.str.98, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 99, i32 2), align 16, !tbaa !9
  store ptr @.str.99, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 100, i32 2), align 16, !tbaa !9
  store ptr @.str.100, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 101, i32 2), align 16, !tbaa !9
  store ptr @.str.101, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 102, i32 2), align 16, !tbaa !9
  store ptr @.str.102, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 103, i32 2), align 16, !tbaa !9
  store ptr @.str.103, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 104, i32 2), align 16, !tbaa !9
  store ptr @.str.104, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 105, i32 2), align 16, !tbaa !9
  store ptr @.str.105, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 106, i32 2), align 16, !tbaa !9
  store ptr @.str.106, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 107, i32 2), align 16, !tbaa !9
  store ptr @.str.107, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 108, i32 2), align 16, !tbaa !9
  store ptr @.str.108, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 109, i32 2), align 16, !tbaa !9
  store ptr @.str.109, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 110, i32 2), align 16, !tbaa !9
  store ptr @.str.110, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 111, i32 2), align 16, !tbaa !9
  store ptr @.str.111, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 112, i32 2), align 16, !tbaa !9
  store ptr @.str.112, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 113, i32 2), align 16, !tbaa !9
  store ptr @.str.113, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 114, i32 2), align 16, !tbaa !9
  store ptr @.str.114, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 115, i32 2), align 16, !tbaa !9
  store ptr @.str.115, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 116, i32 2), align 16, !tbaa !9
  store ptr @.str.116, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 117, i32 2), align 16, !tbaa !9
  store ptr @.str.117, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 118, i32 2), align 16, !tbaa !9
  store ptr @.str.118, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 119, i32 2), align 16, !tbaa !9
  store ptr @.str.119, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 120, i32 2), align 16, !tbaa !9
  store ptr @.str.120, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 121, i32 2), align 16, !tbaa !9
  store ptr @.str.121, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 122, i32 2), align 16, !tbaa !9
  store ptr @.str.122, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 123, i32 2), align 16, !tbaa !9
  store ptr @.str.123, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 124, i32 2), align 16, !tbaa !9
  store ptr @.str.124, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 125, i32 2), align 16, !tbaa !9
  store ptr @.str.125, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 126, i32 2), align 16, !tbaa !9
  store ptr @.str.126, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 127, i32 2), align 16, !tbaa !9
  store ptr @.str.127, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 128, i32 2), align 16, !tbaa !9
  store ptr @.str.128, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 129, i32 2), align 16, !tbaa !9
  store ptr @.str.129, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 130, i32 2), align 16, !tbaa !9
  store ptr @.str.130, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 131, i32 2), align 16, !tbaa !9
  store ptr @.str.131, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 132, i32 2), align 16, !tbaa !9
  store ptr @.str.132, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 133, i32 2), align 16, !tbaa !9
  store ptr @.str.133, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 134, i32 2), align 16, !tbaa !9
  store ptr @.str.134, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 135, i32 2), align 16, !tbaa !9
  store ptr @.str.135, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 136, i32 2), align 16, !tbaa !9
  store ptr @.str.136, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 137, i32 2), align 16, !tbaa !9
  store ptr @.str.137, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 138, i32 2), align 16, !tbaa !9
  store ptr @.str.138, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 139, i32 2), align 16, !tbaa !9
  store ptr @.str.139, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 140, i32 2), align 16, !tbaa !9
  store ptr @.str.140, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 141, i32 2), align 16, !tbaa !9
  store ptr @.str.141, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 142, i32 2), align 16, !tbaa !9
  store ptr @.str.142, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 143, i32 2), align 16, !tbaa !9
  store ptr @.str.143, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 144, i32 2), align 16, !tbaa !9
  store ptr @.str.144, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 145, i32 2), align 16, !tbaa !9
  store ptr @.str.145, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 146, i32 2), align 16, !tbaa !9
  store ptr @.str.146, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 147, i32 2), align 16, !tbaa !9
  store ptr @.str.147, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 148, i32 2), align 16, !tbaa !9
  store ptr @.str.148, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 149, i32 2), align 16, !tbaa !9
  store ptr @.str.149, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 150, i32 2), align 16, !tbaa !9
  store ptr @.str.150, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 151, i32 2), align 16, !tbaa !9
  store ptr @.str.151, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 152, i32 2), align 16, !tbaa !9
  store ptr @.str.152, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 153, i32 2), align 16, !tbaa !9
  store ptr @.str.153, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 154, i32 2), align 16, !tbaa !9
  store ptr @.str.154, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 155, i32 2), align 16, !tbaa !9
  store ptr @.str.155, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 156, i32 2), align 16, !tbaa !9
  store ptr @.str.156, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 157, i32 2), align 16, !tbaa !9
  store ptr @.str.157, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 158, i32 2), align 16, !tbaa !9
  store ptr @.str.158, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 159, i32 2), align 16, !tbaa !9
  store ptr @.str.159, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 160, i32 2), align 16, !tbaa !9
  store ptr @.str.160, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 161, i32 2), align 16, !tbaa !9
  store ptr @.str.161, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 162, i32 2), align 16, !tbaa !9
  store ptr @.str.162, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 163, i32 2), align 16, !tbaa !9
  store ptr @.str.163, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 164, i32 2), align 16, !tbaa !9
  store ptr @.str.164, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 165, i32 2), align 16, !tbaa !9
  store ptr @.str.165, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 166, i32 2), align 16, !tbaa !9
  store ptr @.str.166, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 167, i32 2), align 16, !tbaa !9
  store ptr @.str.167, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 168, i32 2), align 16, !tbaa !9
  store ptr @.str.168, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 169, i32 2), align 16, !tbaa !9
  store ptr @.str.169, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 170, i32 2), align 16, !tbaa !9
  store ptr @.str.170, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 171, i32 2), align 16, !tbaa !9
  %1 = tail call i64 @sysconf(i32 noundef 2) #8
  %2 = sitofp i64 %1 to double
  %3 = fdiv double 1.000000e+00, %2
  store double %3, ptr @ticks_to_msec, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: optsize
declare i64 @sysconf(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @timevar_push_1(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.timevar_time_def, align 8
  %3 = zext i32 %0 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  %4 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %3, i32 3
  %5 = load i8, ptr %4, align 8
  %6 = or i8 %5, 2
  store i8 %6, ptr %4, align 8
  %7 = and i8 %5, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.171, i32 noundef 275, ptr noundef nonnull @.str.172) #8
  br label %10

10:                                               ; preds = %1, %9
  call fastcc void @get_time(ptr noundef nonnull %2) #10
  %11 = load ptr, ptr @stack, align 8, !tbaa !16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %11, align 8, !tbaa !17
  call fastcc void @timevar_accumulate(ptr noundef %14, ptr noundef nonnull @start_time, ptr noundef nonnull %2) #10
  br label %15

15:                                               ; preds = %13, %10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @start_time, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !19
  %16 = load ptr, ptr @unused_stack_instances, align 8, !tbaa !16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.timevar_stack_def, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !21
  store ptr %20, ptr @unused_stack_instances, align 8, !tbaa !16
  br label %24

21:                                               ; preds = %15
  %22 = tail call ptr @xmalloc(i64 noundef 16) #8
  %23 = load ptr, ptr @stack, align 8, !tbaa !16
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi ptr [ %11, %18 ], [ %23, %21 ]
  %26 = phi ptr [ %16, %18 ], [ %22, %21 ]
  %27 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %3
  store ptr %27, ptr %26, align 8, !tbaa !17
  %28 = getelementptr inbounds %struct.timevar_stack_def, ptr %26, i64 0, i32 1
  store ptr %25, ptr %28, align 8, !tbaa !21
  store ptr %26, ptr @stack, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @get_time(ptr nocapture noundef writeonly %0) unnamed_addr #4 {
  %2 = alloca %struct.tms, align 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %3 = load i64, ptr @timevar_ggc_mem_total, align 8, !tbaa !22
  %4 = trunc i64 %3 to i32
  %5 = getelementptr inbounds %struct.timevar_time_def, ptr %0, i64 0, i32 3
  store i32 %4, ptr %5, align 8, !tbaa !24
  %6 = load i8, ptr @timevar_enable, align 1, !tbaa !6
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.timevar_time_def, ptr %0, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  %10 = call i64 @times(ptr noundef nonnull %2) #10
  %11 = sitofp i64 %10 to double
  %12 = load double, ptr @ticks_to_msec, align 8, !tbaa !15
  %13 = fmul double %12, %11
  store double %13, ptr %9, align 8, !tbaa !25
  %14 = load <2 x i64>, ptr %2, align 16, !tbaa !22
  %15 = sitofp <2 x i64> %14 to <2 x double>
  %16 = insertelement <2 x double> poison, double %12, i64 0
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %18 = fmul <2 x double> %17, %15
  store <2 x double> %18, ptr %0, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  br label %19

19:                                               ; preds = %1, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @timevar_accumulate(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 {
  %4 = load <2 x double>, ptr %2, align 8, !tbaa !15
  %5 = load <2 x double>, ptr %1, align 8, !tbaa !15
  %6 = fsub <2 x double> %4, %5
  %7 = load <2 x double>, ptr %0, align 8, !tbaa !15
  %8 = fadd <2 x double> %7, %6
  store <2 x double> %8, ptr %0, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.timevar_time_def, ptr %2, i64 0, i32 2
  %10 = load double, ptr %9, align 8, !tbaa !25
  %11 = getelementptr inbounds %struct.timevar_time_def, ptr %1, i64 0, i32 2
  %12 = load double, ptr %11, align 8, !tbaa !25
  %13 = fsub double %10, %12
  %14 = getelementptr inbounds %struct.timevar_time_def, ptr %0, i64 0, i32 2
  %15 = load double, ptr %14, align 8, !tbaa !25
  %16 = fadd double %15, %13
  store double %16, ptr %14, align 8, !tbaa !25
  %17 = getelementptr inbounds %struct.timevar_time_def, ptr %2, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !24
  %19 = getelementptr inbounds %struct.timevar_time_def, ptr %1, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !24
  %21 = sub i32 %18, %20
  %22 = getelementptr inbounds %struct.timevar_time_def, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !24
  %24 = add i32 %21, %23
  store i32 %24, ptr %22, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind optsize
declare noundef i64 @times(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @timevar_pop_1(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.timevar_time_def, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  %3 = load ptr, ptr @stack, align 8, !tbaa !16
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %4
  %6 = load ptr, ptr %3, align 8, !tbaa !17
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.171, i32 noundef 317, ptr noundef nonnull @.str.172) #8
  br label %9

9:                                                ; preds = %1, %8
  call fastcc void @get_time(ptr noundef nonnull %2) #10
  %10 = load ptr, ptr %3, align 8, !tbaa !17
  call fastcc void @timevar_accumulate(ptr noundef %10, ptr noundef nonnull @start_time, ptr noundef nonnull %2) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @start_time, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !19
  %11 = load ptr, ptr @stack, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.timevar_stack_def, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !21
  store ptr %13, ptr @stack, align 8, !tbaa !16
  %14 = load ptr, ptr @unused_stack_instances, align 8, !tbaa !16
  %15 = getelementptr inbounds %struct.timevar_stack_def, ptr %3, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !21
  store ptr %3, ptr @unused_stack_instances, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @timevar_start(i32 noundef %0) local_unnamed_addr #0 {
  %2 = zext i32 %0 to i64
  %3 = load i8, ptr @timevar_enable, align 1, !tbaa !6
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %2, i32 3
  %7 = load i8, ptr %6, align 8
  %8 = or i8 %7, 2
  store i8 %8, ptr %6, align 8
  %9 = and i8 %7, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.171, i32 noundef 355, ptr noundef nonnull @.str.172) #8
  %12 = load i8, ptr %6, align 8
  br label %13

13:                                               ; preds = %5, %11
  %14 = phi i8 [ %8, %5 ], [ %12, %11 ]
  %15 = or i8 %14, 1
  store i8 %15, ptr %6, align 8
  %16 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %2, i32 1
  tail call fastcc void @get_time(ptr noundef nonnull %16) #10
  br label %17

17:                                               ; preds = %1, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @timevar_stop(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.timevar_time_def, align 8
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  %5 = load i8, ptr @timevar_enable, align 1, !tbaa !6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %3, i32 3
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.171, i32 noundef 374, ptr noundef nonnull @.str.172) #8
  br label %13

13:                                               ; preds = %7, %12
  call fastcc void @get_time(ptr noundef nonnull %2) #10
  %14 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %3, i32 1
  call fastcc void @timevar_accumulate(ptr noundef nonnull %4, ptr noundef nonnull %14, ptr noundef nonnull %2) #10
  br label %15

15:                                               ; preds = %1, %13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @timevar_print(ptr noundef %0) local_unnamed_addr #4 {
  %2 = alloca %struct.timevar_time_def, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  %3 = load i8, ptr @timevar_enable, align 1, !tbaa !6
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %93, label %5

5:                                                ; preds = %1
  %6 = icmp eq ptr %0, null
  %7 = load ptr, ptr @stderr, align 8
  %8 = select i1 %6, ptr %7, ptr %0
  call fastcc void @get_time(ptr noundef nonnull %2) #10
  %9 = load ptr, ptr @stack, align 8, !tbaa !16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %9, align 8, !tbaa !17
  call fastcc void @timevar_accumulate(ptr noundef %12, ptr noundef nonnull @start_time, ptr noundef nonnull %2) #10
  br label %13

13:                                               ; preds = %11, %5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @start_time, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !19
  %14 = tail call i32 @fputs(ptr noundef nonnull @.str.173, ptr noundef %8) #10
  br label %15

15:                                               ; preds = %13, %79
  %16 = phi i64 [ 0, %13 ], [ %80, %79 ]
  %17 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %16
  %18 = icmp eq i64 %16, 1
  br i1 %18, label %79, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %16, i32 3
  %21 = load i8, ptr %20, align 8
  %22 = and i8 %21, 2
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %79, label %24

24:                                               ; preds = %19
  %25 = load double, ptr %17, align 16, !tbaa !26
  %26 = fcmp olt double %25, 5.000000e-03
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.timevar_time_def, ptr %17, i64 0, i32 1
  %29 = load double, ptr %28, align 8, !tbaa !27
  %30 = fcmp olt double %29, 5.000000e-03
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.timevar_time_def, ptr %17, i64 0, i32 2
  %33 = load double, ptr %32, align 16, !tbaa !28
  %34 = fcmp olt double %33, 5.000000e-03
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.timevar_time_def, ptr %17, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !29
  %38 = icmp ult i32 %37, 1048576
  br i1 %38, label %79, label %39

39:                                               ; preds = %35, %31, %27, %24
  %40 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %16, i32 2
  %41 = load ptr, ptr %40, align 16, !tbaa !9
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.174, ptr noundef %41) #10
  %43 = load double, ptr %17, align 16, !tbaa !26
  %44 = load double, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 1), align 16, !tbaa !30
  %45 = fcmp oeq double %44, 0.000000e+00
  %46 = fdiv double %43, %44
  %47 = fmul double %46, 1.000000e+02
  %48 = select i1 %45, double 0.000000e+00, double %47
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.175, double noundef %43, double noundef %48) #10
  %50 = getelementptr inbounds %struct.timevar_time_def, ptr %17, i64 0, i32 1
  %51 = load double, ptr %50, align 8, !tbaa !27
  %52 = load double, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 1, i32 0, i32 1), align 8, !tbaa !31
  %53 = fcmp oeq double %52, 0.000000e+00
  %54 = fdiv double %51, %52
  %55 = fmul double %54, 1.000000e+02
  %56 = select i1 %53, double 0.000000e+00, double %55
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.176, double noundef %51, double noundef %56) #10
  %58 = getelementptr inbounds %struct.timevar_time_def, ptr %17, i64 0, i32 2
  %59 = load double, ptr %58, align 16, !tbaa !28
  %60 = load double, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 1, i32 0, i32 2), align 16, !tbaa !25
  %61 = fcmp oeq double %60, 0.000000e+00
  %62 = fdiv double %59, %60
  %63 = fmul double %62, 1.000000e+02
  %64 = select i1 %61, double 0.000000e+00, double %63
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.177, double noundef %59, double noundef %64) #10
  %66 = getelementptr inbounds %struct.timevar_time_def, ptr %17, i64 0, i32 3
  %67 = load i32, ptr %66, align 8, !tbaa !29
  %68 = lshr i32 %67, 10
  %69 = load i32, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 1, i32 0, i32 3), align 8, !tbaa !24
  %70 = icmp eq i32 %69, 0
  %71 = uitofp i32 %67 to float
  %72 = uitofp i32 %69 to float
  %73 = fdiv float %71, %72
  %74 = fmul float %73, 1.000000e+02
  %75 = fpext float %74 to double
  %76 = select i1 %70, double 0.000000e+00, double %75
  %77 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.178, i32 noundef %68, double noundef %76) #10
  %78 = tail call i32 @putc(i32 noundef 10, ptr noundef %8) #10
  br label %79

79:                                               ; preds = %35, %19, %15, %39
  %80 = add nuw nsw i64 %16, 1
  %81 = icmp eq i64 %80, 172
  br i1 %81, label %82, label %15, !llvm.loop !32

82:                                               ; preds = %79
  %83 = tail call i32 @fputs(ptr noundef nonnull @.str.179, ptr noundef %8) #10
  %84 = load double, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 1), align 16, !tbaa !30
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.180, double noundef %84) #10
  %86 = load double, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 1, i32 0, i32 1), align 8, !tbaa !31
  %87 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.180, double noundef %86) #10
  %88 = load double, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 1, i32 0, i32 2), align 16, !tbaa !25
  %89 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.181, double noundef %88) #10
  %90 = load i32, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 1, i32 0, i32 3), align 8, !tbaa !24
  %91 = lshr i32 %90, 10
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.182, i32 noundef %91) #10
  br label %93

93:                                               ; preds = %1, %82
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_time(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @get_run_time() #8
  %4 = load ptr, ptr @stderr, align 8, !tbaa !16
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = sitofp i64 %1 to double
  %8 = fmul double %7, 1.000000e+02
  %9 = sitofp i64 %3 to double
  %10 = fdiv double %8, %9
  %11 = fadd double %10, 5.000000e-01
  %12 = fptosi double %11 to i64
  br label %13

13:                                               ; preds = %2, %6
  %14 = phi i64 [ %12, %6 ], [ 0, %2 ]
  %15 = srem i64 %1, 1000000
  %16 = sdiv i64 %1, 1000000
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.183, ptr noundef %0, i64 noundef %16, i64 noundef %15, i64 noundef %14) #11
  ret void
}

; Function Attrs: optsize
declare i64 @get_run_time() local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }
attributes #11 = { cold optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !14, i64 64}
!10 = !{!"timevar_def", !11, i64 0, !11, i64 32, !14, i64 64, !13, i64 72, !13, i64 72}
!11 = !{!"timevar_time_def", !12, i64 0, !12, i64 8, !12, i64 16, !13, i64 24}
!12 = !{!"double", !7, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!12, !12, i64 0}
!16 = !{!14, !14, i64 0}
!17 = !{!18, !14, i64 0}
!18 = !{!"timevar_stack_def", !14, i64 0, !14, i64 8}
!19 = !{i64 0, i64 8, !15, i64 8, i64 8, !15, i64 16, i64 8, !15, i64 24, i64 4, !20}
!20 = !{!13, !13, i64 0}
!21 = !{!18, !14, i64 8}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = !{!11, !13, i64 24}
!25 = !{!11, !12, i64 16}
!26 = !{!10, !12, i64 0}
!27 = !{!10, !12, i64 8}
!28 = !{!10, !12, i64 16}
!29 = !{!10, !13, i64 24}
!30 = !{!11, !12, i64 0}
!31 = !{!11, !12, i64 8}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
