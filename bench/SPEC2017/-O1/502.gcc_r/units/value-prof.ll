; ModuleID = 'value-prof.c'
source_filename = "value-prof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.anon = type { ptr, ptr, ptr, ptr }
%struct.histogram_value_t = type { %struct.anon, i32, i32, %union.anon }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.VEC_histogram_value_base = type { i32, i32, [1 x ptr] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@error_found = internal unnamed_addr global i1 false, align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [85 x i8] c"Histogram value statement does not correspond to the statement it is associated with\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"verify_histograms failed\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"value-prof.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Interval counter range %d -- %d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" %d:%ld\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c" ] outside range:%ld\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Pow2 counter \00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"pow2:%ld nonpow2:%ld\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Single value \00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"value:%ld match:%ld wrong:%ld\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Average value \00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"sum:%ld times:%ld\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"IOR value \00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"ior:%ld\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Constant delta \00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"Indirect call \00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"value:%ld match:%ld all:%ld\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"Dead histogram\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [6 x i8] c"Stmt \00", align 1
@flag_value_profile_transformations = external local_unnamed_addr global i32, align 4
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.22 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Trying transformations on stmt \00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"interval\00", align 1
@flag_profile_correction = external local_unnamed_addr global i32, align 4
@.str.25 = private unnamed_addr constant [37 x i8] c"Mod subtract transformation on insn \00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [99 x i8] c"Correcting inconsistent value profile: %s profiler overall count (%d) does not match BB count (%d)\00", align 1
@.str.27 = private unnamed_addr constant [85 x i8] c"Corrupted value profile: %s profiler overall count (%d) does not match BB count (%d)\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"PROF\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"Div/mod by constant \00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c" transformation on insn \00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"Mod power of 2 transformation on insn \00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"pow2\00", align 1
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.35 = private unnamed_addr constant [44 x i8] c"Single value %i stringop transformation on \00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"ic\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"Indirect call -> direct call \00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"=> \00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"hist->count %ld hist->all %ld\0A\00", align 1
@pid_map = internal unnamed_addr global ptr null, align 8
@cgraph_max_pid = external local_unnamed_addr global i32, align 4
@cgraph_nodes = external local_unnamed_addr global ptr, align 8

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #21
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #21
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #21
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
  %5 = tail call ptr @__ctype_tolower_loc() #21
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
  %5 = tail call ptr @__ctype_toupper_loc() #21
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #21
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
define dso_local ptr @gimple_histogram_value(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %8 = tail call i32 %7(ptr noundef %1) #21
  %9 = tail call ptr @htab_find_with_hash(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %8) #21
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %9, %6 ], [ null, %2 ]
  ret ptr %11
}

declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gimple_add_histogram_value(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %9 = tail call i32 %8(ptr noundef %1) #21
  %10 = tail call ptr @htab_find_with_hash(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %9) #21
  br label %11

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %10, %7 ], [ null, %3 ]
  %13 = getelementptr inbounds %struct.anon, ptr %2, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !56
  tail call fastcc void @set_histogram_value(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @set_histogram_value(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = icmp ne ptr %2, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %5, %3
  %10 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call ptr @htab_create(i64 noundef 1, ptr noundef nonnull @histogram_hash, ptr noundef nonnull @histogram_eq, ptr noundef null) #21
  store ptr %14, ptr %10, align 8, !tbaa !54
  br label %15

15:                                               ; preds = %13, %9
  %16 = load ptr, ptr %10, align 8, !tbaa !54
  %17 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %18 = tail call i32 %17(ptr noundef %1) #21
  %19 = zext i1 %4 to i32
  %20 = tail call ptr @htab_find_slot_with_hash(ptr noundef %16, ptr noundef %1, i32 noundef %18, i32 noundef %19) #21
  br i1 %4, label %25, label %21

21:                                               ; preds = %15
  %22 = icmp eq ptr %20, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr %10, align 8, !tbaa !54
  tail call void @htab_clear_slot(ptr noundef %24, ptr noundef nonnull %20) #21
  br label %26

25:                                               ; preds = %15
  store ptr %2, ptr %20, align 8, !tbaa !35
  br label %26

26:                                               ; preds = %21, %23, %5, %25
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gimple_remove_histogram_value(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %9 = tail call i32 %8(ptr noundef %1) #21
  %10 = tail call ptr @htab_find_with_hash(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %9) #21
  br label %11

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %10, %7 ], [ null, %3 ]
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.anon, ptr %2, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  tail call fastcc void @set_histogram_value(ptr noundef %0, ptr noundef %1, ptr noundef %16)
  br label %26

17:                                               ; preds = %11, %17
  %18 = phi ptr [ %20, %17 ], [ %12, %11 ]
  %19 = getelementptr inbounds %struct.anon, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %22, label %17, !llvm.loop !59

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.anon, ptr %18, i64 0, i32 3
  %24 = getelementptr inbounds %struct.anon, ptr %2, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !56
  store ptr %25, ptr %23, align 8, !tbaa !56
  br label %26

26:                                               ; preds = %22, %14
  %27 = getelementptr inbounds %struct.anon, ptr %2, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !60
  tail call void @free(ptr noundef %28)
  tail call void @free(ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gimple_histogram_value_of_type(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %9 = tail call i32 %8(ptr noundef %1) #21
  %10 = tail call ptr @htab_find_with_hash(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %9) #21
  br label %11

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %10, %7 ], [ null, %3 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %11, %19
  %15 = phi ptr [ %21, %19 ], [ %12, %11 ]
  %16 = getelementptr inbounds %struct.histogram_value_t, ptr %15, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !61
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.anon, ptr %15, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !llvm.loop !62

23:                                               ; preds = %14, %19, %11
  %24 = phi ptr [ null, %11 ], [ %15, %14 ], [ null, %19 ]
  ret ptr %24
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_histograms_for_stmt(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %9 = tail call i32 %8(ptr noundef %2) #21
  %10 = tail call ptr @htab_find_with_hash(ptr noundef nonnull %5, ptr noundef %2, i32 noundef %9) #21
  br label %11

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %10, %7 ], [ null, %3 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %11 ]
  tail call fastcc void @dump_histogram_value(ptr noundef %1, ptr noundef nonnull %15)
  %16 = getelementptr inbounds %struct.anon, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !63

19:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @dump_histogram_value(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !prof !34 {
  %3 = getelementptr inbounds %struct.histogram_value_t, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !61
  switch i32 %4, label %107 [
    i32 0, label %5
    i32 1, label %41
    i32 2, label %51
    i32 5, label %63
    i32 6, label %73
    i32 3, label %81
    i32 4, label %93
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.histogram_value_t, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.histogram_value_t, ptr %1, i64 0, i32 3, i32 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !46
  %10 = add i32 %7, -1
  %11 = add i32 %10, %9
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %7, i32 noundef %11)
  %13 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = icmp eq ptr %14, null
  br i1 %15, label %105, label %16

16:                                               ; preds = %5
  %17 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 2, i64 1, ptr %0)
  %18 = load i32, ptr %8, align 4, !tbaa !46
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %16, %20
  %21 = phi i64 [ %29, %20 ], [ 0, %16 ]
  %22 = load i32, ptr %6, align 8, !tbaa !46
  %23 = trunc i64 %21 to i32
  %24 = add i32 %22, %23
  %25 = load ptr, ptr %13, align 8, !tbaa !60
  %26 = getelementptr inbounds i64, ptr %25, i64 %21
  %27 = load i64, ptr %26, align 8, !tbaa !64
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %24, i64 noundef %27)
  %29 = add nuw nsw i64 %21, 1
  %30 = load i32, ptr %8, align 4, !tbaa !46
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %20, label %33, !llvm.loop !65

33:                                               ; preds = %20
  %34 = and i64 %29, 4294967295
  br label %35

35:                                               ; preds = %33, %16
  %36 = phi i64 [ 0, %16 ], [ %34, %33 ]
  %37 = load ptr, ptr %13, align 8, !tbaa !60
  %38 = getelementptr inbounds i64, ptr %37, i64 %36
  %39 = load i64, ptr %38, align 8, !tbaa !64
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i64 noundef %39)
  br label %105

41:                                               ; preds = %2
  %42 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 13, i64 1, ptr %0)
  %43 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !60
  %45 = icmp eq ptr %44, null
  br i1 %45, label %105, label %46

46:                                               ; preds = %41
  %47 = load i64, ptr %44, align 8, !tbaa !64
  %48 = getelementptr inbounds i64, ptr %44, i64 1
  %49 = load i64, ptr %48, align 8, !tbaa !64
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i64 noundef %47, i64 noundef %49)
  br label %105

51:                                               ; preds = %2
  %52 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 13, i64 1, ptr %0)
  %53 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !60
  %55 = icmp eq ptr %54, null
  br i1 %55, label %105, label %56

56:                                               ; preds = %51
  %57 = load i64, ptr %54, align 8, !tbaa !64
  %58 = getelementptr inbounds i64, ptr %54, i64 1
  %59 = load i64, ptr %58, align 8, !tbaa !64
  %60 = getelementptr inbounds i64, ptr %54, i64 2
  %61 = load i64, ptr %60, align 8, !tbaa !64
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef %57, i64 noundef %59, i64 noundef %61)
  br label %105

63:                                               ; preds = %2
  %64 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 14, i64 1, ptr %0)
  %65 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !60
  %67 = icmp eq ptr %66, null
  br i1 %67, label %105, label %68

68:                                               ; preds = %63
  %69 = load i64, ptr %66, align 8, !tbaa !64
  %70 = getelementptr inbounds i64, ptr %66, i64 1
  %71 = load i64, ptr %70, align 8, !tbaa !64
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, i64 noundef %69, i64 noundef %71)
  br label %105

73:                                               ; preds = %2
  %74 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 10, i64 1, ptr %0)
  %75 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !60
  %77 = icmp eq ptr %76, null
  br i1 %77, label %105, label %78

78:                                               ; preds = %73
  %79 = load i64, ptr %76, align 8, !tbaa !64
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, i64 noundef %79)
  br label %105

81:                                               ; preds = %2
  %82 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 15, i64 1, ptr %0)
  %83 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !60
  %85 = icmp eq ptr %84, null
  br i1 %85, label %105, label %86

86:                                               ; preds = %81
  %87 = load i64, ptr %84, align 8, !tbaa !64
  %88 = getelementptr inbounds i64, ptr %84, i64 1
  %89 = load i64, ptr %88, align 8, !tbaa !64
  %90 = getelementptr inbounds i64, ptr %84, i64 2
  %91 = load i64, ptr %90, align 8, !tbaa !64
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef %87, i64 noundef %89, i64 noundef %91)
  br label %105

93:                                               ; preds = %2
  %94 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 14, i64 1, ptr %0)
  %95 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !60
  %97 = icmp eq ptr %96, null
  br i1 %97, label %105, label %98

98:                                               ; preds = %93
  %99 = load i64, ptr %96, align 8, !tbaa !64
  %100 = getelementptr inbounds i64, ptr %96, i64 1
  %101 = load i64, ptr %100, align 8, !tbaa !64
  %102 = getelementptr inbounds i64, ptr %96, i64 2
  %103 = load i64, ptr %102, align 8, !tbaa !64
  %104 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, i64 noundef %99, i64 noundef %101, i64 noundef %103)
  br label %105

105:                                              ; preds = %93, %98, %81, %86, %73, %78, %63, %68, %51, %56, %41, %46, %5, %35
  %106 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %0)
  br label %107

