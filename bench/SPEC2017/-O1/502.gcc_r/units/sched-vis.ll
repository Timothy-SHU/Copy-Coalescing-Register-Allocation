; ModuleID = 'sched-vis.c'
source_filename = "sched-vis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.haifa_sched_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, i32 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"<0x%lx,0x%lx>\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"L%d\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"const(\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"high(\00", align 1
@reg_names = external local_unnamed_addr global [53 x ptr], align 16
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str.9 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"r%d\00", align 1
@current_sched_info = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@mode_name = external local_unnamed_addr constant [87 x ptr], align 16
@.str.12 = private unnamed_addr constant [4 x i8] c"#%d\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"scratch\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"cc0\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"D#%i\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"clobber %s\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"use %s\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"loc %s\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@.str.24 = private unnamed_addr constant [8 x i8] c"(%s) %s\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"%s%s;\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"%s}\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"sched-vis.c\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"asm {%s}\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"trap_if %s\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"unspec/v{\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c" %4d %s\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.36 = private unnamed_addr constant [5 x i8] c"D.%i\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c" %4d: debug %s optimized away\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c" %4d: debug %s => %s\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"%s: jump %s\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"call <...>\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"L%d:\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"i%4d: barrier\00", align 1
@note_insn_name = external local_unnamed_addr constant [13 x ptr], align 16
@.str.43 = private unnamed_addr constant [17 x i8] c"i%4d  <What %s?>\00", align 1
@rtx_name = external local_unnamed_addr constant [139 x ptr], align 16
@.str.44 = private unnamed_addr constant [14 x i8] c"      %s: %s\0A\00", align 1
@reg_note_name = external local_unnamed_addr constant [0 x ptr], align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.45 = private unnamed_addr constant [4 x i8] c";; \00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.46 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"+low(\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"udiv\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"umod\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"smin\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"smax\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"umin\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"umax\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c" 0>>\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"<-<\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c">->\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"ffs\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"gtu\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"ltu\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"geu\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"leu\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"sign_extract\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"sxt\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"zero_extract\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"zxt\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"sign_extend\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"sxn\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"zero_extend\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"zxn\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"float_extend\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"fxn\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"trn\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"float_trunc\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"ftr\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"flt\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"uns_float\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"ufl\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"fix\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"uns_fix\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"ufx\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"pre \00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"post \00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"call \00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c" argc:\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"{(\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c")?\00", align 1
@.str.110 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.111 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"trap_if\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"prefetch\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"unspec\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"/v\00", align 1
@.str.116 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.117 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.119 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.120 = private unnamed_addr constant [2 x i8] c"(\00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #13
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #13
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #13
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
  %5 = tail call ptr @__ctype_tolower_loc() #13
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
  %5 = tail call ptr @__ctype_toupper_loc() #13
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #13
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
define dso_local void @print_value(ptr noundef writeonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca [2048 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %4) #13
  %5 = load i32, ptr %1, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %441 [
    i16 30, label %7
    i16 32, label %22
    i16 31, label %48
    i16 34, label %61
    i16 45, label %98
    i16 44, label %135
    i16 35, label %152
    i16 121, label %198
    i16 37, label %244
    i16 39, label %323
    i16 38, label %359
    i16 46, label %368
    i16 36, label %377
    i16 43, label %386
    i16 2, label %423
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !46
  %10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %9)
  br label %11

11:                                               ; preds = %7, %17
  %12 = phi ptr [ %0, %7 ], [ %20, %17 ]
  %13 = phi i64 [ 0, %7 ], [ %19, %17 ]
  %14 = phi ptr [ %4, %7 ], [ %18, %17 ]
  %15 = load i8, ptr %14, align 1, !tbaa !46
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %453, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds i8, ptr %14, i64 1
  %19 = add nuw nsw i64 %13, 1
  store i8 %15, ptr %12, align 1, !tbaa !46
  %20 = getelementptr inbounds i8, ptr %0, i64 %19
  %21 = icmp eq i64 %19, 2046
  br i1 %21, label %453, label %11, !llvm.loop !54

22:                                               ; preds = %3
  %23 = lshr i32 %5, 16
  %24 = and i32 %23, 255
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !46
  switch i8 %27, label %30 [
    i8 8, label %28
    i8 9, label %28
    i8 11, label %28
    i8 17, label %28
  ]

28:                                               ; preds = %22, %22, %22, %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  call void @real_to_decimal(ptr noundef nonnull %4, ptr noundef nonnull %29, i64 noundef 2048, i64 noundef 0, i32 noundef 1) #13
  br label %36

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !46
  %33 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load i64, ptr %33, align 8, !tbaa !46
  %35 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.1, i64 noundef %32, i64 noundef %34)
  br label %36

36:                                               ; preds = %30, %28
  br label %37

37:                                               ; preds = %36, %43
  %38 = phi ptr [ %46, %43 ], [ %0, %36 ]
  %39 = phi i64 [ %45, %43 ], [ 0, %36 ]
  %40 = phi ptr [ %44, %43 ], [ %4, %36 ]
  %41 = load i8, ptr %40, align 1, !tbaa !46
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %453, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds i8, ptr %40, i64 1
  %45 = add nuw nsw i64 %39, 1
  store i8 %41, ptr %38, align 1, !tbaa !46
  %46 = getelementptr inbounds i8, ptr %0, i64 %45
  %47 = icmp eq i64 %45, 2046
  br i1 %47, label %453, label %37, !llvm.loop !54

48:                                               ; preds = %3
  %49 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  call void @fixed_to_decimal(ptr noundef nonnull %4, ptr noundef nonnull %49, i64 noundef 2048) #13
  br label %50

50:                                               ; preds = %48, %56
  %51 = phi ptr [ %0, %48 ], [ %59, %56 ]
  %52 = phi i64 [ 0, %48 ], [ %58, %56 ]
  %53 = phi ptr [ %4, %48 ], [ %57, %56 ]
  %54 = load i8, ptr %53, align 1, !tbaa !46
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %453, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds i8, ptr %53, i64 1
  %58 = add nuw nsw i64 %52, 1
  store i8 %54, ptr %51, align 1, !tbaa !46
  %59 = getelementptr inbounds i8, ptr %0, i64 %58
  %60 = icmp eq i64 %58, 2046
  br i1 %60, label %453, label %50, !llvm.loop !54

61:                                               ; preds = %3
  %62 = getelementptr inbounds i8, ptr %0, i64 2046
  store i8 34, ptr %0, align 1, !tbaa !46
  %63 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 0, ptr %63, align 1, !tbaa !46
  %64 = getelementptr inbounds i8, ptr %0, i64 1
  %65 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !46
  br label %67

67:                                               ; preds = %61, %73
  %68 = phi ptr [ %76, %73 ], [ %64, %61 ]
  %69 = phi i64 [ %75, %73 ], [ 1, %61 ]
  %70 = phi ptr [ %74, %73 ], [ %66, %61 ]
  %71 = load i8, ptr %70, align 1, !tbaa !46
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds i8, ptr %70, i64 1
  %75 = add nuw nsw i64 %69, 1
  store i8 %71, ptr %68, align 1, !tbaa !46
  %76 = getelementptr inbounds i8, ptr %0, i64 %75
  %77 = icmp eq i64 %75, 2046
  br i1 %77, label %78, label %67, !llvm.loop !54

78:                                               ; preds = %73, %67
  %79 = phi i64 [ 2046, %73 ], [ %69, %67 ]
  %80 = phi ptr [ %76, %73 ], [ %68, %67 ]
  store i8 0, ptr %80, align 1, !tbaa !46
  %81 = icmp ugt i64 %79, 2046
  br i1 %81, label %453, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds i8, ptr %0, i64 %79
  %84 = icmp eq i64 %79, 2046
  br i1 %84, label %453, label %85

85:                                               ; preds = %82
  %86 = add nuw nsw i64 %79, 1
  br label %87

87:                                               ; preds = %85, %92
  %88 = phi ptr [ %96, %92 ], [ %83, %85 ]
  %89 = phi i64 [ %95, %92 ], [ %79, %85 ]
  %90 = phi ptr [ %94, %92 ], [ @.str.2, %85 ]
  %91 = icmp eq i64 %89, %86
  br i1 %91, label %453, label %92

92:                                               ; preds = %87
  %93 = load i8, ptr %90, align 1, !tbaa !46
  %94 = getelementptr inbounds i8, ptr %90, i64 1
  %95 = add nuw nsw i64 %89, 1
  store i8 %93, ptr %88, align 1, !tbaa !46
  %96 = getelementptr inbounds i8, ptr %0, i64 %95
  %97 = icmp eq i64 %95, 2046
  br i1 %97, label %453, label %87, !llvm.loop !54

98:                                               ; preds = %3
  %99 = getelementptr inbounds i8, ptr %0, i64 2046
  store i8 96, ptr %0, align 1, !tbaa !46
  %100 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 0, ptr %100, align 1, !tbaa !46
  %101 = getelementptr inbounds i8, ptr %0, i64 1
  %102 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !46
  br label %104

104:                                              ; preds = %98, %110
  %105 = phi ptr [ %113, %110 ], [ %101, %98 ]
  %106 = phi i64 [ %112, %110 ], [ 1, %98 ]
  %107 = phi ptr [ %111, %110 ], [ %103, %98 ]
  %108 = load i8, ptr %107, align 1, !tbaa !46
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds i8, ptr %107, i64 1
  %112 = add nuw nsw i64 %106, 1
  store i8 %108, ptr %105, align 1, !tbaa !46
  %113 = getelementptr inbounds i8, ptr %0, i64 %112
  %114 = icmp eq i64 %112, 2046
  br i1 %114, label %115, label %104, !llvm.loop !54

115:                                              ; preds = %110, %104
  %116 = phi i64 [ 2046, %110 ], [ %106, %104 ]
  %117 = phi ptr [ %113, %110 ], [ %105, %104 ]
  store i8 0, ptr %117, align 1, !tbaa !46
  %118 = icmp ugt i64 %116, 2046
  br i1 %118, label %453, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds i8, ptr %0, i64 %116
  %121 = icmp eq i64 %116, 2046
  br i1 %121, label %453, label %122

122:                                              ; preds = %119
  %123 = add nuw nsw i64 %116, 1
  br label %124

124:                                              ; preds = %122, %129
  %125 = phi ptr [ %133, %129 ], [ %120, %122 ]
  %126 = phi i64 [ %132, %129 ], [ %116, %122 ]
  %127 = phi ptr [ %131, %129 ], [ @.str.4, %122 ]
  %128 = icmp eq i64 %126, %123
  br i1 %128, label %453, label %129

129:                                              ; preds = %124
  %130 = load i8, ptr %127, align 1, !tbaa !46
  %131 = getelementptr inbounds i8, ptr %127, i64 1
  %132 = add nuw nsw i64 %126, 1
  store i8 %130, ptr %125, align 1, !tbaa !46
  %133 = getelementptr inbounds i8, ptr %0, i64 %132
  %134 = icmp eq i64 %132, 2046
  br i1 %134, label %453, label %124, !llvm.loop !54

135:                                              ; preds = %3
  %136 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !46
  %138 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 0, i32 1
  %139 = load i32, ptr %138, align 8, !tbaa !46
  %140 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %139)
  br label %141

141:                                              ; preds = %135, %147
  %142 = phi ptr [ %0, %135 ], [ %150, %147 ]
  %143 = phi i64 [ 0, %135 ], [ %149, %147 ]
  %144 = phi ptr [ %4, %135 ], [ %148, %147 ]
  %145 = load i8, ptr %144, align 1, !tbaa !46
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %453, label %147

147:                                              ; preds = %141
  %148 = getelementptr inbounds i8, ptr %144, i64 1
  %149 = add nuw nsw i64 %143, 1
  store i8 %145, ptr %142, align 1, !tbaa !46
  %150 = getelementptr inbounds i8, ptr %0, i64 %149
  %151 = icmp eq i64 %149, 2046
  br i1 %151, label %453, label %141, !llvm.loop !54

152:                                              ; preds = %3
  %153 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !46
  call void @print_value(ptr noundef nonnull %4, ptr noundef %154, i32 noundef %2)
  %155 = getelementptr inbounds i8, ptr %0, i64 2046
  br label %156

156:                                              ; preds = %152, %156
  %157 = phi ptr [ @.str.6, %152 ], [ %161, %156 ]
  %158 = phi i64 [ 0, %152 ], [ %162, %156 ]
  %159 = phi ptr [ %0, %152 ], [ %163, %156 ]
  %160 = load i8, ptr %157, align 1, !tbaa !46
  %161 = getelementptr inbounds i8, ptr %157, i64 1
  %162 = add nuw nsw i64 %158, 1
  store i8 %160, ptr %159, align 1, !tbaa !46
  %163 = getelementptr inbounds i8, ptr %0, i64 %162
  %164 = icmp eq i64 %162, 6
  br i1 %164, label %165, label %156

165:                                              ; preds = %156
  store i8 0, ptr %163, align 1, !tbaa !46
  %166 = getelementptr inbounds i8, ptr %0, i64 6
  br label %167

167:                                              ; preds = %165, %173
  %168 = phi ptr [ %176, %173 ], [ %166, %165 ]
  %169 = phi i64 [ %175, %173 ], [ 6, %165 ]
  %170 = phi ptr [ %174, %173 ], [ %4, %165 ]
  %171 = load i8, ptr %170, align 1, !tbaa !46
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %167
  %174 = getelementptr inbounds i8, ptr %170, i64 1
  %175 = add nuw nsw i64 %169, 1
  store i8 %171, ptr %168, align 1, !tbaa !46
  %176 = getelementptr inbounds i8, ptr %0, i64 %175
  %177 = icmp eq i64 %175, 2046
  br i1 %177, label %178, label %167, !llvm.loop !54

178:                                              ; preds = %173, %167
  %179 = phi i64 [ 2046, %173 ], [ %169, %167 ]
  %180 = phi ptr [ %176, %173 ], [ %168, %167 ]
  store i8 0, ptr %180, align 1, !tbaa !46
  %181 = icmp ugt i64 %179, 2046
  br i1 %181, label %453, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds i8, ptr %0, i64 %179
  %184 = icmp eq i64 %179, 2046
  br i1 %184, label %453, label %185

185:                                              ; preds = %182
  %186 = add nuw nsw i64 %179, 1
  br label %187

187:                                              ; preds = %185, %192
  %188 = phi ptr [ %196, %192 ], [ %183, %185 ]
  %189 = phi i64 [ %195, %192 ], [ %179, %185 ]
  %190 = phi ptr [ %194, %192 ], [ @.str.7, %185 ]
  %191 = icmp eq i64 %189, %186
  br i1 %191, label %453, label %192

192:                                              ; preds = %187
  %193 = load i8, ptr %190, align 1, !tbaa !46
  %194 = getelementptr inbounds i8, ptr %190, i64 1
  %195 = add nuw nsw i64 %189, 1
  store i8 %193, ptr %188, align 1, !tbaa !46
  %196 = getelementptr inbounds i8, ptr %0, i64 %195
  %197 = icmp eq i64 %195, 2046
  br i1 %197, label %453, label %187, !llvm.loop !54

198:                                              ; preds = %3
  %199 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !46
  call void @print_value(ptr noundef nonnull %4, ptr noundef %200, i32 noundef %2)
  %201 = getelementptr inbounds i8, ptr %0, i64 2046
  br label %202

202:                                              ; preds = %198, %202
  %203 = phi ptr [ @.str.8, %198 ], [ %207, %202 ]
  %204 = phi i64 [ 0, %198 ], [ %208, %202 ]
  %205 = phi ptr [ %0, %198 ], [ %209, %202 ]
  %206 = load i8, ptr %203, align 1, !tbaa !46
  %207 = getelementptr inbounds i8, ptr %203, i64 1
  %208 = add nuw nsw i64 %204, 1
  store i8 %206, ptr %205, align 1, !tbaa !46
  %209 = getelementptr inbounds i8, ptr %0, i64 %208
  %210 = icmp eq i64 %208, 5
  br i1 %210, label %211, label %202

211:                                              ; preds = %202
  store i8 0, ptr %209, align 1, !tbaa !46
  %212 = getelementptr inbounds i8, ptr %0, i64 5
  br label %213

213:                                              ; preds = %211, %219
  %214 = phi ptr [ %222, %219 ], [ %212, %211 ]
  %215 = phi i64 [ %221, %219 ], [ 5, %211 ]
  %216 = phi ptr [ %220, %219 ], [ %4, %211 ]
  %217 = load i8, ptr %216, align 1, !tbaa !46
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %213
  %220 = getelementptr inbounds i8, ptr %216, i64 1
  %221 = add nuw nsw i64 %215, 1
  store i8 %217, ptr %214, align 1, !tbaa !46
  %222 = getelementptr inbounds i8, ptr %0, i64 %221
  %223 = icmp eq i64 %221, 2046
  br i1 %223, label %224, label %213, !llvm.loop !54

224:                                              ; preds = %219, %213
  %225 = phi i64 [ 2046, %219 ], [ %215, %213 ]
  %226 = phi ptr [ %222, %219 ], [ %214, %213 ]
  store i8 0, ptr %226, align 1, !tbaa !46
  %227 = icmp ugt i64 %225, 2046
  br i1 %227, label %453, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds i8, ptr %0, i64 %225
  %230 = icmp eq i64 %225, 2046
  br i1 %230, label %453, label %231

231:                                              ; preds = %228
  %232 = add nuw nsw i64 %225, 1
  br label %233

233:                                              ; preds = %231, %238
  %234 = phi ptr [ %242, %238 ], [ %229, %231 ]
  %235 = phi i64 [ %241, %238 ], [ %225, %231 ]
  %236 = phi ptr [ %240, %238 ], [ @.str.7, %231 ]
  %237 = icmp eq i64 %235, %232
  br i1 %237, label %453, label %238

238:                                              ; preds = %233
  %239 = load i8, ptr %236, align 1, !tbaa !46
  %240 = getelementptr inbounds i8, ptr %236, i64 1
  %241 = add nuw nsw i64 %235, 1
  store i8 %239, ptr %234, align 1, !tbaa !46
  %242 = getelementptr inbounds i8, ptr %0, i64 %241
  %243 = icmp eq i64 %241, 2046
  br i1 %243, label %453, label %233, !llvm.loop !54

244:                                              ; preds = %3
  %245 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %246 = load i32, ptr %245, align 8, !tbaa !46
  %247 = icmp ult i32 %246, 53
  br i1 %247, label %248, label %278

248:                                              ; preds = %244
  %249 = zext nneg i32 %246 to i64
  %250 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %249
  %251 = load ptr, ptr %250, align 8, !tbaa !35
  %252 = load i8, ptr %251, align 1, !tbaa !46
  %253 = zext i8 %252 to i64
  %254 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %253
  %255 = load i16, ptr %254, align 2, !tbaa !55
  %256 = and i16 %255, 4
  %257 = icmp eq i16 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %248
  store i8 37, ptr %0, align 1, !tbaa !46
  %259 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 0, ptr %259, align 1, !tbaa !46
  br label %260

260:                                              ; preds = %258, %248
  %261 = phi i64 [ 1, %258 ], [ 0, %248 ]
  %262 = getelementptr inbounds i8, ptr %0, i64 %261
  %263 = load i32, ptr %245, align 8, !tbaa !46
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %264
  %266 = load ptr, ptr %265, align 8, !tbaa !35
  br label %267

267:                                              ; preds = %260, %273
  %268 = phi ptr [ %276, %273 ], [ %262, %260 ]
  %269 = phi i64 [ %275, %273 ], [ %261, %260 ]
  %270 = phi ptr [ %274, %273 ], [ %266, %260 ]
  %271 = load i8, ptr %270, align 1, !tbaa !46
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %291, label %273

273:                                              ; preds = %267
  %274 = getelementptr inbounds i8, ptr %270, i64 1
  %275 = add nuw nsw i64 %269, 1
  store i8 %271, ptr %268, align 1, !tbaa !46
  %276 = getelementptr inbounds i8, ptr %0, i64 %275
  %277 = icmp eq i64 %275, 2046
  br i1 %277, label %291, label %267, !llvm.loop !54

278:                                              ; preds = %244
  %279 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %246)
  br label %280

280:                                              ; preds = %278, %286
  %281 = phi ptr [ %0, %278 ], [ %289, %286 ]
  %282 = phi i64 [ 0, %278 ], [ %288, %286 ]
  %283 = phi ptr [ %4, %278 ], [ %287, %286 ]
  %284 = load i8, ptr %283, align 1, !tbaa !46
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %291, label %286

286:                                              ; preds = %280
  %287 = getelementptr inbounds i8, ptr %283, i64 1
  %288 = add nuw nsw i64 %282, 1
  store i8 %284, ptr %281, align 1, !tbaa !46
  %289 = getelementptr inbounds i8, ptr %0, i64 %288
  %290 = icmp eq i64 %288, 2046
  br i1 %290, label %291, label %280, !llvm.loop !54

291:                                              ; preds = %280, %286, %267, %273
  %292 = phi ptr [ %268, %267 ], [ %276, %273 ], [ %281, %280 ], [ %289, %286 ]
  %293 = phi i64 [ %269, %267 ], [ 2046, %273 ], [ %282, %280 ], [ 2046, %286 ]
  store i8 0, ptr %292, align 1, !tbaa !46
  %294 = icmp eq i32 %2, 0
  %295 = load ptr, ptr @current_sched_info, align 8
  %296 = icmp ne ptr %295, null
  %297 = select i1 %294, i1 true, i1 %296
  br i1 %297, label %455, label %298

298:                                              ; preds = %291
  %299 = load i32, ptr %1, align 8
  %300 = lshr i32 %299, 16
  %301 = and i32 %300, 255
  %302 = zext nneg i32 %301 to i64
  %303 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %302
  %304 = load ptr, ptr %303, align 8, !tbaa !35
  %305 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %304)
  %306 = icmp sgt i64 %293, 2046
  br i1 %306, label %310, label %307

307:                                              ; preds = %298
  %308 = getelementptr inbounds i8, ptr %0, i64 %293
  %309 = icmp eq i64 %293, 2046
  br i1 %309, label %453, label %312

310:                                              ; preds = %298
  %311 = getelementptr inbounds i8, ptr %0, i64 2046
  br label %453

312:                                              ; preds = %307, %318
  %313 = phi ptr [ %321, %318 ], [ %308, %307 ]
  %314 = phi i64 [ %320, %318 ], [ %293, %307 ]
  %315 = phi ptr [ %319, %318 ], [ %4, %307 ]
  %316 = load i8, ptr %315, align 1, !tbaa !46
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %453, label %318

318:                                              ; preds = %312
  %319 = getelementptr inbounds i8, ptr %315, i64 1
  %320 = add nuw nsw i64 %314, 1
  store i8 %316, ptr %313, align 1, !tbaa !46
  %321 = getelementptr inbounds i8, ptr %0, i64 %320
  %322 = icmp ult i64 %314, 2045
  br i1 %322, label %312, label %453, !llvm.loop !54

323:                                              ; preds = %3
  %324 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !46
  call void @print_value(ptr noundef nonnull %4, ptr noundef %325, i32 noundef %2)
  %326 = getelementptr inbounds i8, ptr %0, i64 2046
  br label %327

327:                                              ; preds = %323, %333
  %328 = phi ptr [ %0, %323 ], [ %336, %333 ]
  %329 = phi i64 [ 0, %323 ], [ %335, %333 ]
  %330 = phi ptr [ %4, %323 ], [ %334, %333 ]
  %331 = load i8, ptr %330, align 1, !tbaa !46
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %338, label %333

333:                                              ; preds = %327
  %334 = getelementptr inbounds i8, ptr %330, i64 1
  %335 = add nuw nsw i64 %329, 1
  store i8 %331, ptr %328, align 1, !tbaa !46
  %336 = getelementptr inbounds i8, ptr %0, i64 %335
  %337 = icmp eq i64 %335, 2046
  br i1 %337, label %338, label %327, !llvm.loop !54

338:                                              ; preds = %333, %327
  %339 = phi i64 [ 2046, %333 ], [ %329, %327 ]
  %340 = phi ptr [ %336, %333 ], [ %328, %327 ]
  store i8 0, ptr %340, align 1, !tbaa !46
  %341 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %342 = load i32, ptr %341, align 8, !tbaa !46
  %343 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %342)
  %344 = icmp ugt i64 %339, 2046
  br i1 %344, label %453, label %345

