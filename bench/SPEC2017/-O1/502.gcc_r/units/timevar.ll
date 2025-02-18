; ModuleID = 'timevar.c'
source_filename = "timevar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timevar_def = type { %struct.timevar_time_def, %struct.timevar_time_def, ptr, i8 }
%struct.timevar_time_def = type { double, double, double, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.timevar_stack_def = type { ptr, ptr }
%struct.tms = type { i64, i64, i64, i64 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@timevar_enable = dso_local local_unnamed_addr global i8 0, align 1
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
@start_time = internal unnamed_addr global %struct.timevar_time_def zeroinitializer, align 8
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
@timevar_ggc_mem_total = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #14
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #14
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #14
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #14
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #14
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @timevar_init() local_unnamed_addr #9 !prof !34 {
  store i8 1, ptr @timevar_enable, align 1, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(13760) @timevars, i8 0, i64 13760, i1 false)
  store ptr @.str, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 1, i32 2), align 16, !tbaa !54
  store ptr @.str.1, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 2, i32 2), align 16, !tbaa !54
  store ptr @.str.2, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 3, i32 2), align 16, !tbaa !54
  store ptr @.str.3, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 4, i32 2), align 16, !tbaa !54
  store ptr @.str.4, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 5, i32 2), align 16, !tbaa !54
  store ptr @.str.5, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 6, i32 2), align 16, !tbaa !54
  store ptr @.str.6, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 7, i32 2), align 16, !tbaa !54
  store ptr @.str.7, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 8, i32 2), align 16, !tbaa !54
  store ptr @.str.8, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 9, i32 2), align 16, !tbaa !54
  store ptr @.str.9, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 10, i32 2), align 16, !tbaa !54
  store ptr @.str.10, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 11, i32 2), align 16, !tbaa !54
  store ptr @.str.11, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 12, i32 2), align 16, !tbaa !54
  store ptr @.str.12, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 13, i32 2), align 16, !tbaa !54
  store ptr @.str.13, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 14, i32 2), align 16, !tbaa !54
  store ptr @.str.14, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 15, i32 2), align 16, !tbaa !54
  store ptr @.str.15, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 16, i32 2), align 16, !tbaa !54
  store ptr @.str.16, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 17, i32 2), align 16, !tbaa !54
  store ptr @.str.17, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 18, i32 2), align 16, !tbaa !54
  store ptr @.str.18, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 19, i32 2), align 16, !tbaa !54
  store ptr @.str.19, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 20, i32 2), align 16, !tbaa !54
  store ptr @.str.20, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 21, i32 2), align 16, !tbaa !54
  store ptr @.str.21, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 22, i32 2), align 16, !tbaa !54
  store ptr @.str.22, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 23, i32 2), align 16, !tbaa !54
  store ptr @.str.23, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 24, i32 2), align 16, !tbaa !54
  store ptr @.str.24, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 25, i32 2), align 16, !tbaa !54
  store ptr @.str.25, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 26, i32 2), align 16, !tbaa !54
  store ptr @.str.26, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 27, i32 2), align 16, !tbaa !54
  store ptr @.str.27, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 28, i32 2), align 16, !tbaa !54
  store ptr @.str.28, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 29, i32 2), align 16, !tbaa !54
  store ptr @.str.29, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 30, i32 2), align 16, !tbaa !54
  store ptr @.str.30, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 31, i32 2), align 16, !tbaa !54
  store ptr @.str.31, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 32, i32 2), align 16, !tbaa !54
  store ptr @.str.32, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 33, i32 2), align 16, !tbaa !54
  store ptr @.str.33, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 34, i32 2), align 16, !tbaa !54
  store ptr @.str.34, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 35, i32 2), align 16, !tbaa !54
  store ptr @.str.35, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 36, i32 2), align 16, !tbaa !54
  store ptr @.str.36, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 37, i32 2), align 16, !tbaa !54
  store ptr @.str.37, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 38, i32 2), align 16, !tbaa !54
  store ptr @.str.38, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 39, i32 2), align 16, !tbaa !54
  store ptr @.str.39, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 40, i32 2), align 16, !tbaa !54
  store ptr @.str.40, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 41, i32 2), align 16, !tbaa !54
  store ptr @.str.41, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 42, i32 2), align 16, !tbaa !54
  store ptr @.str.42, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 43, i32 2), align 16, !tbaa !54
  store ptr @.str.43, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 44, i32 2), align 16, !tbaa !54
  store ptr @.str.44, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 45, i32 2), align 16, !tbaa !54
  store ptr @.str.45, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 46, i32 2), align 16, !tbaa !54
  store ptr @.str.46, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 47, i32 2), align 16, !tbaa !54
  store ptr @.str.47, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 48, i32 2), align 16, !tbaa !54
  store ptr @.str.48, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 49, i32 2), align 16, !tbaa !54
  store ptr @.str.49, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 50, i32 2), align 16, !tbaa !54
  store ptr @.str.50, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 51, i32 2), align 16, !tbaa !54
  store ptr @.str.51, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 52, i32 2), align 16, !tbaa !54
  store ptr @.str.52, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 53, i32 2), align 16, !tbaa !54
  store ptr @.str.53, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 54, i32 2), align 16, !tbaa !54
  store ptr @.str.54, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 55, i32 2), align 16, !tbaa !54
  store ptr @.str.55, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 56, i32 2), align 16, !tbaa !54
  store ptr @.str.56, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 57, i32 2), align 16, !tbaa !54
  store ptr @.str.57, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 58, i32 2), align 16, !tbaa !54
  store ptr @.str.58, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 59, i32 2), align 16, !tbaa !54
  store ptr @.str.59, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 60, i32 2), align 16, !tbaa !54
  store ptr @.str.60, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 61, i32 2), align 16, !tbaa !54
  store ptr @.str.61, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 62, i32 2), align 16, !tbaa !54
  store ptr @.str.62, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 63, i32 2), align 16, !tbaa !54
  store ptr @.str.63, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 64, i32 2), align 16, !tbaa !54
  store ptr @.str.64, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 65, i32 2), align 16, !tbaa !54
  store ptr @.str.65, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 66, i32 2), align 16, !tbaa !54
  store ptr @.str.66, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 67, i32 2), align 16, !tbaa !54
  store ptr @.str.67, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 68, i32 2), align 16, !tbaa !54
  store ptr @.str.68, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 69, i32 2), align 16, !tbaa !54
  store ptr @.str.69, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 70, i32 2), align 16, !tbaa !54
  store ptr @.str.70, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 71, i32 2), align 16, !tbaa !54
  store ptr @.str.71, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 72, i32 2), align 16, !tbaa !54
  store ptr @.str.72, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 73, i32 2), align 16, !tbaa !54
  store ptr @.str.73, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 74, i32 2), align 16, !tbaa !54
  store ptr @.str.74, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 75, i32 2), align 16, !tbaa !54
  store ptr @.str.75, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 76, i32 2), align 16, !tbaa !54
  store ptr @.str.76, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 77, i32 2), align 16, !tbaa !54
  store ptr @.str.77, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 78, i32 2), align 16, !tbaa !54
  store ptr @.str.78, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 79, i32 2), align 16, !tbaa !54
  store ptr @.str.79, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 80, i32 2), align 16, !tbaa !54
  store ptr @.str.80, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 81, i32 2), align 16, !tbaa !54
  store ptr @.str.81, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 82, i32 2), align 16, !tbaa !54
  store ptr @.str.82, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 83, i32 2), align 16, !tbaa !54
  store ptr @.str.83, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 84, i32 2), align 16, !tbaa !54
  store ptr @.str.84, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 85, i32 2), align 16, !tbaa !54
  store ptr @.str.85, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 86, i32 2), align 16, !tbaa !54
  store ptr @.str.86, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 87, i32 2), align 16, !tbaa !54
  store ptr @.str.87, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 88, i32 2), align 16, !tbaa !54
  store ptr @.str.88, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 89, i32 2), align 16, !tbaa !54
  store ptr @.str.89, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 90, i32 2), align 16, !tbaa !54
  store ptr @.str.90, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 91, i32 2), align 16, !tbaa !54
  store ptr @.str.91, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 92, i32 2), align 16, !tbaa !54
  store ptr @.str.92, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 93, i32 2), align 16, !tbaa !54
  store ptr @.str.93, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 94, i32 2), align 16, !tbaa !54
  store ptr @.str.94, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 95, i32 2), align 16, !tbaa !54
  store ptr @.str.95, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 96, i32 2), align 16, !tbaa !54
  store ptr @.str.96, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 97, i32 2), align 16, !tbaa !54
  store ptr @.str.97, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 98, i32 2), align 16, !tbaa !54
  store ptr @.str.98, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 99, i32 2), align 16, !tbaa !54
  store ptr @.str.99, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 100, i32 2), align 16, !tbaa !54
  store ptr @.str.100, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 101, i32 2), align 16, !tbaa !54
  store ptr @.str.101, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 102, i32 2), align 16, !tbaa !54
  store ptr @.str.102, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 103, i32 2), align 16, !tbaa !54
  store ptr @.str.103, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 104, i32 2), align 16, !tbaa !54
  store ptr @.str.104, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 105, i32 2), align 16, !tbaa !54
  store ptr @.str.105, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 106, i32 2), align 16, !tbaa !54
  store ptr @.str.106, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 107, i32 2), align 16, !tbaa !54
  store ptr @.str.107, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 108, i32 2), align 16, !tbaa !54
  store ptr @.str.108, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 109, i32 2), align 16, !tbaa !54
  store ptr @.str.109, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 110, i32 2), align 16, !tbaa !54
  store ptr @.str.110, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 111, i32 2), align 16, !tbaa !54
  store ptr @.str.111, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 112, i32 2), align 16, !tbaa !54
  store ptr @.str.112, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 113, i32 2), align 16, !tbaa !54
  store ptr @.str.113, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 114, i32 2), align 16, !tbaa !54
  store ptr @.str.114, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 115, i32 2), align 16, !tbaa !54
  store ptr @.str.115, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 116, i32 2), align 16, !tbaa !54
  store ptr @.str.116, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 117, i32 2), align 16, !tbaa !54
  store ptr @.str.117, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 118, i32 2), align 16, !tbaa !54
  store ptr @.str.118, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 119, i32 2), align 16, !tbaa !54
  store ptr @.str.119, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 120, i32 2), align 16, !tbaa !54
  store ptr @.str.120, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 121, i32 2), align 16, !tbaa !54
  store ptr @.str.121, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 122, i32 2), align 16, !tbaa !54
  store ptr @.str.122, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 123, i32 2), align 16, !tbaa !54
  store ptr @.str.123, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 124, i32 2), align 16, !tbaa !54
  store ptr @.str.124, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 125, i32 2), align 16, !tbaa !54
  store ptr @.str.125, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 126, i32 2), align 16, !tbaa !54
  store ptr @.str.126, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 127, i32 2), align 16, !tbaa !54
  store ptr @.str.127, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 128, i32 2), align 16, !tbaa !54
  store ptr @.str.128, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 129, i32 2), align 16, !tbaa !54
  store ptr @.str.129, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 130, i32 2), align 16, !tbaa !54
  store ptr @.str.130, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 131, i32 2), align 16, !tbaa !54
  store ptr @.str.131, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 132, i32 2), align 16, !tbaa !54
  store ptr @.str.132, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 133, i32 2), align 16, !tbaa !54
  store ptr @.str.133, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 134, i32 2), align 16, !tbaa !54
  store ptr @.str.134, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 135, i32 2), align 16, !tbaa !54
  store ptr @.str.135, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 136, i32 2), align 16, !tbaa !54
  store ptr @.str.136, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 137, i32 2), align 16, !tbaa !54
  store ptr @.str.137, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 138, i32 2), align 16, !tbaa !54
  store ptr @.str.138, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 139, i32 2), align 16, !tbaa !54
  store ptr @.str.139, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 140, i32 2), align 16, !tbaa !54
  store ptr @.str.140, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 141, i32 2), align 16, !tbaa !54
  store ptr @.str.141, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 142, i32 2), align 16, !tbaa !54
  store ptr @.str.142, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 143, i32 2), align 16, !tbaa !54
  store ptr @.str.143, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 144, i32 2), align 16, !tbaa !54
  store ptr @.str.144, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 145, i32 2), align 16, !tbaa !54
  store ptr @.str.145, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 146, i32 2), align 16, !tbaa !54
  store ptr @.str.146, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 147, i32 2), align 16, !tbaa !54
  store ptr @.str.147, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 148, i32 2), align 16, !tbaa !54
  store ptr @.str.148, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 149, i32 2), align 16, !tbaa !54
  store ptr @.str.149, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 150, i32 2), align 16, !tbaa !54
  store ptr @.str.150, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 151, i32 2), align 16, !tbaa !54
  store ptr @.str.151, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 152, i32 2), align 16, !tbaa !54
  store ptr @.str.152, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 153, i32 2), align 16, !tbaa !54
  store ptr @.str.153, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 154, i32 2), align 16, !tbaa !54
  store ptr @.str.154, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 155, i32 2), align 16, !tbaa !54
  store ptr @.str.155, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 156, i32 2), align 16, !tbaa !54
  store ptr @.str.156, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 157, i32 2), align 16, !tbaa !54
  store ptr @.str.157, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 158, i32 2), align 16, !tbaa !54
  store ptr @.str.158, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 159, i32 2), align 16, !tbaa !54
  store ptr @.str.159, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 160, i32 2), align 16, !tbaa !54
  store ptr @.str.160, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 161, i32 2), align 16, !tbaa !54
  store ptr @.str.161, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 162, i32 2), align 16, !tbaa !54
  store ptr @.str.162, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 163, i32 2), align 16, !tbaa !54
  store ptr @.str.163, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 164, i32 2), align 16, !tbaa !54
  store ptr @.str.164, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 165, i32 2), align 16, !tbaa !54
  store ptr @.str.165, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 166, i32 2), align 16, !tbaa !54
  store ptr @.str.166, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 167, i32 2), align 16, !tbaa !54
  store ptr @.str.167, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 168, i32 2), align 16, !tbaa !54
  store ptr @.str.168, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 169, i32 2), align 16, !tbaa !54
  store ptr @.str.169, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 170, i32 2), align 16, !tbaa !54
  store ptr @.str.170, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 171, i32 2), align 16, !tbaa !54
  %1 = tail call i64 @sysconf(i32 noundef 2) #14
  %2 = sitofp i64 %1 to double
  %3 = fdiv double 1.000000e+00, %2
  store double %3, ptr @ticks_to_msec, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