107:                                              ; preds = %105, %2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @gimple_remove_stmt_histograms(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !66 {
  %3 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 5
  br label %4

4:                                                ; preds = %14, %2
  %5 = load ptr, ptr %3, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !67

7:                                                ; preds = %4
  %8 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %9 = tail call i32 %8(ptr noundef %1) #21
  %10 = tail call ptr @htab_find_with_hash(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %9) #21
  br label %11

11:                                               ; preds = %4, %7
  %12 = phi ptr [ %10, %7 ], [ null, %4 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !67

14:                                               ; preds = %11
  tail call void @gimple_remove_histogram_value(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %12)
  br label %4, !llvm.loop !68

15:                                               ; preds = %11
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @gimple_duplicate_stmt_histograms(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #12 !prof !69 {
  %5 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !70

8:                                                ; preds = %4
  %9 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %10 = tail call i32 %9(ptr noundef %3) #21
  %11 = tail call ptr @htab_find_with_hash(ptr noundef nonnull %6, ptr noundef %3, i32 noundef %10) #21
  br label %12

12:                                               ; preds = %4, %8
  %13 = phi ptr [ %11, %8 ], [ null, %4 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %36, label %15, !prof !71

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %34, %15 ], [ %13, %12 ]
  %17 = getelementptr inbounds %struct.histogram_value_t, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !61
  %19 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 48) #21
  %20 = getelementptr inbounds %struct.anon, ptr %19, i64 0, i32 1
  %21 = getelementptr inbounds %struct.histogram_value_t, ptr %19, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  store i32 %18, ptr %21, align 8, !tbaa !61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull align 8 dereferenceable(48) %16, i64 48, i1 false)
  store ptr %1, ptr %20, align 8, !tbaa !72
  %22 = getelementptr inbounds %struct.histogram_value_t, ptr %19, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !73
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 3
  %26 = tail call ptr @xmalloc(i64 noundef %25) #21
  %27 = getelementptr inbounds %struct.anon, ptr %19, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !60
  %28 = getelementptr inbounds %struct.anon, ptr %16, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !60
  %30 = load i32, ptr %22, align 4, !tbaa !73
  %31 = zext i32 %30 to i64
  %32 = shl nuw nsw i64 %31, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %26, ptr align 8 %29, i64 %32, i1 false)
  tail call void @gimple_add_histogram_value(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %19)
  %33 = getelementptr inbounds %struct.anon, ptr %16, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !56
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %15, !prof !71, !llvm.loop !74

36:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gimple_move_stmt_histograms(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %9 = tail call i32 %8(ptr noundef %2) #21
  %10 = tail call ptr @htab_find_with_hash(ptr noundef nonnull %5, ptr noundef %2, i32 noundef %9) #21
  br label %11

11:                                               ; preds = %3, %7
  %12 = phi ptr [ %10, %7 ], [ null, %3 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  tail call fastcc void @set_histogram_value(ptr noundef %0, ptr noundef %2, ptr noundef null)
  br label %15

15:                                               ; preds = %14, %15
  %16 = phi ptr [ %12, %14 ], [ %19, %15 ]
  %17 = getelementptr inbounds %struct.anon, ptr %16, i64 0, i32 1
  store ptr %1, ptr %17, align 8, !tbaa !72
  %18 = getelementptr inbounds %struct.anon, ptr %16, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !56
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %15, !llvm.loop !75

21:                                               ; preds = %15
  tail call fastcc void @set_histogram_value(ptr noundef %0, ptr noundef %1, ptr noundef null)
  br label %22

22:                                               ; preds = %21, %11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @verify_histograms() local_unnamed_addr #9 !prof !34 {
  store i1 false, ptr @error_found, align 1
  %1 = tail call ptr @pointer_set_create() #21
  %2 = load ptr, ptr @cfun, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %70, label %20

11:                                               ; preds = %66, %37
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !79
  %14 = load ptr, ptr @cfun, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !76
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !81
  %19 = icmp eq ptr %13, %18
  br i1 %19, label %70, label %20, !llvm.loop !82

20:                                               ; preds = %0, %11
  %21 = phi ptr [ %13, %11 ], [ %7, %0 ]
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !83, !noalias !84
  %24 = and i32 %23, 512
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !46, !noalias !84
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %28, align 8, !tbaa !87, !noalias !84
  br label %32

32:                                               ; preds = %30, %26, %20
  %33 = phi ptr [ %31, %30 ], [ null, %26 ], [ null, %20 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %33, align 8, !tbaa !89, !noalias !84
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi ptr [ %36, %35 ], [ null, %32 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %11, label %40

40:                                               ; preds = %37, %66
  %41 = phi ptr [ %68, %66 ], [ %38, %37 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !91
  %43 = load ptr, ptr @cfun, align 8, !tbaa !35
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !54
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %49 = tail call i32 %48(ptr noundef %42) #21
  %50 = tail call ptr @htab_find_with_hash(ptr noundef nonnull %45, ptr noundef %42, i32 noundef %49) #21
  br label %51

51:                                               ; preds = %40, %47
  %52 = phi ptr [ %50, %47 ], [ null, %40 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %66, label %54

54:                                               ; preds = %51, %61
  %55 = phi ptr [ %64, %61 ], [ %52, %51 ]
  %56 = getelementptr inbounds %struct.anon, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !72
  %58 = icmp eq ptr %57, %42
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str) #21
  tail call void @debug_gimple_stmt(ptr noundef %42) #21
  %60 = load ptr, ptr @stderr, align 8, !tbaa !35
  tail call fastcc void @dump_histogram_value(ptr noundef %60, ptr noundef nonnull %55)
  store i1 true, ptr @error_found, align 1
  br label %61

61:                                               ; preds = %59, %54
  %62 = tail call i32 @pointer_set_insert(ptr noundef %1, ptr noundef nonnull %55) #21
  %63 = getelementptr inbounds %struct.anon, ptr %55, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !56
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %54, !llvm.loop !93

66:                                               ; preds = %61, %51
  %67 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %41, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !94
  %69 = icmp eq ptr %68, null
  br i1 %69, label %11, label %40, !llvm.loop !95

70:                                               ; preds = %11, %0
  %71 = phi ptr [ %2, %0 ], [ %14, %11 ]
  %72 = getelementptr inbounds %struct.function, ptr %71, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !54
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  tail call void @htab_traverse(ptr noundef nonnull %73, ptr noundef nonnull @visit_hist, ptr noundef %1) #21
  br label %76

76:                                               ; preds = %75, %70
  tail call void @pointer_set_destroy(ptr noundef %1) #21
  %77 = load i1, ptr @error_found, align 1
  br i1 %77, label %78, label %79

78:                                               ; preds = %76
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.1) #21
  br label %79

79:                                               ; preds = %78, %76
  ret void
}

declare ptr @pointer_set_create() local_unnamed_addr #3

declare void @error(ptr noundef, ...) local_unnamed_addr #3

declare void @debug_gimple_stmt(ptr noundef) local_unnamed_addr #3

declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @visit_hist(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = tail call i32 @pointer_set_contains(ptr noundef %1, ptr noundef %3) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.20) #21
  %7 = load ptr, ptr @stderr, align 8, !tbaa !35
  tail call fastcc void @dump_histogram_value(ptr noundef %7, ptr noundef %3)
  %8 = getelementptr inbounds %struct.anon, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  tail call void @debug_gimple_stmt(ptr noundef %9) #21
  store i1 true, ptr @error_found, align 1
  br label %10

10:                                               ; preds = %6, %2
  ret i32 1
}

declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #3

declare void @internal_error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @free_histograms() local_unnamed_addr #14 !prof !96 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !97

5:                                                ; preds = %0
  tail call void @htab_traverse(ptr noundef nonnull %3, ptr noundef nonnull @free_hist, ptr noundef null) #21
  %6 = load ptr, ptr @cfun, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  tail call void @htab_delete(ptr noundef %8) #21
  %9 = load ptr, ptr @cfun, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 5
  store ptr null, ptr %10, align 8, !tbaa !54
  br label %11

11:                                               ; preds = %5, %0
  ret void
}

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define internal noundef i32 @free_hist(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #15 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.anon, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  tail call void @free(ptr noundef %5)
  tail call void @free(ptr noundef %3)
  ret i32 1
}

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @stringop_block_profile(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #9 !prof !34 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %10 = tail call i32 %9(ptr noundef %0) #21
  %11 = tail call ptr @htab_find_with_hash(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %10) #21
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi ptr [ %11, %8 ], [ null, %3 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %12, %20
  %16 = phi ptr [ %22, %20 ], [ %13, %12 ]
  %17 = getelementptr inbounds %struct.histogram_value_t, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !61
  %19 = icmp eq i32 %18, 5
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.anon, ptr %16, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %15, !llvm.loop !62

24:                                               ; preds = %15, %20, %12
  %25 = phi ptr [ null, %12 ], [ %16, %15 ], [ null, %20 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i64 -1, ptr %2, align 8, !tbaa !64
  br label %43

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.anon, ptr %25, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !60
  %31 = getelementptr inbounds i64, ptr %30, i64 1
  %32 = load i64, ptr %31, align 8, !tbaa !64
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  store i64 -1, ptr %2, align 8, !tbaa !64
  %35 = load ptr, ptr @cfun, align 8, !tbaa !35
  tail call void @gimple_remove_histogram_value(ptr noundef %35, ptr noundef %0, ptr noundef nonnull %25)
  br label %43

36:                                               ; preds = %28
  %37 = load i64, ptr %30, align 8, !tbaa !64
  %38 = sdiv i64 %32, 2
  %39 = add nsw i64 %37, %38
  %40 = sdiv i64 %39, %32
  %41 = tail call i64 @llvm.smin.i64(i64 %40, i64 2147483647)
  store i64 %41, ptr %2, align 8, !tbaa !64
  %42 = load ptr, ptr @cfun, align 8, !tbaa !35
  tail call void @gimple_remove_histogram_value(ptr noundef %42, ptr noundef %0, ptr noundef nonnull %25)
  br label %43

43:                                               ; preds = %34, %36, %27
  %44 = load ptr, ptr @cfun, align 8, !tbaa !35
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !54
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %50 = tail call i32 %49(ptr noundef %0) #21
  %51 = tail call ptr @htab_find_with_hash(ptr noundef nonnull %46, ptr noundef %0, i32 noundef %50) #21
  br label %52

52:                                               ; preds = %48, %43
  %53 = phi ptr [ %51, %48 ], [ null, %43 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %52, %60
  %56 = phi ptr [ %62, %60 ], [ %53, %52 ]
  %57 = getelementptr inbounds %struct.histogram_value_t, ptr %56, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !61
  %59 = icmp eq i32 %58, 6
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.anon, ptr %56, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !56
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %55, !llvm.loop !62

64:                                               ; preds = %55, %60, %52
  %65 = phi ptr [ null, %52 ], [ %56, %55 ], [ null, %60 ]
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 0, ptr %1, align 4, !tbaa !50
  br label %86

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.anon, ptr %65, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !60
  %71 = load i64, ptr %70, align 8, !tbaa !64
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load ptr, ptr @cfun, align 8, !tbaa !35
  tail call void @gimple_remove_histogram_value(ptr noundef %74, ptr noundef %0, ptr noundef nonnull %65)
  store i32 0, ptr %1, align 4, !tbaa !50
  br label %86

75:                                               ; preds = %68, %75
  %76 = phi i32 [ %82, %75 ], [ 1, %68 ]
  %77 = sext i32 %76 to i64
  %78 = and i64 %71, %77
  %79 = icmp eq i64 %78, 0
  %80 = icmp ne i32 %76, 0
  %81 = and i1 %80, %79
  %82 = shl i32 %76, 1
  br i1 %81, label %75, label %83, !llvm.loop !98

83:                                               ; preds = %75
  %84 = shl nsw i32 %76, 3
  store i32 %84, ptr %1, align 4, !tbaa !50
  %85 = load ptr, ptr @cfun, align 8, !tbaa !35
  tail call void @gimple_remove_histogram_value(ptr noundef %85, ptr noundef %0, ptr noundef nonnull %65)
  br label %86

86:                                               ; preds = %73, %83, %67
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gimple_register_value_prof_hooks() local_unnamed_addr #9 !prof !34 {
  %1 = tail call i32 @current_ir_type() #21
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1704, ptr noundef nonnull @.str.3) #21
  br label %4

4:                                                ; preds = %0, %3
  ret void
}

declare i32 @current_ir_type() local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @find_values_to_profile(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = alloca i32, align 4
  store ptr null, ptr %0, align 8, !tbaa !35
  %3 = load ptr, ptr @cfun, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !79
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %13, %1
  br label %430

13:                                               ; preds = %426, %39
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = load ptr, ptr @cfun, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !76
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !81
  %21 = icmp eq ptr %15, %20
  br i1 %21, label %12, label %22, !llvm.loop !99

22:                                               ; preds = %1, %13
  %23 = phi ptr [ %15, %13 ], [ %8, %1 ]
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 13
  %25 = load i32, ptr %24, align 8, !tbaa !83, !noalias !100
  %26 = and i32 %25, 512
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !46, !noalias !100
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %30, align 8, !tbaa !87, !noalias !100
  br label %34

34:                                               ; preds = %32, %28, %22
  %35 = phi ptr [ %33, %32 ], [ null, %28 ], [ null, %22 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %35, align 8, !tbaa !89, !noalias !100
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi ptr [ %38, %37 ], [ null, %34 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %13, label %42

42:                                               ; preds = %39, %426
  %43 = phi ptr [ %428, %426 ], [ %40, %39 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !91
  %45 = load i32, ptr @flag_value_profile_transformations, align 4, !tbaa !50
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %426, label %47

47:                                               ; preds = %42
  %48 = load i32, ptr %44, align 8
  %49 = and i32 %48, 255
  %50 = icmp eq i32 %49, 6
  br i1 %50, label %51, label %229

51:                                               ; preds = %47
  %52 = zext nneg i32 %49 to i64
  %53 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !50
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !64
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %60

60:                                               ; preds = %59, %51
  %61 = getelementptr inbounds i8, ptr %44, i64 %57
  %62 = load ptr, ptr %61, align 8, !tbaa !35
  %63 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !46
  %65 = load i64, ptr %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = and i32 %66, 65535
  %68 = add nsw i32 %67, -6
  %69 = icmp ult i32 %68, 3
  br i1 %69, label %70, label %229

70:                                               ; preds = %60
  %71 = load i32, ptr %44, align 8
  %72 = trunc i32 %71 to i8
  switch i8 %72, label %75 [
    i8 6, label %73
    i8 1, label %73
    i8 8, label %76
  ]

73:                                               ; preds = %70, %70
  %74 = lshr i32 %71, 16
  br label %76

75:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1446, ptr noundef nonnull @.str.3) #21
  br label %76

76:                                               ; preds = %75, %73, %70
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ], [ 59, %70 ]
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !46
  %81 = icmp eq i8 %80, 3
  br i1 %81, label %82, label %102

82:                                               ; preds = %76
  %83 = load i32, ptr %44, align 8
  %84 = and i32 %83, 255
  %85 = add nsw i32 %84, -1
  %86 = icmp ult i32 %85, 9
  tail call void @llvm.assume(i1 %86)
  %87 = zext nneg i32 %84 to i64
  %88 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !50
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %90
  %92 = load i64, ptr %91, align 8, !tbaa !64
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %95

95:                                               ; preds = %94, %82
  %96 = getelementptr inbounds i8, ptr %44, i64 %92
  %97 = getelementptr inbounds ptr, ptr %96, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !35
  %99 = load i64, ptr %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = and i32 %100, 65535
  br label %102

102:                                              ; preds = %95, %76
  %103 = phi i32 [ %101, %95 ], [ %77, %76 ]
  %104 = trunc i32 %103 to i16
  switch i16 %104, label %229 [
    i16 67, label %105
    i16 71, label %105
  ]

105:                                              ; preds = %102, %102
  %106 = getelementptr inbounds %struct.gimple_statement_base, ptr %44, i64 0, i32 3
  %107 = load i32, ptr %106, align 4, !tbaa !46
  %108 = icmp ugt i32 %107, 2
  br i1 %108, label %109, label %127

109:                                              ; preds = %105
  %110 = load i32, ptr %44, align 8
  %111 = and i32 %110, 255
  %112 = add nsw i32 %111, -10
  %113 = icmp ult i32 %112, -9
  br i1 %113, label %127, label %114

114:                                              ; preds = %109
  %115 = zext nneg i32 %111 to i64
  %116 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !50
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %118
  %120 = load i64, ptr %119, align 8, !tbaa !64
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %123

123:                                              ; preds = %122, %114
  %124 = getelementptr inbounds i8, ptr %44, i64 %120
  %125 = getelementptr inbounds ptr, ptr %124, i64 2
  %126 = load ptr, ptr %125, align 8, !tbaa !35
  br label %127

127:                                              ; preds = %123, %109, %105
  %128 = phi ptr [ null, %105 ], [ %126, %123 ], [ null, %109 ]
  %129 = load i32, ptr %44, align 8
  %130 = and i32 %129, 255
  %131 = add nsw i32 %130, -10
  %132 = icmp ult i32 %131, -9
  br i1 %132, label %146, label %133

133:                                              ; preds = %127
  %134 = zext nneg i32 %130 to i64
  %135 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !50
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %137
  %139 = load i64, ptr %138, align 8, !tbaa !64
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %142

142:                                              ; preds = %141, %133
  %143 = getelementptr inbounds i8, ptr %44, i64 %139
  %144 = getelementptr inbounds ptr, ptr %143, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !35
  br label %146

146:                                              ; preds = %142, %127
  %147 = phi ptr [ %145, %142 ], [ null, %127 ]
  %148 = load ptr, ptr %0, align 8, !tbaa !35
  %149 = icmp eq ptr %148, null
  br i1 %149, label %156, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.VEC_histogram_value_base, ptr %148, i64 0, i32 1
  %152 = load i32, ptr %151, align 4, !tbaa !103
  %153 = load i32, ptr %148, align 8, !tbaa !105
  %154 = sub i32 %152, %153
  %155 = icmp ult i32 %154, 3
  br i1 %155, label %156, label %158

156:                                              ; preds = %150, %146
  %157 = tail call ptr @vec_heap_p_reserve(ptr noundef %148, i32 noundef 3) #21
  store ptr %157, ptr %0, align 8, !tbaa !35
  br label %158

158:                                              ; preds = %156, %150
  %159 = tail call zeroext i8 @is_gimple_reg(ptr noundef %128) #21
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %170, label %161

161:                                              ; preds = %158
  %162 = load ptr, ptr %0, align 8, !tbaa !35
  %163 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 48) #21
  store ptr %128, ptr %163, align 8, !tbaa !106
  %164 = getelementptr inbounds %struct.anon, ptr %163, i64 0, i32 1
  store ptr %44, ptr %164, align 8, !tbaa !72
  %165 = getelementptr inbounds %struct.histogram_value_t, ptr %163, i64 0, i32 1
  store i32 2, ptr %165, align 8, !tbaa !61
  %166 = load i32, ptr %162, align 8, !tbaa !105
  %167 = add i32 %166, 1
  store i32 %167, ptr %162, align 8, !tbaa !105
  %168 = zext i32 %166 to i64
  %169 = getelementptr inbounds %struct.VEC_histogram_value_base, ptr %162, i64 0, i32 2, i64 %168
  store ptr %163, ptr %169, align 8, !tbaa !35
  br label %170

170:                                              ; preds = %161, %158
  %171 = load i32, ptr %44, align 8
  %172 = trunc i32 %171 to i8
  switch i8 %172, label %175 [
    i8 6, label %173
    i8 1, label %173
    i8 8, label %176
  ]

173:                                              ; preds = %170, %170
  %174 = lshr i32 %171, 16
  br label %176

175:                                              ; preds = %170
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1446, ptr noundef nonnull @.str.3) #21
  br label %176

176:                                              ; preds = %170, %175, %173
  %177 = phi i32 [ %174, %173 ], [ 0, %175 ], [ 59, %170 ]
  %178 = zext nneg i32 %177 to i64
  %179 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %178
  %180 = load i8, ptr %179, align 1, !tbaa !46
  %181 = icmp eq i8 %180, 3
  br i1 %181, label %182, label %202

182:                                              ; preds = %176
  %183 = load i32, ptr %44, align 8
  %184 = and i32 %183, 255
  %185 = add nsw i32 %184, -1
  %186 = icmp ult i32 %185, 9
  tail call void @llvm.assume(i1 %186)
  %187 = zext nneg i32 %184 to i64
  %188 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %187
  %189 = load i32, ptr %188, align 4, !tbaa !50
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %190
  %192 = load i64, ptr %191, align 8, !tbaa !64
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %182
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %195

195:                                              ; preds = %194, %182
  %196 = getelementptr inbounds i8, ptr %44, i64 %192
  %197 = getelementptr inbounds ptr, ptr %196, i64 1
  %198 = load ptr, ptr %197, align 8, !tbaa !35
  %199 = load i64, ptr %198, align 8
  %200 = trunc i64 %199 to i32
  %201 = and i32 %200, 65535
  br label %202

202:                                              ; preds = %195, %176
  %203 = phi i32 [ %201, %195 ], [ %177, %176 ]
  %204 = icmp eq i32 %203, 71
  br i1 %204, label %205, label %229

205:                                              ; preds = %202
  %206 = load i64, ptr %64, align 8
  %207 = and i64 %206, 2097152
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %229, label %209

209:                                              ; preds = %205
  %210 = load ptr, ptr %0, align 8, !tbaa !35
  %211 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 48) #21
  store ptr %128, ptr %211, align 8, !tbaa !106
  %212 = getelementptr inbounds %struct.anon, ptr %211, i64 0, i32 1
  store ptr %44, ptr %212, align 8, !tbaa !72
  %213 = getelementptr inbounds %struct.histogram_value_t, ptr %211, i64 0, i32 1
  store i32 1, ptr %213, align 8, !tbaa !61
  %214 = load i32, ptr %210, align 8, !tbaa !105
  %215 = add i32 %214, 1
  store i32 %215, ptr %210, align 8, !tbaa !105
  %216 = zext i32 %214 to i64
  %217 = getelementptr inbounds %struct.VEC_histogram_value_base, ptr %210, i64 0, i32 2, i64 %216
  store ptr %211, ptr %217, align 8, !tbaa !35
  %218 = tail call ptr @build2_stat(i32 noundef 67, ptr noundef nonnull %64, ptr noundef %147, ptr noundef %128) #21
  %219 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 48) #21
  store ptr %218, ptr %219, align 8, !tbaa !106
  %220 = getelementptr inbounds %struct.anon, ptr %219, i64 0, i32 1
  store ptr %44, ptr %220, align 8, !tbaa !72
  %221 = getelementptr inbounds %struct.histogram_value_t, ptr %219, i64 0, i32 1
  store i32 0, ptr %221, align 8, !tbaa !61
  %222 = getelementptr inbounds %struct.histogram_value_t, ptr %219, i64 0, i32 3
  store i32 0, ptr %222, align 8, !tbaa !46
  %223 = getelementptr inbounds %struct.histogram_value_t, ptr %219, i64 0, i32 3, i32 0, i32 1
  store i32 2, ptr %223, align 4, !tbaa !46
  %224 = load ptr, ptr %0, align 8, !tbaa !35
  %225 = load i32, ptr %224, align 8, !tbaa !105
  %226 = add i32 %225, 1
  store i32 %226, ptr %224, align 8, !tbaa !105
  %227 = zext i32 %225 to i64
  %228 = getelementptr inbounds %struct.VEC_histogram_value_base, ptr %224, i64 0, i32 2, i64 %227
  store ptr %219, ptr %228, align 8, !tbaa !35
  br label %229

229:                                              ; preds = %209, %205, %202, %102, %60, %47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  %230 = load i32, ptr %44, align 8
  %231 = and i32 %230, 255
  %232 = icmp eq i32 %231, 8
  br i1 %232, label %233, label %363

233:                                              ; preds = %229
  %234 = zext nneg i32 %231 to i64
  %235 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !50
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %237
  %239 = load i64, ptr %238, align 8, !tbaa !64
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %233
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %242

242:                                              ; preds = %241, %233
  %243 = getelementptr inbounds i8, ptr %44, i64 %239
  %244 = getelementptr inbounds ptr, ptr %243, i64 1
  %245 = load ptr, ptr %244, align 8, !tbaa !35
  %246 = load i64, ptr %245, align 8
  %247 = and i64 %246, 65535
  %248 = icmp eq i64 %247, 121
  br i1 %248, label %249, label %252

249:                                              ; preds = %242
  %250 = getelementptr inbounds %struct.tree_exp, ptr %245, i64 0, i32 3
  %251 = load ptr, ptr %250, align 8, !tbaa !46
  br label %252

252:                                              ; preds = %249, %242
  %253 = phi ptr [ %251, %249 ], [ null, %242 ]
  %254 = icmp eq ptr %253, null
  br i1 %254, label %363, label %255

255:                                              ; preds = %252
  %256 = call fastcc zeroext i8 @interesting_stringop_to_profile_p(ptr noundef nonnull %253, ptr noundef nonnull %44, ptr noundef nonnull %2)
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %363, label %258

258:                                              ; preds = %255
  %259 = load i32, ptr %44, align 8
  %260 = and i32 %259, 255
  %261 = add nsw i32 %260, -10
  %262 = icmp ult i32 %261, -9
  br i1 %262, label %276, label %263

263:                                              ; preds = %258
  %264 = zext nneg i32 %260 to i64
  %265 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %264
  %266 = load i32, ptr %265, align 4, !tbaa !50
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %267
  %269 = load i64, ptr %268, align 8, !tbaa !64
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %263
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %272

272:                                              ; preds = %271, %263
  %273 = getelementptr inbounds i8, ptr %44, i64 %269
  %274 = getelementptr inbounds ptr, ptr %273, i64 3
  %275 = load ptr, ptr %274, align 8, !tbaa !35
  br label %276

276:                                              ; preds = %272, %258
  %277 = phi ptr [ %275, %272 ], [ null, %258 ]
  %278 = load i32, ptr %2, align 4, !tbaa !50
  %279 = add i32 %278, 3
  %280 = load i32, ptr %44, align 8
  %281 = and i32 %280, 255
  %282 = add nsw i32 %281, -10
  %283 = icmp ult i32 %282, -9
  br i1 %283, label %298, label %284

284:                                              ; preds = %276
  %285 = zext nneg i32 %281 to i64
  %286 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %285
  %287 = load i32, ptr %286, align 4, !tbaa !50
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %288
  %290 = load i64, ptr %289, align 8, !tbaa !64
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %284
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %293

293:                                              ; preds = %292, %284
  %294 = getelementptr inbounds i8, ptr %44, i64 %290
  %295 = zext i32 %279 to i64
  %296 = getelementptr inbounds ptr, ptr %294, i64 %295
  %297 = load ptr, ptr %296, align 8, !tbaa !35
  br label %298

298:                                              ; preds = %293, %276
  %299 = phi ptr [ %297, %293 ], [ null, %276 ]
  %300 = load i64, ptr %299, align 8
  %301 = and i64 %300, 65535
  %302 = icmp eq i64 %301, 23
  br i1 %302, label %340, label %303

303:                                              ; preds = %298
  %304 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 48) #21
  store ptr %299, ptr %304, align 8, !tbaa !106
  %305 = getelementptr inbounds %struct.anon, ptr %304, i64 0, i32 1
  store ptr %44, ptr %305, align 8, !tbaa !72
  %306 = getelementptr inbounds %struct.histogram_value_t, ptr %304, i64 0, i32 1
  store i32 2, ptr %306, align 8, !tbaa !61
  %307 = load ptr, ptr %0, align 8, !tbaa !35
  %308 = icmp eq ptr %307, null
  br i1 %308, label %314, label %309

309:                                              ; preds = %303
  %310 = getelementptr inbounds %struct.VEC_histogram_value_base, ptr %307, i64 0, i32 1
  %311 = load i32, ptr %310, align 4, !tbaa !103
  %312 = load i32, ptr %307, align 8, !tbaa !105
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %316

314:                                              ; preds = %309, %303
  %315 = tail call ptr @vec_heap_p_reserve(ptr noundef %307, i32 noundef 1) #21
  store ptr %315, ptr %0, align 8, !tbaa !35
  br label %316

316:                                              ; preds = %314, %309
  %317 = load ptr, ptr %0, align 8, !tbaa !35
  %318 = load i32, ptr %317, align 8, !tbaa !105
  %319 = add i32 %318, 1
  store i32 %319, ptr %317, align 8, !tbaa !105
  %320 = zext i32 %318 to i64
  %321 = getelementptr inbounds %struct.VEC_histogram_value_base, ptr %317, i64 0, i32 2, i64 %320
  store ptr %304, ptr %321, align 8, !tbaa !35
  %322 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 48) #21
  store ptr %299, ptr %322, align 8, !tbaa !106
  %323 = getelementptr inbounds %struct.anon, ptr %322, i64 0, i32 1
  store ptr %44, ptr %323, align 8, !tbaa !72
  %324 = getelementptr inbounds %struct.histogram_value_t, ptr %322, i64 0, i32 1
  store i32 5, ptr %324, align 8, !tbaa !61
  %325 = load ptr, ptr %0, align 8, !tbaa !35
  %326 = icmp eq ptr %325, null
  br i1 %326, label %332, label %327

327:                                              ; preds = %316
  %328 = getelementptr inbounds %struct.VEC_histogram_value_base, ptr %325, i64 0, i32 1
  %329 = load i32, ptr %328, align 4, !tbaa !103
  %330 = load i32, ptr %325, align 8, !tbaa !105
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %334

332:                                              ; preds = %327, %316
  %333 = tail call ptr @vec_heap_p_reserve(ptr noundef %325, i32 noundef 1) #21
  store ptr %333, ptr %0, align 8, !tbaa !35
  br label %334

334:                                              ; preds = %332, %327
  %335 = load ptr, ptr %0, align 8, !tbaa !35
  %336 = load i32, ptr %335, align 8, !tbaa !105
  %337 = add i32 %336, 1
  store i32 %337, ptr %335, align 8, !tbaa !105
  %338 = zext i32 %336 to i64
  %339 = getelementptr inbounds %struct.VEC_histogram_value_base, ptr %335, i64 0, i32 2, i64 %338
  store ptr %322, ptr %339, align 8, !tbaa !35
  br label %340

340:                                              ; preds = %334, %298
  %341 = load i64, ptr %299, align 8
  %342 = and i64 %341, 65535
  %343 = icmp eq i64 %342, 23
  br i1 %343, label %363, label %344

344:                                              ; preds = %340
  %345 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 48) #21
  store ptr %277, ptr %345, align 8, !tbaa !106
  %346 = getelementptr inbounds %struct.anon, ptr %345, i64 0, i32 1
  store ptr %44, ptr %346, align 8, !tbaa !72
  %347 = getelementptr inbounds %struct.histogram_value_t, ptr %345, i64 0, i32 1
  store i32 6, ptr %347, align 8, !tbaa !61
  %348 = load ptr, ptr %0, align 8, !tbaa !35
  %349 = icmp eq ptr %348, null
  br i1 %349, label %355, label %350

350:                                              ; preds = %344
  %351 = getelementptr inbounds %struct.VEC_histogram_value_base, ptr %348, i64 0, i32 1
  %352 = load i32, ptr %351, align 4, !tbaa !103
  %353 = load i32, ptr %348, align 8, !tbaa !105
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %355, label %357

355:                                              ; preds = %350, %344
  %356 = tail call ptr @vec_heap_p_reserve(ptr noundef %348, i32 noundef 1) #21
  store ptr %356, ptr %0, align 8, !tbaa !35
  br label %357

357:                                              ; preds = %355, %350
  %358 = load ptr, ptr %0, align 8, !tbaa !35
  %359 = load i32, ptr %358, align 8, !tbaa !105
  %360 = add i32 %359, 1
  store i32 %360, ptr %358, align 8, !tbaa !105
  %361 = zext i32 %359 to i64
  %362 = getelementptr inbounds %struct.VEC_histogram_value_base, ptr %358, i64 0, i32 2, i64 %361
  store ptr %345, ptr %362, align 8, !tbaa !35
  br label %363

363:                                              ; preds = %357, %340, %255, %252, %229
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  %364 = load i32, ptr %44, align 8
  %365 = and i32 %364, 255
  %366 = icmp eq i32 %365, 8
  br i1 %366, label %367, label %426

367:                                              ; preds = %363
  %368 = zext nneg i32 %365 to i64
  %369 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %368
  %370 = load i32, ptr %369, align 4, !tbaa !50
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %371
  %373 = load i64, ptr %372, align 8, !tbaa !64
  %374 = icmp eq i64 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %367
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %376

376:                                              ; preds = %375, %367
  %377 = getelementptr inbounds i8, ptr %44, i64 %373
  %378 = getelementptr inbounds ptr, ptr %377, i64 1
  %379 = load ptr, ptr %378, align 8, !tbaa !35
  %380 = load i64, ptr %379, align 8
  %381 = and i64 %380, 65535
  %382 = icmp eq i64 %381, 121
  br i1 %382, label %383, label %387

383:                                              ; preds = %376
  %384 = getelementptr inbounds %struct.tree_exp, ptr %379, i64 0, i32 3
  %385 = load ptr, ptr %384, align 8, !tbaa !46
  %386 = icmp eq ptr %385, null
  br i1 %386, label %387, label %426

387:                                              ; preds = %383, %376
  %388 = load i32, ptr %44, align 8
  %389 = and i32 %388, 255
  %390 = add nsw i32 %389, -10
  %391 = icmp ult i32 %390, -9
  br i1 %391, label %405, label %392

392:                                              ; preds = %387
  %393 = zext nneg i32 %389 to i64
  %394 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %393
  %395 = load i32, ptr %394, align 4, !tbaa !50
  %396 = zext i32 %395 to i64
  %397 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %396
  %398 = load i64, ptr %397, align 8, !tbaa !64
  %399 = icmp eq i64 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %392
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %401

401:                                              ; preds = %400, %392
  %402 = getelementptr inbounds i8, ptr %44, i64 %398
  %403 = getelementptr inbounds ptr, ptr %402, i64 1
  %404 = load ptr, ptr %403, align 8, !tbaa !35
  br label %405

405:                                              ; preds = %401, %387
  %406 = phi ptr [ %404, %401 ], [ null, %387 ]
  %407 = load ptr, ptr %0, align 8, !tbaa !35
  %408 = icmp eq ptr %407, null
  br i1 %408, label %415, label %409

409:                                              ; preds = %405
  %410 = getelementptr inbounds %struct.VEC_histogram_value_base, ptr %407, i64 0, i32 1
  %411 = load i32, ptr %410, align 4, !tbaa !103
  %412 = load i32, ptr %407, align 8, !tbaa !105
  %413 = sub i32 %411, %412
  %414 = icmp ult i32 %413, 3
  br i1 %414, label %415, label %417