345:                                              ; preds = %338
  %346 = getelementptr inbounds i8, ptr %0, i64 %339
  %347 = icmp eq i64 %339, 2046
  br i1 %347, label %453, label %348

348:                                              ; preds = %345, %354
  %349 = phi ptr [ %357, %354 ], [ %346, %345 ]
  %350 = phi i64 [ %356, %354 ], [ %339, %345 ]
  %351 = phi ptr [ %355, %354 ], [ %4, %345 ]
  %352 = load i8, ptr %351, align 1, !tbaa !46
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %453, label %354

354:                                              ; preds = %348
  %355 = getelementptr inbounds i8, ptr %351, i64 1
  %356 = add nuw nsw i64 %350, 1
  store i8 %352, ptr %349, align 1, !tbaa !46
  %357 = getelementptr inbounds i8, ptr %0, i64 %356
  %358 = icmp ult i64 %350, 2045
  br i1 %358, label %348, label %453, !llvm.loop !54

359:                                              ; preds = %3, %359
  %360 = phi ptr [ %364, %359 ], [ @.str.13, %3 ]
  %361 = phi i64 [ %365, %359 ], [ 0, %3 ]
  %362 = phi ptr [ %366, %359 ], [ %0, %3 ]
  %363 = load i8, ptr %360, align 1, !tbaa !46
  %364 = getelementptr inbounds i8, ptr %360, i64 1
  %365 = add nuw nsw i64 %361, 1
  store i8 %363, ptr %362, align 1, !tbaa !46
  %366 = getelementptr inbounds i8, ptr %0, i64 %365
  %367 = icmp eq i64 %365, 7
  br i1 %367, label %453, label %359