declare i64 @sysconf(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @timevar_push_1(i32 noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = alloca %struct.timevar_time_def, align 8
  %3 = zext i32 %0 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #14
  %4 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %3, i32 3
  %5 = load i8, ptr %4, align 8
  %6 = or i8 %5, 2
  store i8 %6, ptr %4, align 8
  %7 = and i8 %5, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.171, i32 noundef 275, ptr noundef nonnull @.str.172) #14
  br label %10

10:                                               ; preds = %1, %9
  call fastcc void @get_time(ptr noundef nonnull %2)
  %11 = load ptr, ptr @stack, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %11, align 8, !tbaa !59
  %15 = load double, ptr %2, align 8, !tbaa !61
  %16 = load double, ptr @start_time, align 8, !tbaa !61
  %17 = fsub double %15, %16
  %18 = load double, ptr %14, align 8, !tbaa !61
  %19 = fadd double %18, %17
  store double %19, ptr %14, align 8, !tbaa !61
  %20 = getelementptr inbounds %struct.timevar_time_def, ptr %2, i64 0, i32 1
  %21 = load double, ptr %20, align 8, !tbaa !62
  %22 = load double, ptr getelementptr inbounds (%struct.timevar_time_def, ptr @start_time, i64 0, i32 1), align 8, !tbaa !62
  %23 = fsub double %21, %22
  %24 = getelementptr inbounds %struct.timevar_time_def, ptr %14, i64 0, i32 1
  %25 = load double, ptr %24, align 8, !tbaa !62
  %26 = fadd double %25, %23
  store double %26, ptr %24, align 8, !tbaa !62
  %27 = getelementptr inbounds %struct.timevar_time_def, ptr %2, i64 0, i32 2
  %28 = load double, ptr %27, align 8, !tbaa !63
  %29 = load double, ptr getelementptr inbounds (%struct.timevar_time_def, ptr @start_time, i64 0, i32 2), align 8, !tbaa !63
  %30 = fsub double %28, %29
  %31 = getelementptr inbounds %struct.timevar_time_def, ptr %14, i64 0, i32 2
  %32 = load double, ptr %31, align 8, !tbaa !63
  %33 = fadd double %32, %30
  store double %33, ptr %31, align 8, !tbaa !63
  %34 = getelementptr inbounds %struct.timevar_time_def, ptr %2, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !64
  %36 = load i32, ptr getelementptr inbounds (%struct.timevar_time_def, ptr @start_time, i64 0, i32 3), align 8, !tbaa !64
  %37 = sub i32 %35, %36
  %38 = getelementptr inbounds %struct.timevar_time_def, ptr %14, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !64
  %40 = add i32 %37, %39
  store i32 %40, ptr %38, align 8, !tbaa !64
  br label %41

41:                                               ; preds = %13, %10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @start_time, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !65
  %42 = load ptr, ptr @unused_stack_instances, align 8, !tbaa !35
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.timevar_stack_def, ptr %42, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !66
  store ptr %46, ptr @unused_stack_instances, align 8, !tbaa !35
  br label %49

47:                                               ; preds = %41
  %48 = tail call ptr @xmalloc(i64 noundef 16) #14
  br label %49

49:                                               ; preds = %47, %44
  %50 = phi ptr [ %42, %44 ], [ %48, %47 ]
  %51 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %3
  store ptr %51, ptr %50, align 8, !tbaa !59
  %52 = load ptr, ptr @stack, align 8, !tbaa !35
  %53 = getelementptr inbounds %struct.timevar_stack_def, ptr %50, i64 0, i32 1
  store ptr %52, ptr %53, align 8, !tbaa !66
  store ptr %50, ptr @stack, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #14
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @get_time(ptr nocapture noundef writeonly %0) unnamed_addr #11 !prof !34 {
  %2 = alloca %struct.tms, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %3 = load i64, ptr @timevar_ggc_mem_total, align 8, !tbaa !67
  %4 = trunc i64 %3 to i32
  %5 = getelementptr inbounds %struct.timevar_time_def, ptr %0, i64 0, i32 3
  store i32 %4, ptr %5, align 8, !tbaa !64
  %6 = load i8, ptr @timevar_enable, align 1, !tbaa !46
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.timevar_time_def, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.timevar_time_def, ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #14
  %11 = call i64 @times(ptr noundef nonnull %2)
  %12 = sitofp i64 %11 to double
  %13 = load double, ptr @ticks_to_msec, align 8, !tbaa !58
  %14 = fmul double %13, %12
  store double %14, ptr %9, align 8, !tbaa !63
  %15 = load i64, ptr %2, align 8, !tbaa !68
  %16 = sitofp i64 %15 to double
  %17 = fmul double %13, %16
  store double %17, ptr %0, align 8, !tbaa !61
  %18 = getelementptr inbounds %struct.tms, ptr %2, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !70
  %20 = sitofp i64 %19 to double
  %21 = fmul double %13, %20
  store double %21, ptr %10, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #14
  br label %22

22:                                               ; preds = %1, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @timevar_pop_1(i32 noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = alloca %struct.timevar_time_def, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #14
  %3 = load ptr, ptr @stack, align 8, !tbaa !35
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %4
  %6 = load ptr, ptr %3, align 8, !tbaa !59
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.171, i32 noundef 317, ptr noundef nonnull @.str.172) #14
  br label %9

9:                                                ; preds = %1, %8
  call fastcc void @get_time(ptr noundef nonnull %2)
  %10 = load ptr, ptr %3, align 8, !tbaa !59
  %11 = load double, ptr %2, align 8, !tbaa !61
  %12 = load double, ptr @start_time, align 8, !tbaa !61
  %13 = fsub double %11, %12
  %14 = load double, ptr %10, align 8, !tbaa !61
  %15 = fadd double %14, %13
  store double %15, ptr %10, align 8, !tbaa !61
  %16 = getelementptr inbounds %struct.timevar_time_def, ptr %2, i64 0, i32 1
  %17 = load double, ptr %16, align 8, !tbaa !62
  %18 = load double, ptr getelementptr inbounds (%struct.timevar_time_def, ptr @start_time, i64 0, i32 1), align 8, !tbaa !62
  %19 = fsub double %17, %18
  %20 = getelementptr inbounds %struct.timevar_time_def, ptr %10, i64 0, i32 1
  %21 = load double, ptr %20, align 8, !tbaa !62
  %22 = fadd double %21, %19
  store double %22, ptr %20, align 8, !tbaa !62
  %23 = getelementptr inbounds %struct.timevar_time_def, ptr %2, i64 0, i32 2
  %24 = load double, ptr %23, align 8, !tbaa !63
  %25 = load double, ptr getelementptr inbounds (%struct.timevar_time_def, ptr @start_time, i64 0, i32 2), align 8, !tbaa !63
  %26 = fsub double %24, %25
  %27 = getelementptr inbounds %struct.timevar_time_def, ptr %10, i64 0, i32 2
  %28 = load double, ptr %27, align 8, !tbaa !63
  %29 = fadd double %28, %26
  store double %29, ptr %27, align 8, !tbaa !63
  %30 = getelementptr inbounds %struct.timevar_time_def, ptr %2, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !64
  %32 = load i32, ptr getelementptr inbounds (%struct.timevar_time_def, ptr @start_time, i64 0, i32 3), align 8, !tbaa !64
  %33 = sub i32 %31, %32
  %34 = getelementptr inbounds %struct.timevar_time_def, ptr %10, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !64
  %36 = add i32 %33, %35
  store i32 %36, ptr %34, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @start_time, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !65
  %37 = load ptr, ptr @stack, align 8, !tbaa !35
  %38 = getelementptr inbounds %struct.timevar_stack_def, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !66
  store ptr %39, ptr @stack, align 8, !tbaa !35
  %40 = load ptr, ptr @unused_stack_instances, align 8, !tbaa !35
  %41 = getelementptr inbounds %struct.timevar_stack_def, ptr %3, i64 0, i32 1
  store ptr %40, ptr %41, align 8, !tbaa !66
  store ptr %3, ptr @unused_stack_instances, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @timevar_start(i32 noundef %0) local_unnamed_addr #9 !prof !71 {
  %2 = zext i32 %0 to i64
  %3 = load i8, ptr @timevar_enable, align 1, !tbaa !46
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %16, label %5, !prof !72

5:                                                ; preds = %1
  %6 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %2, i32 3
  %7 = load i8, ptr %6, align 8
  %8 = or i8 %7, 2
  store i8 %8, ptr %6, align 8
  %9 = and i8 %7, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.171, i32 noundef 355, ptr noundef nonnull @.str.172) #14
  br label %12