415:                                              ; preds = %409, %405
  %416 = tail call ptr @vec_heap_p_reserve(ptr noundef %407, i32 noundef 3) #21
  store ptr %416, ptr %0, align 8, !tbaa !35
  br label %417

417:                                              ; preds = %415, %409
  %418 = load ptr, ptr %0, align 8, !tbaa !35
  %419 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 48) #21
  store ptr %406, ptr %419, align 8, !tbaa !106
  %420 = getelementptr inbounds %struct.anon, ptr %419, i64 0, i32 1
  store ptr %44, ptr %420, align 8, !tbaa !72
  %421 = getelementptr inbounds %struct.histogram_value_t, ptr %419, i64 0, i32 1
  store i32 4, ptr %421, align 8, !tbaa !61
  %422 = load i32, ptr %418, align 8, !tbaa !105
  %423 = add i32 %422, 1
  store i32 %423, ptr %418, align 8, !tbaa !105
  %424 = zext i32 %422 to i64
  %425 = getelementptr inbounds %struct.VEC_histogram_value_base, ptr %418, i64 0, i32 2, i64 %424
  store ptr %419, ptr %425, align 8, !tbaa !35
  br label %426

426:                                              ; preds = %417, %383, %363, %42
  %427 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %43, i64 0, i32 2
  %428 = load ptr, ptr %427, align 8, !tbaa !94
  %429 = icmp eq ptr %428, null
  br i1 %429, label %13, label %42, !llvm.loop !107

430:                                              ; preds = %12, %474
  %431 = phi i32 [ %475, %474 ], [ 0, %12 ]
  %432 = load ptr, ptr %0, align 8, !tbaa !35
  %433 = icmp eq ptr %432, null
  br i1 %433, label %441, label %434

434:                                              ; preds = %430
  %435 = load i32, ptr %432, align 8, !tbaa !105
  %436 = icmp ugt i32 %435, %431
  br i1 %436, label %437, label %441

437:                                              ; preds = %434
  %438 = zext i32 %431 to i64
  %439 = getelementptr inbounds %struct.VEC_histogram_value_base, ptr %432, i64 0, i32 2, i64 %438
  %440 = load ptr, ptr %439, align 8, !tbaa !35
  br label %441

441:                                              ; preds = %437, %434, %430
  %442 = phi ptr [ %440, %437 ], [ null, %434 ], [ null, %430 ]
  %443 = phi i1 [ false, %437 ], [ true, %434 ], [ true, %430 ]
  br i1 %443, label %476, label %444

444:                                              ; preds = %441
  %445 = getelementptr inbounds %struct.histogram_value_t, ptr %442, i64 0, i32 1
  %446 = load i32, ptr %445, align 8, !tbaa !61
  switch i32 %446, label %464 [
    i32 0, label %447
    i32 1, label %452
    i32 2, label %454
    i32 3, label %456
    i32 4, label %458
    i32 5, label %460
    i32 6, label %462
  ]

447:                                              ; preds = %444
  %448 = getelementptr inbounds %struct.histogram_value_t, ptr %442, i64 0, i32 3, i32 0, i32 1
  %449 = load i32, ptr %448, align 4, !tbaa !46
  %450 = add i32 %449, 2
  %451 = getelementptr inbounds %struct.histogram_value_t, ptr %442, i64 0, i32 2
  store i32 %450, ptr %451, align 4, !tbaa !73
  br label %465

452:                                              ; preds = %444
  %453 = getelementptr inbounds %struct.histogram_value_t, ptr %442, i64 0, i32 2
  store i32 2, ptr %453, align 4, !tbaa !73
  br label %465

454:                                              ; preds = %444
  %455 = getelementptr inbounds %struct.histogram_value_t, ptr %442, i64 0, i32 2
  store i32 3, ptr %455, align 4, !tbaa !73
  br label %465

456:                                              ; preds = %444
  %457 = getelementptr inbounds %struct.histogram_value_t, ptr %442, i64 0, i32 2
  store i32 4, ptr %457, align 4, !tbaa !73
  br label %465

458:                                              ; preds = %444
  %459 = getelementptr inbounds %struct.histogram_value_t, ptr %442, i64 0, i32 2
  store i32 3, ptr %459, align 4, !tbaa !73
  br label %465

460:                                              ; preds = %444
  %461 = getelementptr inbounds %struct.histogram_value_t, ptr %442, i64 0, i32 2
  store i32 2, ptr %461, align 4, !tbaa !73
  br label %465

462:                                              ; preds = %444
  %463 = getelementptr inbounds %struct.histogram_value_t, ptr %442, i64 0, i32 2
  store i32 1, ptr %463, align 4, !tbaa !73
  br label %465

464:                                              ; preds = %444
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1685, ptr noundef nonnull @.str.3) #21
  br label %465

465:                                              ; preds = %464, %462, %460, %458, %456, %454, %452, %447
  %466 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %467 = icmp eq ptr %466, null
  br i1 %467, label %474, label %468

468:                                              ; preds = %465
  %469 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 5, i64 1, ptr nonnull %466)
  %470 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %471 = getelementptr inbounds %struct.anon, ptr %442, i64 0, i32 1
  %472 = load ptr, ptr %471, align 8, !tbaa !72
  tail call void @print_gimple_stmt(ptr noundef %470, ptr noundef %472, i32 noundef 0, i32 noundef 2) #21
  %473 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call fastcc void @dump_histogram_value(ptr noundef %473, ptr noundef %442)
  br label %474

474:                                              ; preds = %468, %465
  %475 = add i32 %431, 1
  br label %430, !llvm.loop !108

476:                                              ; preds = %441
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @value_profile_transformations() local_unnamed_addr #9 !prof !34 {
  %1 = tail call fastcc zeroext i8 @gimple_value_profile_transformations()
  ret i8 %1
}

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @histogram_hash(ptr nocapture noundef readonly %0) #9 !prof !34 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = tail call i32 %2(ptr noundef %4) #21
  ret i32 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @histogram_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #16 !prof !34 {
  %3 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = icmp eq ptr %4, %1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @pointer_set_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @gimple_value_profile_transformations() unnamed_addr #9 !prof !34 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.gimple_stmt_iterator, align 8
  %25 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %24) #21
  %26 = load ptr, ptr @cfun, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !76
  %29 = load ptr, ptr %28, align 8, !tbaa !77
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !79
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !81
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %1816, label %35

35:                                               ; preds = %0
  %36 = getelementptr inbounds i8, ptr %24, i64 8
  %37 = getelementptr inbounds i8, ptr %24, i64 16
  br label %49

38:                                               ; preds = %1809, %67
  %39 = phi i8 [ %51, %67 ], [ %1810, %1809 ]
  %40 = phi ptr [ %50, %67 ], [ %1811, %1809 ]
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !79
  %43 = load ptr, ptr @cfun, align 8, !tbaa !35
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !76
  %46 = getelementptr inbounds %struct.control_flow_graph, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !81
  %48 = icmp eq ptr %42, %47
  br i1 %48, label %1816, label %49, !llvm.loop !109

49:                                               ; preds = %35, %38
  %50 = phi ptr [ %31, %35 ], [ %42, %38 ]
  %51 = phi i8 [ 0, %35 ], [ %39, %38 ]
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 13
  %53 = load i32, ptr %52, align 8, !tbaa !83, !noalias !110
  %54 = and i32 %53, 512
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !46, !noalias !110
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %58, align 8, !tbaa !87, !noalias !110
  br label %62

62:                                               ; preds = %60, %56, %49
  %63 = phi ptr [ %61, %60 ], [ null, %56 ], [ null, %49 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %63, align 8, !tbaa !89, !noalias !110
  br label %67

67:                                               ; preds = %62, %65
  %68 = phi ptr [ %66, %65 ], [ null, %62 ]
  store ptr %68, ptr %24, align 8, !tbaa.struct !113
  store ptr %63, ptr %36, align 8, !tbaa.struct !114
  store ptr %50, ptr %37, align 8, !tbaa.struct !115
  %69 = icmp eq ptr %68, null
  br i1 %69, label %38, label %70

70:                                               ; preds = %67, %1809
  %71 = phi ptr [ %1814, %1809 ], [ %68, %67 ]
  %72 = phi ptr [ %1811, %1809 ], [ %50, %67 ]
  %73 = phi i8 [ %1810, %1809 ], [ %51, %67 ]
  %74 = load ptr, ptr %71, align 8, !tbaa !91
  %75 = load ptr, ptr @cfun, align 8, !tbaa !35
  %76 = getelementptr inbounds %struct.function, ptr %75, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !54
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %70
  %80 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %81 = call i32 %80(ptr noundef %74) #21
  %82 = call ptr @htab_find_with_hash(ptr noundef nonnull %77, ptr noundef %74, i32 noundef %81) #21
  br label %83

83:                                               ; preds = %70, %79
  %84 = phi ptr [ %82, %79 ], [ null, %70 ]
  %85 = icmp eq ptr %84, null
  br i1 %85, label %1809, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %88 = icmp eq ptr %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = call i64 @fwrite(ptr nonnull @.str.23, i64 31, i64 1, ptr nonnull %87)
  %91 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %91, ptr noundef %74, i32 noundef 0, i32 noundef 2) #21
  %92 = load ptr, ptr @cfun, align 8, !tbaa !35
  %93 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @dump_histograms_for_stmt(ptr noundef %92, ptr noundef %93, ptr noundef %74)
  br label %94

94:                                               ; preds = %89, %86
  %95 = load i32, ptr @flag_value_profile_transformations, align 4, !tbaa !50
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %1809, label %97

97:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #21
  %98 = load ptr, ptr %24, align 8
  %99 = load ptr, ptr %98, align 8, !tbaa !91
  %100 = load i32, ptr %99, align 8
  %101 = and i32 %100, 255
  %102 = icmp eq i32 %101, 6
  br i1 %102, label %103, label %473

103:                                              ; preds = %97
  %104 = zext nneg i32 %101 to i64
  %105 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !50
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %107
  %109 = load i64, ptr %108, align 8, !tbaa !64
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %112

112:                                              ; preds = %111, %103
  %113 = getelementptr inbounds i8, ptr %99, i64 %109
  %114 = load ptr, ptr %113, align 8, !tbaa !35
  %115 = getelementptr inbounds %struct.tree_common, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !46
  %117 = load i64, ptr %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = and i32 %118, 65535
  %120 = add nsw i32 %119, -6
  %121 = icmp ult i32 %120, 3
  br i1 %121, label %122, label %473

122:                                              ; preds = %112
  %123 = load i32, ptr %99, align 8
  %124 = trunc i32 %123 to i8
  switch i8 %124, label %127 [
    i8 6, label %125
    i8 1, label %125
    i8 8, label %128
  ]

125:                                              ; preds = %122, %122
  %126 = lshr i32 %123, 16
  br label %128

127:                                              ; preds = %122
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1446, ptr noundef nonnull @.str.3) #21
  br label %128

128:                                              ; preds = %127, %125, %122
  %129 = phi i32 [ %126, %125 ], [ 0, %127 ], [ 59, %122 ]
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !46
  %133 = icmp eq i8 %132, 3
  br i1 %133, label %134, label %154

134:                                              ; preds = %128
  %135 = load i32, ptr %99, align 8
  %136 = and i32 %135, 255
  %137 = add nsw i32 %136, -1
  %138 = icmp ult i32 %137, 9
  call void @llvm.assume(i1 %138)
  %139 = zext nneg i32 %136 to i64
  %140 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !50
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %142
  %144 = load i64, ptr %143, align 8, !tbaa !64
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %134
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %147

147:                                              ; preds = %146, %134
  %148 = getelementptr inbounds i8, ptr %99, i64 %144
  %149 = getelementptr inbounds ptr, ptr %148, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !35
  %151 = load i64, ptr %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = and i32 %152, 65535
  br label %154

154:                                              ; preds = %147, %128
  %155 = phi i32 [ %153, %147 ], [ %129, %128 ]
  %156 = icmp eq i32 %155, 71
  br i1 %156, label %157, label %473

157:                                              ; preds = %154
  %158 = load i64, ptr %116, align 8
  %159 = and i64 %158, 2097152
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %473, label %161

161:                                              ; preds = %157
  %162 = load ptr, ptr @cfun, align 8, !tbaa !35
  %163 = getelementptr inbounds %struct.function, ptr %162, i64 0, i32 5
  %164 = load ptr, ptr %163, align 8, !tbaa !54
  %165 = icmp eq ptr %164, null
  br i1 %165, label %170, label %166

166:                                              ; preds = %161
  %167 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %168 = call i32 %167(ptr noundef nonnull %99) #21
  %169 = call ptr @htab_find_with_hash(ptr noundef nonnull %164, ptr noundef nonnull %99, i32 noundef %168) #21
  br label %170

170:                                              ; preds = %166, %161
  %171 = phi ptr [ %169, %166 ], [ null, %161 ]
  %172 = icmp eq ptr %171, null
  br i1 %172, label %182, label %173

173:                                              ; preds = %170, %178
  %174 = phi ptr [ %180, %178 ], [ %171, %170 ]
  %175 = getelementptr inbounds %struct.histogram_value_t, ptr %174, i64 0, i32 1
  %176 = load i32, ptr %175, align 8, !tbaa !61
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.anon, ptr %174, i64 0, i32 3
  %180 = load ptr, ptr %179, align 8, !tbaa !56
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %173, !llvm.loop !62

182:                                              ; preds = %178, %173, %170
  %183 = phi ptr [ null, %170 ], [ null, %178 ], [ %174, %173 ]
  %184 = icmp eq ptr %183, null
  br i1 %184, label %473, label %185

185:                                              ; preds = %182
  store i64 0, ptr %22, align 8, !tbaa !64
  %186 = getelementptr inbounds %struct.histogram_value_t, ptr %183, i64 0, i32 3, i32 0, i32 1
  %187 = load i32, ptr %186, align 4, !tbaa !46
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %203, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.anon, ptr %183, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !60
  %192 = load i32, ptr %186, align 4, !tbaa !46
  %193 = call i32 @llvm.umax.i32(i32 %192, i32 1)
  %194 = zext i32 %193 to i64
  br label %195

195:                                              ; preds = %189, %195
  %196 = phi i64 [ 0, %189 ], [ %201, %195 ]
  %197 = phi i64 [ 0, %189 ], [ %200, %195 ]
  %198 = getelementptr inbounds i64, ptr %191, i64 %196
  %199 = load i64, ptr %198, align 8, !tbaa !64
  %200 = add nsw i64 %197, %199
  %201 = add nuw nsw i64 %196, 1
  %202 = icmp eq i64 %201, %194
  br i1 %202, label %203, label %195, !llvm.loop !116

203:                                              ; preds = %195, %185
  %204 = phi i64 [ 0, %185 ], [ %200, %195 ]
  %205 = phi i32 [ 0, %185 ], [ %193, %195 ]
  %206 = phi i32 [ %187, %185 ], [ %192, %195 ]
  store i64 %204, ptr %22, align 8, !tbaa !64
  %207 = getelementptr inbounds %struct.histogram_value_t, ptr %183, i64 0, i32 3, i32 0, i32 1
  %208 = getelementptr inbounds %struct.anon, ptr %183, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !60
  %210 = zext i32 %205 to i64
  %211 = getelementptr inbounds i64, ptr %209, i64 %210
  %212 = load i64, ptr %211, align 8, !tbaa !64
  %213 = add i32 %205, 1
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i64, ptr %209, i64 %214
  %216 = load i64, ptr %215, align 8, !tbaa !64
  %217 = add nsw i64 %216, %212
  %218 = load i64, ptr %22, align 8, !tbaa !64
  %219 = add nsw i64 %217, %218
  store i64 %219, ptr %22, align 8, !tbaa !64
  %220 = load i64, ptr %209, align 8, !tbaa !64
  store i64 %220, ptr %23, align 8, !tbaa !64
  %221 = getelementptr inbounds i64, ptr %209, i64 1
  %222 = load i64, ptr %221, align 8, !tbaa !64
  %223 = getelementptr inbounds %struct.gimple_statement_base, ptr %99, i64 0, i32 4
  %224 = load ptr, ptr %223, align 8, !tbaa !46
  %225 = getelementptr inbounds %struct.basic_block_def, ptr %224, i64 0, i32 8
  %226 = load i64, ptr %225, align 8, !tbaa !117
  %227 = call fastcc zeroext i8 @check_counter(ptr noundef nonnull %99, ptr noundef nonnull @.str.24, ptr noundef nonnull %23, ptr noundef nonnull %22, i64 noundef %226), !range !118
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %203
  %230 = load ptr, ptr @cfun, align 8, !tbaa !35
  call void @gimple_remove_histogram_value(ptr noundef %230, ptr noundef nonnull %99, ptr noundef nonnull %183)
  br label %473

231:                                              ; preds = %203
  %232 = load i32, ptr @flag_profile_correction, align 4, !tbaa !50
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %239, label %234

234:                                              ; preds = %231
  %235 = load i64, ptr %23, align 8, !tbaa !64
  %236 = add nsw i64 %235, %222
  %237 = load i64, ptr %22, align 8, !tbaa !64
  %238 = call i64 @llvm.smax.i64(i64 %236, i64 %237)
  store i64 %238, ptr %22, align 8
  br label %239

239:                                              ; preds = %234, %231
  %240 = load i64, ptr %23, align 8, !tbaa !64
  %241 = add nsw i64 %240, %222
  %242 = load i64, ptr %22, align 8, !tbaa !64
  %243 = icmp sgt i64 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1007, ptr noundef nonnull @.str.3) #21
  br label %245

245:                                              ; preds = %244, %239
  %246 = load i32, ptr %207, align 4, !tbaa !46
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %262, label %248

248:                                              ; preds = %245
  %249 = load ptr, ptr %208, align 8, !tbaa !60
  br label %250

250:                                              ; preds = %248, %259
  %251 = phi i64 [ 0, %248 ], [ %256, %259 ]
  %252 = phi i32 [ 0, %248 ], [ %260, %259 ]
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds i64, ptr %249, i64 %253
  %255 = load i64, ptr %254, align 8, !tbaa !64
  %256 = add nsw i64 %255, %251
  %257 = shl nsw i64 %256, 1
  %258 = icmp slt i64 %257, %242
  br i1 %258, label %259, label %262

259:                                              ; preds = %250
  %260 = add nuw i32 %252, 1
  %261 = icmp eq i32 %260, %246
  br i1 %261, label %262, label %250, !llvm.loop !119

262:                                              ; preds = %259, %250, %245
  %263 = phi i32 [ 0, %245 ], [ %246, %259 ], [ %252, %250 ]
  %264 = icmp eq i32 %263, %206
  br i1 %264, label %473, label %265

265:                                              ; preds = %262
  %266 = load ptr, ptr %223, align 8, !tbaa !46
  %267 = call zeroext i8 @optimize_bb_for_size_p(ptr noundef %266) #21
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %269, label %473

269:                                              ; preds = %265
  %270 = load ptr, ptr @cfun, align 8, !tbaa !35
  call void @gimple_remove_histogram_value(ptr noundef %270, ptr noundef nonnull %99, ptr noundef nonnull %183)
  %271 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %272 = icmp eq ptr %271, null
  br i1 %272, label %276, label %273

273:                                              ; preds = %269
  %274 = call i64 @fwrite(ptr nonnull @.str.25, i64 36, i64 1, ptr nonnull %271)
  %275 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %275, ptr noundef nonnull %99, i32 noundef 0, i32 noundef 2) #21
  br label %276

276:                                              ; preds = %273, %269
  %277 = load i64, ptr %22, align 8, !tbaa !64
  %278 = icmp sgt i64 %277, 0
  br i1 %278, label %279, label %290

279:                                              ; preds = %276
  %280 = load i64, ptr %23, align 8, !tbaa !64
  %281 = mul nsw i64 %280, 10000
  %282 = lshr i64 %277, 1
  %283 = add nsw i64 %281, %282
  %284 = sdiv i64 %283, %277
  %285 = mul nsw i64 %222, 10000
  %286 = add nsw i64 %282, %285
  %287 = sdiv i64 %286, %277
  %288 = trunc i64 %284 to i32
  %289 = trunc i64 %287 to i32
  br label %290

290:                                              ; preds = %279, %276
  %291 = phi i32 [ %288, %279 ], [ 0, %276 ]
  %292 = phi i32 [ %289, %279 ], [ 0, %276 ]
  %293 = load i64, ptr %23, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #21
  %294 = load i32, ptr %99, align 8
  %295 = and i32 %294, 255
  %296 = icmp eq i32 %295, 6
  br i1 %296, label %297, label %322

297:                                              ; preds = %290
  %298 = lshr i32 %294, 16
  %299 = zext nneg i32 %298 to i64
  %300 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %299
  %301 = load i8, ptr %300, align 1, !tbaa !46
  %302 = icmp eq i8 %301, 3
  br i1 %302, label %303, label %319

303:                                              ; preds = %297
  %304 = zext nneg i32 %295 to i64
  %305 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %304
  %306 = load i32, ptr %305, align 4, !tbaa !50
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %307
  %309 = load i64, ptr %308, align 8, !tbaa !64
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %303
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %312

312:                                              ; preds = %311, %303
  %313 = getelementptr inbounds i8, ptr %99, i64 %309
  %314 = getelementptr inbounds ptr, ptr %313, i64 1
  %315 = load ptr, ptr %314, align 8, !tbaa !35
  %316 = load i64, ptr %315, align 8
  %317 = trunc i64 %316 to i32
  %318 = and i32 %317, 65535
  br label %319

319:                                              ; preds = %312, %297
  %320 = phi i32 [ %318, %312 ], [ %298, %297 ]
  %321 = icmp eq i32 %320, 71
  br i1 %321, label %323, label %322

322:                                              ; preds = %319, %290
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 873, ptr noundef nonnull @.str.3) #21
  br label %323

323:                                              ; preds = %322, %319
  %324 = load i32, ptr %99, align 8
  %325 = and i32 %324, 255
  %326 = add nsw i32 %325, -1
  %327 = icmp ult i32 %326, 9
  call void @llvm.assume(i1 %327)
  %328 = zext nneg i32 %325 to i64
  %329 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %328
  %330 = load i32, ptr %329, align 4, !tbaa !50
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %331
  %333 = load i64, ptr %332, align 8, !tbaa !64
  %334 = icmp eq i64 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %323
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %336

336:                                              ; preds = %335, %323
  %337 = getelementptr inbounds i8, ptr %99, i64 %333
  %338 = load ptr, ptr %337, align 8, !tbaa !35
  %339 = getelementptr inbounds %struct.tree_common, ptr %338, i64 0, i32 2
  %340 = load ptr, ptr %339, align 8, !tbaa !46
  %341 = load i32, ptr %99, align 8
  %342 = and i32 %341, 255
  %343 = add nsw i32 %342, -10
  %344 = icmp ult i32 %343, -9
  br i1 %344, label %358, label %345