368:                                              ; preds = %3, %368
  %369 = phi ptr [ %373, %368 ], [ @.str.14, %3 ]
  %370 = phi i64 [ %374, %368 ], [ 0, %3 ]
  %371 = phi ptr [ %375, %368 ], [ %0, %3 ]
  %372 = load i8, ptr %369, align 1, !tbaa !46
  %373 = getelementptr inbounds i8, ptr %369, i64 1
  %374 = add nuw nsw i64 %370, 1
  store i8 %372, ptr %371, align 1, !tbaa !46
  %375 = getelementptr inbounds i8, ptr %0, i64 %374
  %376 = icmp eq i64 %374, 3
  br i1 %376, label %453, label %368

377:                                              ; preds = %3, %377
  %378 = phi ptr [ %382, %377 ], [ @.str.15, %3 ]
  %379 = phi i64 [ %383, %377 ], [ 0, %3 ]
  %380 = phi ptr [ %384, %377 ], [ %0, %3 ]
  %381 = load i8, ptr %378, align 1, !tbaa !46
  %382 = getelementptr inbounds i8, ptr %378, i64 1
  %383 = add nuw nsw i64 %379, 1
  store i8 %381, ptr %380, align 1, !tbaa !46
  %384 = getelementptr inbounds i8, ptr %0, i64 %383
  %385 = icmp eq i64 %383, 2
  br i1 %385, label %453, label %377

386:                                              ; preds = %3
  %387 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %388 = load ptr, ptr %387, align 8, !tbaa !46
  call void @print_value(ptr noundef nonnull %4, ptr noundef %388, i32 noundef %2)
  %389 = getelementptr inbounds i8, ptr %0, i64 2046
  store i8 91, ptr %0, align 1, !tbaa !46
  %390 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 0, ptr %390, align 1, !tbaa !46
  %391 = getelementptr inbounds i8, ptr %0, i64 1
  br label %392

392:                                              ; preds = %386, %398
  %393 = phi ptr [ %401, %398 ], [ %391, %386 ]
  %394 = phi i64 [ %400, %398 ], [ 1, %386 ]
  %395 = phi ptr [ %399, %398 ], [ %4, %386 ]
  %396 = load i8, ptr %395, align 1, !tbaa !46
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %403, label %398

398:                                              ; preds = %392
  %399 = getelementptr inbounds i8, ptr %395, i64 1
  %400 = add nuw nsw i64 %394, 1
  store i8 %396, ptr %393, align 1, !tbaa !46
  %401 = getelementptr inbounds i8, ptr %0, i64 %400
  %402 = icmp eq i64 %400, 2046
  br i1 %402, label %403, label %392, !llvm.loop !54

403:                                              ; preds = %398, %392
  %404 = phi i64 [ 2046, %398 ], [ %394, %392 ]
  %405 = phi ptr [ %401, %398 ], [ %393, %392 ]
  store i8 0, ptr %405, align 1, !tbaa !46
  %406 = icmp ugt i64 %404, 2046
  br i1 %406, label %453, label %407

407:                                              ; preds = %403
  %408 = getelementptr inbounds i8, ptr %0, i64 %404
  %409 = icmp eq i64 %404, 2046
  br i1 %409, label %453, label %410

410:                                              ; preds = %407
  %411 = add nuw nsw i64 %404, 1
  br label %412

412:                                              ; preds = %410, %417
  %413 = phi ptr [ %421, %417 ], [ %408, %410 ]
  %414 = phi i64 [ %420, %417 ], [ %404, %410 ]
  %415 = phi ptr [ %419, %417 ], [ @.str.17, %410 ]
  %416 = icmp eq i64 %414, %411
  br i1 %416, label %453, label %417

417:                                              ; preds = %412
  %418 = load i8, ptr %415, align 1, !tbaa !46
  %419 = getelementptr inbounds i8, ptr %415, i64 1
  %420 = add nuw nsw i64 %414, 1
  store i8 %418, ptr %413, align 1, !tbaa !46
  %421 = getelementptr inbounds i8, ptr %0, i64 %420
  %422 = icmp eq i64 %420, 2046
  br i1 %422, label %453, label %412, !llvm.loop !54

423:                                              ; preds = %3
  %424 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %425 = load ptr, ptr %424, align 8, !tbaa !46
  %426 = getelementptr inbounds %struct.tree_decl_minimal, ptr %425, i64 0, i32 2
  %427 = load i32, ptr %426, align 4, !tbaa !46
  %428 = sub i32 0, %427
  %429 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %428)
  br label %430

430:                                              ; preds = %423, %436
  %431 = phi ptr [ %0, %423 ], [ %439, %436 ]
  %432 = phi i64 [ 0, %423 ], [ %438, %436 ]
  %433 = phi ptr [ %4, %423 ], [ %437, %436 ]
  %434 = load i8, ptr %433, align 1, !tbaa !46
  %435 = icmp eq i8 %434, 0
  br i1 %435, label %453, label %436

436:                                              ; preds = %430
  %437 = getelementptr inbounds i8, ptr %433, i64 1
  %438 = add nuw nsw i64 %432, 1
  store i8 %434, ptr %431, align 1, !tbaa !46
  %439 = getelementptr inbounds i8, ptr %0, i64 %438
  %440 = icmp eq i64 %438, 2046
  br i1 %440, label %453, label %430, !llvm.loop !54

441:                                              ; preds = %3
  call fastcc void @print_exp(ptr noundef nonnull %4, ptr noundef nonnull %1, i32 noundef %2)
  br label %442

442:                                              ; preds = %441, %448
  %443 = phi ptr [ %0, %441 ], [ %451, %448 ]
  %444 = phi i64 [ 0, %441 ], [ %450, %448 ]
  %445 = phi ptr [ %4, %441 ], [ %449, %448 ]
  %446 = load i8, ptr %445, align 1, !tbaa !46
  %447 = icmp eq i8 %446, 0
  br i1 %447, label %453, label %448

448:                                              ; preds = %442
  %449 = getelementptr inbounds i8, ptr %445, i64 1
  %450 = add nuw nsw i64 %444, 1
  store i8 %446, ptr %443, align 1, !tbaa !46
  %451 = getelementptr inbounds i8, ptr %0, i64 %450
  %452 = icmp eq i64 %450, 2046
  br i1 %452, label %453, label %442, !llvm.loop !54

453:                                              ; preds = %430, %436, %412, %417, %377, %368, %359, %348, %354, %312, %318, %233, %238, %187, %192, %141, %147, %124, %129, %87, %92, %50, %56, %37, %43, %11, %17, %442, %448, %407, %403, %345, %338, %307, %228, %224, %182, %178, %119, %115, %82, %78, %310
  %454 = phi ptr [ %311, %310 ], [ %62, %78 ], [ %83, %82 ], [ %99, %115 ], [ %120, %119 ], [ %155, %178 ], [ %183, %182 ], [ %201, %224 ], [ %229, %228 ], [ %308, %307 ], [ %326, %338 ], [ %346, %345 ], [ %389, %403 ], [ %408, %407 ], [ %443, %442 ], [ %451, %448 ], [ %12, %11 ], [ %20, %17 ], [ %38, %37 ], [ %46, %43 ], [ %51, %50 ], [ %59, %56 ], [ %96, %92 ], [ %88, %87 ], [ %133, %129 ], [ %125, %124 ], [ %142, %141 ], [ %150, %147 ], [ %196, %192 ], [ %188, %187 ], [ %242, %238 ], [ %234, %233 ], [ %321, %318 ], [ %313, %312 ], [ %357, %354 ], [ %349, %348 ], [ %366, %359 ], [ %375, %368 ], [ %384, %377 ], [ %421, %417 ], [ %413, %412 ], [ %431, %430 ], [ %439, %436 ]
  store i8 0, ptr %454, align 1, !tbaa !46
  br label %455

455:                                              ; preds = %453, %291
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @real_to_decimal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @fixed_to_decimal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @print_exp(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #9 !prof !34 {
  %4 = alloca [2048 x i8], align 16
  %5 = alloca [4 x ptr], align 16
  %6 = alloca [4 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false), !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false), !tbaa !35
  %7 = load i32, ptr %1, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %514 [
    i16 49, label %9
    i16 122, label %29
    i16 50, label %37
    i16 48, label %44
    i16 51, label %50
    i16 52, label %53
    i16 55, label %60
    i16 59, label %67
    i16 58, label %73
    i16 60, label %80
    i16 70, label %86
    i16 71, label %92
    i16 72, label %98
    i16 73, label %104
    i16 64, label %110
    i16 61, label %113
    i16 62, label %120
    i16 63, label %127
    i16 65, label %134
    i16 68, label %141
    i16 67, label %148
    i16 66, label %155
    i16 69, label %162
    i16 111, label %169
    i16 112, label %172
    i16 114, label %175
    i16 81, label %178
    i16 80, label %185
    i16 83, label %192
    i16 87, label %199
    i16 85, label %205
    i16 89, label %212
    i16 82, label %218
    i16 86, label %225
    i16 84, label %231
    i16 88, label %238
    i16 119, label %244
    i16 120, label %255
    i16 98, label %266
    i16 99, label %271
    i16 101, label %276
    i16 100, label %281
    i16 102, label %286
    i16 103, label %291
    i16 105, label %296
    i16 104, label %301
    i16 106, label %304
    i16 74, label %309
    i16 75, label %312
    i16 76, label %315
    i16 77, label %319
    i16 78, label %323
    i16 79, label %332
    i16 26, label %341
    i16 47, label %350
    i16 29, label %362
    i16 22, label %365
    i16 18, label %374
    i16 19, label %374
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  store ptr %11, ptr %6, align 16, !tbaa !35
  %12 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 30
  br i1 %16, label %17, label %26

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !46
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.46, ptr %22, align 8, !tbaa !35
  %23 = sub nsw i64 0, %19
  %24 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %23) #13
  %25 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %24, ptr %25, align 8, !tbaa !35
  br label %519