12:                                               ; preds = %5, %11
  %13 = load i8, ptr %6, align 8
  %14 = or i8 %13, 1
  store i8 %14, ptr %6, align 8
  %15 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %2, i32 1
  tail call fastcc void @get_time(ptr noundef nonnull %15)
  br label %16

16:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @timevar_stop(i32 noundef %0) local_unnamed_addr #9 !prof !71 {
  %2 = alloca %struct.timevar_time_def, align 8
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #14
  %5 = load i8, ptr @timevar_enable, align 1, !tbaa !46
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %44, label %7, !prof !72

7:                                                ; preds = %1
  %8 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %3, i32 3
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.171, i32 noundef 374, ptr noundef nonnull @.str.172) #14
  br label %13

13:                                               ; preds = %7, %12
  call fastcc void @get_time(ptr noundef nonnull %2)
  %14 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %3, i32 1
  %15 = load double, ptr %2, align 8, !tbaa !61
  %16 = load double, ptr %14, align 16, !tbaa !61
  %17 = fsub double %15, %16
  %18 = load double, ptr %4, align 16, !tbaa !61
  %19 = fadd double %18, %17
  store double %19, ptr %4, align 16, !tbaa !61
  %20 = getelementptr inbounds %struct.timevar_time_def, ptr %2, i64 0, i32 1
  %21 = load double, ptr %20, align 8, !tbaa !62
  %22 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %3, i32 1, i32 1
  %23 = load double, ptr %22, align 8, !tbaa !62
  %24 = fsub double %21, %23
  %25 = getelementptr inbounds %struct.timevar_time_def, ptr %4, i64 0, i32 1
  %26 = load double, ptr %25, align 8, !tbaa !62
  %27 = fadd double %26, %24
  store double %27, ptr %25, align 8, !tbaa !62
  %28 = getelementptr inbounds %struct.timevar_time_def, ptr %2, i64 0, i32 2
  %29 = load double, ptr %28, align 8, !tbaa !63
  %30 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %3, i32 1, i32 2
  %31 = load double, ptr %30, align 16, !tbaa !63
  %32 = fsub double %29, %31
  %33 = getelementptr inbounds %struct.timevar_time_def, ptr %4, i64 0, i32 2
  %34 = load double, ptr %33, align 16, !tbaa !63
  %35 = fadd double %34, %32
  store double %35, ptr %33, align 16, !tbaa !63
  %36 = getelementptr inbounds %struct.timevar_time_def, ptr %2, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !64
  %38 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %3, i32 1, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !64
  %40 = sub i32 %37, %39
  %41 = getelementptr inbounds %struct.timevar_time_def, ptr %4, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !64
  %43 = add i32 %40, %42
  store i32 %43, ptr %41, align 8, !tbaa !64
  br label %44