345:                                              ; preds = %336
  %346 = zext nneg i32 %342 to i64
  %347 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %346
  %348 = load i32, ptr %347, align 4, !tbaa !50
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %349
  %351 = load i64, ptr %350, align 8, !tbaa !64
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %345
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %354

354:                                              ; preds = %353, %345
  %355 = getelementptr inbounds i8, ptr %99, i64 %351
  %356 = getelementptr inbounds ptr, ptr %355, i64 1
  %357 = load ptr, ptr %356, align 8, !tbaa !35
  br label %358

358:                                              ; preds = %354, %336
  %359 = phi ptr [ %357, %354 ], [ null, %336 ]
  %360 = getelementptr inbounds %struct.gimple_statement_base, ptr %99, i64 0, i32 3
  %361 = load i32, ptr %360, align 4, !tbaa !46
  %362 = icmp ugt i32 %361, 2
  br i1 %362, label %363, label %381

363:                                              ; preds = %358
  %364 = load i32, ptr %99, align 8
  %365 = and i32 %364, 255
  %366 = add nsw i32 %365, -10
  %367 = icmp ult i32 %366, -9
  br i1 %367, label %381, label %368

368:                                              ; preds = %363
  %369 = zext nneg i32 %365 to i64
  %370 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %369
  %371 = load i32, ptr %370, align 4, !tbaa !50
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %372
  %374 = load i64, ptr %373, align 8, !tbaa !64
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %368
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %377

377:                                              ; preds = %376, %368
  %378 = getelementptr inbounds i8, ptr %99, i64 %374
  %379 = getelementptr inbounds ptr, ptr %378, i64 2
  %380 = load ptr, ptr %379, align 8, !tbaa !35
  br label %381

381:                                              ; preds = %377, %363, %358
  %382 = phi ptr [ null, %358 ], [ %380, %377 ], [ null, %363 ]
  %383 = load ptr, ptr %223, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #21
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef nonnull %99) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !113
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #21
  %384 = call ptr @create_tmp_var(ptr noundef %340, ptr noundef nonnull @.str.28) #21
  %385 = call ptr @create_tmp_var(ptr noundef %340, ptr noundef nonnull @.str.28) #21
  %386 = call ptr @gimple_build_assign_stat(ptr noundef %384, ptr noundef %359) #21
  %387 = call ptr @gimple_build_assign_stat(ptr noundef %385, ptr noundef %382) #21
  %388 = call ptr @gimple_build_cond(i32 noundef 97, ptr noundef %384, ptr noundef %385, ptr noundef null, ptr noundef null) #21
  call void @gsi_insert_before(ptr noundef nonnull %10, ptr noundef %386, i32 noundef 1) #21
  call void @gsi_insert_before(ptr noundef nonnull %10, ptr noundef %387, i32 noundef 1) #21
  call void @gsi_insert_before(ptr noundef nonnull %10, ptr noundef %388, i32 noundef 1) #21
  %389 = icmp eq i32 %263, 0
  br i1 %389, label %393, label %390

390:                                              ; preds = %381
  %391 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 64, ptr noundef %384, ptr noundef %384, ptr noundef %385) #21
  %392 = call ptr @gimple_build_cond(i32 noundef 97, ptr noundef %384, ptr noundef %385, ptr noundef null, ptr noundef null) #21
  call void @gsi_insert_before(ptr noundef nonnull %10, ptr noundef %391, i32 noundef 1) #21
  call void @gsi_insert_before(ptr noundef nonnull %10, ptr noundef %392, i32 noundef 1) #21
  br label %393

393:                                              ; preds = %390, %381
  %394 = phi ptr [ %392, %390 ], [ null, %381 ]
  %395 = load i32, ptr %99, align 8
  %396 = trunc i32 %395 to i8
  switch i8 %396, label %399 [
    i8 6, label %397
    i8 1, label %397
    i8 8, label %400
  ]

397:                                              ; preds = %393, %393
  %398 = lshr i32 %395, 16
  br label %400

399:                                              ; preds = %393
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1446, ptr noundef nonnull @.str.3) #21
  br label %400

400:                                              ; preds = %399, %397, %393
  %401 = phi i32 [ %398, %397 ], [ 0, %399 ], [ 59, %393 ]
  %402 = zext nneg i32 %401 to i64
  %403 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %402
  %404 = load i8, ptr %403, align 1, !tbaa !46
  %405 = icmp eq i8 %404, 3
  br i1 %405, label %406, label %426

406:                                              ; preds = %400
  %407 = load i32, ptr %99, align 8
  %408 = and i32 %407, 255
  %409 = add nsw i32 %408, -1
  %410 = icmp ult i32 %409, 9
  call void @llvm.assume(i1 %410)
  %411 = zext nneg i32 %408 to i64
  %412 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %411
  %413 = load i32, ptr %412, align 4, !tbaa !50
  %414 = zext i32 %413 to i64
  %415 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %414
  %416 = load i64, ptr %415, align 8, !tbaa !64
  %417 = icmp eq i64 %416, 0
  br i1 %417, label %418, label %419

418:                                              ; preds = %406
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %419

419:                                              ; preds = %418, %406
  %420 = getelementptr inbounds i8, ptr %99, i64 %416
  %421 = getelementptr inbounds ptr, ptr %420, i64 1
  %422 = load ptr, ptr %421, align 8, !tbaa !35
  %423 = load i64, ptr %422, align 8
  %424 = trunc i64 %423 to i32
  %425 = and i32 %424, 65535
  br label %426

426:                                              ; preds = %419, %400
  %427 = phi i32 [ %425, %419 ], [ %401, %400 ]
  %428 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %427, ptr noundef %384, ptr noundef %384, ptr noundef %385) #21
  call void @gsi_insert_before(ptr noundef nonnull %10, ptr noundef %428, i32 noundef 1) #21
  %429 = call ptr @split_block(ptr noundef %383, ptr noundef %388) #21
  %430 = getelementptr inbounds %struct.edge_def, ptr %429, i64 0, i32 1
  %431 = load ptr, ptr %430, align 8, !tbaa !120
  %432 = sub nsw i64 %277, %293
  %433 = getelementptr inbounds %struct.basic_block_def, ptr %431, i64 0, i32 8
  store i64 %432, ptr %433, align 8, !tbaa !117
  br i1 %389, label %440, label %434

434:                                              ; preds = %426
  %435 = call ptr @split_block(ptr noundef %431, ptr noundef %394) #21
  %436 = getelementptr inbounds %struct.edge_def, ptr %435, i64 0, i32 1
  %437 = load ptr, ptr %436, align 8, !tbaa !120
  %438 = sub nsw i64 %432, %222
  %439 = getelementptr inbounds %struct.basic_block_def, ptr %437, i64 0, i32 8
  store i64 %438, ptr %439, align 8, !tbaa !117
  br label %440

440:                                              ; preds = %434, %426
  %441 = phi ptr [ %437, %434 ], [ %431, %426 ]
  %442 = phi ptr [ %435, %434 ], [ null, %426 ]
  %443 = call ptr @split_block(ptr noundef %441, ptr noundef %428) #21
  %444 = getelementptr inbounds %struct.edge_def, ptr %443, i64 0, i32 1
  %445 = load ptr, ptr %444, align 8, !tbaa !120
  %446 = getelementptr inbounds %struct.basic_block_def, ptr %445, i64 0, i32 8
  store i64 %277, ptr %446, align 8, !tbaa !117
  %447 = getelementptr inbounds %struct.edge_def, ptr %429, i64 0, i32 7
  %448 = load i32, ptr %447, align 8, !tbaa !122
  %449 = and i32 %448, -2050
  %450 = or disjoint i32 %449, 2048
  store i32 %450, ptr %447, align 8, !tbaa !122
  %451 = sub nsw i32 10000, %291
  %452 = getelementptr inbounds %struct.edge_def, ptr %429, i64 0, i32 8
  store i32 %451, ptr %452, align 4, !tbaa !123
  %453 = getelementptr inbounds %struct.edge_def, ptr %429, i64 0, i32 9
  store i64 %432, ptr %453, align 8, !tbaa !124
  %454 = call ptr @make_edge(ptr noundef %383, ptr noundef %445, i32 noundef 1024) #21
  %455 = getelementptr inbounds %struct.edge_def, ptr %454, i64 0, i32 8
  store i32 %291, ptr %455, align 4, !tbaa !123
  %456 = getelementptr inbounds %struct.edge_def, ptr %454, i64 0, i32 9
  store i64 %293, ptr %456, align 8, !tbaa !124
  br i1 %389, label %469, label %457

457:                                              ; preds = %440
  %458 = getelementptr inbounds %struct.edge_def, ptr %442, i64 0, i32 7
  %459 = load i32, ptr %458, align 8, !tbaa !122
  %460 = and i32 %459, -2050
  %461 = or disjoint i32 %460, 2048
  store i32 %461, ptr %458, align 8, !tbaa !122
  %462 = sub nsw i64 %432, %222
  %463 = getelementptr inbounds %struct.edge_def, ptr %442, i64 0, i32 9
  store i64 %462, ptr %463, align 8, !tbaa !124
  %464 = sub nsw i32 10000, %292
  %465 = getelementptr inbounds %struct.edge_def, ptr %442, i64 0, i32 8
  store i32 %464, ptr %465, align 4, !tbaa !123
  %466 = call ptr @make_edge(ptr noundef %431, ptr noundef %445, i32 noundef 1024) #21
  %467 = getelementptr inbounds %struct.edge_def, ptr %466, i64 0, i32 8
  store i32 %292, ptr %467, align 4, !tbaa !123
  %468 = getelementptr inbounds %struct.edge_def, ptr %466, i64 0, i32 9
  store i64 %222, ptr %468, align 8, !tbaa !124
  br label %469

469:                                              ; preds = %440, %457
  %470 = getelementptr inbounds %struct.edge_def, ptr %443, i64 0, i32 8
  store i32 10000, ptr %470, align 4, !tbaa !123
  %471 = sub nsw i64 %432, %222
  %472 = getelementptr inbounds %struct.edge_def, ptr %443, i64 0, i32 9
  store i64 %471, ptr %472, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #21
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %24, ptr noundef %384) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #21
  br label %1801

473:                                              ; preds = %262, %265, %182, %154, %157, %112, %97, %229
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #21
  %474 = load ptr, ptr %24, align 8
  %475 = load ptr, ptr %474, align 8, !tbaa !91
  %476 = load i32, ptr %475, align 8
  %477 = and i32 %476, 255
  %478 = icmp eq i32 %477, 6
  br i1 %478, label %479, label %904

479:                                              ; preds = %473
  %480 = zext nneg i32 %477 to i64
  %481 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %480
  %482 = load i32, ptr %481, align 4, !tbaa !50
  %483 = zext i32 %482 to i64
  %484 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %483
  %485 = load i64, ptr %484, align 8, !tbaa !64
  %486 = icmp eq i64 %485, 0
  br i1 %486, label %487, label %488

487:                                              ; preds = %479
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %488

488:                                              ; preds = %487, %479
  %489 = getelementptr inbounds i8, ptr %475, i64 %485
  %490 = load ptr, ptr %489, align 8, !tbaa !35
  %491 = getelementptr inbounds %struct.tree_common, ptr %490, i64 0, i32 2
  %492 = load ptr, ptr %491, align 8, !tbaa !46
  %493 = load i64, ptr %492, align 8
  %494 = and i64 %493, 65535
  %495 = icmp eq i64 %494, 6
  br i1 %495, label %538, label %496

496:                                              ; preds = %488
  %497 = load i32, ptr %475, align 8
  %498 = and i32 %497, 255
  %499 = add nsw i32 %498, -1
  %500 = icmp ult i32 %499, 9
  call void @llvm.assume(i1 %500)
  %501 = zext nneg i32 %498 to i64
  %502 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %501
  %503 = load i32, ptr %502, align 4, !tbaa !50
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %504
  %506 = load i64, ptr %505, align 8, !tbaa !64
  %507 = icmp eq i64 %506, 0
  br i1 %507, label %508, label %509

508:                                              ; preds = %496
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %509

509:                                              ; preds = %508, %496
  %510 = getelementptr inbounds i8, ptr %475, i64 %506
  %511 = load ptr, ptr %510, align 8, !tbaa !35
  %512 = getelementptr inbounds %struct.tree_common, ptr %511, i64 0, i32 2
  %513 = load ptr, ptr %512, align 8, !tbaa !46
  %514 = load i64, ptr %513, align 8
  %515 = and i64 %514, 65535
  %516 = icmp eq i64 %515, 7
  br i1 %516, label %538, label %517

517:                                              ; preds = %509
  %518 = load i32, ptr %475, align 8
  %519 = and i32 %518, 255
  %520 = add nsw i32 %519, -1
  %521 = icmp ult i32 %520, 9
  call void @llvm.assume(i1 %521)
  %522 = zext nneg i32 %519 to i64
  %523 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %522
  %524 = load i32, ptr %523, align 4, !tbaa !50
  %525 = zext i32 %524 to i64
  %526 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %525
  %527 = load i64, ptr %526, align 8, !tbaa !64
  %528 = icmp eq i64 %527, 0
  br i1 %528, label %529, label %530

529:                                              ; preds = %517
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %530

530:                                              ; preds = %529, %517
  %531 = getelementptr inbounds i8, ptr %475, i64 %527
  %532 = load ptr, ptr %531, align 8, !tbaa !35
  %533 = getelementptr inbounds %struct.tree_common, ptr %532, i64 0, i32 2
  %534 = load ptr, ptr %533, align 8, !tbaa !46
  %535 = load i64, ptr %534, align 8
  %536 = and i64 %535, 65535
  %537 = icmp eq i64 %536, 8
  br i1 %537, label %538, label %904

538:                                              ; preds = %530, %509, %488
  %539 = load i32, ptr %475, align 8
  %540 = trunc i32 %539 to i8
  switch i8 %540, label %543 [
    i8 6, label %541
    i8 1, label %541
    i8 8, label %544
  ]

541:                                              ; preds = %538, %538
  %542 = lshr i32 %539, 16
  br label %544

543:                                              ; preds = %538
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1446, ptr noundef nonnull @.str.3) #21
  br label %544

544:                                              ; preds = %543, %541, %538
  %545 = phi i32 [ %542, %541 ], [ 0, %543 ], [ 59, %538 ]
  %546 = zext nneg i32 %545 to i64
  %547 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %546
  %548 = load i8, ptr %547, align 1, !tbaa !46
  %549 = icmp eq i8 %548, 3
  br i1 %549, label %550, label %570

550:                                              ; preds = %544
  %551 = load i32, ptr %475, align 8
  %552 = and i32 %551, 255
  %553 = add nsw i32 %552, -1
  %554 = icmp ult i32 %553, 9
  call void @llvm.assume(i1 %554)
  %555 = zext nneg i32 %552 to i64
  %556 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %555
  %557 = load i32, ptr %556, align 4, !tbaa !50
  %558 = zext i32 %557 to i64
  %559 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %558
  %560 = load i64, ptr %559, align 8, !tbaa !64
  %561 = icmp eq i64 %560, 0
  br i1 %561, label %562, label %563

562:                                              ; preds = %550
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %563

563:                                              ; preds = %562, %550
  %564 = getelementptr inbounds i8, ptr %475, i64 %560
  %565 = getelementptr inbounds ptr, ptr %564, i64 1
  %566 = load ptr, ptr %565, align 8, !tbaa !35
  %567 = load i64, ptr %566, align 8
  %568 = trunc i64 %567 to i32
  %569 = and i32 %568, 65535
  br label %570

570:                                              ; preds = %563, %544
  %571 = phi i32 [ %569, %563 ], [ %545, %544 ]
  %572 = and i32 %571, 65531
  %573 = icmp eq i32 %572, 67
  br i1 %573, label %574, label %904

574:                                              ; preds = %570
  %575 = load ptr, ptr @cfun, align 8, !tbaa !35
  %576 = getelementptr inbounds %struct.function, ptr %575, i64 0, i32 5
  %577 = load ptr, ptr %576, align 8, !tbaa !54
  %578 = icmp eq ptr %577, null
  br i1 %578, label %583, label %579

579:                                              ; preds = %574
  %580 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %581 = call i32 %580(ptr noundef nonnull %475) #21
  %582 = call ptr @htab_find_with_hash(ptr noundef nonnull %577, ptr noundef nonnull %475, i32 noundef %581) #21
  br label %583

583:                                              ; preds = %579, %574
  %584 = phi ptr [ %582, %579 ], [ null, %574 ]
  %585 = icmp eq ptr %584, null
  br i1 %585, label %595, label %586

586:                                              ; preds = %583, %591
  %587 = phi ptr [ %593, %591 ], [ %584, %583 ]
  %588 = getelementptr inbounds %struct.histogram_value_t, ptr %587, i64 0, i32 1
  %589 = load i32, ptr %588, align 8, !tbaa !61
  %590 = icmp eq i32 %589, 2
  br i1 %590, label %595, label %591

591:                                              ; preds = %586
  %592 = getelementptr inbounds %struct.anon, ptr %587, i64 0, i32 3
  %593 = load ptr, ptr %592, align 8, !tbaa !56
  %594 = icmp eq ptr %593, null
  br i1 %594, label %595, label %586, !llvm.loop !62

595:                                              ; preds = %591, %586, %583
  %596 = phi ptr [ null, %583 ], [ null, %591 ], [ %587, %586 ]
  %597 = icmp eq ptr %596, null
  br i1 %597, label %904, label %598

598:                                              ; preds = %595
  %599 = load ptr, ptr %596, align 8, !tbaa !106
  %600 = getelementptr inbounds %struct.anon, ptr %596, i64 0, i32 2
  %601 = load ptr, ptr %600, align 8, !tbaa !60
  %602 = load i64, ptr %601, align 8, !tbaa !64
  %603 = getelementptr inbounds i64, ptr %601, i64 1
  %604 = load i64, ptr %603, align 8, !tbaa !64
  store i64 %604, ptr %20, align 8, !tbaa !64
  %605 = getelementptr inbounds i64, ptr %601, i64 2
  %606 = load i64, ptr %605, align 8, !tbaa !64
  store i64 %606, ptr %21, align 8, !tbaa !64
  %607 = load ptr, ptr @cfun, align 8, !tbaa !35
  call void @gimple_remove_histogram_value(ptr noundef %607, ptr noundef nonnull %475, ptr noundef nonnull %596)
  %608 = getelementptr inbounds %struct.gimple_statement_base, ptr %475, i64 0, i32 3
  %609 = load i32, ptr %608, align 4, !tbaa !46
  %610 = icmp ugt i32 %609, 2
  br i1 %610, label %611, label %629

611:                                              ; preds = %598
  %612 = load i32, ptr %475, align 8
  %613 = and i32 %612, 255
  %614 = add nsw i32 %613, -10
  %615 = icmp ult i32 %614, -9
  br i1 %615, label %629, label %616

616:                                              ; preds = %611
  %617 = zext nneg i32 %613 to i64
  %618 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %617
  %619 = load i32, ptr %618, align 4, !tbaa !50
  %620 = zext i32 %619 to i64
  %621 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %620
  %622 = load i64, ptr %621, align 8, !tbaa !64
  %623 = icmp eq i64 %622, 0
  br i1 %623, label %624, label %625

624:                                              ; preds = %616
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %625

625:                                              ; preds = %624, %616
  %626 = getelementptr inbounds i8, ptr %475, i64 %622
  %627 = getelementptr inbounds ptr, ptr %626, i64 2
  %628 = load ptr, ptr %627, align 8, !tbaa !35
  br label %629

629:                                              ; preds = %625, %611, %598
  %630 = phi ptr [ null, %598 ], [ %628, %625 ], [ null, %611 ]
  %631 = call i32 @simple_cst_equal(ptr noundef %630, ptr noundef %599) #21
  %632 = icmp eq i32 %631, 1
  br i1 %632, label %633, label %904

633:                                              ; preds = %629
  %634 = load i64, ptr %20, align 8, !tbaa !64
  %635 = shl nsw i64 %634, 1
  %636 = load i64, ptr %21, align 8, !tbaa !64
  %637 = icmp slt i64 %635, %636
  br i1 %637, label %904, label %638

638:                                              ; preds = %633
  %639 = getelementptr inbounds %struct.gimple_statement_base, ptr %475, i64 0, i32 4
  %640 = load ptr, ptr %639, align 8, !tbaa !46
  %641 = call zeroext i8 @optimize_bb_for_size_p(ptr noundef %640) #21
  %642 = icmp eq i8 %641, 0
  br i1 %642, label %643, label %904

643:                                              ; preds = %638
  %644 = load ptr, ptr %639, align 8, !tbaa !46
  %645 = getelementptr inbounds %struct.basic_block_def, ptr %644, i64 0, i32 8
  %646 = load i64, ptr %645, align 8, !tbaa !117
  %647 = call fastcc zeroext i8 @check_counter(ptr noundef nonnull %475, ptr noundef nonnull @.str.29, ptr noundef nonnull %20, ptr noundef nonnull %21, i64 noundef %646), !range !118
  %648 = icmp eq i8 %647, 0
  br i1 %648, label %649, label %904

649:                                              ; preds = %643
  %650 = load i64, ptr %21, align 8, !tbaa !64
  %651 = icmp sgt i64 %650, 0
  br i1 %651, label %652, label %659

652:                                              ; preds = %649
  %653 = load i64, ptr %20, align 8, !tbaa !64
  %654 = mul nsw i64 %653, 10000
  %655 = lshr i64 %650, 1
  %656 = add nsw i64 %654, %655
  %657 = sdiv i64 %656, %650
  %658 = trunc i64 %657 to i32
  br label %659

659:                                              ; preds = %652, %649
  %660 = phi i32 [ %658, %652 ], [ 0, %649 ]
  %661 = call ptr @get_gcov_type() #21
  %662 = ashr i64 %602, 63
  %663 = call ptr @build_int_cst_wide(ptr noundef %661, i64 noundef %602, i64 noundef %662) #21
  %664 = load i64, ptr %20, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #21
  %665 = load i32, ptr %475, align 8
  %666 = and i32 %665, 255
  %667 = icmp eq i32 %666, 6
  br i1 %667, label %668, label %728

668:                                              ; preds = %659
  %669 = lshr i32 %665, 16
  %670 = zext nneg i32 %669 to i64
  %671 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %670
  %672 = load i8, ptr %671, align 1, !tbaa !46
  %673 = icmp eq i8 %672, 3
  br i1 %673, label %674, label %690

674:                                              ; preds = %668
  %675 = zext nneg i32 %666 to i64
  %676 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %675
  %677 = load i32, ptr %676, align 4, !tbaa !50
  %678 = zext i32 %677 to i64
  %679 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %678
  %680 = load i64, ptr %679, align 8, !tbaa !64
  %681 = icmp eq i64 %680, 0
  br i1 %681, label %682, label %683

682:                                              ; preds = %674
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %683

683:                                              ; preds = %682, %674
  %684 = getelementptr inbounds i8, ptr %475, i64 %680
  %685 = getelementptr inbounds ptr, ptr %684, i64 1
  %686 = load ptr, ptr %685, align 8, !tbaa !35
  %687 = load i64, ptr %686, align 8
  %688 = trunc i64 %687 to i32
  %689 = and i32 %688, 65535
  br label %690