26:                                               ; preds = %17, %9
  %27 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.47, ptr %27, align 8, !tbaa !35
  %28 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %13, ptr %28, align 8, !tbaa !35
  br label %519

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  store ptr %31, ptr %6, align 16, !tbaa !35
  %32 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.48, ptr %32, align 8, !tbaa !35
  %33 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %34, ptr %35, align 8, !tbaa !35
  %36 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 2
  store ptr @.str.7, ptr %36, align 16, !tbaa !35
  br label %519

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  store ptr %39, ptr %6, align 16, !tbaa !35
  %40 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.46, ptr %40, align 8, !tbaa !35
  %41 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %42, ptr %43, align 8, !tbaa !35
  br label %519

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  store ptr %46, ptr %6, align 16, !tbaa !35
  %47 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %48, ptr %49, align 8, !tbaa !35
  br label %519

50:                                               ; preds = %3
  store ptr @.str.46, ptr %5, align 16, !tbaa !35
  %51 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  store ptr %52, ptr %6, align 16, !tbaa !35
  br label %519

53:                                               ; preds = %3
  %54 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  store ptr %55, ptr %6, align 16, !tbaa !35
  %56 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.50, ptr %56, align 8, !tbaa !35
  %57 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !46
  %59 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %58, ptr %59, align 8, !tbaa !35
  br label %519

60:                                               ; preds = %3
  %61 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  store ptr %62, ptr %6, align 16, !tbaa !35
  %63 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.51, ptr %63, align 8, !tbaa !35
  %64 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !46
  %66 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %65, ptr %66, align 8, !tbaa !35
  br label %519

67:                                               ; preds = %3
  %68 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !46
  store ptr %69, ptr %6, align 16, !tbaa !35
  %70 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !46
  %72 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %71, ptr %72, align 8, !tbaa !35
  br label %519

73:                                               ; preds = %3
  %74 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !46
  store ptr %75, ptr %6, align 16, !tbaa !35
  %76 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.9, ptr %76, align 8, !tbaa !35
  %77 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  %79 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %78, ptr %79, align 8, !tbaa !35
  br label %519

80:                                               ; preds = %3
  %81 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !46
  store ptr %82, ptr %6, align 16, !tbaa !35
  %83 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !46
  %85 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %84, ptr %85, align 8, !tbaa !35
  br label %519

86:                                               ; preds = %3
  %87 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !46
  store ptr %88, ptr %6, align 16, !tbaa !35
  %89 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !46
  %91 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %90, ptr %91, align 8, !tbaa !35
  br label %519

92:                                               ; preds = %3
  %93 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !46
  store ptr %94, ptr %6, align 16, !tbaa !35
  %95 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %96 = load ptr, ptr %95, align 8, !tbaa !46
  %97 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %96, ptr %97, align 8, !tbaa !35
  br label %519

98:                                               ; preds = %3
  %99 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !46
  store ptr %100, ptr %6, align 16, !tbaa !35
  %101 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !46
  %103 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %102, ptr %103, align 8, !tbaa !35
  br label %519

104:                                              ; preds = %3
  %105 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !46
  store ptr %106, ptr %6, align 16, !tbaa !35
  %107 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !46
  %109 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %108, ptr %109, align 8, !tbaa !35
  br label %519

110:                                              ; preds = %3
  store ptr @.str.58, ptr %5, align 16, !tbaa !35
  %111 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !46
  store ptr %112, ptr %6, align 16, !tbaa !35
  br label %519

113:                                              ; preds = %3
  %114 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !46
  store ptr %115, ptr %6, align 16, !tbaa !35
  %116 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.59, ptr %116, align 8, !tbaa !35
  %117 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %118 = load ptr, ptr %117, align 8, !tbaa !46
  %119 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %118, ptr %119, align 8, !tbaa !35
  br label %519

120:                                              ; preds = %3
  %121 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !46
  store ptr %122, ptr %6, align 16, !tbaa !35
  %123 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.60, ptr %123, align 8, !tbaa !35
  %124 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !46
  %126 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %125, ptr %126, align 8, !tbaa !35
  br label %519

127:                                              ; preds = %3
  %128 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !46
  store ptr %129, ptr %6, align 16, !tbaa !35
  %130 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.61, ptr %130, align 8, !tbaa !35
  %131 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !46
  %133 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %132, ptr %133, align 8, !tbaa !35
  br label %519

134:                                              ; preds = %3
  %135 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !46
  store ptr %136, ptr %6, align 16, !tbaa !35
  %137 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.62, ptr %137, align 8, !tbaa !35
  %138 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %139 = load ptr, ptr %138, align 8, !tbaa !46
  %140 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %139, ptr %140, align 8, !tbaa !35
  br label %519

141:                                              ; preds = %3
  %142 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !46
  store ptr %143, ptr %6, align 16, !tbaa !35
  %144 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.63, ptr %144, align 8, !tbaa !35
  %145 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %146 = load ptr, ptr %145, align 8, !tbaa !46
  %147 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %146, ptr %147, align 8, !tbaa !35
  br label %519

148:                                              ; preds = %3
  %149 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !46
  store ptr %150, ptr %6, align 16, !tbaa !35
  %151 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.64, ptr %151, align 8, !tbaa !35
  %152 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %153 = load ptr, ptr %152, align 8, !tbaa !46
  %154 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %153, ptr %154, align 8, !tbaa !35
  br label %519

155:                                              ; preds = %3
  %156 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !46
  store ptr %157, ptr %6, align 16, !tbaa !35
  %158 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.65, ptr %158, align 8, !tbaa !35
  %159 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %160 = load ptr, ptr %159, align 8, !tbaa !46
  %161 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %160, ptr %161, align 8, !tbaa !35
  br label %519

162:                                              ; preds = %3
  %163 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !46
  store ptr %164, ptr %6, align 16, !tbaa !35
  %165 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.66, ptr %165, align 8, !tbaa !35
  %166 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %167 = load ptr, ptr %166, align 8, !tbaa !46
  %168 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %167, ptr %168, align 8, !tbaa !35
  br label %519

169:                                              ; preds = %3
  %170 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !46
  store ptr %171, ptr %6, align 16, !tbaa !35
  br label %519

172:                                              ; preds = %3
  %173 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !46
  store ptr %174, ptr %6, align 16, !tbaa !35
  br label %519

175:                                              ; preds = %3
  %176 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !46
  store ptr %177, ptr %6, align 16, !tbaa !35
  br label %519

178:                                              ; preds = %3
  %179 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !46
  store ptr %180, ptr %6, align 16, !tbaa !35
  %181 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.70, ptr %181, align 8, !tbaa !35
  %182 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %183 = load ptr, ptr %182, align 8, !tbaa !46
  %184 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %183, ptr %184, align 8, !tbaa !35
  br label %519

185:                                              ; preds = %3
  %186 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !46
  store ptr %187, ptr %6, align 16, !tbaa !35
  %188 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.71, ptr %188, align 8, !tbaa !35
  %189 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %190 = load ptr, ptr %189, align 8, !tbaa !46
  %191 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %190, ptr %191, align 8, !tbaa !35
  br label %519

192:                                              ; preds = %3
  %193 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !46
  store ptr %194, ptr %6, align 16, !tbaa !35
  %195 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.72, ptr %195, align 8, !tbaa !35
  %196 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %197 = load ptr, ptr %196, align 8, !tbaa !46
  %198 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %197, ptr %198, align 8, !tbaa !35
  br label %519

199:                                              ; preds = %3
  %200 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !46
  store ptr %201, ptr %6, align 16, !tbaa !35
  %202 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %203 = load ptr, ptr %202, align 8, !tbaa !46
  %204 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %203, ptr %204, align 8, !tbaa !35
  br label %519

205:                                              ; preds = %3
  %206 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !46
  store ptr %207, ptr %6, align 16, !tbaa !35
  %208 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.74, ptr %208, align 8, !tbaa !35
  %209 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %210 = load ptr, ptr %209, align 8, !tbaa !46
  %211 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %210, ptr %211, align 8, !tbaa !35
  br label %519

212:                                              ; preds = %3
  %213 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !46
  store ptr %214, ptr %6, align 16, !tbaa !35
  %215 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %216 = load ptr, ptr %215, align 8, !tbaa !46
  %217 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %216, ptr %217, align 8, !tbaa !35
  br label %519

218:                                              ; preds = %3
  %219 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !46
  store ptr %220, ptr %6, align 16, !tbaa !35
  %221 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.76, ptr %221, align 8, !tbaa !35
  %222 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !46
  %224 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %223, ptr %224, align 8, !tbaa !35
  br label %519

225:                                              ; preds = %3
  %226 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !46
  store ptr %227, ptr %6, align 16, !tbaa !35
  %228 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %229 = load ptr, ptr %228, align 8, !tbaa !46
  %230 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %229, ptr %230, align 8, !tbaa !35
  br label %519

231:                                              ; preds = %3
  %232 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !46
  store ptr %233, ptr %6, align 16, !tbaa !35
  %234 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.78, ptr %234, align 8, !tbaa !35
  %235 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %236 = load ptr, ptr %235, align 8, !tbaa !46
  %237 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %236, ptr %237, align 8, !tbaa !35
  br label %519

238:                                              ; preds = %3
  %239 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %240 = load ptr, ptr %239, align 8, !tbaa !46
  store ptr %240, ptr %6, align 16, !tbaa !35
  %241 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %242 = load ptr, ptr %241, align 8, !tbaa !46
  %243 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %242, ptr %243, align 8, !tbaa !35
  br label %519

244:                                              ; preds = %3
  %245 = icmp eq i32 %2, 0
  %246 = select i1 %245, ptr @.str.81, ptr @.str.80
  %247 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !46
  store ptr %248, ptr %6, align 16, !tbaa !35
  %249 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %250 = load ptr, ptr %249, align 8, !tbaa !46
  %251 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %250, ptr %251, align 8, !tbaa !35
  %252 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %253 = load ptr, ptr %252, align 8, !tbaa !46
  %254 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 2
  store ptr %253, ptr %254, align 16, !tbaa !35
  br label %519

255:                                              ; preds = %3
  %256 = icmp eq i32 %2, 0
  %257 = select i1 %256, ptr @.str.83, ptr @.str.82
  %258 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !46
  store ptr %259, ptr %6, align 16, !tbaa !35
  %260 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %261 = load ptr, ptr %260, align 8, !tbaa !46
  %262 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %261, ptr %262, align 8, !tbaa !35
  %263 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %264 = load ptr, ptr %263, align 8, !tbaa !46
  %265 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 2
  store ptr %264, ptr %265, align 16, !tbaa !35
  br label %519

266:                                              ; preds = %3
  %267 = icmp eq i32 %2, 0
  %268 = select i1 %267, ptr @.str.85, ptr @.str.84
  %269 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !46
  store ptr %270, ptr %6, align 16, !tbaa !35
  br label %519

271:                                              ; preds = %3
  %272 = icmp eq i32 %2, 0
  %273 = select i1 %272, ptr @.str.87, ptr @.str.86
  %274 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !46
  store ptr %275, ptr %6, align 16, !tbaa !35
  br label %519

276:                                              ; preds = %3
  %277 = icmp eq i32 %2, 0
  %278 = select i1 %277, ptr @.str.89, ptr @.str.88
  %279 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !46
  store ptr %280, ptr %6, align 16, !tbaa !35
  br label %519

281:                                              ; preds = %3
  %282 = icmp eq i32 %2, 0
  %283 = select i1 %282, ptr @.str.91, ptr @.str.90
  %284 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !46
  store ptr %285, ptr %6, align 16, !tbaa !35
  br label %519