44:                                               ; preds = %1, %13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #14
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @timevar_print(ptr noundef %0) local_unnamed_addr #11 !prof !71 {
  %2 = alloca %struct.timevar_time_def, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #14
  %3 = load i8, ptr @timevar_enable, align 1, !tbaa !46
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %119, label %5, !prof !72

5:                                                ; preds = %1
  %6 = icmp eq ptr %0, null
  %7 = load ptr, ptr @stderr, align 8
  %8 = select i1 %6, ptr %7, ptr %0
  call fastcc void @get_time(ptr noundef nonnull %2)
  %9 = load ptr, ptr @stack, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %9, align 8, !tbaa !59
  %13 = load double, ptr %2, align 8, !tbaa !61
  %14 = load double, ptr @start_time, align 8, !tbaa !61
  %15 = fsub double %13, %14
  %16 = load double, ptr %12, align 8, !tbaa !61
  %17 = fadd double %16, %15
  store double %17, ptr %12, align 8, !tbaa !61
  %18 = getelementptr inbounds %struct.timevar_time_def, ptr %2, i64 0, i32 1
  %19 = load double, ptr %18, align 8, !tbaa !62
  %20 = load double, ptr getelementptr inbounds (%struct.timevar_time_def, ptr @start_time, i64 0, i32 1), align 8, !tbaa !62
  %21 = fsub double %19, %20
  %22 = getelementptr inbounds %struct.timevar_time_def, ptr %12, i64 0, i32 1
  %23 = load double, ptr %22, align 8, !tbaa !62
  %24 = fadd double %23, %21
  store double %24, ptr %22, align 8, !tbaa !62
  %25 = getelementptr inbounds %struct.timevar_time_def, ptr %2, i64 0, i32 2
  %26 = load double, ptr %25, align 8, !tbaa !63
  %27 = load double, ptr getelementptr inbounds (%struct.timevar_time_def, ptr @start_time, i64 0, i32 2), align 8, !tbaa !63
  %28 = fsub double %26, %27
  %29 = getelementptr inbounds %struct.timevar_time_def, ptr %12, i64 0, i32 2
  %30 = load double, ptr %29, align 8, !tbaa !63
  %31 = fadd double %30, %28
  store double %31, ptr %29, align 8, !tbaa !63
  %32 = getelementptr inbounds %struct.timevar_time_def, ptr %2, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !64
  %34 = load i32, ptr getelementptr inbounds (%struct.timevar_time_def, ptr @start_time, i64 0, i32 3), align 8, !tbaa !64
  %35 = sub i32 %33, %34
  %36 = getelementptr inbounds %struct.timevar_time_def, ptr %12, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !64
  %38 = add i32 %35, %37
  store i32 %38, ptr %36, align 8, !tbaa !64
  br label %39