690:                                              ; preds = %683, %668
  %691 = phi i32 [ %689, %683 ], [ %669, %668 ]
  %692 = icmp eq i32 %691, 67
  br i1 %692, label %729, label %693

693:                                              ; preds = %690
  %694 = load i32, ptr %475, align 8
  %695 = trunc i32 %694 to i8
  switch i8 %695, label %698 [
    i8 6, label %696
    i8 1, label %696
    i8 8, label %699
  ]

696:                                              ; preds = %693, %693
  %697 = lshr i32 %694, 16
  br label %699

698:                                              ; preds = %693
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1446, ptr noundef nonnull @.str.3) #21
  br label %699

699:                                              ; preds = %698, %696, %693
  %700 = phi i32 [ %697, %696 ], [ 0, %698 ], [ 59, %693 ]
  %701 = zext nneg i32 %700 to i64
  %702 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %701
  %703 = load i8, ptr %702, align 1, !tbaa !46
  %704 = icmp eq i8 %703, 3
  br i1 %704, label %705, label %725

705:                                              ; preds = %699
  %706 = load i32, ptr %475, align 8
  %707 = and i32 %706, 255
  %708 = add nsw i32 %707, -1
  %709 = icmp ult i32 %708, 9
  call void @llvm.assume(i1 %709)
  %710 = zext nneg i32 %707 to i64
  %711 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %710
  %712 = load i32, ptr %711, align 4, !tbaa !50
  %713 = zext i32 %712 to i64
  %714 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %713
  %715 = load i64, ptr %714, align 8, !tbaa !64
  %716 = icmp eq i64 %715, 0
  br i1 %716, label %717, label %718

717:                                              ; preds = %705
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %718

718:                                              ; preds = %717, %705
  %719 = getelementptr inbounds i8, ptr %475, i64 %715
  %720 = getelementptr inbounds ptr, ptr %719, i64 1
  %721 = load ptr, ptr %720, align 8, !tbaa !35
  %722 = load i64, ptr %721, align 8
  %723 = trunc i64 %722 to i32
  %724 = and i32 %723, 65535
  br label %725

725:                                              ; preds = %718, %699
  %726 = phi i32 [ %724, %718 ], [ %700, %699 ]
  %727 = icmp eq i32 %726, 71
  br i1 %727, label %729, label %728

728:                                              ; preds = %725, %659
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 568, ptr noundef nonnull @.str.3) #21
  br label %729

729:                                              ; preds = %728, %725, %690
  %730 = load i32, ptr %475, align 8
  %731 = and i32 %730, 255
  %732 = add nsw i32 %731, -1
  %733 = icmp ult i32 %732, 9
  call void @llvm.assume(i1 %733)
  %734 = zext nneg i32 %731 to i64
  %735 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %734
  %736 = load i32, ptr %735, align 4, !tbaa !50
  %737 = zext i32 %736 to i64
  %738 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %737
  %739 = load i64, ptr %738, align 8, !tbaa !64
  %740 = icmp eq i64 %739, 0
  br i1 %740, label %741, label %742

741:                                              ; preds = %729
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %742

742:                                              ; preds = %741, %729
  %743 = getelementptr inbounds i8, ptr %475, i64 %739
  %744 = load ptr, ptr %743, align 8, !tbaa !35
  %745 = getelementptr inbounds %struct.tree_common, ptr %744, i64 0, i32 2
  %746 = load ptr, ptr %745, align 8, !tbaa !46
  %747 = load i32, ptr %475, align 8
  %748 = and i32 %747, 255
  %749 = add nsw i32 %748, -10
  %750 = icmp ult i32 %749, -9
  br i1 %750, label %764, label %751

751:                                              ; preds = %742
  %752 = zext nneg i32 %748 to i64
  %753 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %752
  %754 = load i32, ptr %753, align 4, !tbaa !50
  %755 = zext i32 %754 to i64
  %756 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %755
  %757 = load i64, ptr %756, align 8, !tbaa !64
  %758 = icmp eq i64 %757, 0
  br i1 %758, label %759, label %760

759:                                              ; preds = %751
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %760

760:                                              ; preds = %759, %751
  %761 = getelementptr inbounds i8, ptr %475, i64 %757
  %762 = getelementptr inbounds ptr, ptr %761, i64 1
  %763 = load ptr, ptr %762, align 8, !tbaa !35
  br label %764

764:                                              ; preds = %760, %742
  %765 = phi ptr [ %763, %760 ], [ null, %742 ]
  %766 = load i32, ptr %608, align 4, !tbaa !46
  %767 = icmp ugt i32 %766, 2
  br i1 %767, label %768, label %786

768:                                              ; preds = %764
  %769 = load i32, ptr %475, align 8
  %770 = and i32 %769, 255
  %771 = add nsw i32 %770, -10
  %772 = icmp ult i32 %771, -9
  br i1 %772, label %786, label %773

773:                                              ; preds = %768
  %774 = zext nneg i32 %770 to i64
  %775 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %774
  %776 = load i32, ptr %775, align 4, !tbaa !50
  %777 = zext i32 %776 to i64
  %778 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %777
  %779 = load i64, ptr %778, align 8, !tbaa !64
  %780 = icmp eq i64 %779, 0
  br i1 %780, label %781, label %782

781:                                              ; preds = %773
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %782

782:                                              ; preds = %781, %773
  %783 = getelementptr inbounds i8, ptr %475, i64 %779
  %784 = getelementptr inbounds ptr, ptr %783, i64 2
  %785 = load ptr, ptr %784, align 8, !tbaa !35
  br label %786

786:                                              ; preds = %782, %768, %764
  %787 = phi ptr [ null, %764 ], [ %785, %782 ], [ null, %768 ]
  %788 = load ptr, ptr %639, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #21
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef nonnull %475) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !113
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #21
  %789 = call ptr @create_tmp_var(ptr noundef %746, ptr noundef nonnull @.str.28) #21
  %790 = call ptr @create_tmp_var(ptr noundef %746, ptr noundef nonnull @.str.28) #21
  %791 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %746, ptr noundef %663) #21
  %792 = call ptr @gimple_build_assign_stat(ptr noundef %789, ptr noundef %791) #21
  %793 = call ptr @gimple_build_assign_stat(ptr noundef %790, ptr noundef %787) #21
  %794 = call ptr @gimple_build_cond(i32 noundef 102, ptr noundef %790, ptr noundef %789, ptr noundef null, ptr noundef null) #21
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %792, i32 noundef 1) #21
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %793, i32 noundef 1) #21
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %794, i32 noundef 1) #21
  %795 = call ptr @create_tmp_var(ptr noundef %746, ptr noundef nonnull @.str.28) #21
  %796 = load i32, ptr %475, align 8
  %797 = trunc i32 %796 to i8
  switch i8 %797, label %800 [
    i8 6, label %798
    i8 1, label %798
    i8 8, label %801
  ]

798:                                              ; preds = %786, %786
  %799 = lshr i32 %796, 16
  br label %801

800:                                              ; preds = %786
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1446, ptr noundef nonnull @.str.3) #21
  br label %801

801:                                              ; preds = %800, %798, %786
  %802 = phi i32 [ %799, %798 ], [ 0, %800 ], [ 59, %786 ]
  %803 = zext nneg i32 %802 to i64
  %804 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %803
  %805 = load i8, ptr %804, align 1, !tbaa !46
  %806 = icmp eq i8 %805, 3
  br i1 %806, label %807, label %827

807:                                              ; preds = %801
  %808 = load i32, ptr %475, align 8
  %809 = and i32 %808, 255
  %810 = add nsw i32 %809, -1
  %811 = icmp ult i32 %810, 9
  call void @llvm.assume(i1 %811)
  %812 = zext nneg i32 %809 to i64
  %813 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %812
  %814 = load i32, ptr %813, align 4, !tbaa !50
  %815 = zext i32 %814 to i64
  %816 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %815
  %817 = load i64, ptr %816, align 8, !tbaa !64
  %818 = icmp eq i64 %817, 0
  br i1 %818, label %819, label %820

819:                                              ; preds = %807
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %820

820:                                              ; preds = %819, %807
  %821 = getelementptr inbounds i8, ptr %475, i64 %817
  %822 = getelementptr inbounds ptr, ptr %821, i64 1
  %823 = load ptr, ptr %822, align 8, !tbaa !35
  %824 = load i64, ptr %823, align 8
  %825 = trunc i64 %824 to i32
  %826 = and i32 %825, 65535
  br label %827

827:                                              ; preds = %820, %801
  %828 = phi i32 [ %826, %820 ], [ %802, %801 ]
  %829 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %828, ptr noundef %795, ptr noundef %765, ptr noundef %789) #21
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %829, i32 noundef 1) #21
  %830 = load i32, ptr %475, align 8
  %831 = trunc i32 %830 to i8
  switch i8 %831, label %834 [
    i8 6, label %832
    i8 1, label %832
    i8 8, label %835
  ]

832:                                              ; preds = %827, %827
  %833 = lshr i32 %830, 16
  br label %835

834:                                              ; preds = %827
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1446, ptr noundef nonnull @.str.3) #21
  br label %835

835:                                              ; preds = %834, %832, %827
  %836 = phi i32 [ %833, %832 ], [ 0, %834 ], [ 59, %827 ]
  %837 = zext nneg i32 %836 to i64
  %838 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %837
  %839 = load i8, ptr %838, align 1, !tbaa !46
  %840 = icmp eq i8 %839, 3
  br i1 %840, label %841, label %861

841:                                              ; preds = %835
  %842 = load i32, ptr %475, align 8
  %843 = and i32 %842, 255
  %844 = add nsw i32 %843, -1
  %845 = icmp ult i32 %844, 9
  call void @llvm.assume(i1 %845)
  %846 = zext nneg i32 %843 to i64
  %847 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %846
  %848 = load i32, ptr %847, align 4, !tbaa !50
  %849 = zext i32 %848 to i64
  %850 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %849
  %851 = load i64, ptr %850, align 8, !tbaa !64
  %852 = icmp eq i64 %851, 0
  br i1 %852, label %853, label %854

853:                                              ; preds = %841
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %854

854:                                              ; preds = %853, %841
  %855 = getelementptr inbounds i8, ptr %475, i64 %851
  %856 = getelementptr inbounds ptr, ptr %855, i64 1
  %857 = load ptr, ptr %856, align 8, !tbaa !35
  %858 = load i64, ptr %857, align 8
  %859 = trunc i64 %858 to i32
  %860 = and i32 %859, 65535
  br label %861

861:                                              ; preds = %835, %854
  %862 = phi i32 [ %860, %854 ], [ %836, %835 ]
  %863 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %862, ptr noundef %795, ptr noundef %765, ptr noundef %787) #21
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %863, i32 noundef 1) #21
  %864 = call ptr @split_block(ptr noundef %788, ptr noundef %794) #21
  %865 = getelementptr inbounds %struct.edge_def, ptr %864, i64 0, i32 1
  %866 = load ptr, ptr %865, align 8, !tbaa !120
  %867 = getelementptr inbounds %struct.basic_block_def, ptr %866, i64 0, i32 8
  store i64 %664, ptr %867, align 8, !tbaa !117
  %868 = call ptr @split_block(ptr noundef %866, ptr noundef %829) #21
  %869 = getelementptr inbounds %struct.edge_def, ptr %868, i64 0, i32 1
  %870 = load ptr, ptr %869, align 8, !tbaa !120
  %871 = sub nsw i64 %650, %664
  %872 = getelementptr inbounds %struct.basic_block_def, ptr %870, i64 0, i32 8
  store i64 %871, ptr %872, align 8, !tbaa !117
  %873 = call ptr @split_block(ptr noundef %870, ptr noundef %863) #21
  %874 = getelementptr inbounds %struct.edge_def, ptr %873, i64 0, i32 1
  %875 = load ptr, ptr %874, align 8, !tbaa !120
  %876 = getelementptr inbounds %struct.basic_block_def, ptr %875, i64 0, i32 8
  store i64 %650, ptr %876, align 8, !tbaa !117
  %877 = getelementptr inbounds %struct.edge_def, ptr %864, i64 0, i32 7
  %878 = load i32, ptr %877, align 8, !tbaa !122
  %879 = and i32 %878, -2050
  %880 = or disjoint i32 %879, 2048
  store i32 %880, ptr %877, align 8, !tbaa !122
  %881 = getelementptr inbounds %struct.edge_def, ptr %864, i64 0, i32 8
  store i32 %660, ptr %881, align 4, !tbaa !123
  %882 = getelementptr inbounds %struct.edge_def, ptr %864, i64 0, i32 9
  store i64 %664, ptr %882, align 8, !tbaa !124
  %883 = call ptr @make_edge(ptr noundef %788, ptr noundef %870, i32 noundef 1024) #21
  %884 = sub nsw i32 10000, %660
  %885 = getelementptr inbounds %struct.edge_def, ptr %883, i64 0, i32 8
  store i32 %884, ptr %885, align 4, !tbaa !123
  %886 = getelementptr inbounds %struct.edge_def, ptr %883, i64 0, i32 9
  store i64 %871, ptr %886, align 8, !tbaa !124
  call void @remove_edge(ptr noundef %868) #21
  %887 = call ptr @make_edge(ptr noundef %866, ptr noundef %875, i32 noundef 1) #21
  %888 = getelementptr inbounds %struct.edge_def, ptr %887, i64 0, i32 8
  store i32 10000, ptr %888, align 4, !tbaa !123
  %889 = getelementptr inbounds %struct.edge_def, ptr %887, i64 0, i32 9
  store i64 %664, ptr %889, align 8, !tbaa !124
  %890 = getelementptr inbounds %struct.edge_def, ptr %873, i64 0, i32 8
  store i32 10000, ptr %890, align 4, !tbaa !123
  %891 = getelementptr inbounds %struct.edge_def, ptr %873, i64 0, i32 9
  store i64 %871, ptr %891, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #21
  %892 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %893 = icmp eq ptr %892, null
  br i1 %893, label %903, label %894

894:                                              ; preds = %861
  %895 = call i64 @fwrite(ptr nonnull @.str.30, i64 20, i64 1, ptr nonnull %892)
  %896 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_generic_expr(ptr noundef %896, ptr noundef %599, i32 noundef 2) #21
  %897 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %898 = call i32 @fputc(i32 61, ptr %897)
  %899 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_generic_expr(ptr noundef %899, ptr noundef %663, i32 noundef 2) #21
  %900 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %901 = call i64 @fwrite(ptr nonnull @.str.32, i64 24, i64 1, ptr %900)
  %902 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %902, ptr noundef nonnull %475, i32 noundef 0, i32 noundef 2) #21
  br label %903

903:                                              ; preds = %894, %861
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %24, ptr noundef %795) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #21
  br label %1801

904:                                              ; preds = %530, %473, %570, %595, %629, %633, %638, %643
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #21
  %905 = load ptr, ptr %24, align 8
  %906 = load ptr, ptr %905, align 8, !tbaa !91
  %907 = load i32, ptr %906, align 8
  %908 = and i32 %907, 255
  %909 = icmp eq i32 %908, 6
  br i1 %909, label %910, label %1219

910:                                              ; preds = %904
  %911 = zext nneg i32 %908 to i64
  %912 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %911
  %913 = load i32, ptr %912, align 4, !tbaa !50
  %914 = zext i32 %913 to i64
  %915 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %914
  %916 = load i64, ptr %915, align 8, !tbaa !64
  %917 = icmp eq i64 %916, 0
  br i1 %917, label %918, label %919

918:                                              ; preds = %910
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %919

919:                                              ; preds = %918, %910
  %920 = getelementptr inbounds i8, ptr %906, i64 %916
  %921 = load ptr, ptr %920, align 8, !tbaa !35
  %922 = getelementptr inbounds %struct.tree_common, ptr %921, i64 0, i32 2
  %923 = load ptr, ptr %922, align 8, !tbaa !46
  %924 = load i64, ptr %923, align 8
  %925 = trunc i64 %924 to i32
  %926 = and i32 %925, 65535
  %927 = add nsw i32 %926, -6
  %928 = icmp ult i32 %927, 3
  br i1 %928, label %929, label %1219

929:                                              ; preds = %919
  %930 = load i32, ptr %906, align 8
  %931 = trunc i32 %930 to i8
  switch i8 %931, label %934 [
    i8 6, label %932
    i8 1, label %932
    i8 8, label %935
  ]

932:                                              ; preds = %929, %929
  %933 = lshr i32 %930, 16
  br label %935

934:                                              ; preds = %929
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1446, ptr noundef nonnull @.str.3) #21
  br label %935

935:                                              ; preds = %934, %932, %929
  %936 = phi i32 [ %933, %932 ], [ 0, %934 ], [ 59, %929 ]
  %937 = zext nneg i32 %936 to i64
  %938 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %937
  %939 = load i8, ptr %938, align 1, !tbaa !46
  %940 = icmp eq i8 %939, 3
  br i1 %940, label %941, label %961

941:                                              ; preds = %935
  %942 = load i32, ptr %906, align 8
  %943 = and i32 %942, 255
  %944 = add nsw i32 %943, -1
  %945 = icmp ult i32 %944, 9
  call void @llvm.assume(i1 %945)
  %946 = zext nneg i32 %943 to i64
  %947 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %946
  %948 = load i32, ptr %947, align 4, !tbaa !50
  %949 = zext i32 %948 to i64
  %950 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %949
  %951 = load i64, ptr %950, align 8, !tbaa !64
  %952 = icmp eq i64 %951, 0
  br i1 %952, label %953, label %954

953:                                              ; preds = %941
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %954

954:                                              ; preds = %953, %941
  %955 = getelementptr inbounds i8, ptr %906, i64 %951
  %956 = getelementptr inbounds ptr, ptr %955, i64 1
  %957 = load ptr, ptr %956, align 8, !tbaa !35
  %958 = load i64, ptr %957, align 8
  %959 = trunc i64 %958 to i32
  %960 = and i32 %959, 65535
  br label %961

961:                                              ; preds = %954, %935
  %962 = phi i32 [ %960, %954 ], [ %936, %935 ]
  %963 = icmp eq i32 %962, 71
  br i1 %963, label %964, label %1219

964:                                              ; preds = %961
  %965 = load i64, ptr %923, align 8
  %966 = and i64 %965, 2097152
  %967 = icmp eq i64 %966, 0
  br i1 %967, label %1219, label %968

968:                                              ; preds = %964
  %969 = load ptr, ptr @cfun, align 8, !tbaa !35
  %970 = getelementptr inbounds %struct.function, ptr %969, i64 0, i32 5
  %971 = load ptr, ptr %970, align 8, !tbaa !54
  %972 = icmp eq ptr %971, null
  br i1 %972, label %977, label %973

973:                                              ; preds = %968
  %974 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %975 = call i32 %974(ptr noundef nonnull %906) #21
  %976 = call ptr @htab_find_with_hash(ptr noundef nonnull %971, ptr noundef nonnull %906, i32 noundef %975) #21
  br label %977

977:                                              ; preds = %973, %968
  %978 = phi ptr [ %976, %973 ], [ null, %968 ]
  %979 = icmp eq ptr %978, null
  br i1 %979, label %989, label %980

980:                                              ; preds = %977, %985
  %981 = phi ptr [ %987, %985 ], [ %978, %977 ]
  %982 = getelementptr inbounds %struct.histogram_value_t, ptr %981, i64 0, i32 1
  %983 = load i32, ptr %982, align 8, !tbaa !61
  %984 = icmp eq i32 %983, 1
  br i1 %984, label %989, label %985

985:                                              ; preds = %980
  %986 = getelementptr inbounds %struct.anon, ptr %981, i64 0, i32 3
  %987 = load ptr, ptr %986, align 8, !tbaa !56
  %988 = icmp eq ptr %987, null
  br i1 %988, label %989, label %980, !llvm.loop !62

989:                                              ; preds = %985, %980, %977
  %990 = phi ptr [ null, %977 ], [ null, %985 ], [ %981, %980 ]
  %991 = icmp eq ptr %990, null
  br i1 %991, label %1219, label %992

992:                                              ; preds = %989
  %993 = load ptr, ptr %990, align 8, !tbaa !106
  %994 = getelementptr inbounds %struct.anon, ptr %990, i64 0, i32 2
  %995 = load ptr, ptr %994, align 8, !tbaa !60
  %996 = load i64, ptr %995, align 8, !tbaa !64
  %997 = getelementptr inbounds i64, ptr %995, i64 1
  %998 = load i64, ptr %997, align 8, !tbaa !64
  store i64 %998, ptr %18, align 8, !tbaa !64
  %999 = load ptr, ptr @cfun, align 8, !tbaa !35
  call void @gimple_remove_histogram_value(ptr noundef %999, ptr noundef nonnull %906, ptr noundef nonnull %990)
  %1000 = getelementptr inbounds %struct.gimple_statement_base, ptr %906, i64 0, i32 3
  %1001 = load i32, ptr %1000, align 4, !tbaa !46
  %1002 = icmp ugt i32 %1001, 2
  br i1 %1002, label %1003, label %1021

1003:                                             ; preds = %992
  %1004 = load i32, ptr %906, align 8
  %1005 = and i32 %1004, 255
  %1006 = add nsw i32 %1005, -10
  %1007 = icmp ult i32 %1006, -9
  br i1 %1007, label %1021, label %1008

1008:                                             ; preds = %1003
  %1009 = zext nneg i32 %1005 to i64
  %1010 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1009
  %1011 = load i32, ptr %1010, align 4, !tbaa !50
  %1012 = zext i32 %1011 to i64
  %1013 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1012
  %1014 = load i64, ptr %1013, align 8, !tbaa !64
  %1015 = icmp eq i64 %1014, 0
  br i1 %1015, label %1016, label %1017

1016:                                             ; preds = %1008
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %1017

1017:                                             ; preds = %1016, %1008
  %1018 = getelementptr inbounds i8, ptr %906, i64 %1014
  %1019 = getelementptr inbounds ptr, ptr %1018, i64 2
  %1020 = load ptr, ptr %1019, align 8, !tbaa !35
  br label %1021

1021:                                             ; preds = %1017, %1003, %992
  %1022 = phi ptr [ null, %992 ], [ %1020, %1017 ], [ null, %1003 ]
  %1023 = call i32 @simple_cst_equal(ptr noundef %1022, ptr noundef %993) #21
  %1024 = icmp ne i32 %1023, 1
  %1025 = load i64, ptr %18, align 8
  %1026 = icmp slt i64 %1025, %996
  %1027 = select i1 %1024, i1 true, i1 %1026
  br i1 %1027, label %1219, label %1028

1028:                                             ; preds = %1021
  %1029 = getelementptr inbounds %struct.gimple_statement_base, ptr %906, i64 0, i32 4
  %1030 = load ptr, ptr %1029, align 8, !tbaa !46
  %1031 = call zeroext i8 @optimize_bb_for_size_p(ptr noundef %1030) #21
  %1032 = icmp eq i8 %1031, 0
  br i1 %1032, label %1033, label %1219

1033:                                             ; preds = %1028
  %1034 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1035 = icmp eq ptr %1034, null
  br i1 %1035, label %1039, label %1036