286:                                              ; preds = %3
  %287 = icmp eq i32 %2, 0
  %288 = select i1 %287, ptr @.str.93, ptr @.str.92
  %289 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !46
  store ptr %290, ptr %6, align 16, !tbaa !35
  br label %519

291:                                              ; preds = %3
  %292 = icmp eq i32 %2, 0
  %293 = select i1 %292, ptr @.str.95, ptr @.str.94
  %294 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !46
  store ptr %295, ptr %6, align 16, !tbaa !35
  br label %519

296:                                              ; preds = %3
  %297 = icmp eq i32 %2, 0
  %298 = select i1 %297, ptr @.str.97, ptr @.str.96
  %299 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !46
  store ptr %300, ptr %6, align 16, !tbaa !35
  br label %519

301:                                              ; preds = %3
  %302 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !46
  store ptr %303, ptr %6, align 16, !tbaa !35
  br label %519

304:                                              ; preds = %3
  %305 = icmp eq i32 %2, 0
  %306 = select i1 %305, ptr @.str.100, ptr @.str.99
  %307 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !46
  store ptr %308, ptr %6, align 16, !tbaa !35
  br label %519

309:                                              ; preds = %3
  store ptr @.str.101, ptr %5, align 16, !tbaa !35
  %310 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %311 = load ptr, ptr %310, align 8, !tbaa !46
  store ptr %311, ptr %6, align 16, !tbaa !35
  br label %519

312:                                              ; preds = %3
  store ptr @.str.102, ptr %5, align 16, !tbaa !35
  %313 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %314 = load ptr, ptr %313, align 8, !tbaa !46
  store ptr %314, ptr %6, align 16, !tbaa !35
  br label %519

315:                                              ; preds = %3
  %316 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %317 = load ptr, ptr %316, align 8, !tbaa !46
  store ptr %317, ptr %6, align 16, !tbaa !35
  %318 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.101, ptr %318, align 8, !tbaa !35
  br label %519

319:                                              ; preds = %3
  %320 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %321 = load ptr, ptr %320, align 8, !tbaa !46
  store ptr %321, ptr %6, align 16, !tbaa !35
  %322 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.102, ptr %322, align 8, !tbaa !35
  br label %519

323:                                              ; preds = %3
  store ptr @.str.103, ptr %5, align 16, !tbaa !35
  %324 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %325 = load ptr, ptr %324, align 8, !tbaa !46
  %326 = getelementptr inbounds %struct.rtx_def, ptr %325, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !46
  store ptr %327, ptr %6, align 16, !tbaa !35
  %328 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.104, ptr %328, align 8, !tbaa !35
  %329 = getelementptr inbounds %struct.rtx_def, ptr %325, i64 0, i32 1, i32 0, i32 0, i64 1
  %330 = load ptr, ptr %329, align 8, !tbaa !46
  %331 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %330, ptr %331, align 8, !tbaa !35
  br label %519

332:                                              ; preds = %3
  store ptr @.str.105, ptr %5, align 16, !tbaa !35
  %333 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %334 = load ptr, ptr %333, align 8, !tbaa !46
  %335 = getelementptr inbounds %struct.rtx_def, ptr %334, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !46
  store ptr %336, ptr %6, align 16, !tbaa !35
  %337 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.104, ptr %337, align 8, !tbaa !35
  %338 = getelementptr inbounds %struct.rtx_def, ptr %334, i64 0, i32 1, i32 0, i32 0, i64 1
  %339 = load ptr, ptr %338, align 8, !tbaa !46
  %340 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %339, ptr %340, align 8, !tbaa !35
  br label %519

341:                                              ; preds = %3
  store ptr @.str.106, ptr %5, align 16, !tbaa !35
  %342 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %343 = load ptr, ptr %342, align 8, !tbaa !46
  store ptr %343, ptr %6, align 16, !tbaa !35
  %344 = icmp eq i32 %2, 0
  br i1 %344, label %519, label %345

345:                                              ; preds = %341
  %346 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.107, ptr %346, align 8, !tbaa !35
  %347 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %348 = load ptr, ptr %347, align 8, !tbaa !46
  %349 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %348, ptr %349, align 8, !tbaa !35
  br label %519

350:                                              ; preds = %3
  store ptr @.str.108, ptr %5, align 16, !tbaa !35
  %351 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %352 = load ptr, ptr %351, align 8, !tbaa !46
  store ptr %352, ptr %6, align 16, !tbaa !35
  %353 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.109, ptr %353, align 8, !tbaa !35
  %354 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %355 = load ptr, ptr %354, align 8, !tbaa !46
  %356 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %355, ptr %356, align 8, !tbaa !35
  %357 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 2
  store ptr @.str.110, ptr %357, align 16, !tbaa !35
  %358 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %359 = load ptr, ptr %358, align 8, !tbaa !46
  %360 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 2
  store ptr %359, ptr %360, align 16, !tbaa !35
  %361 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 3
  store ptr @.str.111, ptr %361, align 8, !tbaa !35
  br label %519

362:                                              ; preds = %3
  %363 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %364 = load ptr, ptr %363, align 8, !tbaa !46
  store ptr %364, ptr %6, align 16, !tbaa !35
  br label %519

365:                                              ; preds = %3
  %366 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %367 = load ptr, ptr %366, align 8, !tbaa !46
  store ptr %367, ptr %6, align 16, !tbaa !35
  %368 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %369 = load ptr, ptr %368, align 8, !tbaa !46
  %370 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %369, ptr %370, align 8, !tbaa !35
  %371 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %372 = load ptr, ptr %371, align 8, !tbaa !46
  %373 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 2
  store ptr %372, ptr %373, align 16, !tbaa !35
  br label %519

374:                                              ; preds = %3, %3
  %375 = getelementptr inbounds i8, ptr %0, i64 2046
  br label %376

376:                                              ; preds = %374, %376
  %377 = phi ptr [ @.str.114, %374 ], [ %381, %376 ]
  %378 = phi i64 [ 0, %374 ], [ %382, %376 ]
  %379 = phi ptr [ %0, %374 ], [ %383, %376 ]
  %380 = load i8, ptr %377, align 1, !tbaa !46
  %381 = getelementptr inbounds i8, ptr %377, i64 1
  %382 = add nuw nsw i64 %378, 1
  store i8 %380, ptr %379, align 1, !tbaa !46
  %383 = getelementptr inbounds i8, ptr %0, i64 %382
  %384 = icmp eq i64 %382, 6
  br i1 %384, label %385, label %376

385:                                              ; preds = %376
  store i8 0, ptr %383, align 1, !tbaa !46
  %386 = load i32, ptr %1, align 8
  %387 = and i32 %386, 65535
  %388 = icmp eq i32 %387, 19
  br i1 %388, label %389, label %401

389:                                              ; preds = %385
  %390 = getelementptr inbounds i8, ptr %0, i64 6
  br label %391

391:                                              ; preds = %389, %391
  %392 = phi ptr [ @.str.115, %389 ], [ %396, %391 ]
  %393 = phi i64 [ 6, %389 ], [ %397, %391 ]
  %394 = phi ptr [ %390, %389 ], [ %398, %391 ]
  %395 = load i8, ptr %392, align 1, !tbaa !46
  %396 = getelementptr inbounds i8, ptr %392, i64 1
  %397 = add nuw nsw i64 %393, 1
  store i8 %395, ptr %394, align 1, !tbaa !46
  %398 = getelementptr inbounds i8, ptr %0, i64 %397
  %399 = icmp eq i64 %397, 8
  br i1 %399, label %400, label %391

400:                                              ; preds = %391
  store i8 0, ptr %398, align 1, !tbaa !46
  br label %401

401:                                              ; preds = %400, %385
  %402 = phi i64 [ 6, %385 ], [ %397, %400 ]
  %403 = getelementptr inbounds i8, ptr %0, i64 %402
  %404 = or disjoint i64 %402, 1
  br label %405

405:                                              ; preds = %401, %410
  %406 = phi ptr [ %414, %410 ], [ %403, %401 ]
  %407 = phi i64 [ %413, %410 ], [ %402, %401 ]
  %408 = phi ptr [ %412, %410 ], [ @.str.16, %401 ]
  %409 = icmp eq i64 %407, %404
  br i1 %409, label %416, label %410

410:                                              ; preds = %405
  %411 = load i8, ptr %408, align 1, !tbaa !46
  %412 = getelementptr inbounds i8, ptr %408, i64 1
  %413 = add nuw nsw i64 %407, 1
  store i8 %411, ptr %406, align 1, !tbaa !46
  %414 = getelementptr inbounds i8, ptr %0, i64 %413
  %415 = icmp eq i64 %413, 2046
  br i1 %415, label %416, label %405, !llvm.loop !54

416:                                              ; preds = %410, %405
  %417 = phi i64 [ %413, %410 ], [ %407, %405 ]
  %418 = phi ptr [ %414, %410 ], [ %406, %405 ]
  store i8 0, ptr %418, align 1, !tbaa !46
  %419 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %420 = load ptr, ptr %419, align 8, !tbaa !46
  %421 = load i32, ptr %420, align 8, !tbaa !56
  %422 = icmp sgt i32 %421, 0
  br i1 %422, label %423, label %471

423:                                              ; preds = %416, %463
  %424 = phi i64 [ %466, %463 ], [ 0, %416 ]
  %425 = phi ptr [ %467, %463 ], [ %420, %416 ]
  %426 = phi ptr [ @.str.117, %463 ], [ @.str.116, %416 ]
  %427 = phi i64 [ %465, %463 ], [ %417, %416 ]
  %428 = getelementptr inbounds %struct.rtvec_def, ptr %425, i64 0, i32 1, i64 %424
  %429 = load ptr, ptr %428, align 8, !tbaa !35
  call void @print_pattern(ptr noundef nonnull %4, ptr noundef %429, i32 noundef %2)
  %430 = icmp sgt i64 %427, 2046
  br i1 %430, label %445, label %431

431:                                              ; preds = %423
  %432 = getelementptr inbounds i8, ptr %0, i64 %427
  %433 = icmp eq i64 %427, 2046
  br i1 %433, label %445, label %434

434:                                              ; preds = %431, %440
  %435 = phi ptr [ %443, %440 ], [ %432, %431 ]
  %436 = phi i64 [ %442, %440 ], [ %427, %431 ]
  %437 = phi ptr [ %441, %440 ], [ %426, %431 ]
  %438 = load i8, ptr %437, align 1, !tbaa !46
  %439 = icmp eq i8 %438, 0
  br i1 %439, label %445, label %440

440:                                              ; preds = %434
  %441 = getelementptr inbounds i8, ptr %437, i64 1
  %442 = add nsw i64 %436, 1
  store i8 %438, ptr %435, align 1, !tbaa !46
  %443 = getelementptr inbounds i8, ptr %0, i64 %442
  %444 = icmp slt i64 %436, 2045
  br i1 %444, label %434, label %445, !llvm.loop !54

445:                                              ; preds = %434, %440, %431, %423
  %446 = phi ptr [ %375, %423 ], [ %432, %431 ], [ %443, %440 ], [ %435, %434 ]
  %447 = phi i64 [ 2046, %423 ], [ %427, %431 ], [ %442, %440 ], [ %436, %434 ]
  store i8 0, ptr %446, align 1, !tbaa !46
  %448 = icmp sgt i64 %447, 2046
  br i1 %448, label %463, label %449

449:                                              ; preds = %445
  %450 = getelementptr inbounds i8, ptr %0, i64 %447
  %451 = icmp eq i64 %447, 2046
  br i1 %451, label %463, label %452

452:                                              ; preds = %449, %458
  %453 = phi ptr [ %461, %458 ], [ %450, %449 ]
  %454 = phi i64 [ %460, %458 ], [ %447, %449 ]
  %455 = phi ptr [ %459, %458 ], [ %4, %449 ]
  %456 = load i8, ptr %455, align 1, !tbaa !46
  %457 = icmp eq i8 %456, 0
  br i1 %457, label %463, label %458