39:                                               ; preds = %11, %5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @start_time, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !65
  %40 = tail call i64 @fwrite(ptr nonnull @.str.173, i64 27, i64 1, ptr %8)
  br label %41

41:                                               ; preds = %39, %105
  %42 = phi i64 [ 0, %39 ], [ %106, %105 ]
  %43 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %42
  %44 = icmp eq i64 %42, 1
  br i1 %44, label %105, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %42, i32 3
  %47 = load i8, ptr %46, align 8
  %48 = and i8 %47, 2
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %105, label %50

50:                                               ; preds = %45
  %51 = load double, ptr %43, align 16, !tbaa !73
  %52 = fcmp olt double %51, 5.000000e-03
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.timevar_time_def, ptr %43, i64 0, i32 1
  %55 = load double, ptr %54, align 8, !tbaa !74
  %56 = fcmp olt double %55, 5.000000e-03
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.timevar_time_def, ptr %43, i64 0, i32 2
  %59 = load double, ptr %58, align 16, !tbaa !75
  %60 = fcmp olt double %59, 5.000000e-03
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.timevar_time_def, ptr %43, i64 0, i32 3
  %63 = load i32, ptr %62, align 8, !tbaa !76
  %64 = icmp ult i32 %63, 1048576
  br i1 %64, label %105, label %65