1036:                                             ; preds = %1033
  %1037 = call i64 @fwrite(ptr nonnull @.str.33, i64 38, i64 1, ptr nonnull %1034)
  %1038 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %1038, ptr noundef nonnull %906, i32 noundef 0, i32 noundef 2) #21
  br label %1039

1039:                                             ; preds = %1036, %1033
  %1040 = add nsw i64 %1025, %996
  store i64 %1040, ptr %19, align 8, !tbaa !64
  %1041 = load ptr, ptr %1029, align 8, !tbaa !46
  %1042 = getelementptr inbounds %struct.basic_block_def, ptr %1041, i64 0, i32 8
  %1043 = load i64, ptr %1042, align 8, !tbaa !117
  %1044 = call fastcc zeroext i8 @check_counter(ptr noundef nonnull %906, ptr noundef nonnull @.str.34, ptr noundef nonnull %18, ptr noundef nonnull %19, i64 noundef %1043), !range !118
  %1045 = icmp eq i8 %1044, 0
  br i1 %1045, label %1046, label %1219

1046:                                             ; preds = %1039
  %1047 = load i64, ptr %19, align 8, !tbaa !64
  %1048 = icmp sgt i64 %1047, 0
  br i1 %1048, label %1049, label %1056

1049:                                             ; preds = %1046
  %1050 = load i64, ptr %18, align 8, !tbaa !64
  %1051 = mul nsw i64 %1050, 10000
  %1052 = lshr i64 %1047, 1
  %1053 = add nsw i64 %1051, %1052
  %1054 = sdiv i64 %1053, %1047
  %1055 = trunc i64 %1054 to i32
  br label %1056

1056:                                             ; preds = %1049, %1046
  %1057 = phi i32 [ %1055, %1049 ], [ 0, %1046 ]
  %1058 = load i64, ptr %18, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #21
  %1059 = load i32, ptr %906, align 8
  %1060 = and i32 %1059, 255
  %1061 = icmp eq i32 %1060, 6
  br i1 %1061, label %1062, label %1087

1062:                                             ; preds = %1056
  %1063 = lshr i32 %1059, 16
  %1064 = zext nneg i32 %1063 to i64
  %1065 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1064
  %1066 = load i8, ptr %1065, align 1, !tbaa !46
  %1067 = icmp eq i8 %1066, 3
  br i1 %1067, label %1068, label %1084

1068:                                             ; preds = %1062
  %1069 = zext nneg i32 %1060 to i64
  %1070 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1069
  %1071 = load i32, ptr %1070, align 4, !tbaa !50
  %1072 = zext i32 %1071 to i64
  %1073 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1072
  %1074 = load i64, ptr %1073, align 8, !tbaa !64
  %1075 = icmp eq i64 %1074, 0
  br i1 %1075, label %1076, label %1077

1076:                                             ; preds = %1068
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %1077

1077:                                             ; preds = %1076, %1068
  %1078 = getelementptr inbounds i8, ptr %906, i64 %1074
  %1079 = getelementptr inbounds ptr, ptr %1078, i64 1
  %1080 = load ptr, ptr %1079, align 8, !tbaa !35
  %1081 = load i64, ptr %1080, align 8
  %1082 = trunc i64 %1081 to i32
  %1083 = and i32 %1082, 65535
  br label %1084

1084:                                             ; preds = %1077, %1062
  %1085 = phi i32 [ %1083, %1077 ], [ %1063, %1062 ]
  %1086 = icmp eq i32 %1085, 71
  br i1 %1086, label %1088, label %1087

1087:                                             ; preds = %1084, %1056
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 721, ptr noundef nonnull @.str.3) #21
  br label %1088

1088:                                             ; preds = %1087, %1084
  %1089 = load i32, ptr %906, align 8
  %1090 = and i32 %1089, 255
  %1091 = add nsw i32 %1090, -1
  %1092 = icmp ult i32 %1091, 9
  call void @llvm.assume(i1 %1092)
  %1093 = zext nneg i32 %1090 to i64
  %1094 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1093
  %1095 = load i32, ptr %1094, align 4, !tbaa !50
  %1096 = zext i32 %1095 to i64
  %1097 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1096
  %1098 = load i64, ptr %1097, align 8, !tbaa !64
  %1099 = icmp eq i64 %1098, 0
  br i1 %1099, label %1100, label %1101

1100:                                             ; preds = %1088
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %1101

1101:                                             ; preds = %1100, %1088
  %1102 = getelementptr inbounds i8, ptr %906, i64 %1098
  %1103 = load ptr, ptr %1102, align 8, !tbaa !35
  %1104 = getelementptr inbounds %struct.tree_common, ptr %1103, i64 0, i32 2
  %1105 = load ptr, ptr %1104, align 8, !tbaa !46
  %1106 = load i32, ptr %906, align 8
  %1107 = and i32 %1106, 255
  %1108 = add nsw i32 %1107, -10
  %1109 = icmp ult i32 %1108, -9
  br i1 %1109, label %1123, label %1110

1110:                                             ; preds = %1101
  %1111 = zext nneg i32 %1107 to i64
  %1112 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1111
  %1113 = load i32, ptr %1112, align 4, !tbaa !50
  %1114 = zext i32 %1113 to i64
  %1115 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1114
  %1116 = load i64, ptr %1115, align 8, !tbaa !64
  %1117 = icmp eq i64 %1116, 0
  br i1 %1117, label %1118, label %1119

1118:                                             ; preds = %1110
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %1119

1119:                                             ; preds = %1118, %1110
  %1120 = getelementptr inbounds i8, ptr %906, i64 %1116
  %1121 = getelementptr inbounds ptr, ptr %1120, i64 1
  %1122 = load ptr, ptr %1121, align 8, !tbaa !35
  br label %1123

1123:                                             ; preds = %1119, %1101
  %1124 = phi ptr [ %1122, %1119 ], [ null, %1101 ]
  %1125 = load i32, ptr %1000, align 4, !tbaa !46
  %1126 = icmp ugt i32 %1125, 2
  br i1 %1126, label %1127, label %1145

1127:                                             ; preds = %1123
  %1128 = load i32, ptr %906, align 8
  %1129 = and i32 %1128, 255
  %1130 = add nsw i32 %1129, -10
  %1131 = icmp ult i32 %1130, -9
  br i1 %1131, label %1145, label %1132

1132:                                             ; preds = %1127
  %1133 = zext nneg i32 %1129 to i64
  %1134 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1133
  %1135 = load i32, ptr %1134, align 4, !tbaa !50
  %1136 = zext i32 %1135 to i64
  %1137 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1136
  %1138 = load i64, ptr %1137, align 8, !tbaa !64
  %1139 = icmp eq i64 %1138, 0
  br i1 %1139, label %1140, label %1141

1140:                                             ; preds = %1132
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %1141

1141:                                             ; preds = %1140, %1132
  %1142 = getelementptr inbounds i8, ptr %906, i64 %1138
  %1143 = getelementptr inbounds ptr, ptr %1142, i64 2
  %1144 = load ptr, ptr %1143, align 8, !tbaa !35
  br label %1145

1145:                                             ; preds = %1141, %1127, %1123
  %1146 = phi ptr [ null, %1123 ], [ %1144, %1141 ], [ null, %1127 ]
  %1147 = load ptr, ptr %1029, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #21
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef nonnull %906) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !113
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #21
  %1148 = call ptr @create_tmp_var(ptr noundef %1105, ptr noundef nonnull @.str.28) #21
  %1149 = call ptr @create_tmp_var(ptr noundef %1105, ptr noundef nonnull @.str.28) #21
  %1150 = call ptr @create_tmp_var(ptr noundef %1105, ptr noundef nonnull @.str.28) #21
  %1151 = call ptr @build_int_cst(ptr noundef %1105, i64 noundef -1) #21
  %1152 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 63, ptr noundef %1149, ptr noundef %1146, ptr noundef %1151) #21
  %1153 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 89, ptr noundef %1150, ptr noundef %1149, ptr noundef %1146) #21
  %1154 = call ptr @build_int_cst(ptr noundef %1105, i64 noundef 0) #21
  %1155 = call ptr @gimple_build_cond(i32 noundef 102, ptr noundef %1150, ptr noundef %1154, ptr noundef null, ptr noundef null) #21
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %1152, i32 noundef 1) #21
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %1153, i32 noundef 1) #21
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %1155, i32 noundef 1) #21
  %1156 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 89, ptr noundef %1148, ptr noundef %1124, ptr noundef %1149) #21
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %1156, i32 noundef 1) #21
  %1157 = load i32, ptr %906, align 8
  %1158 = trunc i32 %1157 to i8
  switch i8 %1158, label %1161 [
    i8 6, label %1159
    i8 1, label %1159
    i8 8, label %1162
  ]

1159:                                             ; preds = %1145, %1145
  %1160 = lshr i32 %1157, 16
  br label %1162

1161:                                             ; preds = %1145
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1446, ptr noundef nonnull @.str.3) #21
  br label %1162

1162:                                             ; preds = %1161, %1159, %1145
  %1163 = phi i32 [ %1160, %1159 ], [ 0, %1161 ], [ 59, %1145 ]
  %1164 = zext nneg i32 %1163 to i64
  %1165 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1164
  %1166 = load i8, ptr %1165, align 1, !tbaa !46
  %1167 = icmp eq i8 %1166, 3
  br i1 %1167, label %1168, label %1188

1168:                                             ; preds = %1162
  %1169 = load i32, ptr %906, align 8
  %1170 = and i32 %1169, 255
  %1171 = add nsw i32 %1170, -1
  %1172 = icmp ult i32 %1171, 9
  call void @llvm.assume(i1 %1172)
  %1173 = zext nneg i32 %1170 to i64
  %1174 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1173
  %1175 = load i32, ptr %1174, align 4, !tbaa !50
  %1176 = zext i32 %1175 to i64
  %1177 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1176
  %1178 = load i64, ptr %1177, align 8, !tbaa !64
  %1179 = icmp eq i64 %1178, 0
  br i1 %1179, label %1180, label %1181

1180:                                             ; preds = %1168
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %1181

1181:                                             ; preds = %1180, %1168
  %1182 = getelementptr inbounds i8, ptr %906, i64 %1178
  %1183 = getelementptr inbounds ptr, ptr %1182, i64 1
  %1184 = load ptr, ptr %1183, align 8, !tbaa !35
  %1185 = load i64, ptr %1184, align 8
  %1186 = trunc i64 %1185 to i32
  %1187 = and i32 %1186, 65535
  br label %1188

1188:                                             ; preds = %1162, %1181
  %1189 = phi i32 [ %1187, %1181 ], [ %1163, %1162 ]
  %1190 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %1189, ptr noundef %1148, ptr noundef %1124, ptr noundef %1146) #21
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %1190, i32 noundef 1) #21
  %1191 = call ptr @split_block(ptr noundef %1147, ptr noundef %1155) #21
  %1192 = getelementptr inbounds %struct.edge_def, ptr %1191, i64 0, i32 1
  %1193 = load ptr, ptr %1192, align 8, !tbaa !120
  %1194 = getelementptr inbounds %struct.basic_block_def, ptr %1193, i64 0, i32 8
  store i64 %1058, ptr %1194, align 8, !tbaa !117
  %1195 = call ptr @split_block(ptr noundef %1193, ptr noundef %1156) #21
  %1196 = getelementptr inbounds %struct.edge_def, ptr %1195, i64 0, i32 1
  %1197 = load ptr, ptr %1196, align 8, !tbaa !120
  %1198 = sub nsw i64 %1047, %1058
  %1199 = getelementptr inbounds %struct.basic_block_def, ptr %1197, i64 0, i32 8
  store i64 %1198, ptr %1199, align 8, !tbaa !117
  %1200 = call ptr @split_block(ptr noundef %1197, ptr noundef %1190) #21
  %1201 = getelementptr inbounds %struct.edge_def, ptr %1200, i64 0, i32 1
  %1202 = load ptr, ptr %1201, align 8, !tbaa !120
  %1203 = getelementptr inbounds %struct.basic_block_def, ptr %1202, i64 0, i32 8
  store i64 %1047, ptr %1203, align 8, !tbaa !117
  %1204 = getelementptr inbounds %struct.edge_def, ptr %1191, i64 0, i32 7
  %1205 = load i32, ptr %1204, align 8, !tbaa !122
  %1206 = and i32 %1205, -2050
  %1207 = or disjoint i32 %1206, 2048
  store i32 %1207, ptr %1204, align 8, !tbaa !122
  %1208 = getelementptr inbounds %struct.edge_def, ptr %1191, i64 0, i32 8
  store i32 %1057, ptr %1208, align 4, !tbaa !123
  %1209 = getelementptr inbounds %struct.edge_def, ptr %1191, i64 0, i32 9
  store i64 %1058, ptr %1209, align 8, !tbaa !124
  %1210 = call ptr @make_edge(ptr noundef %1147, ptr noundef %1197, i32 noundef 1024) #21
  %1211 = sub nsw i32 10000, %1057
  %1212 = getelementptr inbounds %struct.edge_def, ptr %1210, i64 0, i32 8
  store i32 %1211, ptr %1212, align 4, !tbaa !123
  %1213 = getelementptr inbounds %struct.edge_def, ptr %1210, i64 0, i32 9
  store i64 %1198, ptr %1213, align 8, !tbaa !124
  call void @remove_edge(ptr noundef %1195) #21
  %1214 = call ptr @make_edge(ptr noundef %1193, ptr noundef %1202, i32 noundef 1) #21
  %1215 = getelementptr inbounds %struct.edge_def, ptr %1214, i64 0, i32 8
  store i32 10000, ptr %1215, align 4, !tbaa !123
  %1216 = getelementptr inbounds %struct.edge_def, ptr %1214, i64 0, i32 9
  store i64 %1058, ptr %1216, align 8, !tbaa !124
  %1217 = getelementptr inbounds %struct.edge_def, ptr %1200, i64 0, i32 8
  store i32 10000, ptr %1217, align 4, !tbaa !123
  %1218 = getelementptr inbounds %struct.edge_def, ptr %1200, i64 0, i32 9
  store i64 %1198, ptr %1218, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #21
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %24, ptr noundef %1148) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #21
  br label %1801

1219:                                             ; preds = %904, %919, %961, %964, %989, %1021, %1028, %1039
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #21
  %1220 = load ptr, ptr %24, align 8
  %1221 = load ptr, ptr %1220, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #21
  %1222 = load i32, ptr %1221, align 8
  %1223 = and i32 %1222, 255
  %1224 = icmp eq i32 %1223, 8
  br i1 %1224, label %1225, label %1551

1225:                                             ; preds = %1219
  %1226 = zext nneg i32 %1223 to i64
  %1227 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1226
  %1228 = load i32, ptr %1227, align 4, !tbaa !50
  %1229 = zext i32 %1228 to i64
  %1230 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1229
  %1231 = load i64, ptr %1230, align 8, !tbaa !64
  %1232 = icmp eq i64 %1231, 0
  br i1 %1232, label %1233, label %1234

1233:                                             ; preds = %1225
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %1234

1234:                                             ; preds = %1233, %1225
  %1235 = getelementptr inbounds i8, ptr %1221, i64 %1231
  %1236 = getelementptr inbounds ptr, ptr %1235, i64 1
  %1237 = load ptr, ptr %1236, align 8, !tbaa !35
  %1238 = load i64, ptr %1237, align 8
  %1239 = and i64 %1238, 65535
  %1240 = icmp eq i64 %1239, 121
  br i1 %1240, label %1241, label %1244

1241:                                             ; preds = %1234
  %1242 = getelementptr inbounds %struct.tree_exp, ptr %1237, i64 0, i32 3
  %1243 = load ptr, ptr %1242, align 8, !tbaa !46
  br label %1244

1244:                                             ; preds = %1241, %1234
  %1245 = phi ptr [ %1243, %1241 ], [ null, %1234 ]
  %1246 = icmp eq ptr %1245, null
  br i1 %1246, label %1551, label %1247

1247:                                             ; preds = %1244
  %1248 = getelementptr inbounds %struct.tree_function_decl, ptr %1245, i64 0, i32 5
  %1249 = load i32, ptr %1248, align 8
  %1250 = and i32 %1249, 2047
  %1251 = call fastcc zeroext i8 @interesting_stringop_to_profile_p(ptr noundef nonnull %1245, ptr noundef nonnull %1221, ptr noundef nonnull %17)
  %1252 = icmp eq i8 %1251, 0
  br i1 %1252, label %1551, label %1253

1253:                                             ; preds = %1247
  %1254 = load i32, ptr %17, align 4, !tbaa !50
  %1255 = add i32 %1254, 3
  %1256 = load i32, ptr %1221, align 8
  %1257 = and i32 %1256, 255
  %1258 = add nsw i32 %1257, -1
  %1259 = icmp ult i32 %1258, 9
  call void @llvm.assume(i1 %1259)
  %1260 = zext nneg i32 %1257 to i64
  %1261 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1260
  %1262 = load i32, ptr %1261, align 4, !tbaa !50
  %1263 = zext i32 %1262 to i64
  %1264 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1263
  %1265 = load i64, ptr %1264, align 8, !tbaa !64
  %1266 = icmp eq i64 %1265, 0
  br i1 %1266, label %1267, label %1268

1267:                                             ; preds = %1253
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %1268

1268:                                             ; preds = %1267, %1253
  %1269 = getelementptr inbounds i8, ptr %1221, i64 %1265
  %1270 = zext i32 %1255 to i64
  %1271 = getelementptr inbounds ptr, ptr %1269, i64 %1270
  %1272 = load ptr, ptr %1271, align 8, !tbaa !35
  %1273 = load i64, ptr %1272, align 8
  %1274 = and i64 %1273, 65535
  %1275 = icmp eq i64 %1274, 23
  br i1 %1275, label %1551, label %1276

1276:                                             ; preds = %1268
  %1277 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1278 = getelementptr inbounds %struct.function, ptr %1277, i64 0, i32 5
  %1279 = load ptr, ptr %1278, align 8, !tbaa !54
  %1280 = icmp eq ptr %1279, null
  br i1 %1280, label %1285, label %1281

1281:                                             ; preds = %1276
  %1282 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %1283 = call i32 %1282(ptr noundef nonnull %1221) #21
  %1284 = call ptr @htab_find_with_hash(ptr noundef nonnull %1279, ptr noundef nonnull %1221, i32 noundef %1283) #21
  br label %1285

1285:                                             ; preds = %1281, %1276
  %1286 = phi ptr [ %1284, %1281 ], [ null, %1276 ]
  %1287 = icmp eq ptr %1286, null
  br i1 %1287, label %1297, label %1288

1288:                                             ; preds = %1285, %1293
  %1289 = phi ptr [ %1295, %1293 ], [ %1286, %1285 ]
  %1290 = getelementptr inbounds %struct.histogram_value_t, ptr %1289, i64 0, i32 1
  %1291 = load i32, ptr %1290, align 8, !tbaa !61
  %1292 = icmp eq i32 %1291, 2
  br i1 %1292, label %1297, label %1293

1293:                                             ; preds = %1288
  %1294 = getelementptr inbounds %struct.anon, ptr %1289, i64 0, i32 3
  %1295 = load ptr, ptr %1294, align 8, !tbaa !56
  %1296 = icmp eq ptr %1295, null
  br i1 %1296, label %1297, label %1288, !llvm.loop !62

1297:                                             ; preds = %1293, %1288, %1285
  %1298 = phi ptr [ null, %1285 ], [ null, %1293 ], [ %1289, %1288 ]
  %1299 = icmp eq ptr %1298, null
  br i1 %1299, label %1551, label %1300

1300:                                             ; preds = %1297
  %1301 = getelementptr inbounds %struct.anon, ptr %1298, i64 0, i32 2
  %1302 = load ptr, ptr %1301, align 8, !tbaa !60
  %1303 = load i64, ptr %1302, align 8, !tbaa !64
  %1304 = getelementptr inbounds i64, ptr %1302, i64 1
  %1305 = load i64, ptr %1304, align 8, !tbaa !64
  store i64 %1305, ptr %15, align 8, !tbaa !64
  %1306 = getelementptr inbounds i64, ptr %1302, i64 2
  %1307 = load i64, ptr %1306, align 8, !tbaa !64
  store i64 %1307, ptr %16, align 8, !tbaa !64
  %1308 = load ptr, ptr @cfun, align 8, !tbaa !35
  call void @gimple_remove_histogram_value(ptr noundef %1308, ptr noundef nonnull %1221, ptr noundef nonnull %1298)
  %1309 = load i64, ptr %15, align 8, !tbaa !64
  %1310 = mul nsw i64 %1309, 6
  %1311 = sdiv i64 %1310, 5
  %1312 = load i64, ptr %16, align 8, !tbaa !64
  %1313 = icmp slt i64 %1311, %1312
  br i1 %1313, label %1551, label %1314

1314:                                             ; preds = %1300
  %1315 = getelementptr inbounds %struct.gimple_statement_base, ptr %1221, i64 0, i32 4
  %1316 = load ptr, ptr %1315, align 8, !tbaa !46
  %1317 = call zeroext i8 @optimize_bb_for_size_p(ptr noundef %1316) #21
  %1318 = icmp eq i8 %1317, 0
  br i1 %1318, label %1319, label %1551

1319:                                             ; preds = %1314
  %1320 = load ptr, ptr %1315, align 8, !tbaa !46
  %1321 = getelementptr inbounds %struct.basic_block_def, ptr %1320, i64 0, i32 8
  %1322 = load i64, ptr %1321, align 8, !tbaa !117
  %1323 = call fastcc zeroext i8 @check_counter(ptr noundef nonnull %1221, ptr noundef nonnull @.str.29, ptr noundef nonnull %15, ptr noundef nonnull %16, i64 noundef %1322), !range !118
  %1324 = icmp eq i8 %1323, 0
  br i1 %1324, label %1325, label %1551

1325:                                             ; preds = %1319
  %1326 = load i64, ptr %16, align 8, !tbaa !64
  %1327 = icmp sgt i64 %1326, 0
  br i1 %1327, label %1328, label %1335

1328:                                             ; preds = %1325
  %1329 = load i64, ptr %15, align 8, !tbaa !64
  %1330 = mul nsw i64 %1329, 10000
  %1331 = lshr i64 %1326, 1
  %1332 = add nsw i64 %1330, %1331
  %1333 = sdiv i64 %1332, %1326
  %1334 = trunc i64 %1333 to i32
  br label %1335

1335:                                             ; preds = %1328, %1325
  %1336 = phi i32 [ %1334, %1328 ], [ 0, %1325 ]
  %1337 = load i32, ptr %1221, align 8
  %1338 = and i32 %1337, 255
  %1339 = add nsw i32 %1338, -10
  %1340 = icmp ult i32 %1339, -9
  br i1 %1340, label %1354, label %1341

1341:                                             ; preds = %1335
  %1342 = zext nneg i32 %1338 to i64
  %1343 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1342
  %1344 = load i32, ptr %1343, align 4, !tbaa !50
  %1345 = zext i32 %1344 to i64
  %1346 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1345
  %1347 = load i64, ptr %1346, align 8, !tbaa !64
  %1348 = icmp eq i64 %1347, 0
  br i1 %1348, label %1349, label %1350