458:                                              ; preds = %452
  %459 = getelementptr inbounds i8, ptr %455, i64 1
  %460 = add nsw i64 %454, 1
  store i8 %456, ptr %453, align 1, !tbaa !46
  %461 = getelementptr inbounds i8, ptr %0, i64 %460
  %462 = icmp slt i64 %454, 2045
  br i1 %462, label %452, label %463, !llvm.loop !54

463:                                              ; preds = %452, %458, %449, %445
  %464 = phi ptr [ %375, %445 ], [ %450, %449 ], [ %461, %458 ], [ %453, %452 ]
  %465 = phi i64 [ 2046, %445 ], [ %447, %449 ], [ %460, %458 ], [ %454, %452 ]
  store i8 0, ptr %464, align 1, !tbaa !46
  %466 = add nuw nsw i64 %424, 1
  %467 = load ptr, ptr %419, align 8, !tbaa !46
  %468 = load i32, ptr %467, align 8, !tbaa !56
  %469 = sext i32 %468 to i64
  %470 = icmp slt i64 %466, %469
  br i1 %470, label %423, label %471, !llvm.loop !58

471:                                              ; preds = %463, %416
  %472 = phi i64 [ %417, %416 ], [ %465, %463 ]
  %473 = icmp sgt i64 %472, 2046
  br i1 %473, label %489, label %474

474:                                              ; preds = %471
  %475 = getelementptr inbounds i8, ptr %0, i64 %472
  %476 = icmp eq i64 %472, 2046
  br i1 %476, label %489, label %477

477:                                              ; preds = %474, %482
  %478 = phi ptr [ %487, %482 ], [ %475, %474 ]
  %479 = phi i64 [ %486, %482 ], [ %472, %474 ]
  %480 = phi i64 [ %485, %482 ], [ 0, %474 ]
  %481 = icmp eq i64 %480, 2
  br i1 %481, label %489, label %482

482:                                              ; preds = %477
  %483 = getelementptr inbounds i8, ptr @.str.118, i64 %480
  %484 = load i8, ptr %483, align 1, !tbaa !46
  %485 = add nuw nsw i64 %480, 1
  %486 = add nsw i64 %479, 1
  store i8 %484, ptr %478, align 1, !tbaa !46
  %487 = getelementptr inbounds i8, ptr %0, i64 %486
  %488 = icmp slt i64 %479, 2045
  br i1 %488, label %477, label %489, !llvm.loop !54

489:                                              ; preds = %477, %482, %474, %471
  %490 = phi ptr [ %375, %471 ], [ %475, %474 ], [ %487, %482 ], [ %478, %477 ]
  %491 = phi i64 [ 2046, %471 ], [ %472, %474 ], [ %486, %482 ], [ %479, %477 ]
  store i8 0, ptr %490, align 1, !tbaa !46
  %492 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %493 = load i32, ptr %492, align 8, !tbaa !46
  %494 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.119, i32 noundef %493)
  %495 = icmp sgt i64 %491, 2046
  br i1 %495, label %499, label %496

496:                                              ; preds = %489
  %497 = getelementptr inbounds i8, ptr %0, i64 %491
  %498 = icmp eq i64 %491, 2046
  br i1 %498, label %511, label %500

499:                                              ; preds = %489
  store i8 0, ptr %375, align 1, !tbaa !46
  br label %519

500:                                              ; preds = %496, %506
  %501 = phi ptr [ %509, %506 ], [ %497, %496 ]
  %502 = phi i64 [ %508, %506 ], [ %491, %496 ]
  %503 = phi ptr [ %507, %506 ], [ %4, %496 ]
  %504 = load i8, ptr %503, align 1, !tbaa !46
  %505 = icmp eq i8 %504, 0
  br i1 %505, label %511, label %506

506:                                              ; preds = %500
  %507 = getelementptr inbounds i8, ptr %503, i64 1
  %508 = add nsw i64 %502, 1
  store i8 %504, ptr %501, align 1, !tbaa !46
  %509 = getelementptr inbounds i8, ptr %0, i64 %508
  %510 = icmp slt i64 %502, 2045
  br i1 %510, label %500, label %511, !llvm.loop !54

511:                                              ; preds = %506, %500, %496
  %512 = phi i64 [ %491, %496 ], [ %508, %506 ], [ %502, %500 ]
  %513 = phi ptr [ %497, %496 ], [ %509, %506 ], [ %501, %500 ]
  store i8 0, ptr %513, align 1, !tbaa !46
  br label %519

514:                                              ; preds = %3
  %515 = and i32 %7, 65535
  %516 = zext nneg i32 %515 to i64
  %517 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %516
  %518 = load ptr, ptr %517, align 8, !tbaa !35
  store ptr %518, ptr %5, align 16, !tbaa !35
  br label %519

519:                                              ; preds = %511, %499, %341, %345, %21, %26, %514, %365, %362, %350, %332, %323, %319, %315, %312, %309, %304, %301, %296, %291, %286, %281, %276, %271, %266, %255, %244, %238, %231, %225, %218, %212, %205, %199, %192, %185, %178, %175, %172, %169, %162, %155, %148, %141, %134, %127, %120, %113, %110, %104, %98, %92, %86, %80, %73, %67, %60, %53, %50, %44, %37, %29
  %520 = phi i64 [ 0, %514 ], [ 0, %365 ], [ 0, %362 ], [ 0, %350 ], [ 0, %345 ], [ 0, %341 ], [ 0, %332 ], [ 0, %323 ], [ 0, %319 ], [ 0, %315 ], [ 0, %312 ], [ 0, %309 ], [ 0, %304 ], [ 0, %301 ], [ 0, %296 ], [ 0, %291 ], [ 0, %286 ], [ 0, %281 ], [ 0, %276 ], [ 0, %271 ], [ 0, %266 ], [ 0, %255 ], [ 0, %244 ], [ 0, %238 ], [ 0, %231 ], [ 0, %225 ], [ 0, %218 ], [ 0, %212 ], [ 0, %205 ], [ 0, %199 ], [ 0, %192 ], [ 0, %185 ], [ 0, %178 ], [ 0, %175 ], [ 0, %172 ], [ 0, %169 ], [ 0, %162 ], [ 0, %155 ], [ 0, %148 ], [ 0, %141 ], [ 0, %134 ], [ 0, %127 ], [ 0, %120 ], [ 0, %113 ], [ 0, %110 ], [ 0, %104 ], [ 0, %98 ], [ 0, %92 ], [ 0, %86 ], [ 0, %80 ], [ 0, %73 ], [ 0, %67 ], [ 0, %60 ], [ 0, %53 ], [ 0, %50 ], [ 0, %44 ], [ 0, %37 ], [ 0, %29 ], [ 0, %21 ], [ 0, %26 ], [ 2046, %499 ], [ %512, %511 ]
  %521 = phi ptr [ null, %514 ], [ @.str.113, %365 ], [ @.str.112, %362 ], [ null, %350 ], [ null, %345 ], [ null, %341 ], [ null, %332 ], [ null, %323 ], [ null, %319 ], [ null, %315 ], [ null, %312 ], [ null, %309 ], [ %306, %304 ], [ @.str.98, %301 ], [ %298, %296 ], [ %293, %291 ], [ %288, %286 ], [ %283, %281 ], [ %278, %276 ], [ %273, %271 ], [ %268, %266 ], [ %257, %255 ], [ %246, %244 ], [ @.str.79, %238 ], [ null, %231 ], [ @.str.77, %225 ], [ null, %218 ], [ @.str.75, %212 ], [ null, %205 ], [ @.str.73, %199 ], [ null, %192 ], [ null, %185 ], [ null, %178 ], [ @.str.69, %175 ], [ @.str.68, %172 ], [ @.str.67, %169 ], [ null, %162 ], [ null, %155 ], [ null, %148 ], [ null, %141 ], [ null, %134 ], [ null, %127 ], [ null, %120 ], [ null, %113 ], [ null, %110 ], [ @.str.57, %104 ], [ @.str.56, %98 ], [ @.str.55, %92 ], [ @.str.54, %86 ], [ @.str.53, %80 ], [ null, %73 ], [ @.str.52, %67 ], [ null, %60 ], [ null, %53 ], [ null, %50 ], [ @.str.49, %44 ], [ null, %37 ], [ null, %29 ], [ null, %21 ], [ null, %26 ], [ null, %499 ], [ null, %511 ]
  %522 = icmp ne ptr %521, null
  br i1 %522, label %523, label %562

523:                                              ; preds = %519
  %524 = getelementptr inbounds i8, ptr %0, i64 2046
  %525 = icmp sgt i64 %520, 2046
  br i1 %525, label %540, label %526

526:                                              ; preds = %523
  %527 = getelementptr inbounds i8, ptr %0, i64 %520
  %528 = icmp eq i64 %520, 2046
  br i1 %528, label %540, label %529

529:                                              ; preds = %526, %535
  %530 = phi ptr [ %538, %535 ], [ %527, %526 ]
  %531 = phi i64 [ %537, %535 ], [ %520, %526 ]
  %532 = phi ptr [ %536, %535 ], [ %521, %526 ]
  %533 = load i8, ptr %532, align 1, !tbaa !46
  %534 = icmp eq i8 %533, 0
  br i1 %534, label %540, label %535

535:                                              ; preds = %529
  %536 = getelementptr inbounds i8, ptr %532, i64 1
  %537 = add nsw i64 %531, 1
  store i8 %533, ptr %530, align 1, !tbaa !46
  %538 = getelementptr inbounds i8, ptr %0, i64 %537
  %539 = icmp slt i64 %531, 2045
  br i1 %539, label %529, label %540, !llvm.loop !54

540:                                              ; preds = %529, %535, %526, %523
  %541 = phi ptr [ %524, %523 ], [ %527, %526 ], [ %538, %535 ], [ %530, %529 ]
  %542 = phi i64 [ 2046, %523 ], [ %520, %526 ], [ %537, %535 ], [ %531, %529 ]
  store i8 0, ptr %541, align 1, !tbaa !46
  %543 = icmp sgt i64 %542, 2046
  br i1 %543, label %559, label %544

544:                                              ; preds = %540
  %545 = getelementptr inbounds i8, ptr %0, i64 %542
  %546 = icmp eq i64 %542, 2046
  br i1 %546, label %559, label %547

547:                                              ; preds = %544, %552
  %548 = phi ptr [ %557, %552 ], [ %545, %544 ]
  %549 = phi i64 [ %556, %552 ], [ %542, %544 ]
  %550 = phi i64 [ %555, %552 ], [ 0, %544 ]
  %551 = icmp eq i64 %550, 1
  br i1 %551, label %559, label %552

552:                                              ; preds = %547
  %553 = getelementptr inbounds i8, ptr @.str.120, i64 %550
  %554 = load i8, ptr %553, align 1, !tbaa !46
  %555 = add nuw nsw i64 %550, 1
  %556 = add nsw i64 %549, 1
  store i8 %554, ptr %548, align 1, !tbaa !46
  %557 = getelementptr inbounds i8, ptr %0, i64 %556
  %558 = icmp slt i64 %549, 2045
  br i1 %558, label %547, label %559, !llvm.loop !54

559:                                              ; preds = %547, %552, %544, %540
  %560 = phi ptr [ %524, %540 ], [ %545, %544 ], [ %557, %552 ], [ %548, %547 ]
  %561 = phi i64 [ 2046, %540 ], [ %542, %544 ], [ %556, %552 ], [ %549, %547 ]
  store i8 0, ptr %560, align 1, !tbaa !46
  br label %562

562:                                              ; preds = %559, %519
  %563 = phi i64 [ %520, %519 ], [ %561, %559 ]
  %564 = getelementptr inbounds i8, ptr %0, i64 2046
  %565 = getelementptr inbounds i8, ptr %0, i64 2046
  br label %566

566:                                              ; preds = %562, %640
  %567 = phi i64 [ 0, %562 ], [ %642, %640 ]
  %568 = phi i64 [ %563, %562 ], [ %641, %640 ]
  %569 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 %567
  %570 = load ptr, ptr %569, align 8, !tbaa !35
  %571 = icmp eq ptr %570, null
  br i1 %571, label %591, label %572