65:                                               ; preds = %61, %57, %53, %50
  %66 = getelementptr inbounds [172 x %struct.timevar_def], ptr @timevars, i64 0, i64 %42, i32 2
  %67 = load ptr, ptr %66, align 16, !tbaa !54
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.174, ptr noundef %67)
  %69 = load double, ptr %43, align 16, !tbaa !73
  %70 = load double, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 1), align 16, !tbaa !61
  %71 = fcmp oeq double %70, 0.000000e+00
  %72 = fdiv double %69, %70
  %73 = fmul double %72, 1.000000e+02
  %74 = select i1 %71, double 0.000000e+00, double %73
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.175, double noundef %69, double noundef %74)
  %76 = getelementptr inbounds %struct.timevar_time_def, ptr %43, i64 0, i32 1
  %77 = load double, ptr %76, align 8, !tbaa !74
  %78 = load double, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 1, i32 0, i32 1), align 8, !tbaa !62
  %79 = fcmp oeq double %78, 0.000000e+00
  %80 = fdiv double %77, %78
  %81 = fmul double %80, 1.000000e+02
  %82 = select i1 %79, double 0.000000e+00, double %81
  %83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.176, double noundef %77, double noundef %82)
  %84 = getelementptr inbounds %struct.timevar_time_def, ptr %43, i64 0, i32 2
  %85 = load double, ptr %84, align 16, !tbaa !75
  %86 = load double, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 1, i32 0, i32 2), align 16, !tbaa !63
  %87 = fcmp oeq double %86, 0.000000e+00
  %88 = fdiv double %85, %86
  %89 = fmul double %88, 1.000000e+02
  %90 = select i1 %87, double 0.000000e+00, double %89
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.177, double noundef %85, double noundef %90)
  %92 = getelementptr inbounds %struct.timevar_time_def, ptr %43, i64 0, i32 3
  %93 = load i32, ptr %92, align 8, !tbaa !76
  %94 = lshr i32 %93, 10
  %95 = load i32, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 1, i32 0, i32 3), align 8, !tbaa !64
  %96 = icmp eq i32 %95, 0
  %97 = uitofp i32 %93 to float
  %98 = uitofp i32 %95 to float
  %99 = fdiv float %97, %98
  %100 = fmul float %99, 1.000000e+02
  %101 = fpext float %100 to double
  %102 = select i1 %96, double 0.000000e+00, double %101
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.178, i32 noundef %94, double noundef %102)
  %104 = tail call i32 @putc(i32 noundef 10, ptr noundef %8)
  br label %105