1349:                                             ; preds = %1341
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %1350

1350:                                             ; preds = %1349, %1341
  %1351 = getelementptr inbounds i8, ptr %1221, i64 %1347
  %1352 = getelementptr inbounds ptr, ptr %1351, i64 3
  %1353 = load ptr, ptr %1352, align 8, !tbaa !35
  br label %1354

1354:                                             ; preds = %1350, %1335
  %1355 = phi ptr [ %1353, %1350 ], [ null, %1335 ]
  %1356 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1357 = and i32 %1356, 32
  %1358 = icmp eq i32 %1357, 0
  %1359 = select i1 %1358, i32 128, i32 256
  %1360 = call i32 @get_pointer_alignment(ptr noundef %1355, i32 noundef %1359) #21
  switch i32 %1250, label %1415 [
    i32 330, label %1361
    i32 332, label %1361
    i32 333, label %1389
    i32 326, label %1411
  ]

1361:                                             ; preds = %1354, %1354
  %1362 = load i32, ptr %1221, align 8
  %1363 = and i32 %1362, 255
  %1364 = add nsw i32 %1363, -10
  %1365 = icmp ult i32 %1364, -9
  br i1 %1365, label %1379, label %1366

1366:                                             ; preds = %1361
  %1367 = zext nneg i32 %1363 to i64
  %1368 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1367
  %1369 = load i32, ptr %1368, align 4, !tbaa !50
  %1370 = zext i32 %1369 to i64
  %1371 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1370
  %1372 = load i64, ptr %1371, align 8, !tbaa !64
  %1373 = icmp eq i64 %1372, 0
  br i1 %1373, label %1374, label %1375

1374:                                             ; preds = %1366
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %1375

1375:                                             ; preds = %1374, %1366
  %1376 = getelementptr inbounds i8, ptr %1221, i64 %1372
  %1377 = getelementptr inbounds ptr, ptr %1376, i64 4
  %1378 = load ptr, ptr %1377, align 8, !tbaa !35
  br label %1379

1379:                                             ; preds = %1375, %1361
  %1380 = phi ptr [ %1378, %1375 ], [ null, %1361 ]
  %1381 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %1382 = and i32 %1381, 32
  %1383 = icmp eq i32 %1382, 0
  %1384 = select i1 %1383, i32 128, i32 256
  %1385 = call i32 @get_pointer_alignment(ptr noundef %1380, i32 noundef %1384) #21
  %1386 = call i32 @llvm.umin.i32(i32 %1360, i32 %1385)
  %1387 = call i32 @can_move_by_pieces(i64 noundef %1303, i32 noundef %1386) #21
  %1388 = icmp eq i32 %1387, 0
  br i1 %1388, label %1551, label %1416

1389:                                             ; preds = %1354
  %1390 = load i32, ptr %1221, align 8
  %1391 = and i32 %1390, 255
  %1392 = add nsw i32 %1391, -10
  %1393 = icmp ult i32 %1392, -9
  br i1 %1393, label %1407, label %1394

1394:                                             ; preds = %1389
  %1395 = zext nneg i32 %1391 to i64
  %1396 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1395
  %1397 = load i32, ptr %1396, align 4, !tbaa !50
  %1398 = zext i32 %1397 to i64
  %1399 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1398
  %1400 = load i64, ptr %1399, align 8, !tbaa !64
  %1401 = icmp eq i64 %1400, 0
  br i1 %1401, label %1402, label %1403

1402:                                             ; preds = %1394
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %1403

1403:                                             ; preds = %1402, %1394
  %1404 = getelementptr inbounds i8, ptr %1221, i64 %1400
  %1405 = getelementptr inbounds ptr, ptr %1404, i64 4
  %1406 = load ptr, ptr %1405, align 8, !tbaa !35
  br label %1407

1407:                                             ; preds = %1403, %1389
  %1408 = phi ptr [ %1406, %1403 ], [ null, %1389 ]
  %1409 = call i32 @can_store_by_pieces(i64 noundef %1303, ptr noundef nonnull @builtin_memset_read_str, ptr noundef %1408, i32 noundef %1360, i8 noundef zeroext 1) #21
  %1410 = icmp eq i32 %1409, 0
  br i1 %1410, label %1551, label %1416

1411:                                             ; preds = %1354
  %1412 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !35
  %1413 = call i32 @can_store_by_pieces(i64 noundef %1303, ptr noundef nonnull @builtin_memset_read_str, ptr noundef %1412, i32 noundef %1360, i8 noundef zeroext 1) #21
  %1414 = icmp eq i32 %1413, 0
  br i1 %1414, label %1551, label %1416

1415:                                             ; preds = %1354
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1433, ptr noundef nonnull @.str.3) #21
  br label %1416

1416:                                             ; preds = %1415, %1411, %1407, %1379
  %1417 = call ptr @get_gcov_type() #21
  %1418 = ashr i64 %1303, 63
  %1419 = call ptr @build_int_cst_wide(ptr noundef %1417, i64 noundef %1303, i64 noundef %1418) #21
  %1420 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1421 = icmp eq ptr %1420, null
  br i1 %1421, label %1426, label %1422

1422:                                             ; preds = %1416
  %1423 = trunc i64 %1303 to i32
  %1424 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1420, ptr noundef nonnull @.str.35, i32 noundef %1423)
  %1425 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %1425, ptr noundef nonnull %1221, i32 noundef 0, i32 noundef 2) #21
  br label %1426

1426:                                             ; preds = %1422, %1416
  %1427 = load i64, ptr %15, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %1428 = load i32, ptr %1221, align 8
  %1429 = and i32 %1428, 255
  %1430 = add nsw i32 %1429, -10
  %1431 = icmp ult i32 %1430, -9
  br i1 %1431, label %1445, label %1432

1432:                                             ; preds = %1426
  %1433 = zext nneg i32 %1429 to i64
  %1434 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1433
  %1435 = load i32, ptr %1434, align 4, !tbaa !50
  %1436 = zext i32 %1435 to i64
  %1437 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1436
  %1438 = load i64, ptr %1437, align 8, !tbaa !64
  %1439 = icmp eq i64 %1438, 0
  br i1 %1439, label %1440, label %1441

1440:                                             ; preds = %1432
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %1441

1441:                                             ; preds = %1440, %1432
  %1442 = getelementptr inbounds i8, ptr %1221, i64 %1438
  %1443 = getelementptr inbounds ptr, ptr %1442, i64 1
  %1444 = load ptr, ptr %1443, align 8, !tbaa !35
  br label %1445

1445:                                             ; preds = %1441, %1426
  %1446 = phi ptr [ %1444, %1441 ], [ null, %1426 ]
  %1447 = load i64, ptr %1446, align 8
  %1448 = and i64 %1447, 65535
  %1449 = icmp eq i64 %1448, 121
  br i1 %1449, label %1450, label %1453

1450:                                             ; preds = %1445
  %1451 = getelementptr inbounds %struct.tree_exp, ptr %1446, i64 0, i32 3
  %1452 = load ptr, ptr %1451, align 8, !tbaa !46
  br label %1453

1453:                                             ; preds = %1450, %1445
  %1454 = phi ptr [ %1452, %1450 ], [ null, %1445 ]
  %1455 = call fastcc zeroext i8 @interesting_stringop_to_profile_p(ptr noundef %1454, ptr noundef nonnull %1221, ptr noundef nonnull %4)
  %1456 = icmp eq i8 %1455, 0
  br i1 %1456, label %1457, label %1458

1457:                                             ; preds = %1453
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1302, ptr noundef nonnull @.str.3) #21
  br label %1458

1458:                                             ; preds = %1457, %1453
  %1459 = load ptr, ptr %1315, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef nonnull %1221) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !113
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  %1460 = load i32, ptr %4, align 4, !tbaa !50
  %1461 = add i32 %1460, 3
  %1462 = load i32, ptr %1221, align 8
  %1463 = and i32 %1462, 255
  %1464 = add nsw i32 %1463, -10
  %1465 = icmp ult i32 %1464, -9
  br i1 %1465, label %1480, label %1466

1466:                                             ; preds = %1458
  %1467 = zext nneg i32 %1463 to i64
  %1468 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1467
  %1469 = load i32, ptr %1468, align 4, !tbaa !50
  %1470 = zext i32 %1469 to i64
  %1471 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1470
  %1472 = load i64, ptr %1471, align 8, !tbaa !64
  %1473 = icmp eq i64 %1472, 0
  br i1 %1473, label %1474, label %1475

1474:                                             ; preds = %1466
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %1475

1475:                                             ; preds = %1474, %1466
  %1476 = getelementptr inbounds i8, ptr %1221, i64 %1472
  %1477 = zext i32 %1461 to i64
  %1478 = getelementptr inbounds ptr, ptr %1476, i64 %1477
  %1479 = load ptr, ptr %1478, align 8, !tbaa !35
  br label %1480

1480:                                             ; preds = %1475, %1458
  %1481 = phi ptr [ %1479, %1475 ], [ null, %1458 ]
  %1482 = getelementptr inbounds %struct.tree_common, ptr %1481, i64 0, i32 2
  %1483 = load ptr, ptr %1482, align 8, !tbaa !46
  %1484 = call ptr @create_tmp_var(ptr noundef %1483, ptr noundef nonnull @.str.28) #21
  %1485 = call ptr @create_tmp_var(ptr noundef %1483, ptr noundef nonnull @.str.28) #21
  %1486 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1483, ptr noundef %1419) #21
  %1487 = call ptr @gimple_build_assign_stat(ptr noundef %1484, ptr noundef %1486) #21
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %1487, i32 noundef 1) #21
  %1488 = call ptr @gimple_build_assign_stat(ptr noundef %1485, ptr noundef %1481) #21
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %1488, i32 noundef 1) #21
  %1489 = call ptr @gimple_build_cond(i32 noundef 101, ptr noundef %1485, ptr noundef %1484, ptr noundef null, ptr noundef null) #21
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %1489, i32 noundef 1) #21
  %1490 = call ptr @gimple_copy(ptr noundef nonnull %1221) #21
  %1491 = load i32, ptr %1490, align 8
  %1492 = and i32 %1491, 255
  %1493 = add nsw i32 %1492, -10
  %1494 = icmp ult i32 %1493, -9
  br i1 %1494, label %1499, label %1495

1495:                                             ; preds = %1480
  %1496 = getelementptr inbounds %struct.gimple_statement_base, ptr %1490, i64 0, i32 3
  %1497 = load i32, ptr %1496, align 4, !tbaa !46
  %1498 = icmp ugt i32 %1497, %1461
  br i1 %1498, label %1500, label %1499

1499:                                             ; preds = %1495, %1480
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1665, ptr noundef nonnull @.str.3) #21
  br label %1500

1500:                                             ; preds = %1499, %1495
  %1501 = load i32, ptr %1490, align 8
  %1502 = and i32 %1501, 255
  %1503 = zext nneg i32 %1502 to i64
  %1504 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1503
  %1505 = load i32, ptr %1504, align 4, !tbaa !50
  %1506 = zext i32 %1505 to i64
  %1507 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1506
  %1508 = load i64, ptr %1507, align 8, !tbaa !64
  %1509 = icmp eq i64 %1508, 0
  br i1 %1509, label %1510, label %1511

1510:                                             ; preds = %1500
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %1511

1511:                                             ; preds = %1510, %1500
  %1512 = getelementptr inbounds i8, ptr %1490, i64 %1508
  %1513 = zext i32 %1461 to i64
  %1514 = getelementptr inbounds ptr, ptr %1512, i64 %1513
  store ptr %1419, ptr %1514, align 8, !tbaa !35
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef nonnull %1490, i32 noundef 1) #21
  %1515 = call ptr @split_block(ptr noundef %1459, ptr noundef %1489) #21
  %1516 = getelementptr inbounds %struct.edge_def, ptr %1515, i64 0, i32 1
  %1517 = load ptr, ptr %1516, align 8, !tbaa !120
  %1518 = getelementptr inbounds %struct.basic_block_def, ptr %1517, i64 0, i32 8
  store i64 %1427, ptr %1518, align 8, !tbaa !117
  %1519 = call ptr @split_block(ptr noundef %1517, ptr noundef nonnull %1490) #21
  %1520 = getelementptr inbounds %struct.edge_def, ptr %1519, i64 0, i32 1
  %1521 = load ptr, ptr %1520, align 8, !tbaa !120
  %1522 = sub nsw i64 %1326, %1427
  %1523 = getelementptr inbounds %struct.basic_block_def, ptr %1521, i64 0, i32 8
  store i64 %1522, ptr %1523, align 8, !tbaa !117
  %1524 = call ptr @split_block(ptr noundef %1521, ptr noundef nonnull %1221) #21
  %1525 = getelementptr inbounds %struct.edge_def, ptr %1524, i64 0, i32 1
  %1526 = load ptr, ptr %1525, align 8, !tbaa !120
  %1527 = getelementptr inbounds %struct.basic_block_def, ptr %1526, i64 0, i32 8
  store i64 %1326, ptr %1527, align 8, !tbaa !117
  %1528 = getelementptr inbounds %struct.edge_def, ptr %1515, i64 0, i32 7
  %1529 = load i32, ptr %1528, align 8, !tbaa !122
  %1530 = and i32 %1529, -1026
  %1531 = or disjoint i32 %1530, 1024
  store i32 %1531, ptr %1528, align 8, !tbaa !122
  %1532 = getelementptr inbounds %struct.edge_def, ptr %1515, i64 0, i32 8
  store i32 %1336, ptr %1532, align 4, !tbaa !123
  %1533 = getelementptr inbounds %struct.edge_def, ptr %1515, i64 0, i32 9
  store i64 %1427, ptr %1533, align 8, !tbaa !124
  %1534 = call ptr @make_edge(ptr noundef %1459, ptr noundef %1521, i32 noundef 2048) #21
  %1535 = sub nsw i32 10000, %1336
  %1536 = getelementptr inbounds %struct.edge_def, ptr %1534, i64 0, i32 8
  store i32 %1535, ptr %1536, align 4, !tbaa !123
  %1537 = getelementptr inbounds %struct.edge_def, ptr %1534, i64 0, i32 9
  store i64 %1522, ptr %1537, align 8, !tbaa !124
  call void @remove_edge(ptr noundef %1519) #21
  %1538 = call ptr @make_edge(ptr noundef %1517, ptr noundef %1526, i32 noundef 1) #21
  %1539 = getelementptr inbounds %struct.edge_def, ptr %1538, i64 0, i32 8
  store i32 10000, ptr %1539, align 4, !tbaa !123
  %1540 = getelementptr inbounds %struct.edge_def, ptr %1538, i64 0, i32 9
  store i64 %1427, ptr %1540, align 8, !tbaa !124
  %1541 = getelementptr inbounds %struct.edge_def, ptr %1524, i64 0, i32 8
  store i32 10000, ptr %1541, align 4, !tbaa !123
  %1542 = getelementptr inbounds %struct.edge_def, ptr %1524, i64 0, i32 9
  store i64 %1522, ptr %1542, align 8, !tbaa !124
  %1543 = call zeroext i8 @stmt_could_throw_p(ptr noundef nonnull %1221) #21
  %1544 = icmp eq i8 %1543, 0
  br i1 %1544, label %1546, label %1545

1545:                                             ; preds = %1511
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1357, ptr noundef nonnull @.str.3) #21
  br label %1546

1546:                                             ; preds = %1545, %1511
  %1547 = call zeroext i8 @stmt_could_throw_p(ptr noundef nonnull %1490) #21
  %1548 = icmp eq i8 %1547, 0
  br i1 %1548, label %1550, label %1549

1549:                                             ; preds = %1546
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1358, ptr noundef nonnull @.str.3) #21
  br label %1550

1550:                                             ; preds = %1546, %1549
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  br label %1801

1551:                                             ; preds = %1411, %1407, %1219, %1244, %1247, %1268, %1297, %1300, %1314, %1319, %1379
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #21
  %1552 = load i32, ptr %74, align 8
  %1553 = and i32 %1552, 255
  %1554 = icmp eq i32 %1553, 8
  br i1 %1554, label %1555, label %1808

1555:                                             ; preds = %1551
  %1556 = zext nneg i32 %1553 to i64
  %1557 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1556
  %1558 = load i32, ptr %1557, align 4, !tbaa !50
  %1559 = zext i32 %1558 to i64
  %1560 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1559
  %1561 = load i64, ptr %1560, align 8, !tbaa !64
  %1562 = icmp eq i64 %1561, 0
  br i1 %1562, label %1563, label %1564

1563:                                             ; preds = %1555
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %1564

1564:                                             ; preds = %1563, %1555
  %1565 = getelementptr inbounds i8, ptr %74, i64 %1561
  %1566 = getelementptr inbounds ptr, ptr %1565, i64 1
  %1567 = load ptr, ptr %1566, align 8, !tbaa !35
  %1568 = load i64, ptr %1567, align 8
  %1569 = and i64 %1568, 65535
  %1570 = icmp eq i64 %1569, 29
  br i1 %1570, label %1808, label %1571

1571:                                             ; preds = %1564
  %1572 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1573 = getelementptr inbounds %struct.function, ptr %1572, i64 0, i32 5
  %1574 = load ptr, ptr %1573, align 8, !tbaa !54
  %1575 = icmp eq ptr %1574, null
  br i1 %1575, label %1580, label %1576

1576:                                             ; preds = %1571
  %1577 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !35
  %1578 = call i32 %1577(ptr noundef nonnull %74) #21
  %1579 = call ptr @htab_find_with_hash(ptr noundef nonnull %1574, ptr noundef nonnull %74, i32 noundef %1578) #21
  br label %1580

1580:                                             ; preds = %1576, %1571
  %1581 = phi ptr [ %1579, %1576 ], [ null, %1571 ]
  %1582 = icmp eq ptr %1581, null
  br i1 %1582, label %1592, label %1583

1583:                                             ; preds = %1580, %1588
  %1584 = phi ptr [ %1590, %1588 ], [ %1581, %1580 ]
  %1585 = getelementptr inbounds %struct.histogram_value_t, ptr %1584, i64 0, i32 1
  %1586 = load i32, ptr %1585, align 8, !tbaa !61
  %1587 = icmp eq i32 %1586, 4
  br i1 %1587, label %1592, label %1588

1588:                                             ; preds = %1583
  %1589 = getelementptr inbounds %struct.anon, ptr %1584, i64 0, i32 3
  %1590 = load ptr, ptr %1589, align 8, !tbaa !56
  %1591 = icmp eq ptr %1590, null
  br i1 %1591, label %1592, label %1583, !llvm.loop !62

1592:                                             ; preds = %1588, %1583, %1580
  %1593 = phi ptr [ null, %1580 ], [ null, %1588 ], [ %1584, %1583 ]
  %1594 = icmp eq ptr %1593, null
  br i1 %1594, label %1808, label %1595

1595:                                             ; preds = %1592
  %1596 = getelementptr inbounds %struct.anon, ptr %1593, i64 0, i32 2
  %1597 = load ptr, ptr %1596, align 8, !tbaa !60
  %1598 = load i64, ptr %1597, align 8, !tbaa !64
  %1599 = getelementptr inbounds i64, ptr %1597, i64 1
  %1600 = load i64, ptr %1599, align 8, !tbaa !64
  store i64 %1600, ptr %12, align 8, !tbaa !64
  %1601 = getelementptr inbounds i64, ptr %1597, i64 2
  %1602 = load i64, ptr %1601, align 8, !tbaa !64
  store i64 %1602, ptr %13, align 8, !tbaa !64
  %1603 = load ptr, ptr @cfun, align 8, !tbaa !35
  call void @gimple_remove_histogram_value(ptr noundef %1603, ptr noundef nonnull %74, ptr noundef nonnull %1593)
  %1604 = load i64, ptr %12, align 8, !tbaa !64
  %1605 = shl nsw i64 %1604, 2
  %1606 = load i64, ptr %13, align 8, !tbaa !64
  %1607 = mul nsw i64 %1606, 3
  %1608 = icmp sgt i64 %1605, %1607
  br i1 %1608, label %1609, label %1808

1609:                                             ; preds = %1595
  %1610 = getelementptr inbounds %struct.gimple_statement_base, ptr %74, i64 0, i32 4
  %1611 = load ptr, ptr %1610, align 8, !tbaa !46
  %1612 = getelementptr inbounds %struct.basic_block_def, ptr %1611, i64 0, i32 8
  %1613 = load i64, ptr %1612, align 8, !tbaa !117
  store i64 %1613, ptr %14, align 8, !tbaa !64
  %1614 = call fastcc zeroext i8 @check_counter(ptr noundef nonnull %74, ptr noundef nonnull @.str.36, ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef %1613), !range !118
  %1615 = icmp eq i8 %1614, 0
  br i1 %1615, label %1616, label %1808

1616:                                             ; preds = %1609
  %1617 = load i64, ptr %13, align 8, !tbaa !64
  %1618 = call fastcc zeroext i8 @check_counter(ptr noundef nonnull %74, ptr noundef nonnull @.str.36, ptr noundef nonnull %12, ptr noundef nonnull %13, i64 noundef %1617), !range !118
  %1619 = icmp eq i8 %1618, 0
  br i1 %1619, label %1620, label %1808

1620:                                             ; preds = %1616
  %1621 = load i64, ptr %13, align 8, !tbaa !64
  %1622 = icmp sgt i64 %1621, 0
  br i1 %1622, label %1623, label %1630

1623:                                             ; preds = %1620
  %1624 = load i64, ptr %12, align 8, !tbaa !64
  %1625 = mul nsw i64 %1624, 10000
  %1626 = lshr i64 %1621, 1
  %1627 = add nsw i64 %1625, %1626
  %1628 = sdiv i64 %1627, %1621
  %1629 = trunc i64 %1628 to i32
  br label %1630

1630:                                             ; preds = %1623, %1620
  %1631 = phi i32 [ %1629, %1623 ], [ 0, %1620 ]
  %1632 = load ptr, ptr @pid_map, align 8, !tbaa !35
  %1633 = icmp eq ptr %1632, null
  br i1 %1633, label %1634, label %1652

1634:                                             ; preds = %1630
  %1635 = load i32, ptr @cgraph_max_pid, align 4, !tbaa !50
  %1636 = sext i32 %1635 to i64
  %1637 = call ptr @xcalloc(i64 noundef %1636, i64 noundef 8) #21
  store ptr %1637, ptr @pid_map, align 8, !tbaa !35
  %1638 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !35
  %1639 = icmp eq ptr %1638, null
  br i1 %1639, label %1652, label %1640

1640:                                             ; preds = %1634, %1648
  %1641 = phi ptr [ %1650, %1648 ], [ %1638, %1634 ]
  %1642 = getelementptr inbounds %struct.cgraph_node, ptr %1641, i64 0, i32 26
  %1643 = load i32, ptr %1642, align 8, !tbaa !125
  %1644 = icmp eq i32 %1643, -1
  br i1 %1644, label %1648, label %1645