572:                                              ; preds = %566
  %573 = icmp sgt i64 %568, 2046
  br i1 %573, label %588, label %574

574:                                              ; preds = %572
  %575 = getelementptr inbounds i8, ptr %0, i64 %568
  %576 = icmp eq i64 %568, 2046
  br i1 %576, label %588, label %577

577:                                              ; preds = %574, %583
  %578 = phi ptr [ %586, %583 ], [ %575, %574 ]
  %579 = phi i64 [ %585, %583 ], [ %568, %574 ]
  %580 = phi ptr [ %584, %583 ], [ %570, %574 ]
  %581 = load i8, ptr %580, align 1, !tbaa !46
  %582 = icmp eq i8 %581, 0
  br i1 %582, label %588, label %583

583:                                              ; preds = %577
  %584 = getelementptr inbounds i8, ptr %580, i64 1
  %585 = add nsw i64 %579, 1
  store i8 %581, ptr %578, align 1, !tbaa !46
  %586 = getelementptr inbounds i8, ptr %0, i64 %585
  %587 = icmp slt i64 %579, 2045
  br i1 %587, label %577, label %588, !llvm.loop !54

588:                                              ; preds = %577, %583, %574, %572
  %589 = phi ptr [ %564, %572 ], [ %575, %574 ], [ %586, %583 ], [ %578, %577 ]
  %590 = phi i64 [ 2046, %572 ], [ %568, %574 ], [ %585, %583 ], [ %579, %577 ]
  store i8 0, ptr %589, align 1, !tbaa !46
  br label %591

591:                                              ; preds = %588, %566
  %592 = phi i64 [ %568, %566 ], [ %590, %588 ]
  %593 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 %567
  %594 = load ptr, ptr %593, align 8, !tbaa !35
  %595 = icmp eq ptr %594, null
  br i1 %595, label %640, label %596

596:                                              ; preds = %591
  %597 = icmp ne i64 %567, 0
  %598 = and i1 %522, %597
  br i1 %598, label %599, label %620

599:                                              ; preds = %596
  %600 = getelementptr inbounds i8, ptr %0, i64 2046
  %601 = icmp sgt i64 %592, 2046
  br i1 %601, label %617, label %602

602:                                              ; preds = %599
  %603 = getelementptr inbounds i8, ptr %0, i64 %592
  %604 = icmp eq i64 %592, 2046
  br i1 %604, label %617, label %605

605:                                              ; preds = %602, %610
  %606 = phi ptr [ %615, %610 ], [ %603, %602 ]
  %607 = phi i64 [ %614, %610 ], [ %592, %602 ]
  %608 = phi i64 [ %613, %610 ], [ 0, %602 ]
  %609 = icmp eq i64 %608, 1
  br i1 %609, label %617, label %610

610:                                              ; preds = %605
  %611 = getelementptr inbounds i8, ptr @.str.117, i64 %608
  %612 = load i8, ptr %611, align 1, !tbaa !46
  %613 = add nuw nsw i64 %608, 1
  %614 = add nsw i64 %607, 1
  store i8 %612, ptr %606, align 1, !tbaa !46
  %615 = getelementptr inbounds i8, ptr %0, i64 %614
  %616 = icmp slt i64 %607, 2045
  br i1 %616, label %605, label %617, !llvm.loop !54

617:                                              ; preds = %605, %610, %602, %599
  %618 = phi ptr [ %600, %599 ], [ %603, %602 ], [ %615, %610 ], [ %606, %605 ]
  %619 = phi i64 [ 2046, %599 ], [ %592, %602 ], [ %614, %610 ], [ %607, %605 ]
  store i8 0, ptr %618, align 1, !tbaa !46
  br label %620

620:                                              ; preds = %617, %596
  %621 = phi i64 [ %592, %596 ], [ %619, %617 ]
  call void @print_value(ptr noundef nonnull %4, ptr noundef nonnull %594, i32 noundef %2)
  %622 = icmp sgt i64 %621, 2046
  br i1 %622, label %637, label %623

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, ptr %0, i64 %621
  %625 = icmp eq i64 %621, 2046
  br i1 %625, label %637, label %626

626:                                              ; preds = %623, %632
  %627 = phi ptr [ %635, %632 ], [ %624, %623 ]
  %628 = phi i64 [ %634, %632 ], [ %621, %623 ]
  %629 = phi ptr [ %633, %632 ], [ %4, %623 ]
  %630 = load i8, ptr %629, align 1, !tbaa !46
  %631 = icmp eq i8 %630, 0
  br i1 %631, label %637, label %632

632:                                              ; preds = %626
  %633 = getelementptr inbounds i8, ptr %629, i64 1
  %634 = add nsw i64 %628, 1
  store i8 %630, ptr %627, align 1, !tbaa !46
  %635 = getelementptr inbounds i8, ptr %0, i64 %634
  %636 = icmp slt i64 %628, 2045
  br i1 %636, label %626, label %637, !llvm.loop !54

637:                                              ; preds = %626, %632, %623, %620
  %638 = phi ptr [ %565, %620 ], [ %624, %623 ], [ %635, %632 ], [ %627, %626 ]
  %639 = phi i64 [ 2046, %620 ], [ %621, %623 ], [ %634, %632 ], [ %628, %626 ]
  store i8 0, ptr %638, align 1, !tbaa !46
  br label %640

640:                                              ; preds = %637, %591
  %641 = phi i64 [ %592, %591 ], [ %639, %637 ]
  %642 = add nuw nsw i64 %567, 1
  %643 = icmp eq i64 %642, 4
  br i1 %643, label %644, label %566, !llvm.loop !59

644:                                              ; preds = %640
  br i1 %522, label %645, label %666

645:                                              ; preds = %644
  %646 = icmp sgt i64 %641, 2046
  br i1 %646, label %650, label %647

647:                                              ; preds = %645
  %648 = getelementptr inbounds i8, ptr %0, i64 %641
  %649 = icmp eq i64 %641, 2046
  br i1 %649, label %664, label %652

650:                                              ; preds = %645
  %651 = getelementptr inbounds i8, ptr %0, i64 2046
  br label %664

652:                                              ; preds = %647, %657
  %653 = phi ptr [ %662, %657 ], [ %648, %647 ]
  %654 = phi i64 [ %661, %657 ], [ %641, %647 ]
  %655 = phi i64 [ %660, %657 ], [ 0, %647 ]
  %656 = icmp eq i64 %655, 1
  br i1 %656, label %664, label %657

657:                                              ; preds = %652
  %658 = getelementptr inbounds i8, ptr @.str.7, i64 %655
  %659 = load i8, ptr %658, align 1, !tbaa !46
  %660 = add nuw nsw i64 %655, 1
  %661 = add nsw i64 %654, 1
  store i8 %659, ptr %653, align 1, !tbaa !46
  %662 = getelementptr inbounds i8, ptr %0, i64 %661
  %663 = icmp slt i64 %654, 2045
  br i1 %663, label %652, label %664, !llvm.loop !54

664:                                              ; preds = %652, %657, %647, %650
  %665 = phi ptr [ %651, %650 ], [ %648, %647 ], [ %662, %657 ], [ %653, %652 ]
  store i8 0, ptr %665, align 1, !tbaa !46
  br label %666

666:                                              ; preds = %664, %644
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %4) #13
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @print_pattern(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca [2048 x i8], align 16
  %5 = alloca [2048 x i8], align 16
  %6 = alloca [2048 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %6) #13
  %7 = load i32, ptr %1, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %128 [
    i16 23, label %9
    i16 27, label %15
    i16 26, label %16
    i16 25, label %17
    i16 24, label %21
    i16 138, label %25
    i16 14, label %29
    i16 15, label %59
    i16 5, label %78
    i16 16, label %79
    i16 20, label %129
    i16 21, label %83
    i16 29, label %86
    i16 18, label %90
    i16 19, label %109
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  call void @print_value(ptr noundef nonnull %4, ptr noundef %11, i32 noundef %2)
  %12 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  call void @print_value(ptr noundef nonnull %5, ptr noundef %13, i32 noundef %2)
  %14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %129

15:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %0, ptr noundef nonnull align 1 dereferenceable(7) @.str.20, i64 7, i1 false)
  br label %129

16:                                               ; preds = %3
  tail call fastcc void @print_exp(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2)
  br label %129

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  call void @print_value(ptr noundef nonnull %4, ptr noundef %19, i32 noundef %2)
  %20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef nonnull %4)
  br label %129

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  call void @print_value(ptr noundef nonnull %4, ptr noundef %23, i32 noundef %2)
  %24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef nonnull %4)
  br label %129

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  call void @print_value(ptr noundef nonnull %4, ptr noundef %27, i32 noundef %2)
  %28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %4)
  br label %129

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = trunc i32 %32 to i16
  switch i16 %34, label %54 [
    i16 80, label %35
    i16 81, label %45
  ]

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !35
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  call void @print_value(ptr noundef nonnull %4, ptr noundef %42, i32 noundef %2)
  br label %55

43:                                               ; preds = %35
  %44 = icmp eq i32 %33, 81
  br i1 %44, label %45, label %54

45:                                               ; preds = %29, %43
  %46 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !35
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  store i8 33, ptr %4, align 16, !tbaa !46
  %51 = getelementptr inbounds i8, ptr %4, i64 1
  %52 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  call void @print_value(ptr noundef nonnull %51, ptr noundef %53, i32 noundef %2)
  br label %55

54:                                               ; preds = %29, %45, %43
  call void @print_value(ptr noundef nonnull %4, ptr noundef nonnull %31, i32 noundef %2)
  br label %55

55:                                               ; preds = %50, %54, %40
  %56 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  call void @print_pattern(ptr noundef nonnull %5, ptr noundef %57, i32 noundef %2)
  %58 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %129

59:                                               ; preds = %3
  store i16 123, ptr %4, align 16
  %60 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !46
  %62 = load i32, ptr %61, align 8, !tbaa !56
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %59, %64
  %65 = phi i64 [ %71, %64 ], [ 0, %59 ]
  %66 = phi ptr [ %72, %64 ], [ %61, %59 ]
  %67 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1, i64 %65
  %68 = load ptr, ptr %67, align 8, !tbaa !35
  call void @print_pattern(ptr noundef nonnull %5, ptr noundef %68, i32 noundef %2)
  %69 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %70 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %6)
  %71 = add nuw nsw i64 %65, 1
  %72 = load ptr, ptr %60, align 8, !tbaa !46
  %73 = load i32, ptr %72, align 8, !tbaa !56
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %64, label %76, !llvm.loop !60

76:                                               ; preds = %64, %59
  %77 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef nonnull %4)
  br label %129

78:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 598, ptr noundef nonnull @.str.29) #13
  br label %79

79:                                               ; preds = %3, %78
  %80 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !46
  %82 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef %81)
  br label %129

83:                                               ; preds = %3
  %84 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !46
  tail call void @print_value(ptr noundef %0, ptr noundef %85, i32 noundef %2)
  br label %129

86:                                               ; preds = %3
  %87 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !46
  call void @print_value(ptr noundef nonnull %4, ptr noundef %88, i32 noundef %2)
  %89 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.31, ptr noundef nonnull %4)
  br label %129

90:                                               ; preds = %3
  store i64 34730709464870517, ptr %4, align 16
  %91 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !46
  %93 = load i32, ptr %92, align 8, !tbaa !56
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %90, %95
  %96 = phi i64 [ %102, %95 ], [ 0, %90 ]
  %97 = phi ptr [ %103, %95 ], [ %92, %90 ]
  %98 = getelementptr inbounds %struct.rtvec_def, ptr %97, i64 0, i32 1, i64 %96
  %99 = load ptr, ptr %98, align 8, !tbaa !35
  call void @print_pattern(ptr noundef nonnull %5, ptr noundef %99, i32 noundef %2)
  %100 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %101 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %6)
  %102 = add nuw nsw i64 %96, 1
  %103 = load ptr, ptr %91, align 8, !tbaa !46
  %104 = load i32, ptr %103, align 8, !tbaa !56
  %105 = sext i32 %104 to i64
  %106 = icmp slt i64 %102, %105
  br i1 %106, label %95, label %107, !llvm.loop !61