105:                                              ; preds = %61, %45, %41, %65
  %106 = add nuw nsw i64 %42, 1
  %107 = icmp eq i64 %106, 172
  br i1 %107, label %108, label %41, !llvm.loop !77

108:                                              ; preds = %105
  %109 = tail call i64 @fwrite(ptr nonnull @.str.179, i64 24, i64 1, ptr %8)
  %110 = load double, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 1), align 16, !tbaa !61
  %111 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.180, double noundef %110)
  %112 = load double, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 1, i32 0, i32 1), align 8, !tbaa !62
  %113 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.180, double noundef %112)
  %114 = load double, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 1, i32 0, i32 2), align 16, !tbaa !63
  %115 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.181, double noundef %114)
  %116 = load i32, ptr getelementptr inbounds ([172 x %struct.timevar_def], ptr @timevars, i64 0, i64 1, i32 0, i32 3), align 8, !tbaa !64
  %117 = lshr i32 %116, 10
  %118 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.182, i32 noundef %117)
  br label %119

119:                                              ; preds = %1, %108
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #14
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @print_time(ptr noundef %0, i64 noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = tail call i64 @get_run_time() #14
  %4 = load ptr, ptr @stderr, align 8, !tbaa !35
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
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.183, ptr noundef %0, i64 noundef %16, i64 noundef %15, i64 noundef %14) #15
  ret void
}