1645:                                             ; preds = %1640
  %1646 = sext i32 %1643 to i64
  %1647 = getelementptr inbounds ptr, ptr %1637, i64 %1646
  store ptr %1641, ptr %1647, align 8, !tbaa !35
  br label %1648

1648:                                             ; preds = %1645, %1640
  %1649 = getelementptr inbounds %struct.cgraph_node, ptr %1641, i64 0, i32 3
  %1650 = load ptr, ptr %1649, align 8, !tbaa !35
  %1651 = icmp eq ptr %1650, null
  br i1 %1651, label %1652, label %1640, !llvm.loop !133

1652:                                             ; preds = %1648, %1634, %1630
  %1653 = load ptr, ptr @pid_map, align 8, !tbaa !35
  %1654 = shl i64 %1598, 32
  %1655 = ashr exact i64 %1654, 32
  %1656 = getelementptr inbounds ptr, ptr %1653, i64 %1655
  %1657 = load ptr, ptr %1656, align 8, !tbaa !35
  %1658 = icmp eq ptr %1657, null
  br i1 %1658, label %1808, label %1659

1659:                                             ; preds = %1652
  %1660 = load i64, ptr %12, align 8, !tbaa !64
  %1661 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %1662 = call ptr @build_pointer_type(ptr noundef %1661) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #21
  %1663 = load ptr, ptr %1610, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %74) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !113
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #21
  %1664 = call ptr @create_tmp_var(ptr noundef %1662, ptr noundef nonnull @.str.28) #21
  %1665 = call ptr @create_tmp_var(ptr noundef %1662, ptr noundef nonnull @.str.28) #21
  %1666 = load i32, ptr %74, align 8
  %1667 = and i32 %1666, 255
  %1668 = add nsw i32 %1667, -10
  %1669 = icmp ult i32 %1668, -9
  br i1 %1669, label %1683, label %1670

1670:                                             ; preds = %1659
  %1671 = zext nneg i32 %1667 to i64
  %1672 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1671
  %1673 = load i32, ptr %1672, align 4, !tbaa !50
  %1674 = zext i32 %1673 to i64
  %1675 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1674
  %1676 = load i64, ptr %1675, align 8, !tbaa !64
  %1677 = icmp eq i64 %1676, 0
  br i1 %1677, label %1678, label %1679

1678:                                             ; preds = %1670
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %1679

1679:                                             ; preds = %1678, %1670
  %1680 = getelementptr inbounds i8, ptr %74, i64 %1676
  %1681 = getelementptr inbounds ptr, ptr %1680, i64 1
  %1682 = load ptr, ptr %1681, align 8, !tbaa !35
  br label %1683

1683:                                             ; preds = %1679, %1659
  %1684 = phi ptr [ %1682, %1679 ], [ null, %1659 ]
  %1685 = call ptr @unshare_expr(ptr noundef %1684) #21
  %1686 = call ptr @gimple_build_assign_stat(ptr noundef %1664, ptr noundef %1685) #21
  call void @gsi_insert_before(ptr noundef nonnull %1, ptr noundef %1686, i32 noundef 1) #21
  %1687 = load ptr, ptr %1657, align 8, !tbaa !134
  %1688 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %1689 = call ptr @build_addr(ptr noundef %1687, ptr noundef %1688) #21
  %1690 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1662, ptr noundef %1689) #21
  %1691 = call ptr @gimple_build_assign_stat(ptr noundef %1665, ptr noundef %1690) #21
  call void @gsi_insert_before(ptr noundef nonnull %1, ptr noundef %1691, i32 noundef 1) #21
  %1692 = call ptr @gimple_build_cond(i32 noundef 101, ptr noundef %1665, ptr noundef %1664, ptr noundef null, ptr noundef null) #21
  call void @gsi_insert_before(ptr noundef nonnull %1, ptr noundef %1692, i32 noundef 1) #21
  %1693 = call ptr @gimple_copy(ptr noundef nonnull %74) #21
  %1694 = load ptr, ptr %1657, align 8, !tbaa !134
  %1695 = getelementptr inbounds %struct.gimple_statement_base, ptr %1693, i64 0, i32 2
  %1696 = load i32, ptr %1695, align 8, !tbaa !46
  %1697 = call ptr @build_fold_addr_expr_loc(i32 noundef %1696, ptr noundef %1694) #21
  %1698 = load i32, ptr %1693, align 8
  %1699 = and i32 %1698, 255
  %1700 = add nsw i32 %1699, -10
  %1701 = icmp ult i32 %1700, -9
  br i1 %1701, label %1706, label %1702

1702:                                             ; preds = %1683
  %1703 = getelementptr inbounds %struct.gimple_statement_base, ptr %1693, i64 0, i32 3
  %1704 = load i32, ptr %1703, align 4, !tbaa !46
  %1705 = icmp ugt i32 %1704, 1
  br i1 %1705, label %1707, label %1706

1706:                                             ; preds = %1702, %1683
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1665, ptr noundef nonnull @.str.3) #21
  br label %1707

1707:                                             ; preds = %1706, %1702
  %1708 = load i32, ptr %1693, align 8
  %1709 = and i32 %1708, 255
  %1710 = zext nneg i32 %1709 to i64
  %1711 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1710
  %1712 = load i32, ptr %1711, align 4, !tbaa !50
  %1713 = zext i32 %1712 to i64
  %1714 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1713
  %1715 = load i64, ptr %1714, align 8, !tbaa !64
  %1716 = icmp eq i64 %1715, 0
  br i1 %1716, label %1717, label %1718

1717:                                             ; preds = %1707
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %1718

1718:                                             ; preds = %1717, %1707
  %1719 = getelementptr inbounds i8, ptr %1693, i64 %1715
  %1720 = getelementptr inbounds ptr, ptr %1719, i64 1
  store ptr %1697, ptr %1720, align 8, !tbaa !35
  call void @gsi_insert_before(ptr noundef nonnull %1, ptr noundef nonnull %1693, i32 noundef 1) #21
  %1721 = call ptr @split_block(ptr noundef %1663, ptr noundef %1692) #21
  %1722 = getelementptr inbounds %struct.edge_def, ptr %1721, i64 0, i32 1
  %1723 = load ptr, ptr %1722, align 8, !tbaa !120
  %1724 = getelementptr inbounds %struct.basic_block_def, ptr %1723, i64 0, i32 8
  store i64 %1660, ptr %1724, align 8, !tbaa !117
  %1725 = call ptr @split_block(ptr noundef %1723, ptr noundef nonnull %1693) #21
  %1726 = getelementptr inbounds %struct.edge_def, ptr %1725, i64 0, i32 1
  %1727 = load ptr, ptr %1726, align 8, !tbaa !120
  %1728 = sub nsw i64 %1621, %1660
  %1729 = getelementptr inbounds %struct.basic_block_def, ptr %1727, i64 0, i32 8
  store i64 %1728, ptr %1729, align 8, !tbaa !117
  %1730 = call ptr @split_block(ptr noundef %1727, ptr noundef nonnull %74) #21
  %1731 = getelementptr inbounds %struct.edge_def, ptr %1730, i64 0, i32 1
  %1732 = load ptr, ptr %1731, align 8, !tbaa !120
  %1733 = getelementptr inbounds %struct.basic_block_def, ptr %1732, i64 0, i32 8
  store i64 %1621, ptr %1733, align 8, !tbaa !117
  %1734 = getelementptr inbounds %struct.edge_def, ptr %1721, i64 0, i32 7
  %1735 = load i32, ptr %1734, align 8, !tbaa !122
  %1736 = and i32 %1735, -1026
  %1737 = or disjoint i32 %1736, 1024
  store i32 %1737, ptr %1734, align 8, !tbaa !122
  %1738 = getelementptr inbounds %struct.edge_def, ptr %1721, i64 0, i32 8
  store i32 %1631, ptr %1738, align 4, !tbaa !123
  %1739 = getelementptr inbounds %struct.edge_def, ptr %1721, i64 0, i32 9
  store i64 %1660, ptr %1739, align 8, !tbaa !124
  %1740 = call ptr @make_edge(ptr noundef %1663, ptr noundef %1727, i32 noundef 2048) #21
  %1741 = sub nsw i32 10000, %1631
  %1742 = getelementptr inbounds %struct.edge_def, ptr %1740, i64 0, i32 8
  store i32 %1741, ptr %1742, align 4, !tbaa !123
  %1743 = getelementptr inbounds %struct.edge_def, ptr %1740, i64 0, i32 9
  store i64 %1728, ptr %1743, align 8, !tbaa !124
  call void @remove_edge(ptr noundef %1725) #21
  %1744 = call ptr @make_edge(ptr noundef %1723, ptr noundef %1732, i32 noundef 1) #21
  %1745 = getelementptr inbounds %struct.edge_def, ptr %1744, i64 0, i32 8
  store i32 10000, ptr %1745, align 4, !tbaa !123
  %1746 = getelementptr inbounds %struct.edge_def, ptr %1744, i64 0, i32 9
  store i64 %1660, ptr %1746, align 8, !tbaa !124
  %1747 = getelementptr inbounds %struct.edge_def, ptr %1730, i64 0, i32 8
  store i32 10000, ptr %1747, align 4, !tbaa !123
  %1748 = getelementptr inbounds %struct.edge_def, ptr %1730, i64 0, i32 9
  store i64 %1728, ptr %1748, align 8, !tbaa !124
  %1749 = call i32 @lookup_stmt_eh_lp(ptr noundef nonnull %74) #21
  %1750 = icmp eq i32 %1749, 0
  br i1 %1750, label %1761, label %1751

1751:                                             ; preds = %1718
  %1752 = call zeroext i8 @stmt_could_throw_p(ptr noundef nonnull %1693) #21
  %1753 = icmp eq i8 %1752, 0
  br i1 %1753, label %1755, label %1754

1754:                                             ; preds = %1751
  call void @add_stmt_to_eh_lp(ptr noundef nonnull %1693, i32 noundef %1749) #21
  call void @make_eh_edges(ptr noundef nonnull %1693) #21
  br label %1755

1755:                                             ; preds = %1754, %1751
  %1756 = call zeroext i8 @stmt_could_throw_p(ptr noundef nonnull %74) #21
  %1757 = icmp eq i8 %1756, 0
  br i1 %1757, label %1758, label %1759

1758:                                             ; preds = %1755
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1162, ptr noundef nonnull @.str.3) #21
  br label %1759

1759:                                             ; preds = %1758, %1755
  call void @make_eh_edges(ptr noundef nonnull %74) #21
  %1760 = call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %1732) #21
  br label %1761

1761:                                             ; preds = %1718, %1759
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #21
  %1762 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1763 = icmp eq ptr %1762, null
  br i1 %1763, label %1800, label %1764

1764:                                             ; preds = %1761
  %1765 = call i64 @fwrite(ptr nonnull @.str.37, i64 29, i64 1, ptr nonnull %1762)
  %1766 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1767 = load i32, ptr %74, align 8
  %1768 = and i32 %1767, 255
  %1769 = add nsw i32 %1768, -10
  %1770 = icmp ult i32 %1769, -9
  br i1 %1770, label %1784, label %1771

1771:                                             ; preds = %1764
  %1772 = zext nneg i32 %1768 to i64
  %1773 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1772
  %1774 = load i32, ptr %1773, align 4, !tbaa !50
  %1775 = zext i32 %1774 to i64
  %1776 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1775
  %1777 = load i64, ptr %1776, align 8, !tbaa !64
  %1778 = icmp eq i64 %1777, 0
  br i1 %1778, label %1779, label %1780

1779:                                             ; preds = %1771
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #21
  br label %1780

1780:                                             ; preds = %1779, %1771
  %1781 = getelementptr inbounds i8, ptr %74, i64 %1777
  %1782 = getelementptr inbounds ptr, ptr %1781, i64 1
  %1783 = load ptr, ptr %1782, align 8, !tbaa !35
  br label %1784

1784:                                             ; preds = %1780, %1764
  %1785 = phi ptr [ %1783, %1780 ], [ null, %1764 ]
  call void @print_generic_expr(ptr noundef %1766, ptr noundef %1785, i32 noundef 2) #21
  %1786 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1787 = call i64 @fwrite(ptr nonnull @.str.38, i64 3, i64 1, ptr %1786)
  %1788 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1789 = load ptr, ptr %1657, align 8, !tbaa !134
  call void @print_generic_expr(ptr noundef %1788, ptr noundef %1789, i32 noundef 2) #21
  %1790 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1791 = call i64 @fwrite(ptr nonnull @.str.32, i64 24, i64 1, ptr %1790)
  %1792 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %1792, ptr noundef nonnull %74, i32 noundef 0, i32 noundef 2) #21
  %1793 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1794 = call i64 @fwrite(ptr nonnull @.str.39, i64 4, i64 1, ptr %1793)
  %1795 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %1795, ptr noundef nonnull %1693, i32 noundef 0, i32 noundef 2) #21
  %1796 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1797 = load i64, ptr %12, align 8, !tbaa !64
  %1798 = load i64, ptr %13, align 8, !tbaa !64
  %1799 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1796, ptr noundef nonnull @.str.40, i64 noundef %1797, i64 noundef %1798)
  br label %1800

1800:                                             ; preds = %1761, %1784
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  br label %1801

1801:                                             ; preds = %1550, %1188, %903, %469, %1800
  %1802 = load ptr, ptr %24, align 8
  %1803 = load ptr, ptr %1802, align 8, !tbaa !91
  %1804 = getelementptr inbounds %struct.gimple_statement_base, ptr %1803, i64 0, i32 4
  %1805 = load ptr, ptr %1804, align 8, !tbaa !46
  %1806 = icmp eq ptr %72, %1805
  br i1 %1806, label %1809, label %1807

1807:                                             ; preds = %1801
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %25) #21
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %25, ptr noundef %1803) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %25, i64 24, i1 false), !tbaa.struct !113
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %25) #21
  br label %1809

1808:                                             ; preds = %1652, %1609, %1616, %1595, %1592, %1564, %1551
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  br label %1809

1809:                                             ; preds = %1808, %94, %1807, %1801, %83
  %1810 = phi i8 [ %73, %83 ], [ 1, %1807 ], [ 1, %1801 ], [ %73, %94 ], [ %73, %1808 ]
  %1811 = phi ptr [ %72, %83 ], [ %1805, %1807 ], [ %72, %1801 ], [ %72, %94 ], [ %72, %1808 ]
  %1812 = load ptr, ptr %24, align 8, !tbaa !135
  %1813 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1812, i64 0, i32 2
  %1814 = load ptr, ptr %1813, align 8, !tbaa !94
  store ptr %1814, ptr %24, align 8, !tbaa !135
  %1815 = icmp eq ptr %1814, null
  br i1 %1815, label %38, label %70, !llvm.loop !137

1816:                                             ; preds = %38, %0
  %1817 = phi i8 [ 0, %0 ], [ %39, %38 ]
  %1818 = icmp eq i8 %1817, 0
  br i1 %1818, label %1821, label %1819

1819:                                             ; preds = %1816
  %1820 = call i32 @counts_to_freqs() #21
  br label %1821

1821:                                             ; preds = %1819, %1816
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %24) #21
  ret i8 %1817
}

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @interesting_stringop_to_profile_p(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 2047
  switch i32 %6, label %13 [
    i32 330, label %7
    i32 332, label %7
    i32 333, label %9
    i32 326, label %11
  ]

7:                                                ; preds = %3, %3
  store i32 2, ptr %2, align 4, !tbaa !50
  %8 = tail call zeroext i8 (ptr, ...) @validate_gimple_arglist(ptr noundef %1, i32 noundef 10, i32 noundef 10, i32 noundef 8, i32 noundef 19) #21
  br label %13

9:                                                ; preds = %3
  store i32 2, ptr %2, align 4, !tbaa !50
  %10 = tail call zeroext i8 (ptr, ...) @validate_gimple_arglist(ptr noundef %1, i32 noundef 10, i32 noundef 8, i32 noundef 8, i32 noundef 19) #21
  br label %13

11:                                               ; preds = %3
  store i32 1, ptr %2, align 4, !tbaa !50
  %12 = tail call zeroext i8 (ptr, ...) @validate_gimple_arglist(ptr noundef %1, i32 noundef 10, i32 noundef 8, i32 noundef 19) #21
  br label %13

13:                                               ; preds = %3, %11, %9, %7
  %14 = phi i8 [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ 0, %3 ]
  ret i8 %14
}

declare zeroext i8 @validate_gimple_arglist(ptr noundef, ...) local_unnamed_addr #3

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare i32 @counts_to_freqs() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @check_counter(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, i64 noundef %4) unnamed_addr #9 !prof !34 {
  %6 = load i64, ptr %3, align 8, !tbaa !64
  %7 = icmp eq i64 %6, %4
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i64, ptr %2, align 8, !tbaa !64
  %10 = icmp sgt i64 %9, %6
  br i1 %10, label %11, label %27

11:                                               ; preds = %8, %5
  %12 = icmp eq ptr %0, null
  %13 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr @current_function_decl, align 8
  %15 = getelementptr inbounds %struct.tree_decl_minimal, ptr %14, i64 0, i32 1
  %16 = select i1 %12, ptr %15, ptr %13
  %17 = load i32, ptr %16, align 8, !tbaa !46
  %18 = load i32, ptr @flag_profile_correction, align 4, !tbaa !50
  %19 = icmp eq i32 %18, 0
  %20 = trunc i64 %6 to i32
  %21 = trunc i64 %4 to i32
  br i1 %19, label %26, label %22

22:                                               ; preds = %11
  tail call void (i32, ptr, ...) @inform(i32 noundef %17, ptr noundef nonnull @.str.26, ptr noundef %1, i32 noundef %20, i32 noundef %21) #21
  store i64 %4, ptr %3, align 8, !tbaa !64
  %23 = load i64, ptr %2, align 8, !tbaa !64
  %24 = icmp sgt i64 %23, %4
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  store i64 %4, ptr %2, align 8, !tbaa !64
  br label %27

26:                                               ; preds = %11
  tail call void (i32, ptr, ...) @error_at(i32 noundef %17, ptr noundef nonnull @.str.27, ptr noundef %1, i32 noundef %20, i32 noundef %21) #21
  br label %27

27:                                               ; preds = %8, %26, %25, %22
  %28 = phi i8 [ 1, %26 ], [ 0, %25 ], [ 0, %22 ], [ 0, %8 ]
  ret i8 %28
}

declare zeroext i8 @optimize_bb_for_size_p(ptr noundef) local_unnamed_addr #3

declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @error_at(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @get_gcov_type() local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_edge(ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @get_pointer_alignment(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @can_move_by_pieces(i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @can_store_by_pieces(i64 noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @builtin_memset_read_str(ptr noundef, i64 noundef, i32 noundef) #3

declare ptr @gimple_copy(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #3

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare ptr @build_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @lookup_stmt_eh_lp(ptr noundef) local_unnamed_addr #3

declare void @add_stmt_to_eh_lp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @make_eh_edges(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #3

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

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
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { nounwind }

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
!54 = !{!55, !36, i64 40}
!55 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!56 = !{!57, !36, i64 24}
!57 = !{!"histogram_value_t", !58, i64 0, !41, i64 32, !41, i64 36, !37, i64 40}
!58 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!59 = distinct !{!59, !52, !53}
!60 = !{!57, !36, i64 16}
!61 = !{!57, !41, i64 32}
!62 = distinct !{!62, !52, !53}
!63 = distinct !{!63, !52, !53}
!64 = !{!42, !42, i64 0}
!65 = distinct !{!65, !52, !53}
!66 = !{!"function_entry_count", i64 443361}
!67 = !{!"branch_weights", i32 443361, i32 0}
!68 = distinct !{!68, !52, !53}
!69 = !{!"function_entry_count", i64 88339}
!70 = !{!"branch_weights", i32 88339, i32 0}
!71 = !{!"branch_weights", i32 1, i32 0}
!72 = !{!57, !36, i64 8}
!73 = !{!57, !41, i64 36}
!74 = distinct !{!74, !52, !53}
!75 = distinct !{!75, !52, !53}
!76 = !{!55, !36, i64 8}
!77 = !{!78, !36, i64 0}
!78 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!79 = !{!80, !36, i64 56}
!80 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!81 = !{!78, !36, i64 8}
!82 = distinct !{!82, !52, !53}
!83 = !{!80, !41, i64 96}
!84 = !{!85}
!85 = distinct !{!85, !86, !"gsi_start_bb: argument 0"}
!86 = distinct !{!86, !"gsi_start_bb"}
!87 = !{!88, !36, i64 0}
!88 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!89 = !{!90, !36, i64 0}
!90 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!91 = !{!92, !36, i64 0}
!92 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!93 = distinct !{!93, !52, !53}
!94 = !{!92, !36, i64 16}
!95 = distinct !{!95, !52, !53}
!96 = !{!"function_entry_count", i64 38}
!97 = !{!"branch_weights", i32 38, i32 0}
!98 = distinct !{!98, !52, !53}
!99 = distinct !{!99, !52, !53}
!100 = !{!101}
!101 = distinct !{!101, !102, !"gsi_start_bb: argument 0"}
!102 = distinct !{!102, !"gsi_start_bb"}
!103 = !{!104, !41, i64 4}
!104 = !{!"VEC_histogram_value_base", !41, i64 0, !41, i64 4, !37, i64 8}
!105 = !{!104, !41, i64 0}
!106 = !{!57, !36, i64 0}
!107 = distinct !{!107, !52, !53}
!108 = distinct !{!108, !52, !53}
!109 = distinct !{!109, !52, !53}
!110 = !{!111}
!111 = distinct !{!111, !112, !"gsi_start_bb: argument 0"}
!112 = distinct !{!112, !"gsi_start_bb"}
!113 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!114 = !{i64 0, i64 8, !35, i64 8, i64 8, !35}
!115 = !{i64 0, i64 8, !35}
!116 = distinct !{!116, !52, !53}
!117 = !{!80, !42, i64 72}
!118 = !{i8 0, i8 2}
!119 = distinct !{!119, !52, !53}
!120 = !{!121, !36, i64 8}
!121 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!122 = !{!121, !41, i64 48}
!123 = !{!121, !41, i64 52}
!124 = !{!121, !42, i64 56}
!125 = !{!126, !41, i64 304}
!126 = !{!"cgraph_node", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !127, i64 144, !129, i64 184, !130, i64 224, !131, i64 232, !132, i64 256, !42, i64 288, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 309, !41, i64 309}
!127 = !{!"cgraph_local_info", !36, i64 0, !128, i64 8, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32}
!128 = !{!"inline_summary", !42, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!129 = !{!"cgraph_global_info", !42, i64 0, !42, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !37, i64 36}
!130 = !{!"cgraph_rtl_info", !41, i64 0}
!131 = !{!"cgraph_clone_info", !36, i64 0, !36, i64 8, !36, i64 16}
!132 = !{!"cgraph_thunk_info", !42, i64 0, !42, i64 8, !36, i64 16, !37, i64 24, !37, i64 25, !37, i64 26}
!133 = distinct !{!133, !52, !53}
!134 = !{!126, !36, i64 0}
!135 = !{!136, !36, i64 0}
!136 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16}
!137 = distinct !{!137, !52, !53}