107:                                              ; preds = %95, %90
  %108 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef nonnull %4)
  br label %129

109:                                              ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %4, ptr noundef nonnull align 1 dereferenceable(10) @.str.33, i64 10, i1 false)
  %110 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !46
  %112 = load i32, ptr %111, align 8, !tbaa !56
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %109, %114
  %115 = phi i64 [ %121, %114 ], [ 0, %109 ]
  %116 = phi ptr [ %122, %114 ], [ %111, %109 ]
  %117 = getelementptr inbounds %struct.rtvec_def, ptr %116, i64 0, i32 1, i64 %115
  %118 = load ptr, ptr %117, align 8, !tbaa !35
  call void @print_pattern(ptr noundef nonnull %5, ptr noundef %118, i32 noundef %2)
  %119 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %120 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %6)
  %121 = add nuw nsw i64 %115, 1
  %122 = load ptr, ptr %110, align 8, !tbaa !46
  %123 = load i32, ptr %122, align 8, !tbaa !56
  %124 = sext i32 %123 to i64
  %125 = icmp slt i64 %121, %124
  br i1 %125, label %114, label %126, !llvm.loop !62

126:                                              ; preds = %114, %109
  %127 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef nonnull %4)
  br label %129

128:                                              ; preds = %3
  tail call void @print_value(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2)
  br label %129

129:                                              ; preds = %128, %126, %107, %86, %83, %3, %79, %76, %55, %25, %21, %17, %16, %15, %9
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @print_insn(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = alloca [2048 x i8], align 16
  %5 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %4) #13
  %6 = load i32, ptr %1, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %134 [
    i16 8, label %8
    i16 7, label %24
    i16 9, label %75
    i16 10, label %91
    i16 12, label %117
    i16 11, label %121
    i16 13, label %125
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  call void @print_pattern(ptr noundef nonnull %4, ptr noundef %10, i32 noundef %2)
  %11 = icmp ne i32 %2, 0
  %12 = load ptr, ptr @current_sched_info, align 8
  %13 = icmp ne ptr %12, null
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.haifa_sched_info, ptr %12, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  %18 = call ptr %17(ptr noundef nonnull %1, i32 noundef 1) #13
  %19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef %18, ptr noundef nonnull %4)
  br label %142

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !46
  %23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %22, ptr noundef nonnull %4)
  br label %142

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %26 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !50
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %35, label %56

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.tree_decl_minimal, ptr %29, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.tree_identifier, ptr %37, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  br label %54

42:                                               ; preds = %35
  %43 = load ptr, ptr %28, align 8, !tbaa !46
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 37
  %47 = getelementptr inbounds %struct.tree_decl_minimal, ptr %43, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !46
  br i1 %46, label %49, label %52

49:                                               ; preds = %42
  %50 = sub i32 0, %48
  %51 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %50)
  br label %54

52:                                               ; preds = %42
  %53 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %48)
  br label %54

54:                                               ; preds = %49, %52, %39
  %55 = phi ptr [ %41, %39 ], [ %5, %49 ], [ %5, %52 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %56

56:                                               ; preds = %54, %24
  %57 = phi ptr [ %55, %54 ], [ @.str.29, %24 ]
  %58 = load ptr, ptr %26, align 8, !tbaa !46
  %59 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !46
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 25
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !46
  %67 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !35
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, ptr %25, align 8, !tbaa !46
  %71 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %70, ptr noundef %57)
  br label %142

72:                                               ; preds = %64, %56
  call void @print_pattern(ptr noundef nonnull %4, ptr noundef nonnull %60, i32 noundef %2)
  %73 = load i32, ptr %25, align 8, !tbaa !46
  %74 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %73, ptr noundef %57, ptr noundef nonnull %4)
  br label %142

75:                                               ; preds = %3
  %76 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !46
  call void @print_pattern(ptr noundef nonnull %4, ptr noundef %77, i32 noundef %2)
  %78 = icmp ne i32 %2, 0
  %79 = load ptr, ptr @current_sched_info, align 8
  %80 = icmp ne ptr %79, null
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.haifa_sched_info, ptr %79, i64 0, i32 5
  %84 = load ptr, ptr %83, align 8, !tbaa !63
  %85 = call ptr %84(ptr noundef nonnull %1, i32 noundef 1) #13
  %86 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.39, ptr noundef %85, ptr noundef nonnull %4)
  br label %142

87:                                               ; preds = %75
  %88 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %89 = load i32, ptr %88, align 8, !tbaa !46
  %90 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %89, ptr noundef nonnull %4)
  br label %142

91:                                               ; preds = %3
  %92 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %93 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !46
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 15
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !46
  %101 = getelementptr inbounds %struct.rtvec_def, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !35
  call void @print_pattern(ptr noundef nonnull %4, ptr noundef %102, i32 noundef %2)
  br label %104

103:                                              ; preds = %91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %4, ptr noundef nonnull align 1 dereferenceable(11) @.str.40, i64 11, i1 false)
  br label %104

104:                                              ; preds = %103, %98
  %105 = icmp ne i32 %2, 0
  %106 = load ptr, ptr @current_sched_info, align 8
  %107 = icmp ne ptr %106, null
  %108 = select i1 %105, i1 %107, i1 false
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.haifa_sched_info, ptr %106, i64 0, i32 5
  %111 = load ptr, ptr %110, align 8, !tbaa !63
  %112 = call ptr %111(ptr noundef nonnull %1, i32 noundef 1) #13
  %113 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef %112, ptr noundef nonnull %4)
  br label %142

114:                                              ; preds = %104
  %115 = load i32, ptr %92, align 8, !tbaa !46
  %116 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %115, ptr noundef nonnull %4)
  br label %142

117:                                              ; preds = %3
  %118 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %119 = load i32, ptr %118, align 8, !tbaa !46
  %120 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %119)
  br label %142

121:                                              ; preds = %3
  %122 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %123 = load i32, ptr %122, align 8, !tbaa !46
  %124 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %123)
  br label %142

125:                                              ; preds = %3
  %126 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %127 = load i32, ptr %126, align 8, !tbaa !46
  %128 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %129 = load i32, ptr %128, align 8, !tbaa !46
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [13 x ptr], ptr @note_insn_name, i64 0, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !35
  %133 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %127, ptr noundef %132)
  br label %142

134:                                              ; preds = %3
  %135 = and i32 %6, 65535
  %136 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %137 = load i32, ptr %136, align 8, !tbaa !46
  %138 = zext nneg i32 %135 to i64
  %139 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !35
  %141 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.43, i32 noundef %137, ptr noundef %140)
  br label %142

142:                                              ; preds = %69, %72, %109, %114, %82, %87, %15, %20, %134, %125, %121, %117
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %4) #13
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_insn_slim(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = alloca [2080 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 2080, ptr nonnull %3) #13
  call void @print_insn(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 1)
  %4 = call i32 @fputs(ptr noundef nonnull %3, ptr noundef %0)
  %5 = tail call i32 @putc(i32 noundef 10, ptr noundef %0)
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -7
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %26, %14 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  call void @print_value(ptr noundef nonnull %3, ptr noundef %17, i32 noundef 1)
  %18 = load i32, ptr %15, align 8
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [0 x ptr], ptr @reg_note_name, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef %23, ptr noundef nonnull %3)
  %25 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %14, !llvm.loop !65

28:                                               ; preds = %14, %10, %2
  call void @llvm.lifetime.end.p0(i64 2080, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_insn_slim(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  tail call void @dump_insn_slim(ptr noundef %2, ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @print_rtl_slim_with_bb(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !34 {
  tail call void @print_rtl_slim(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef -1, i32 noundef %2)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @print_rtl_slim(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #9 !prof !34 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  br label %10

10:                                               ; preds = %5, %7
  %11 = phi ptr [ %9, %7 ], [ null, %5 ]
  %12 = icmp eq ptr %1, null
  br i1 %12, label %53, label %13

13:                                               ; preds = %10
  %14 = and i32 %4, 32
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %13, %45
  %17 = phi i32 [ %3, %13 ], [ %49, %45 ]
  %18 = phi ptr [ %1, %13 ], [ %51, %45 ]
  %19 = phi ptr [ null, %13 ], [ %46, %45 ]
  %20 = icmp ne ptr %18, %11
  %21 = icmp ne i32 %17, 0
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %53

23:                                               ; preds = %16
  br i1 %15, label %24, label %34

24:                                               ; preds = %23
  %25 = load i32, ptr %18, align 8
  %26 = trunc i32 %25 to i16
  switch i16 %26, label %34 [
    i16 8, label %27
    i16 7, label %27
    i16 9, label %27
    i16 10, label %27
    i16 13, label %27
  ]

27:                                               ; preds = %24, %24, %24, %24, %24
  %28 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = icmp eq ptr %29, null
  %31 = icmp ne ptr %19, null
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  tail call void @dump_bb_info(ptr noundef %29, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef %4, ptr noundef nonnull @.str.45, ptr noundef %0) #13
  br label %34

34:                                               ; preds = %24, %33, %27, %23
  %35 = phi ptr [ %19, %27 ], [ %29, %33 ], [ %19, %23 ], [ %19, %24 ]
  tail call void @dump_insn_slim(ptr noundef %0, ptr noundef nonnull %18)
  %36 = icmp ne ptr %35, null
  %37 = select i1 %15, i1 %36, i1 false
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = getelementptr inbounds %struct.rtl_bb_info, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !66
  %43 = icmp eq ptr %18, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  tail call void @dump_bb_info(ptr noundef nonnull %35, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %4, ptr noundef nonnull @.str.45, ptr noundef %0) #13
  br label %45

45:                                               ; preds = %44, %38, %34
  %46 = phi ptr [ null, %44 ], [ %35, %38 ], [ %35, %34 ]
  %47 = icmp sgt i32 %17, 0
  %48 = sext i1 %47 to i32
  %49 = add nsw i32 %17, %48
  %50 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %16, !llvm.loop !68

53:                                               ; preds = %45, %16, %10
  ret void
}

declare void @dump_bb_info(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_bb_slim(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  tail call void @print_rtl_slim(ptr noundef %2, ptr noundef %5, ptr noundef %7, i32 noundef -1, i32 noundef 32)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_bb_n_slim(i32 noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = zext i32 %0 to i64
  %8 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %6, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = load ptr, ptr @stderr, align 8, !tbaa !35
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  %14 = getelementptr inbounds %struct.rtl_bb_info, ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  tail call void @print_rtl_slim(ptr noundef %10, ptr noundef %13, ptr noundef %15, i32 noundef -1, i32 noundef 32)
  ret void
}

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

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
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }

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
!54 = distinct !{!54, !52, !53}
!55 = !{!43, !43, i64 0}
!56 = !{!57, !41, i64 0}
!57 = !{!"rtvec_def", !41, i64 0, !37, i64 8}
!58 = distinct !{!58, !52, !53}
!59 = distinct !{!59, !52, !53}
!60 = distinct !{!60, !52, !53}
!61 = distinct !{!61, !52, !53}
!62 = distinct !{!62, !52, !53}
!63 = !{!64, !36, i64 40}
!64 = !{!"haifa_sched_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !41, i64 96, !41, i64 100, !36, i64 104, !36, i64 112, !36, i64 120, !41, i64 128}
!65 = distinct !{!65, !52, !53}
!66 = !{!67, !36, i64 8}
!67 = !{!"rtl_bb_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!68 = distinct !{!68, !52, !53}
!69 = !{!67, !36, i64 0}
!70 = !{!71, !36, i64 8}
!71 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!72 = !{!73, !36, i64 16}
!73 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