declare i64 @get_run_time() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @times(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind }
attributes #15 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !36, i64 64}
!55 = !{!"timevar_def", !56, i64 0, !56, i64 32, !36, i64 64, !41, i64 72, !41, i64 72}
!56 = !{!"timevar_time_def", !57, i64 0, !57, i64 8, !57, i64 16, !41, i64 24}
!57 = !{!"double", !37, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!60, !36, i64 0}
!60 = !{!"timevar_stack_def", !36, i64 0, !36, i64 8}
!61 = !{!56, !57, i64 0}
!62 = !{!56, !57, i64 8}
!63 = !{!56, !57, i64 16}
!64 = !{!56, !41, i64 24}
!65 = !{i64 0, i64 8, !58, i64 8, i64 8, !58, i64 16, i64 8, !58, i64 24, i64 4, !50}
!66 = !{!60, !36, i64 8}
!67 = !{!42, !42, i64 0}
!68 = !{!69, !42, i64 0}
!69 = !{!"tms", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24}
!70 = !{!69, !42, i64 8}
!71 = !{!"function_entry_count", i64 1}
!72 = !{!"branch_weights", i32 1, i32 0}
!73 = !{!55, !57, i64 0}
!74 = !{!55, !57, i64 8}
!75 = !{!55, !57, i64 16}
!76 = !{!55, !41, i64 24}
!77 = distinct !{!77, !52, !53}
