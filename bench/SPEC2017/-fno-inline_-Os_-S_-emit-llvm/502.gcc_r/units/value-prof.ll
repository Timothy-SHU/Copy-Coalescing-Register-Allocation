; ModuleID = 'value-prof.c'
source_filename = "value-prof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.anon = type { ptr, ptr, ptr, ptr }
%struct.histogram_value_t = type { %struct.anon, i32, i32, %union.anon }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.VEC_histogram_value_base = type { i32, i32, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimple_histogram_value(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !11
  %8 = tail call i32 %7(ptr noundef %1) #15
  %9 = tail call ptr @htab_find_with_hash(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %8) #15
  br label %10

10:                                               ; preds = %2, %6
  %11 = phi ptr [ %9, %6 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_add_histogram_value(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @gimple_histogram_value(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.anon, ptr %2, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !12
  tail call fastcc void @set_histogram_value(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_histogram_value(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp ne ptr %2, null
  %5 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  br i1 %4, label %11, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %6, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 5
  br label %16

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 5
  %13 = icmp eq ptr %6, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call ptr @htab_create(i64 noundef 1, ptr noundef nonnull @histogram_hash, ptr noundef nonnull @histogram_eq, ptr noundef null) #15
  store ptr %15, ptr %12, align 8, !tbaa !5
  br label %16

16:                                               ; preds = %9, %14, %11
  %17 = phi ptr [ %12, %14 ], [ %12, %11 ], [ %10, %9 ]
  %18 = phi ptr [ %15, %14 ], [ %6, %11 ], [ %6, %9 ]
  %19 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !11
  %20 = tail call i32 %19(ptr noundef %1) #15
  %21 = zext i1 %4 to i32
  %22 = tail call ptr @htab_find_slot_with_hash(ptr noundef %18, ptr noundef %1, i32 noundef %20, i32 noundef %21) #15
  br i1 %4, label %27, label %23

23:                                               ; preds = %16
  %24 = icmp eq ptr %22, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr %17, align 8, !tbaa !5
  tail call void @htab_clear_slot(ptr noundef %26, ptr noundef nonnull %22) #15
  br label %28

27:                                               ; preds = %16
  store ptr %2, ptr %22, align 8, !tbaa !11
  br label %28

28:                                               ; preds = %23, %25, %7, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_remove_histogram_value(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @gimple_histogram_value(ptr noundef %0, ptr noundef %1) #16
  %5 = icmp eq ptr %4, %2
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.anon, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  tail call fastcc void @set_histogram_value(ptr noundef %0, ptr noundef %1, ptr noundef %8) #16
  br label %18

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %12, %9 ], [ %4, %3 ]
  %11 = getelementptr inbounds %struct.anon, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %14, label %9, !llvm.loop !15

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.anon, ptr %10, i64 0, i32 3
  %16 = getelementptr inbounds %struct.anon, ptr %2, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !12
  store ptr %17, ptr %15, align 8, !tbaa !12
  br label %18

18:                                               ; preds = %14, %6
  %19 = getelementptr inbounds %struct.anon, ptr %2, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !17
  tail call void @free(ptr noundef %20) #16
  tail call void @free(ptr noundef nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimple_histogram_value_of_type(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @gimple_histogram_value(ptr noundef %0, ptr noundef %1) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3, %11
  %7 = phi ptr [ %13, %11 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.histogram_value_t, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !18
  %10 = icmp eq i32 %9, %2
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.anon, ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !19

15:                                               ; preds = %6, %11, %3
  %16 = phi ptr [ null, %3 ], [ null, %11 ], [ %7, %6 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_histograms_for_stmt(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @gimple_histogram_value(ptr noundef %0, ptr noundef %2) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %4, %3 ]
  tail call fastcc void @dump_histogram_value(ptr noundef %1, ptr noundef nonnull %7) #16
  %8 = getelementptr inbounds %struct.anon, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !llvm.loop !20

11:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dump_histogram_value(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.histogram_value_t, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !18
  switch i32 %4, label %105 [
    i32 0, label %5
    i32 1, label %39
    i32 2, label %49
    i32 5, label %61
    i32 6, label %71
    i32 3, label %79
    i32 4, label %91
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.histogram_value_t, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !21
  %8 = getelementptr inbounds %struct.histogram_value_t, ptr %1, i64 0, i32 3, i32 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !21
  %10 = add i32 %7, -1
  %11 = add i32 %10, %9
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %7, i32 noundef %11) #16
  %13 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %103, label %16

16:                                               ; preds = %5
  %17 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 2, i64 1, ptr %0)
  %18 = load i32, ptr %8, align 4, !tbaa !21
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %16, %20
  %21 = phi i64 [ %29, %20 ], [ 0, %16 ]
  %22 = load i32, ptr %6, align 8, !tbaa !21
  %23 = trunc i64 %21 to i32
  %24 = add i32 %22, %23
  %25 = load ptr, ptr %13, align 8, !tbaa !17
  %26 = getelementptr inbounds i64, ptr %25, i64 %21
  %27 = load i64, ptr %26, align 8, !tbaa !22
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %24, i64 noundef %27) #16
  %29 = add nuw nsw i64 %21, 1
  %30 = load i32, ptr %8, align 4, !tbaa !21
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %20, label %33, !llvm.loop !24

33:                                               ; preds = %20, %16
  %34 = phi i64 [ 0, %16 ], [ %29, %20 ]
  %35 = load ptr, ptr %13, align 8, !tbaa !17
  %36 = getelementptr inbounds i64, ptr %35, i64 %34
  %37 = load i64, ptr %36, align 8, !tbaa !22
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i64 noundef %37) #16
  br label %103

39:                                               ; preds = %2
  %40 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 13, i64 1, ptr %0)
  %41 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !17
  %43 = icmp eq ptr %42, null
  br i1 %43, label %103, label %44

44:                                               ; preds = %39
  %45 = load i64, ptr %42, align 8, !tbaa !22
  %46 = getelementptr inbounds i64, ptr %42, i64 1
  %47 = load i64, ptr %46, align 8, !tbaa !22
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i64 noundef %45, i64 noundef %47) #16
  br label %103

49:                                               ; preds = %2
  %50 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 13, i64 1, ptr %0)
  %51 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !17
  %53 = icmp eq ptr %52, null
  br i1 %53, label %103, label %54

54:                                               ; preds = %49
  %55 = load i64, ptr %52, align 8, !tbaa !22
  %56 = getelementptr inbounds i64, ptr %52, i64 1
  %57 = load i64, ptr %56, align 8, !tbaa !22
  %58 = getelementptr inbounds i64, ptr %52, i64 2
  %59 = load i64, ptr %58, align 8, !tbaa !22
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef %55, i64 noundef %57, i64 noundef %59) #16
  br label %103

61:                                               ; preds = %2
  %62 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 14, i64 1, ptr %0)
  %63 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !17
  %65 = icmp eq ptr %64, null
  br i1 %65, label %103, label %66

66:                                               ; preds = %61
  %67 = load i64, ptr %64, align 8, !tbaa !22
  %68 = getelementptr inbounds i64, ptr %64, i64 1
  %69 = load i64, ptr %68, align 8, !tbaa !22
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, i64 noundef %67, i64 noundef %69) #16
  br label %103

71:                                               ; preds = %2
  %72 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 10, i64 1, ptr %0)
  %73 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !17
  %75 = icmp eq ptr %74, null
  br i1 %75, label %103, label %76

76:                                               ; preds = %71
  %77 = load i64, ptr %74, align 8, !tbaa !22
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, i64 noundef %77) #16
  br label %103

79:                                               ; preds = %2
  %80 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 15, i64 1, ptr %0)
  %81 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !17
  %83 = icmp eq ptr %82, null
  br i1 %83, label %103, label %84

84:                                               ; preds = %79
  %85 = load i64, ptr %82, align 8, !tbaa !22
  %86 = getelementptr inbounds i64, ptr %82, i64 1
  %87 = load i64, ptr %86, align 8, !tbaa !22
  %88 = getelementptr inbounds i64, ptr %82, i64 2
  %89 = load i64, ptr %88, align 8, !tbaa !22
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef %85, i64 noundef %87, i64 noundef %89) #16
  br label %103

91:                                               ; preds = %2
  %92 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 14, i64 1, ptr %0)
  %93 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !17
  %95 = icmp eq ptr %94, null
  br i1 %95, label %103, label %96

96:                                               ; preds = %91
  %97 = load i64, ptr %94, align 8, !tbaa !22
  %98 = getelementptr inbounds i64, ptr %94, i64 1
  %99 = load i64, ptr %98, align 8, !tbaa !22
  %100 = getelementptr inbounds i64, ptr %94, i64 2
  %101 = load i64, ptr %100, align 8, !tbaa !22
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, i64 noundef %97, i64 noundef %99, i64 noundef %101) #16
  br label %103

103:                                              ; preds = %91, %96, %79, %84, %71, %76, %61, %66, %49, %54, %39, %44, %5, %33
  %104 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %0)
  br label %105

105:                                              ; preds = %103, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_remove_stmt_histograms(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @gimple_histogram_value(ptr noundef %0, ptr noundef %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %2 ]
  tail call void @gimple_remove_histogram_value(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #16
  %7 = tail call ptr @gimple_histogram_value(ptr noundef %0, ptr noundef %1) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !25

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_duplicate_stmt_histograms(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @gimple_histogram_value(ptr noundef %2, ptr noundef %3) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %25, %7 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.histogram_value_t, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !18
  %11 = tail call fastcc ptr @gimple_alloc_histogram_value(i32 noundef %10, ptr noundef null, ptr noundef null) #16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(48) %8, i64 48, i1 false)
  %12 = getelementptr inbounds %struct.anon, ptr %11, i64 0, i32 1
  store ptr %1, ptr %12, align 8, !tbaa !26
  %13 = getelementptr inbounds %struct.histogram_value_t, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !27
  %15 = zext i32 %14 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = tail call ptr @xmalloc(i64 noundef %16) #15
  %18 = getelementptr inbounds %struct.anon, ptr %11, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.anon, ptr %8, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !17
  %21 = load i32, ptr %13, align 4, !tbaa !27
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %17, ptr align 8 %20, i64 %23, i1 false)
  tail call void @gimple_add_histogram_value(ptr noundef %0, ptr noundef %1, ptr noundef %11) #16
  %24 = getelementptr inbounds %struct.anon, ptr %8, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %7, !llvm.loop !28

27:                                               ; preds = %7, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @gimple_alloc_histogram_value(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 48) #15
  store ptr %2, ptr %4, align 8, !tbaa !29
  %5 = getelementptr inbounds %struct.anon, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !26
  %6 = getelementptr inbounds %struct.histogram_value_t, ptr %4, i64 0, i32 1
  store i32 %0, ptr %6, align 8, !tbaa !18
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_move_stmt_histograms(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @gimple_histogram_value(ptr noundef %0, ptr noundef %2) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  tail call fastcc void @set_histogram_value(ptr noundef %0, ptr noundef %2, ptr noundef null) #16
  br label %7

7:                                                ; preds = %6, %7
  %8 = phi ptr [ %4, %6 ], [ %11, %7 ]
  %9 = getelementptr inbounds %struct.anon, ptr %8, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !26
  %10 = getelementptr inbounds %struct.anon, ptr %8, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %7, !llvm.loop !30

13:                                               ; preds = %7
  tail call fastcc void @set_histogram_value(ptr noundef %0, ptr noundef %1, ptr noundef null) #16
  br label %14

14:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @verify_histograms() local_unnamed_addr #0 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #17
  store i1 false, ptr @error_found, align 1
  %2 = tail call ptr @pointer_set_create() #15
  %3 = load ptr, ptr @cfun, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !31
  %6 = load ptr, ptr %5, align 8, !tbaa !32
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !36
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %45, label %21

12:                                               ; preds = %42, %21
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = load ptr, ptr @cfun, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !31
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !36
  %20 = icmp eq ptr %14, %19
  br i1 %20, label %45, label %21, !llvm.loop !37

21:                                               ; preds = %0, %12
  %22 = phi ptr [ %14, %12 ], [ %8, %0 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %22) #16
  %23 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !38
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %12

25:                                               ; preds = %21, %42
  %26 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16
  %27 = load ptr, ptr @cfun, align 8, !tbaa !11
  %28 = tail call ptr @gimple_histogram_value(ptr noundef %27, ptr noundef %26) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %25, %37
  %31 = phi ptr [ %40, %37 ], [ %28, %25 ]
  %32 = getelementptr inbounds %struct.anon, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !26
  %34 = icmp eq ptr %33, %26
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str) #15
  tail call void @debug_gimple_stmt(ptr noundef %26) #15
  %36 = load ptr, ptr @stderr, align 8, !tbaa !11
  tail call fastcc void @dump_histogram_value(ptr noundef %36, ptr noundef nonnull %31) #16
  store i1 true, ptr @error_found, align 1
  br label %37

37:                                               ; preds = %35, %30
  %38 = tail call i32 @pointer_set_insert(ptr noundef %2, ptr noundef nonnull %31) #15
  %39 = getelementptr inbounds %struct.anon, ptr %31, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !12
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %30, !llvm.loop !39

42:                                               ; preds = %37, %25
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  %43 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !38
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %25, label %12, !llvm.loop !40

45:                                               ; preds = %12, %0
  %46 = phi ptr [ %3, %0 ], [ %15, %12 ]
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  tail call void @htab_traverse(ptr noundef nonnull %48, ptr noundef nonnull @visit_hist, ptr noundef %2) #15
  br label %51

51:                                               ; preds = %50, %45
  tail call void @pointer_set_destroy(ptr noundef %2) #15
  %52 = load i1, ptr @error_found, align 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.1) #15
  br label %54

54:                                               ; preds = %53, %51
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #17
  ret void
}

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #6 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #16
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #16
  store ptr %4, ptr %0, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !41
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !41
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  ret ptr %3
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @debug_gimple_stmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !41
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  store ptr %4, ptr %0, align 8, !tbaa !41
  ret void
}

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @visit_hist(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  %4 = tail call i32 @pointer_set_contains(ptr noundef %1, ptr noundef %3) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.20) #15
  %7 = load ptr, ptr @stderr, align 8, !tbaa !11
  tail call fastcc void @dump_histogram_value(ptr noundef %7, ptr noundef %3) #16
  %8 = getelementptr inbounds %struct.anon, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !26
  tail call void @debug_gimple_stmt(ptr noundef %9) #15
  store i1 true, ptr @error_found, align 1
  br label %10

10:                                               ; preds = %6, %2
  ret i32 1
}

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @internal_error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_histograms() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !11
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %0
  tail call void @htab_traverse(ptr noundef nonnull %3, ptr noundef nonnull @free_hist, ptr noundef null) #15
  %6 = load ptr, ptr @cfun, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  tail call void @htab_delete(ptr noundef %8) #15
  %9 = load ptr, ptr @cfun, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 5
  store ptr null, ptr %10, align 8, !tbaa !5
  br label %11

11:                                               ; preds = %5, %0
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal noundef i32 @free_hist(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #9 {
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.anon, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  tail call void @free(ptr noundef %5) #16
  tail call void @free(ptr noundef %3) #16
  ret i32 1
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @stringop_block_profile(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !11
  %5 = tail call ptr @gimple_histogram_value_of_type(ptr noundef %4, ptr noundef %0, i32 noundef 5) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store i64 -1, ptr %2, align 8, !tbaa !22
  br label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.anon, ptr %5, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = getelementptr inbounds i64, ptr %10, i64 1
  %12 = load i64, ptr %11, align 8, !tbaa !22
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  store i64 -1, ptr %2, align 8, !tbaa !22
  %15 = load ptr, ptr @cfun, align 8, !tbaa !11
  tail call void @gimple_remove_histogram_value(ptr noundef %15, ptr noundef %0, ptr noundef nonnull %5) #16
  br label %23

16:                                               ; preds = %8
  %17 = load i64, ptr %10, align 8, !tbaa !22
  %18 = sdiv i64 %12, 2
  %19 = add nsw i64 %17, %18
  %20 = sdiv i64 %19, %12
  %21 = tail call i64 @llvm.smin.i64(i64 %20, i64 2147483647)
  store i64 %21, ptr %2, align 8, !tbaa !22
  %22 = load ptr, ptr @cfun, align 8, !tbaa !11
  tail call void @gimple_remove_histogram_value(ptr noundef %22, ptr noundef %0, ptr noundef nonnull %5) #16
  br label %23

23:                                               ; preds = %14, %16, %7
  %24 = load ptr, ptr @cfun, align 8, !tbaa !11
  %25 = tail call ptr @gimple_histogram_value_of_type(ptr noundef %24, ptr noundef %0, i32 noundef 6) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, ptr %1, align 4, !tbaa !48
  br label %46

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.anon, ptr %25, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !17
  %31 = load i64, ptr %30, align 8, !tbaa !22
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load ptr, ptr @cfun, align 8, !tbaa !11
  tail call void @gimple_remove_histogram_value(ptr noundef %34, ptr noundef %0, ptr noundef nonnull %25) #16
  store i32 0, ptr %1, align 4, !tbaa !48
  br label %46

35:                                               ; preds = %28, %35
  %36 = phi i32 [ %42, %35 ], [ 1, %28 ]
  %37 = sext i32 %36 to i64
  %38 = and i64 %31, %37
  %39 = icmp eq i64 %38, 0
  %40 = icmp ne i32 %36, 0
  %41 = and i1 %40, %39
  %42 = shl i32 %36, 1
  br i1 %41, label %35, label %43, !llvm.loop !49

43:                                               ; preds = %35
  %44 = shl nsw i32 %36, 3
  store i32 %44, ptr %1, align 4, !tbaa !48
  %45 = load ptr, ptr @cfun, align 8, !tbaa !11
  tail call void @gimple_remove_histogram_value(ptr noundef %45, ptr noundef %0, ptr noundef nonnull %25) #16
  br label %46

46:                                               ; preds = %33, %43, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_register_value_prof_hooks() local_unnamed_addr #0 {
  %1 = tail call i32 @current_ir_type() #15
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1704, ptr noundef nonnull @.str.3) #15
  br label %4

4:                                                ; preds = %0, %3
  ret void
}

; Function Attrs: optsize
declare i32 @current_ir_type() local_unnamed_addr #1

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @find_values_to_profile(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @gimple_find_values_to_profile(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @value_profile_transformations() local_unnamed_addr #0 {
  %1 = tail call fastcc zeroext i8 @gimple_value_profile_transformations() #16
  ret i8 %1
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @histogram_hash(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !26
  %5 = tail call i32 %2(ptr noundef %4) #15
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @histogram_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #7 {
  %3 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !26
  %5 = icmp eq ptr %4, %1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !50
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !51
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !53
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare i32 @pointer_set_contains(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_find_values_to_profile(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !11
  store ptr null, ptr %0, align 8, !tbaa !11
  %4 = load ptr, ptr @cfun, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  %7 = load ptr, ptr %6, align 8, !tbaa !32
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %24, label %28

13:                                               ; preds = %32, %28
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = load ptr, ptr @cfun, align 8, !tbaa !11
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !31
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !36
  %21 = icmp eq ptr %15, %20
  br i1 %21, label %22, label %28, !llvm.loop !55

22:                                               ; preds = %13
  %23 = load ptr, ptr %0, align 8, !tbaa !11
  br label %24

24:                                               ; preds = %22, %1
  %25 = phi ptr [ %23, %22 ], [ null, %1 ]
  %26 = call fastcc i32 @VEC_histogram_value_base_iterate(ptr noundef %25, i32 noundef 0, ptr noundef nonnull %3) #16, !range !56
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %73, label %36

28:                                               ; preds = %1, %13
  %29 = phi ptr [ %15, %13 ], [ %9, %1 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %29) #16
  %30 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !38
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %13

32:                                               ; preds = %28, %32
  %33 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16
  tail call fastcc void @gimple_values_to_profile(ptr noundef %33, ptr noundef nonnull %0) #16
  call fastcc void @gsi_next(ptr noundef nonnull %2) #16
  %34 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !38
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %32, label %13, !llvm.loop !57

36:                                               ; preds = %24, %68
  %37 = phi i32 [ %69, %68 ], [ 0, %24 ]
  %38 = load ptr, ptr %3, align 8, !tbaa !11
  %39 = getelementptr inbounds %struct.histogram_value_t, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !18
  switch i32 %40, label %58 [
    i32 0, label %41
    i32 1, label %46
    i32 2, label %48
    i32 3, label %50
    i32 4, label %52
    i32 5, label %54
    i32 6, label %56
  ]

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.histogram_value_t, ptr %38, i64 0, i32 3, i32 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !21
  %44 = add i32 %43, 2
  %45 = getelementptr inbounds %struct.histogram_value_t, ptr %38, i64 0, i32 2
  store i32 %44, ptr %45, align 4, !tbaa !27
  br label %59

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.histogram_value_t, ptr %38, i64 0, i32 2
  store i32 2, ptr %47, align 4, !tbaa !27
  br label %59

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.histogram_value_t, ptr %38, i64 0, i32 2
  store i32 3, ptr %49, align 4, !tbaa !27
  br label %59

50:                                               ; preds = %36
  %51 = getelementptr inbounds %struct.histogram_value_t, ptr %38, i64 0, i32 2
  store i32 4, ptr %51, align 4, !tbaa !27
  br label %59

52:                                               ; preds = %36
  %53 = getelementptr inbounds %struct.histogram_value_t, ptr %38, i64 0, i32 2
  store i32 3, ptr %53, align 4, !tbaa !27
  br label %59

54:                                               ; preds = %36
  %55 = getelementptr inbounds %struct.histogram_value_t, ptr %38, i64 0, i32 2
  store i32 2, ptr %55, align 4, !tbaa !27
  br label %59

56:                                               ; preds = %36
  %57 = getelementptr inbounds %struct.histogram_value_t, ptr %38, i64 0, i32 2
  store i32 1, ptr %57, align 4, !tbaa !27
  br label %59

58:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1685, ptr noundef nonnull @.str.3) #15
  br label %59

59:                                               ; preds = %58, %56, %54, %52, %50, %48, %46, %41
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %61 = icmp eq ptr %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 5, i64 1, ptr nonnull %60)
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %65 = getelementptr inbounds %struct.anon, ptr %38, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !26
  tail call void @print_gimple_stmt(ptr noundef %64, ptr noundef %66, i32 noundef 0, i32 noundef 2) #15
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !11
  tail call fastcc void @dump_histogram_value(ptr noundef %67, ptr noundef nonnull %38) #16
  br label %68

68:                                               ; preds = %59, %62
  %69 = add i32 %37, 1
  %70 = load ptr, ptr %0, align 8, !tbaa !11
  %71 = call fastcc i32 @VEC_histogram_value_base_iterate(ptr noundef %70, i32 noundef %69, ptr noundef nonnull %3) #16, !range !56
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %36, !llvm.loop !58

73:                                               ; preds = %68, %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_value_profile_transformations() unnamed_addr #0 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #17
  %4 = load ptr, ptr @cfun, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  %7 = load ptr, ptr %6, align 8, !tbaa !32
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %76, label %24

13:                                               ; preds = %67, %24
  %14 = phi i8 [ %26, %24 ], [ %68, %67 ]
  %15 = phi ptr [ %25, %24 ], [ %69, %67 ]
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = load ptr, ptr @cfun, align 8, !tbaa !11
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !31
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !36
  %23 = icmp eq ptr %17, %22
  br i1 %23, label %72, label %24, !llvm.loop !59

24:                                               ; preds = %0, %13
  %25 = phi ptr [ %17, %13 ], [ %9, %0 ]
  %26 = phi i8 [ %14, %13 ], [ 0, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %25) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  %27 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !38
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %13

29:                                               ; preds = %24, %67
  %30 = phi ptr [ %69, %67 ], [ %25, %24 ]
  %31 = phi i8 [ %68, %67 ], [ %26, %24 ]
  %32 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16
  %33 = load ptr, ptr @cfun, align 8, !tbaa !11
  %34 = call ptr @gimple_histogram_value(ptr noundef %33, ptr noundef %32) #16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %67, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = call i64 @fwrite(ptr nonnull @.str.23, i64 31, i64 1, ptr nonnull %37)
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !11
  call void @print_gimple_stmt(ptr noundef %41, ptr noundef %32, i32 noundef 0, i32 noundef 2) #15
  %42 = load ptr, ptr @cfun, align 8, !tbaa !11
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !11
  call void @dump_histograms_for_stmt(ptr noundef %42, ptr noundef %43, ptr noundef %32) #16
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i32, ptr @flag_value_profile_transformations, align 4, !tbaa !48
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %67, label %47

47:                                               ; preds = %44
  %48 = call fastcc zeroext i8 @gimple_mod_subtract_transform(ptr noundef nonnull %1) #16, !range !38
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = call fastcc zeroext i8 @gimple_divmod_fixed_value_transform(ptr noundef nonnull %1) #16, !range !38
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = call fastcc zeroext i8 @gimple_mod_pow2_value_transform(ptr noundef nonnull %1) #16, !range !38
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = call fastcc zeroext i8 @gimple_stringops_transform(ptr noundef nonnull %1) #16, !range !38
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = call fastcc zeroext i8 @gimple_ic_transform(ptr noundef %32) #16, !range !38
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %59, %56, %53, %50, %47
  %63 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16
  %64 = call fastcc ptr @gimple_bb(ptr noundef %63) #16
  %65 = icmp eq ptr %30, %64
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %63) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %67

67:                                               ; preds = %44, %59, %66, %62, %29
  %68 = phi i8 [ %31, %29 ], [ 1, %66 ], [ 1, %62 ], [ %31, %59 ], [ %31, %44 ]
  %69 = phi ptr [ %30, %29 ], [ %64, %66 ], [ %30, %62 ], [ %30, %59 ], [ %30, %44 ]
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  %70 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !38
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %29, label %13, !llvm.loop !61

72:                                               ; preds = %13
  %73 = icmp eq i8 %14, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %72
  %75 = call i32 @counts_to_freqs() #15
  br label %76

76:                                               ; preds = %0, %74, %72
  %77 = phi i8 [ %14, %74 ], [ 0, %72 ], [ 0, %0 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #17
  ret i8 %77
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_values_to_profile(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr @flag_value_profile_transformations, align 4, !tbaa !48
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @gimple_divmod_values_to_profile(ptr noundef %0, ptr noundef %1) #16
  tail call fastcc void @gimple_stringops_values_to_profile(ptr noundef %0, ptr noundef %1) #16
  tail call fastcc void @gimple_indirect_call_to_profile(ptr noundef %0, ptr noundef %1) #16
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_histogram_value_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !62
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_histogram_value_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !11
  ret i32 %14
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_divmod_values_to_profile(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !64
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %5, label %40

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #16
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 65535
  %12 = add nsw i32 %11, -6
  %13 = icmp ult i32 %12, 3
  br i1 %13, label %14, label %40

14:                                               ; preds = %5
  %15 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !65
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %40 [
    i16 67, label %17
    i16 71, label %17
  ]

17:                                               ; preds = %14, %14
  %18 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #16
  %19 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  tail call fastcc void @VEC_histogram_value_heap_reserve(ptr noundef %1, i32 noundef 3) #16
  %20 = tail call zeroext i8 @is_gimple_reg(ptr noundef %18) #15
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %1, align 8, !tbaa !11
  %24 = tail call fastcc ptr @gimple_alloc_histogram_value(i32 noundef 2, ptr noundef %0, ptr noundef %18) #16
  tail call fastcc void @VEC_histogram_value_base_quick_push(ptr noundef %23, ptr noundef %24) #16
  br label %25

25:                                               ; preds = %22, %17
  %26 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !65
  %27 = icmp eq i32 %26, 71
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i64, ptr %8, align 8
  %30 = and i64 %29, 2097152
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %1, align 8, !tbaa !11
  %34 = tail call fastcc ptr @gimple_alloc_histogram_value(i32 noundef 1, ptr noundef %0, ptr noundef %18) #16
  tail call fastcc void @VEC_histogram_value_base_quick_push(ptr noundef %33, ptr noundef %34) #16
  %35 = tail call ptr @build2_stat(i32 noundef 67, ptr noundef nonnull %8, ptr noundef %19, ptr noundef %18) #15
  %36 = tail call fastcc ptr @gimple_alloc_histogram_value(i32 noundef 0, ptr noundef %0, ptr noundef %35) #16
  %37 = getelementptr inbounds %struct.histogram_value_t, ptr %36, i64 0, i32 3
  store i32 0, ptr %37, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct.histogram_value_t, ptr %36, i64 0, i32 3, i32 0, i32 1
  store i32 2, ptr %38, align 4, !tbaa !21
  %39 = load ptr, ptr %1, align 8, !tbaa !11
  tail call fastcc void @VEC_histogram_value_base_quick_push(ptr noundef %39, ptr noundef %36) #16
  br label %40

40:                                               ; preds = %5, %14, %25, %28, %32, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_stringops_values_to_profile(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !64
  %5 = icmp eq i32 %4, 8
  br i1 %5, label %6, label %27

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %6
  %10 = call fastcc zeroext i8 @interesting_stringop_to_profile_p(ptr noundef nonnull %7, ptr noundef %0, ptr noundef nonnull %3) #16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #16
  %14 = load i32, ptr %3, align 4, !tbaa !48
  %15 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %14) #16
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 23
  br i1 %18, label %27, label %19

19:                                               ; preds = %12
  %20 = tail call fastcc ptr @gimple_alloc_histogram_value(i32 noundef 2, ptr noundef %0, ptr noundef nonnull %15) #16
  tail call fastcc void @VEC_histogram_value_heap_safe_push(ptr noundef %1, ptr noundef %20) #16
  %21 = tail call fastcc ptr @gimple_alloc_histogram_value(i32 noundef 5, ptr noundef %0, ptr noundef nonnull %15) #16
  tail call fastcc void @VEC_histogram_value_heap_safe_push(ptr noundef %1, ptr noundef %21) #16
  %22 = load i64, ptr %15, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 23
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = tail call fastcc ptr @gimple_alloc_histogram_value(i32 noundef 6, ptr noundef %0, ptr noundef %13) #16
  tail call fastcc void @VEC_histogram_value_heap_safe_push(ptr noundef %1, ptr noundef %26) #16
  br label %27

27:                                               ; preds = %12, %19, %25, %9, %6, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_indirect_call_to_profile(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !64
  %4 = icmp eq i32 %3, 8
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #16
  tail call fastcc void @VEC_histogram_value_heap_reserve(ptr noundef %1, i32 noundef 3) #16
  %10 = load ptr, ptr %1, align 8, !tbaa !11
  %11 = tail call fastcc ptr @gimple_alloc_histogram_value(i32 noundef 4, ptr noundef %0, ptr noundef %9) #16
  tail call fastcc void @VEC_histogram_value_base_quick_push(ptr noundef %10, ptr noundef %11) #16
  br label %12

12:                                               ; preds = %2, %5, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #16, !range !65
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #16, !range !64
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #16
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_histogram_value_heap_reserve(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  %4 = tail call fastcc i32 @VEC_histogram_value_base_space(ptr noundef %3, i32 noundef %1) #16, !range !56
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @vec_heap_p_reserve(ptr noundef %3, i32 noundef %1) #15
  store ptr %7, ptr %0, align 8, !tbaa !11
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_histogram_value_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  %3 = load i32, ptr %0, align 8, !tbaa !62
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !62
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_histogram_value_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !11
  ret void
}

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !38
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #16
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !64
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #16
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !22
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #15
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !64
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #16
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #12 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !48
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !64
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ]

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1446, ptr noundef nonnull @.str.3) #15
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #12 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !21
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !21
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_histogram_value_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_histogram_value_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !66
  %7 = load i32, ptr %0, align 8, !tbaa !62
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %2, %4
  %12 = phi i32 [ %10, %4 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #16
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @interesting_stringop_to_profile_p(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
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
  store i32 2, ptr %2, align 4, !tbaa !48
  %8 = tail call zeroext i8 (ptr, ...) @validate_gimple_arglist(ptr noundef %1, i32 noundef 10, i32 noundef 10, i32 noundef 8, i32 noundef 19) #15
  br label %13

9:                                                ; preds = %3
  store i32 2, ptr %2, align 4, !tbaa !48
  %10 = tail call zeroext i8 (ptr, ...) @validate_gimple_arglist(ptr noundef %1, i32 noundef 10, i32 noundef 8, i32 noundef 8, i32 noundef 19) #15
  br label %13

11:                                               ; preds = %3
  store i32 1, ptr %2, align 4, !tbaa !48
  %12 = tail call zeroext i8 (ptr, ...) @validate_gimple_arglist(ptr noundef %1, i32 noundef 10, i32 noundef 8, i32 noundef 19) #15
  br label %13

13:                                               ; preds = %3, %11, %9, %7
  %14 = phi i8 [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ 0, %3 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #16
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_histogram_value_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_histogram_value_heap_reserve(ptr noundef %0, i32 noundef 1) #16
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  tail call fastcc void @VEC_histogram_value_base_quick_push(ptr noundef %3, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @validate_gimple_arglist(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @gimple_mod_subtract_transform(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %5 = tail call fastcc i32 @gimple_code(ptr noundef %4) #16, !range !64
  %6 = icmp eq i32 %5, 6
  br i1 %6, label %7, label %130

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %4) #16
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -6
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %16, label %130

16:                                               ; preds = %7
  %17 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %4) #16, !range !65
  %18 = icmp eq i32 %17, 71
  br i1 %18, label %19, label %130

19:                                               ; preds = %16
  %20 = load i64, ptr %10, align 8
  %21 = and i64 %20, 2097152
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %130, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @cfun, align 8, !tbaa !11
  %25 = tail call ptr @gimple_histogram_value_of_type(ptr noundef %24, ptr noundef %4, i32 noundef 0) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %130, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.histogram_value_t, ptr %25, i64 0, i32 3, i32 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !21
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.anon, ptr %25, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !17
  br i1 %30, label %43, label %33

33:                                               ; preds = %27
  %34 = zext i32 %29 to i64
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i64 [ 0, %33 ], [ %41, %35 ]
  %37 = phi i64 [ 0, %33 ], [ %40, %35 ]
  %38 = getelementptr inbounds i64, ptr %32, i64 %36
  %39 = load i64, ptr %38, align 8, !tbaa !22
  %40 = add nsw i64 %37, %39
  %41 = add nuw nsw i64 %36, 1
  %42 = icmp eq i64 %41, %34
  br i1 %42, label %43, label %35, !llvm.loop !67

43:                                               ; preds = %35, %27
  %44 = phi i64 [ 0, %27 ], [ %40, %35 ]
  %45 = getelementptr inbounds %struct.anon, ptr %25, i64 0, i32 2
  %46 = zext i32 %29 to i64
  %47 = getelementptr inbounds i64, ptr %32, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !22
  %49 = add i32 %29, 1
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i64, ptr %32, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !22
  %53 = add nsw i64 %52, %48
  %54 = add nsw i64 %53, %44
  store i64 %54, ptr %2, align 8, !tbaa !22
  %55 = load i64, ptr %32, align 8, !tbaa !22
  store i64 %55, ptr %3, align 8, !tbaa !22
  %56 = getelementptr inbounds i64, ptr %32, i64 1
  %57 = load i64, ptr %56, align 8, !tbaa !22
  %58 = tail call fastcc ptr @gimple_bb(ptr noundef %4) #16
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 8
  %60 = load i64, ptr %59, align 8, !tbaa !68
  %61 = call fastcc zeroext i8 @check_counter(ptr noundef %4, ptr noundef nonnull @.str.24, ptr noundef nonnull %3, ptr noundef nonnull %2, i64 noundef %60) #16, !range !38
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %43
  %64 = load ptr, ptr @cfun, align 8, !tbaa !11
  tail call void @gimple_remove_histogram_value(ptr noundef %64, ptr noundef %4, ptr noundef nonnull %25) #16
  br label %130

65:                                               ; preds = %43
  %66 = load i32, ptr @flag_profile_correction, align 4, !tbaa !48
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load i64, ptr %3, align 8, !tbaa !22
  %70 = add nsw i64 %69, %57
  %71 = load i64, ptr %2, align 8, !tbaa !22
  %72 = tail call i64 @llvm.smax.i64(i64 %70, i64 %71)
  br label %79

73:                                               ; preds = %65
  %74 = load i64, ptr %2, align 8, !tbaa !22
  %75 = load i64, ptr %3, align 8, !tbaa !22
  %76 = add nsw i64 %75, %57
  %77 = icmp sgt i64 %76, %74
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1007, ptr noundef nonnull @.str.3) #15
  br label %79

79:                                               ; preds = %68, %73, %78
  %80 = phi i64 [ %72, %68 ], [ %74, %73 ], [ %74, %78 ]
  %81 = phi i64 [ %69, %68 ], [ %75, %73 ], [ %75, %78 ]
  %82 = load i32, ptr %28, align 4, !tbaa !21
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %100, label %84

84:                                               ; preds = %79
  %85 = load ptr, ptr %45, align 8, !tbaa !17
  %86 = zext i32 %82 to i64
  br label %87

87:                                               ; preds = %84, %95
  %88 = phi i64 [ 0, %84 ], [ %96, %95 ]
  %89 = phi i64 [ 0, %84 ], [ %92, %95 ]
  %90 = getelementptr inbounds i64, ptr %85, i64 %88
  %91 = load i64, ptr %90, align 8, !tbaa !22
  %92 = add nsw i64 %91, %89
  %93 = shl nsw i64 %92, 1
  %94 = icmp slt i64 %93, %80
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = add nuw nsw i64 %88, 1
  %97 = icmp eq i64 %96, %86
  br i1 %97, label %100, label %87, !llvm.loop !69

98:                                               ; preds = %87
  %99 = trunc i64 %88 to i32
  br label %100

100:                                              ; preds = %95, %98, %79
  %101 = phi i32 [ 0, %79 ], [ %99, %98 ], [ %82, %95 ]
  %102 = icmp eq i32 %101, %29
  br i1 %102, label %130, label %103

103:                                              ; preds = %100
  %104 = tail call fastcc ptr @gimple_bb(ptr noundef %4) #16
  %105 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef %104) #15
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %130

107:                                              ; preds = %103
  %108 = load ptr, ptr @cfun, align 8, !tbaa !11
  tail call void @gimple_remove_histogram_value(ptr noundef %108, ptr noundef %4, ptr noundef nonnull %25) #16
  %109 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 36, i64 1, ptr nonnull %109)
  %113 = load ptr, ptr @dump_file, align 8, !tbaa !11
  tail call void @print_gimple_stmt(ptr noundef %113, ptr noundef %4, i32 noundef 0, i32 noundef 2) #15
  br label %114

114:                                              ; preds = %111, %107
  %115 = icmp sgt i64 %80, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %114
  %117 = mul nsw i64 %81, 10000
  %118 = lshr i64 %80, 1
  %119 = add nsw i64 %117, %118
  %120 = sdiv i64 %119, %80
  %121 = mul nsw i64 %57, 10000
  %122 = add nsw i64 %118, %121
  %123 = sdiv i64 %122, %80
  %124 = trunc i64 %120 to i32
  %125 = trunc i64 %123 to i32
  br label %126

126:                                              ; preds = %114, %116
  %127 = phi i32 [ %124, %116 ], [ 0, %114 ]
  %128 = phi i32 [ %125, %116 ], [ 0, %114 ]
  %129 = tail call fastcc ptr @gimple_mod_subtract(ptr noundef %4, i32 noundef %127, i32 noundef %128, i32 noundef %101, i64 noundef %81, i64 noundef %57, i64 noundef %80) #16
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef %0, ptr noundef %129) #15
  br label %130

130:                                              ; preds = %7, %100, %103, %23, %16, %19, %1, %126, %63
  %131 = phi i8 [ 0, %63 ], [ 1, %126 ], [ 0, %1 ], [ 0, %7 ], [ 0, %19 ], [ 0, %16 ], [ 0, %23 ], [ 0, %103 ], [ 0, %100 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret i8 %131
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @gimple_divmod_fixed_value_transform(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %5 = tail call fastcc i32 @gimple_code(ptr noundef %4) #16, !range !64
  %6 = icmp eq i32 %5, 6
  br i1 %6, label %7, label %90

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %4) #16
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 6
  br i1 %13, label %28, label %14

14:                                               ; preds = %7
  %15 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %4) #16
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !21
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 7
  br i1 %20, label %28, label %21

21:                                               ; preds = %14
  %22 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %4) #16
  %23 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !21
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 8
  br i1 %27, label %28, label %90

28:                                               ; preds = %21, %14, %7
  %29 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %4) #16, !range !65
  %30 = and i32 %29, 65531
  %31 = icmp eq i32 %30, 67
  br i1 %31, label %32, label %90

32:                                               ; preds = %28
  %33 = load ptr, ptr @cfun, align 8, !tbaa !11
  %34 = tail call ptr @gimple_histogram_value_of_type(ptr noundef %33, ptr noundef %4, i32 noundef 2) #16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %90, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %34, align 8, !tbaa !29
  %38 = getelementptr inbounds %struct.anon, ptr %34, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !17
  %40 = load i64, ptr %39, align 8, !tbaa !22
  %41 = getelementptr inbounds i64, ptr %39, i64 1
  %42 = load i64, ptr %41, align 8, !tbaa !22
  store i64 %42, ptr %2, align 8, !tbaa !22
  %43 = getelementptr inbounds i64, ptr %39, i64 2
  %44 = load i64, ptr %43, align 8, !tbaa !22
  store i64 %44, ptr %3, align 8, !tbaa !22
  %45 = load ptr, ptr @cfun, align 8, !tbaa !11
  tail call void @gimple_remove_histogram_value(ptr noundef %45, ptr noundef %4, ptr noundef nonnull %34) #16
  %46 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %4) #16
  %47 = tail call i32 @simple_cst_equal(ptr noundef %46, ptr noundef %37) #15
  %48 = icmp ne i32 %47, 1
  %49 = shl nsw i64 %42, 1
  %50 = icmp slt i64 %49, %44
  %51 = select i1 %48, i1 true, i1 %50
  br i1 %51, label %90, label %52

52:                                               ; preds = %36
  %53 = tail call fastcc ptr @gimple_bb(ptr noundef %4) #16
  %54 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef %53) #15
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %90

56:                                               ; preds = %52
  %57 = tail call fastcc ptr @gimple_bb(ptr noundef %4) #16
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 8
  %59 = load i64, ptr %58, align 8, !tbaa !68
  %60 = call fastcc zeroext i8 @check_counter(ptr noundef %4, ptr noundef nonnull @.str.29, ptr noundef nonnull %2, ptr noundef nonnull %3, i64 noundef %59) #16, !range !38
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %90

62:                                               ; preds = %56
  %63 = load i64, ptr %3, align 8, !tbaa !22
  %64 = icmp sgt i64 %63, 0
  %65 = load i64, ptr %2, align 8, !tbaa !22
  br i1 %64, label %66, label %72

66:                                               ; preds = %62
  %67 = mul nsw i64 %65, 10000
  %68 = lshr i64 %63, 1
  %69 = add nsw i64 %67, %68
  %70 = sdiv i64 %69, %63
  %71 = trunc i64 %70 to i32
  br label %72

72:                                               ; preds = %62, %66
  %73 = phi i32 [ %71, %66 ], [ 0, %62 ]
  %74 = tail call ptr @get_gcov_type() #15
  %75 = ashr i64 %40, 63
  %76 = tail call ptr @build_int_cst_wide(ptr noundef %74, i64 noundef %40, i64 noundef %75) #15
  %77 = tail call fastcc ptr @gimple_divmod_fixed_value(ptr noundef %4, ptr noundef %76, i32 noundef %73, i64 noundef %65, i64 noundef %63) #16
  %78 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %79 = icmp eq ptr %78, null
  br i1 %79, label %89, label %80

80:                                               ; preds = %72
  %81 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 20, i64 1, ptr nonnull %78)
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !11
  tail call void @print_generic_expr(ptr noundef %82, ptr noundef %37, i32 noundef 2) #15
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %84 = tail call i32 @fputc(i32 61, ptr %83)
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !11
  tail call void @print_generic_expr(ptr noundef %85, ptr noundef %76, i32 noundef 2) #15
  %86 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %87 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 24, i64 1, ptr %86)
  %88 = load ptr, ptr @dump_file, align 8, !tbaa !11
  tail call void @print_gimple_stmt(ptr noundef %88, ptr noundef %4, i32 noundef 0, i32 noundef 2) #15
  br label %89

89:                                               ; preds = %80, %72
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef %0, ptr noundef %77) #15
  br label %90

90:                                               ; preds = %56, %36, %52, %32, %28, %21, %1, %89
  %91 = phi i8 [ 1, %89 ], [ 0, %1 ], [ 0, %21 ], [ 0, %28 ], [ 0, %32 ], [ 0, %52 ], [ 0, %36 ], [ 0, %56 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret i8 %91
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @gimple_mod_pow2_value_transform(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %5 = tail call fastcc i32 @gimple_code(ptr noundef %4) #16, !range !64
  %6 = icmp eq i32 %5, 6
  br i1 %6, label %7, label %70

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %4) #16
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -6
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %16, label %70

16:                                               ; preds = %7
  %17 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %4) #16, !range !65
  %18 = icmp eq i32 %17, 71
  br i1 %18, label %19, label %70

19:                                               ; preds = %16
  %20 = load i64, ptr %10, align 8
  %21 = and i64 %20, 2097152
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %70, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @cfun, align 8, !tbaa !11
  %25 = tail call ptr @gimple_histogram_value_of_type(ptr noundef %24, ptr noundef %4, i32 noundef 1) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %70, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %25, align 8, !tbaa !29
  %29 = getelementptr inbounds %struct.anon, ptr %25, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !17
  %31 = load i64, ptr %30, align 8, !tbaa !22
  %32 = getelementptr inbounds i64, ptr %30, i64 1
  %33 = load i64, ptr %32, align 8, !tbaa !22
  store i64 %33, ptr %2, align 8, !tbaa !22
  %34 = load ptr, ptr @cfun, align 8, !tbaa !11
  tail call void @gimple_remove_histogram_value(ptr noundef %34, ptr noundef %4, ptr noundef nonnull %25) #16
  %35 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %4) #16
  %36 = tail call i32 @simple_cst_equal(ptr noundef %35, ptr noundef %28) #15
  %37 = icmp ne i32 %36, 1
  %38 = icmp slt i64 %33, %31
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %70, label %40

40:                                               ; preds = %27
  %41 = tail call fastcc ptr @gimple_bb(ptr noundef %4) #16
  %42 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef %41) #15
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 38, i64 1, ptr nonnull %45)
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !11
  tail call void @print_gimple_stmt(ptr noundef %49, ptr noundef %4, i32 noundef 0, i32 noundef 2) #15
  br label %50

50:                                               ; preds = %47, %44
  %51 = add nsw i64 %33, %31
  store i64 %51, ptr %3, align 8, !tbaa !22
  %52 = tail call fastcc ptr @gimple_bb(ptr noundef %4) #16
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 8
  %54 = load i64, ptr %53, align 8, !tbaa !68
  %55 = call fastcc zeroext i8 @check_counter(ptr noundef %4, ptr noundef nonnull @.str.34, ptr noundef nonnull %2, ptr noundef nonnull %3, i64 noundef %54) #16, !range !38
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %50
  %58 = load i64, ptr %3, align 8, !tbaa !22
  %59 = icmp sgt i64 %58, 0
  %60 = load i64, ptr %2, align 8, !tbaa !22
  br i1 %59, label %61, label %67

61:                                               ; preds = %57
  %62 = mul nsw i64 %60, 10000
  %63 = lshr i64 %58, 1
  %64 = add nsw i64 %62, %63
  %65 = sdiv i64 %64, %58
  %66 = trunc i64 %65 to i32
  br label %67

67:                                               ; preds = %57, %61
  %68 = phi i32 [ %66, %61 ], [ 0, %57 ]
  %69 = tail call fastcc ptr @gimple_mod_pow2(ptr noundef %4, i32 noundef %68, i64 noundef %60, i64 noundef %58) #16
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef %0, ptr noundef %69) #15
  br label %70

70:                                               ; preds = %7, %50, %27, %40, %23, %16, %19, %1, %67
  %71 = phi i8 [ 1, %67 ], [ 0, %1 ], [ 0, %7 ], [ 0, %19 ], [ 0, %16 ], [ 0, %23 ], [ 0, %40 ], [ 0, %27 ], [ 0, %50 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret i8 %71
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @gimple_stringops_transform(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  %6 = tail call fastcc i32 @gimple_code(ptr noundef %5) #16, !range !64
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %8, label %98

8:                                                ; preds = %1
  %9 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %5) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %98, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.tree_function_decl, ptr %9, i64 0, i32 5
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 2047
  %15 = call fastcc zeroext i8 @interesting_stringop_to_profile_p(ptr noundef nonnull %9, ptr noundef %5, ptr noundef nonnull %4) #16
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %98, label %17

17:                                               ; preds = %11
  %18 = load i32, ptr %4, align 4, !tbaa !48
  %19 = tail call fastcc ptr @gimple_call_arg(ptr noundef %5, i32 noundef %18) #16
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 23
  br i1 %22, label %98, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr @cfun, align 8, !tbaa !11
  %25 = tail call ptr @gimple_histogram_value_of_type(ptr noundef %24, ptr noundef %5, i32 noundef 2) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %98, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.anon, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !17
  %30 = load i64, ptr %29, align 8, !tbaa !22
  %31 = getelementptr inbounds i64, ptr %29, i64 1
  %32 = load i64, ptr %31, align 8, !tbaa !22
  store i64 %32, ptr %2, align 8, !tbaa !22
  %33 = getelementptr inbounds i64, ptr %29, i64 2
  %34 = load i64, ptr %33, align 8, !tbaa !22
  store i64 %34, ptr %3, align 8, !tbaa !22
  %35 = load ptr, ptr @cfun, align 8, !tbaa !11
  tail call void @gimple_remove_histogram_value(ptr noundef %35, ptr noundef %5, ptr noundef nonnull %25) #16
  %36 = mul nsw i64 %32, 6
  %37 = sdiv i64 %36, 5
  %38 = icmp slt i64 %37, %34
  br i1 %38, label %98, label %39

39:                                               ; preds = %27
  %40 = tail call fastcc ptr @gimple_bb(ptr noundef %5) #16
  %41 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef %40) #15
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %98

43:                                               ; preds = %39
  %44 = tail call fastcc ptr @gimple_bb(ptr noundef %5) #16
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %44, i64 0, i32 8
  %46 = load i64, ptr %45, align 8, !tbaa !68
  %47 = call fastcc zeroext i8 @check_counter(ptr noundef %5, ptr noundef nonnull @.str.29, ptr noundef nonnull %2, ptr noundef nonnull %3, i64 noundef %46) #16, !range !38
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %98

49:                                               ; preds = %43
  %50 = load i64, ptr %3, align 8, !tbaa !22
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i64, ptr %2, align 8, !tbaa !22
  %54 = mul nsw i64 %53, 10000
  %55 = lshr i64 %50, 1
  %56 = add nsw i64 %54, %55
  %57 = sdiv i64 %56, %50
  %58 = trunc i64 %57 to i32
  br label %59

59:                                               ; preds = %49, %52
  %60 = phi i32 [ %58, %52 ], [ 0, %49 ]
  %61 = tail call fastcc ptr @gimple_call_arg(ptr noundef %5, i32 noundef 0) #16
  %62 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !48
  %63 = and i32 %62, 32
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i32 128, i32 256
  %66 = tail call i32 @get_pointer_alignment(ptr noundef %61, i32 noundef %65) #15
  switch i32 %14, label %85 [
    i32 330, label %67
    i32 332, label %67
    i32 333, label %77
    i32 326, label %81
  ]

67:                                               ; preds = %59, %59
  %68 = tail call fastcc ptr @gimple_call_arg(ptr noundef %5, i32 noundef 1) #16
  %69 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !48
  %70 = and i32 %69, 32
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i32 128, i32 256
  %73 = tail call i32 @get_pointer_alignment(ptr noundef %68, i32 noundef %72) #15
  %74 = tail call i32 @llvm.umin.i32(i32 %66, i32 %73)
  %75 = tail call i32 @can_move_by_pieces(i64 noundef %30, i32 noundef %74) #15
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %98, label %86

77:                                               ; preds = %59
  %78 = tail call fastcc ptr @gimple_call_arg(ptr noundef %5, i32 noundef 1) #16
  %79 = tail call i32 @can_store_by_pieces(i64 noundef %30, ptr noundef nonnull @builtin_memset_read_str, ptr noundef %78, i32 noundef %66, i8 noundef zeroext 1) #15
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %98, label %86

81:                                               ; preds = %59
  %82 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !11
  %83 = tail call i32 @can_store_by_pieces(i64 noundef %30, ptr noundef nonnull @builtin_memset_read_str, ptr noundef %82, i32 noundef %66, i8 noundef zeroext 1) #15
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %98, label %86

85:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1433, ptr noundef nonnull @.str.3) #15
  br label %86

86:                                               ; preds = %81, %77, %67, %85
  %87 = tail call ptr @get_gcov_type() #15
  %88 = ashr i64 %30, 63
  %89 = tail call ptr @build_int_cst_wide(ptr noundef %87, i64 noundef %30, i64 noundef %88) #15
  %90 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %91 = icmp eq ptr %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %86
  %93 = trunc i64 %30 to i32
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %90, ptr noundef nonnull @.str.35, i32 noundef %93) #16
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !11
  tail call void @print_gimple_stmt(ptr noundef %95, ptr noundef %5, i32 noundef 0, i32 noundef 2) #15
  br label %96

96:                                               ; preds = %92, %86
  %97 = load i64, ptr %2, align 8, !tbaa !22
  tail call fastcc void @gimple_stringop_fixed_value(ptr noundef %5, ptr noundef %89, i32 noundef %60, i64 noundef %97, i64 noundef %50) #16
  br label %98

98:                                               ; preds = %81, %77, %67, %43, %27, %39, %23, %17, %11, %8, %1, %96
  %99 = phi i8 [ 1, %96 ], [ 0, %1 ], [ 0, %8 ], [ 0, %11 ], [ 0, %17 ], [ 0, %23 ], [ 0, %39 ], [ 0, %27 ], [ 0, %43 ], [ 0, %67 ], [ 0, %77 ], [ 0, %81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret i8 %99
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @gimple_ic_transform(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %5 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !64
  %6 = icmp eq i32 %5, 8
  br i1 %6, label %7, label %74

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #16
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 29
  br i1 %11, label %74, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @cfun, align 8, !tbaa !11
  %14 = tail call ptr @gimple_histogram_value_of_type(ptr noundef %13, ptr noundef %0, i32 noundef 4) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %74, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.anon, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !17
  %19 = load i64, ptr %18, align 8, !tbaa !22
  %20 = getelementptr inbounds i64, ptr %18, i64 1
  %21 = load i64, ptr %20, align 8, !tbaa !22
  store i64 %21, ptr %2, align 8, !tbaa !22
  %22 = getelementptr inbounds i64, ptr %18, i64 2
  %23 = load i64, ptr %22, align 8, !tbaa !22
  store i64 %23, ptr %3, align 8, !tbaa !22
  %24 = load ptr, ptr @cfun, align 8, !tbaa !11
  tail call void @gimple_remove_histogram_value(ptr noundef %24, ptr noundef %0, ptr noundef nonnull %14) #16
  %25 = shl nsw i64 %21, 2
  %26 = mul nsw i64 %23, 3
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %74

28:                                               ; preds = %16
  %29 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #16
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 8
  %31 = load i64, ptr %30, align 8, !tbaa !68
  store i64 %31, ptr %4, align 8, !tbaa !22
  %32 = call fastcc zeroext i8 @check_counter(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef nonnull %3, ptr noundef nonnull %4, i64 noundef %31) #16, !range !38
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %28
  %35 = load i64, ptr %3, align 8, !tbaa !22
  %36 = call fastcc zeroext i8 @check_counter(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef nonnull %2, ptr noundef nonnull %3, i64 noundef %35) #16, !range !38
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %34
  %39 = load i64, ptr %3, align 8, !tbaa !22
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i64, ptr %2, align 8, !tbaa !22
  %43 = mul nsw i64 %42, 10000
  %44 = lshr i64 %39, 1
  %45 = add nsw i64 %43, %44
  %46 = sdiv i64 %45, %39
  %47 = trunc i64 %46 to i32
  br label %48

48:                                               ; preds = %38, %41
  %49 = phi i32 [ %47, %41 ], [ 0, %38 ]
  %50 = trunc i64 %19 to i32
  %51 = tail call fastcc ptr @find_func_by_pid(i32 noundef %50) #16
  %52 = icmp eq ptr %51, null
  br i1 %52, label %74, label %53

53:                                               ; preds = %48
  %54 = load i64, ptr %2, align 8, !tbaa !22
  %55 = tail call fastcc ptr @gimple_ic(ptr noundef %0, ptr noundef nonnull %51, i32 noundef %49, i64 noundef %54, i64 noundef %39) #16
  %56 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %57 = icmp eq ptr %56, null
  br i1 %57, label %74, label %58

58:                                               ; preds = %53
  %59 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 29, i64 1, ptr nonnull %56)
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %61 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #16
  tail call void @print_generic_expr(ptr noundef %60, ptr noundef %61, i32 noundef 2) #15
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %63 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 3, i64 1, ptr %62)
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %65 = load ptr, ptr %51, align 8, !tbaa !70
  tail call void @print_generic_expr(ptr noundef %64, ptr noundef %65, i32 noundef 2) #15
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %67 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 24, i64 1, ptr %66)
  %68 = load ptr, ptr @dump_file, align 8, !tbaa !11
  tail call void @print_gimple_stmt(ptr noundef %68, ptr noundef %0, i32 noundef 0, i32 noundef 2) #15
  %69 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %70 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 4, i64 1, ptr %69)
  %71 = load ptr, ptr @dump_file, align 8, !tbaa !11
  tail call void @print_gimple_stmt(ptr noundef %71, ptr noundef %55, i32 noundef 0, i32 noundef 2) #15
  %72 = load ptr, ptr @dump_file, align 8, !tbaa !11
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.40, i64 noundef %54, i64 noundef %39) #16
  br label %74

74:                                               ; preds = %53, %58, %48, %28, %34, %16, %12, %7, %1
  %75 = phi i8 [ 0, %1 ], [ 0, %7 ], [ 0, %12 ], [ 0, %16 ], [ 0, %34 ], [ 0, %28 ], [ 0, %48 ], [ 1, %58 ], [ 1, %53 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret i8 %75
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !21
  ret ptr %3
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @counts_to_freqs() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @check_counter(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, i64 noundef %4) unnamed_addr #0 {
  %6 = load i64, ptr %3, align 8, !tbaa !22
  %7 = icmp eq i64 %6, %4
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i64, ptr %2, align 8, !tbaa !22
  %10 = icmp sgt i64 %9, %4
  br i1 %10, label %11, label %30

11:                                               ; preds = %8, %5
  %12 = icmp eq ptr %0, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = tail call fastcc i32 @gimple_location(ptr noundef nonnull %0) #16
  br label %19

15:                                               ; preds = %11
  %16 = load ptr, ptr @current_function_decl, align 8, !tbaa !11
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !21
  br label %19

19:                                               ; preds = %15, %13
  %20 = phi i32 [ %14, %13 ], [ %18, %15 ]
  %21 = load i32, ptr @flag_profile_correction, align 4, !tbaa !48
  %22 = icmp eq i32 %21, 0
  %23 = trunc i64 %6 to i32
  %24 = trunc i64 %4 to i32
  br i1 %22, label %29, label %25

25:                                               ; preds = %19
  tail call void (i32, ptr, ...) @inform(i32 noundef %20, ptr noundef nonnull @.str.26, ptr noundef %1, i32 noundef %23, i32 noundef %24) #15
  store i64 %4, ptr %3, align 8, !tbaa !22
  %26 = load i64, ptr %2, align 8, !tbaa !22
  %27 = icmp sgt i64 %26, %4
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  store i64 %4, ptr %2, align 8, !tbaa !22
  br label %30

29:                                               ; preds = %19
  tail call void (i32, ptr, ...) @error_at(i32 noundef %20, ptr noundef nonnull @.str.27, ptr noundef %1, i32 noundef %23, i32 noundef %24) #15
  br label %30

30:                                               ; preds = %8, %29, %28, %25
  %31 = phi i8 [ 1, %29 ], [ 0, %28 ], [ 0, %25 ], [ 0, %8 ]
  ret i8 %31
}

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_size_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_mod_subtract(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #17
  %9 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #16, !range !38
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !65
  %13 = icmp eq i32 %12, 71
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 873, ptr noundef nonnull @.str.3) #15
  br label %15

15:                                               ; preds = %11, %14
  %16 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #16
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  %19 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %20 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #16
  %21 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #16
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %0) #15
  %22 = call ptr @create_tmp_var(ptr noundef %18, ptr noundef nonnull @.str.28) #15
  %23 = call ptr @create_tmp_var(ptr noundef %18, ptr noundef nonnull @.str.28) #15
  %24 = call ptr @gimple_build_assign_stat(ptr noundef %22, ptr noundef %19) #15
  %25 = call ptr @gimple_build_assign_stat(ptr noundef %23, ptr noundef %20) #15
  %26 = call ptr @gimple_build_cond(i32 noundef 97, ptr noundef %22, ptr noundef %23, ptr noundef null, ptr noundef null) #15
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %24, i32 noundef 1) #15
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %25, i32 noundef 1) #15
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %26, i32 noundef 1) #15
  %27 = icmp eq i32 %3, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %15
  %29 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 64, ptr noundef %22, ptr noundef %22, ptr noundef %23) #15
  %30 = call ptr @gimple_build_cond(i32 noundef 97, ptr noundef %22, ptr noundef %23, ptr noundef null, ptr noundef null) #15
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %29, i32 noundef 1) #15
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %30, i32 noundef 1) #15
  br label %31

31:                                               ; preds = %28, %15
  %32 = phi ptr [ %30, %28 ], [ null, %15 ]
  %33 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !65
  %34 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %33, ptr noundef %22, ptr noundef %22, ptr noundef %23) #15
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %34, i32 noundef 1) #15
  %35 = call ptr @split_block(ptr noundef %21, ptr noundef %26) #15
  %36 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !78
  %38 = sub nsw i64 %6, %4
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 8
  store i64 %38, ptr %39, align 8, !tbaa !68
  br i1 %27, label %46, label %40

40:                                               ; preds = %31
  %41 = call ptr @split_block(ptr noundef nonnull %37, ptr noundef %32) #15
  %42 = getelementptr inbounds %struct.edge_def, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !78
  %44 = sub nsw i64 %38, %5
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 8
  store i64 %44, ptr %45, align 8, !tbaa !68
  br label %46

46:                                               ; preds = %40, %31
  %47 = phi ptr [ %43, %40 ], [ %37, %31 ]
  %48 = phi ptr [ %41, %40 ], [ null, %31 ]
  %49 = call ptr @split_block(ptr noundef nonnull %47, ptr noundef %34) #15
  %50 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !78
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 8
  store i64 %6, ptr %52, align 8, !tbaa !68
  %53 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 7
  %54 = load i32, ptr %53, align 8, !tbaa !80
  %55 = and i32 %54, -2050
  %56 = or disjoint i32 %55, 2048
  store i32 %56, ptr %53, align 8, !tbaa !80
  %57 = sub nsw i32 10000, %1
  %58 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 8
  store i32 %57, ptr %58, align 4, !tbaa !81
  %59 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 9
  store i64 %38, ptr %59, align 8, !tbaa !82
  %60 = call ptr @make_edge(ptr noundef %21, ptr noundef %51, i32 noundef 1024) #15
  %61 = getelementptr inbounds %struct.edge_def, ptr %60, i64 0, i32 8
  store i32 %1, ptr %61, align 4, !tbaa !81
  %62 = getelementptr inbounds %struct.edge_def, ptr %60, i64 0, i32 9
  store i64 %4, ptr %62, align 8, !tbaa !82
  br i1 %27, label %63, label %65

63:                                               ; preds = %46
  %64 = sub nsw i64 %38, %5
  br label %77

65:                                               ; preds = %46
  %66 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 7
  %67 = load i32, ptr %66, align 8, !tbaa !80
  %68 = and i32 %67, -2050
  %69 = or disjoint i32 %68, 2048
  store i32 %69, ptr %66, align 8, !tbaa !80
  %70 = sub nsw i64 %38, %5
  %71 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 9
  store i64 %70, ptr %71, align 8, !tbaa !82
  %72 = sub nsw i32 10000, %2
  %73 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 8
  store i32 %72, ptr %73, align 4, !tbaa !81
  %74 = call ptr @make_edge(ptr noundef nonnull %37, ptr noundef nonnull %51, i32 noundef 1024) #15
  %75 = getelementptr inbounds %struct.edge_def, ptr %74, i64 0, i32 8
  store i32 %2, ptr %75, align 4, !tbaa !81
  %76 = getelementptr inbounds %struct.edge_def, ptr %74, i64 0, i32 9
  store i64 %5, ptr %76, align 8, !tbaa !82
  br label %77

77:                                               ; preds = %63, %65
  %78 = phi i64 [ %64, %63 ], [ %70, %65 ]
  %79 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 8
  store i32 10000, ptr %79, align 4, !tbaa !81
  %80 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 9
  store i64 %78, ptr %80, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #17
  ret ptr %22
}

; Function Attrs: optsize
declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !21
  ret i32 %3
}

; Function Attrs: optsize
declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @error_at(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !64
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_gcov_type() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_divmod_fixed_value(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  %7 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #16, !range !38
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !65
  %11 = icmp eq i32 %10, 67
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !65
  %14 = icmp eq i32 %13, 71
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 568, ptr noundef nonnull @.str.3) #15
  br label %16

16:                                               ; preds = %9, %12, %15
  %17 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #16
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !21
  %20 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %21 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #16
  %22 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #16
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %0) #15
  %23 = call ptr @create_tmp_var(ptr noundef %19, ptr noundef nonnull @.str.28) #15
  %24 = call ptr @create_tmp_var(ptr noundef %19, ptr noundef nonnull @.str.28) #15
  %25 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %19, ptr noundef %1) #15
  %26 = call ptr @gimple_build_assign_stat(ptr noundef %23, ptr noundef %25) #15
  %27 = call ptr @gimple_build_assign_stat(ptr noundef %24, ptr noundef %21) #15
  %28 = call ptr @gimple_build_cond(i32 noundef 102, ptr noundef %24, ptr noundef %23, ptr noundef null, ptr noundef null) #15
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %26, i32 noundef 1) #15
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %27, i32 noundef 1) #15
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %28, i32 noundef 1) #15
  %29 = call ptr @create_tmp_var(ptr noundef %19, ptr noundef nonnull @.str.28) #15
  %30 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !65
  %31 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %30, ptr noundef %29, ptr noundef %20, ptr noundef %23) #15
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %31, i32 noundef 1) #15
  %32 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !65
  %33 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %32, ptr noundef %29, ptr noundef %20, ptr noundef %21) #15
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %33, i32 noundef 1) #15
  %34 = call ptr @split_block(ptr noundef %22, ptr noundef %28) #15
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !78
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 8
  store i64 %3, ptr %37, align 8, !tbaa !68
  %38 = call ptr @split_block(ptr noundef %36, ptr noundef %31) #15
  %39 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !78
  %41 = sub nsw i64 %4, %3
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 8
  store i64 %41, ptr %42, align 8, !tbaa !68
  %43 = call ptr @split_block(ptr noundef %40, ptr noundef %33) #15
  %44 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !78
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 8
  store i64 %4, ptr %46, align 8, !tbaa !68
  %47 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 7
  %48 = load i32, ptr %47, align 8, !tbaa !80
  %49 = and i32 %48, -2050
  %50 = or disjoint i32 %49, 2048
  store i32 %50, ptr %47, align 8, !tbaa !80
  %51 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 8
  store i32 %2, ptr %51, align 4, !tbaa !81
  %52 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 9
  store i64 %3, ptr %52, align 8, !tbaa !82
  %53 = call ptr @make_edge(ptr noundef %22, ptr noundef %40, i32 noundef 1024) #15
  %54 = sub nsw i32 10000, %2
  %55 = getelementptr inbounds %struct.edge_def, ptr %53, i64 0, i32 8
  store i32 %54, ptr %55, align 4, !tbaa !81
  %56 = getelementptr inbounds %struct.edge_def, ptr %53, i64 0, i32 9
  store i64 %41, ptr %56, align 8, !tbaa !82
  call void @remove_edge(ptr noundef %38) #15
  %57 = call ptr @make_edge(ptr noundef %36, ptr noundef %45, i32 noundef 1) #15
  %58 = getelementptr inbounds %struct.edge_def, ptr %57, i64 0, i32 8
  store i32 10000, ptr %58, align 4, !tbaa !81
  %59 = getelementptr inbounds %struct.edge_def, ptr %57, i64 0, i32 9
  store i64 %3, ptr %59, align 8, !tbaa !82
  %60 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 8
  store i32 10000, ptr %60, align 4, !tbaa !81
  %61 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 9
  store i64 %41, ptr %61, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  ret ptr %29
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_mod_pow2(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  %6 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #16, !range !38
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !65
  %10 = icmp eq i32 %9, 71
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 721, ptr noundef nonnull @.str.3) #15
  br label %12

12:                                               ; preds = %8, %11
  %13 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #16
  %14 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  %16 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %17 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #16
  %18 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #16
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %0) #15
  %19 = call ptr @create_tmp_var(ptr noundef %15, ptr noundef nonnull @.str.28) #15
  %20 = call ptr @create_tmp_var(ptr noundef %15, ptr noundef nonnull @.str.28) #15
  %21 = call ptr @create_tmp_var(ptr noundef %15, ptr noundef nonnull @.str.28) #15
  %22 = call ptr @build_int_cst(ptr noundef %15, i64 noundef -1) #15
  %23 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 63, ptr noundef %20, ptr noundef %17, ptr noundef %22) #15
  %24 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 89, ptr noundef %21, ptr noundef %20, ptr noundef %17) #15
  %25 = call ptr @build_int_cst(ptr noundef %15, i64 noundef 0) #15
  %26 = call ptr @gimple_build_cond(i32 noundef 102, ptr noundef %21, ptr noundef %25, ptr noundef null, ptr noundef null) #15
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %23, i32 noundef 1) #15
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %24, i32 noundef 1) #15
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %26, i32 noundef 1) #15
  %27 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 89, ptr noundef %19, ptr noundef %16, ptr noundef %20) #15
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %27, i32 noundef 1) #15
  %28 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !65
  %29 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %28, ptr noundef %19, ptr noundef %16, ptr noundef %17) #15
  call void @gsi_insert_before(ptr noundef nonnull %5, ptr noundef %29, i32 noundef 1) #15
  %30 = call ptr @split_block(ptr noundef %18, ptr noundef %26) #15
  %31 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !78
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 8
  store i64 %2, ptr %33, align 8, !tbaa !68
  %34 = call ptr @split_block(ptr noundef %32, ptr noundef %27) #15
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !78
  %37 = sub nsw i64 %3, %2
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 8
  store i64 %37, ptr %38, align 8, !tbaa !68
  %39 = call ptr @split_block(ptr noundef %36, ptr noundef %29) #15
  %40 = getelementptr inbounds %struct.edge_def, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !78
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 8
  store i64 %3, ptr %42, align 8, !tbaa !68
  %43 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !80
  %45 = and i32 %44, -2050
  %46 = or disjoint i32 %45, 2048
  store i32 %46, ptr %43, align 8, !tbaa !80
  %47 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 8
  store i32 %1, ptr %47, align 4, !tbaa !81
  %48 = getelementptr inbounds %struct.edge_def, ptr %30, i64 0, i32 9
  store i64 %2, ptr %48, align 8, !tbaa !82
  %49 = call ptr @make_edge(ptr noundef %18, ptr noundef %36, i32 noundef 1024) #15
  %50 = sub nsw i32 10000, %1
  %51 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 8
  store i32 %50, ptr %51, align 4, !tbaa !81
  %52 = getelementptr inbounds %struct.edge_def, ptr %49, i64 0, i32 9
  store i64 %37, ptr %52, align 8, !tbaa !82
  call void @remove_edge(ptr noundef %34) #15
  %53 = call ptr @make_edge(ptr noundef %32, ptr noundef %41, i32 noundef 1) #15
  %54 = getelementptr inbounds %struct.edge_def, ptr %53, i64 0, i32 8
  store i32 10000, ptr %54, align 4, !tbaa !81
  %55 = getelementptr inbounds %struct.edge_def, ptr %53, i64 0, i32 9
  store i64 %2, ptr %55, align 8, !tbaa !82
  %56 = getelementptr inbounds %struct.edge_def, ptr %39, i64 0, i32 8
  store i32 10000, ptr %56, align 4, !tbaa !81
  %57 = getelementptr inbounds %struct.edge_def, ptr %39, i64 0, i32 9
  store i64 %37, ptr %57, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  ret ptr %19
}

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @get_pointer_alignment(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @can_move_by_pieces(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @can_store_by_pieces(i64 noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @builtin_memset_read_str(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_stringop_fixed_value(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  %8 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #16
  %9 = call fastcc zeroext i8 @interesting_stringop_to_profile_p(ptr noundef %8, ptr noundef %0, ptr noundef nonnull %7) #16
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1302, ptr noundef nonnull @.str.3) #15
  br label %12

12:                                               ; preds = %11, %5
  %13 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #16
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %0) #15
  %14 = load i32, ptr %7, align 4, !tbaa !48
  %15 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %14) #16
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !21
  %18 = call ptr @create_tmp_var(ptr noundef %17, ptr noundef nonnull @.str.28) #15
  %19 = call ptr @create_tmp_var(ptr noundef %17, ptr noundef nonnull @.str.28) #15
  %20 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %17, ptr noundef %1) #15
  %21 = call ptr @gimple_build_assign_stat(ptr noundef %18, ptr noundef %20) #15
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %21, i32 noundef 1) #15
  %22 = call ptr @gimple_build_assign_stat(ptr noundef %19, ptr noundef %15) #15
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %22, i32 noundef 1) #15
  %23 = call ptr @gimple_build_cond(i32 noundef 101, ptr noundef %19, ptr noundef %18, ptr noundef null, ptr noundef null) #15
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %23, i32 noundef 1) #15
  %24 = call ptr @gimple_copy(ptr noundef %0) #15
  call fastcc void @gimple_call_set_arg(ptr noundef %24, i32 noundef %14, ptr noundef %1) #16
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %24, i32 noundef 1) #15
  %25 = call ptr @split_block(ptr noundef %13, ptr noundef %23) #15
  %26 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !78
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 8
  store i64 %3, ptr %28, align 8, !tbaa !68
  %29 = call ptr @split_block(ptr noundef %27, ptr noundef %24) #15
  %30 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !78
  %32 = sub nsw i64 %4, %3
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 8
  store i64 %32, ptr %33, align 8, !tbaa !68
  %34 = call ptr @split_block(ptr noundef %31, ptr noundef %0) #15
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !78
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 8
  store i64 %4, ptr %37, align 8, !tbaa !68
  %38 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !80
  %40 = and i32 %39, -1026
  %41 = or disjoint i32 %40, 1024
  store i32 %41, ptr %38, align 8, !tbaa !80
  %42 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 8
  store i32 %2, ptr %42, align 4, !tbaa !81
  %43 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 9
  store i64 %3, ptr %43, align 8, !tbaa !82
  %44 = call ptr @make_edge(ptr noundef %13, ptr noundef %31, i32 noundef 2048) #15
  %45 = sub nsw i32 10000, %2
  %46 = getelementptr inbounds %struct.edge_def, ptr %44, i64 0, i32 8
  store i32 %45, ptr %46, align 4, !tbaa !81
  %47 = getelementptr inbounds %struct.edge_def, ptr %44, i64 0, i32 9
  store i64 %32, ptr %47, align 8, !tbaa !82
  call void @remove_edge(ptr noundef %29) #15
  %48 = call ptr @make_edge(ptr noundef %27, ptr noundef %36, i32 noundef 1) #15
  %49 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 8
  store i32 10000, ptr %49, align 4, !tbaa !81
  %50 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 9
  store i64 %3, ptr %50, align 8, !tbaa !82
  %51 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 8
  store i32 10000, ptr %51, align 4, !tbaa !81
  %52 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 9
  store i64 %32, ptr %52, align 8, !tbaa !82
  %53 = call zeroext i8 @stmt_could_throw_p(ptr noundef %0) #15
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %12
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1357, ptr noundef nonnull @.str.3) #15
  br label %56

56:                                               ; preds = %12, %55
  %57 = call zeroext i8 @stmt_could_throw_p(ptr noundef %24) #15
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1358, ptr noundef nonnull @.str.3) #15
  br label %60

60:                                               ; preds = %56, %59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_arg(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = add i32 %1, 3
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %4, ptr noundef %2) #16
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !38
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1665, ptr noundef nonnull @.str.3) #15
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #16
  %12 = zext i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_func_by_pid(i32 noundef %0) unnamed_addr #0 {
  tail call fastcc void @init_pid_map() #16
  %2 = load ptr, ptr @pid_map, align 8, !tbaa !11
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds ptr, ptr %2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @gimple_ic(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %8 = tail call ptr @build_pointer_type(ptr noundef %7) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  %9 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #16
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %0) #15
  %10 = call ptr @create_tmp_var(ptr noundef %8, ptr noundef nonnull @.str.28) #15
  %11 = call ptr @create_tmp_var(ptr noundef %8, ptr noundef nonnull @.str.28) #15
  %12 = call fastcc ptr @gimple_call_fn(ptr noundef %0) #16
  %13 = call ptr @unshare_expr(ptr noundef %12) #15
  %14 = call ptr @gimple_build_assign_stat(ptr noundef %10, ptr noundef %13) #15
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %14, i32 noundef 1) #15
  %15 = load ptr, ptr %1, align 8, !tbaa !70
  %16 = load ptr, ptr @current_function_decl, align 8, !tbaa !11
  %17 = call ptr @build_addr(ptr noundef %15, ptr noundef %16) #15
  %18 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %17) #15
  %19 = call ptr @gimple_build_assign_stat(ptr noundef %11, ptr noundef %18) #15
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %19, i32 noundef 1) #15
  %20 = call ptr @gimple_build_cond(i32 noundef 101, ptr noundef %11, ptr noundef %10, ptr noundef null, ptr noundef null) #15
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %20, i32 noundef 1) #15
  %21 = call ptr @gimple_copy(ptr noundef %0) #15
  %22 = load ptr, ptr %1, align 8, !tbaa !70
  call fastcc void @gimple_call_set_fndecl(ptr noundef %21, ptr noundef %22) #16
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %21, i32 noundef 1) #15
  %23 = call ptr @split_block(ptr noundef %9, ptr noundef %20) #15
  %24 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !78
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 8
  store i64 %3, ptr %26, align 8, !tbaa !68
  %27 = call ptr @split_block(ptr noundef %25, ptr noundef %21) #15
  %28 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !78
  %30 = sub nsw i64 %4, %3
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 8
  store i64 %30, ptr %31, align 8, !tbaa !68
  %32 = call ptr @split_block(ptr noundef %29, ptr noundef %0) #15
  %33 = getelementptr inbounds %struct.edge_def, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !78
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 8
  store i64 %4, ptr %35, align 8, !tbaa !68
  %36 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !80
  %38 = and i32 %37, -1026
  %39 = or disjoint i32 %38, 1024
  store i32 %39, ptr %36, align 8, !tbaa !80
  %40 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 8
  store i32 %2, ptr %40, align 4, !tbaa !81
  %41 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 9
  store i64 %3, ptr %41, align 8, !tbaa !82
  %42 = call ptr @make_edge(ptr noundef %9, ptr noundef %29, i32 noundef 2048) #15
  %43 = sub nsw i32 10000, %2
  %44 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 8
  store i32 %43, ptr %44, align 4, !tbaa !81
  %45 = getelementptr inbounds %struct.edge_def, ptr %42, i64 0, i32 9
  store i64 %30, ptr %45, align 8, !tbaa !82
  call void @remove_edge(ptr noundef %27) #15
  %46 = call ptr @make_edge(ptr noundef %25, ptr noundef %34, i32 noundef 1) #15
  %47 = getelementptr inbounds %struct.edge_def, ptr %46, i64 0, i32 8
  store i32 10000, ptr %47, align 4, !tbaa !81
  %48 = getelementptr inbounds %struct.edge_def, ptr %46, i64 0, i32 9
  store i64 %3, ptr %48, align 8, !tbaa !82
  %49 = getelementptr inbounds %struct.edge_def, ptr %32, i64 0, i32 8
  store i32 10000, ptr %49, align 4, !tbaa !81
  %50 = getelementptr inbounds %struct.edge_def, ptr %32, i64 0, i32 9
  store i64 %30, ptr %50, align 8, !tbaa !82
  %51 = call i32 @lookup_stmt_eh_lp(ptr noundef %0) #15
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %5
  %54 = call zeroext i8 @stmt_could_throw_p(ptr noundef %21) #15
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  call void @add_stmt_to_eh_lp(ptr noundef %21, i32 noundef %51) #15
  call void @make_eh_edges(ptr noundef %21) #15
  br label %57

57:                                               ; preds = %56, %53
  %58 = call zeroext i8 @stmt_could_throw_p(ptr noundef %0) #15
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1162, ptr noundef nonnull @.str.3) #15
  br label %61

61:                                               ; preds = %57, %60
  call void @make_eh_edges(ptr noundef %0) #15
  %62 = call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef nonnull %34) #15
  br label %63

63:                                               ; preds = %61, %5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_pid_map() unnamed_addr #0 {
  %1 = load ptr, ptr @pid_map, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %21

3:                                                ; preds = %0
  %4 = load i32, ptr @cgraph_max_pid, align 4, !tbaa !48
  %5 = sext i32 %4 to i64
  %6 = tail call ptr @xcalloc(i64 noundef %5, i64 noundef 8) #15
  store ptr %6, ptr @pid_map, align 8, !tbaa !11
  %7 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %3, %17
  %10 = phi ptr [ %19, %17 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 26
  %12 = load i32, ptr %11, align 8, !tbaa !83
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %6, i64 %15
  store ptr %10, ptr %16, align 8, !tbaa !11
  br label %17

17:                                               ; preds = %9, %14
  %18 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %9, !llvm.loop !84

21:                                               ; preds = %17, %3, %0
  ret void
}

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_fndecl(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @gimple_location(ptr noundef %0) #16
  %4 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %3, ptr noundef %1) #15
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %4) #16
  ret void
}

; Function Attrs: optsize
declare i32 @lookup_stmt_eh_lp(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @add_stmt_to_eh_lp(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @make_eh_edges(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 40}
!6 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !7, i64 128, !10, i64 136, !10, i64 137, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !7, i64 24}
!13 = !{!"histogram_value_t", !14, i64 0, !10, i64 32, !10, i64 36, !8, i64 40}
!14 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!13, !7, i64 16}
!18 = !{!13, !10, i64 32}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = !{!8, !8, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !8, i64 0}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = !{!13, !7, i64 8}
!27 = !{!13, !10, i64 36}
!28 = distinct !{!28, !16}
!29 = !{!13, !7, i64 0}
!30 = distinct !{!30, !16}
!31 = !{!6, !7, i64 8}
!32 = !{!33, !7, i64 0}
!33 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !7, i64 40, !10, i64 48, !8, i64 52, !8, i64 60, !10, i64 68, !10, i64 72}
!34 = !{!35, !7, i64 56}
!35 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !23, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96}
!36 = !{!33, !7, i64 8}
!37 = distinct !{!37, !16}
!38 = !{i8 0, i8 2}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = !{!42, !7, i64 0}
!42 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!43 = !{!42, !7, i64 8}
!44 = !{!42, !7, i64 16}
!45 = !{!46, !7, i64 0}
!46 = !{!"gimple_seq_node_d", !7, i64 0, !7, i64 8, !7, i64 16}
!47 = !{!46, !7, i64 16}
!48 = !{!10, !10, i64 0}
!49 = distinct !{!49, !16}
!50 = !{!35, !10, i64 96}
!51 = !{!52, !7, i64 0}
!52 = !{!"gimple_bb_info", !7, i64 0, !7, i64 8}
!53 = !{!54, !7, i64 0}
!54 = !{!"gimple_seq_d", !7, i64 0, !7, i64 8, !7, i64 16}
!55 = distinct !{!55, !16}
!56 = !{i32 0, i32 2}
!57 = distinct !{!57, !16}
!58 = distinct !{!58, !16}
!59 = distinct !{!59, !16}
!60 = !{i64 0, i64 8, !11, i64 8, i64 8, !11, i64 16, i64 8, !11}
!61 = distinct !{!61, !16}
!62 = !{!63, !10, i64 0}
!63 = !{!"VEC_histogram_value_base", !10, i64 0, !10, i64 4, !8, i64 8}
!64 = !{i32 0, i32 256}
!65 = !{i32 0, i32 65536}
!66 = !{!63, !10, i64 4}
!67 = distinct !{!67, !16}
!68 = !{!35, !23, i64 72}
!69 = distinct !{!69, !16}
!70 = !{!71, !7, i64 0}
!71 = !{!"cgraph_node", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !72, i64 144, !74, i64 184, !75, i64 224, !76, i64 232, !77, i64 256, !23, i64 288, !10, i64 296, !10, i64 300, !10, i64 304, !10, i64 308, !10, i64 308, !10, i64 308, !10, i64 308, !10, i64 308, !10, i64 308, !10, i64 308, !10, i64 308, !10, i64 309, !10, i64 309}
!72 = !{!"cgraph_local_info", !7, i64 0, !73, i64 8, !10, i64 32, !10, i64 32, !10, i64 32, !10, i64 32, !10, i64 32, !10, i64 32, !10, i64 32, !10, i64 32}
!73 = !{!"inline_summary", !23, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!74 = !{!"cgraph_global_info", !23, i64 0, !23, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !8, i64 36}
!75 = !{!"cgraph_rtl_info", !10, i64 0}
!76 = !{!"cgraph_clone_info", !7, i64 0, !7, i64 8, !7, i64 16}
!77 = !{!"cgraph_thunk_info", !23, i64 0, !23, i64 8, !7, i64 16, !8, i64 24, !8, i64 25, !8, i64 26}
!78 = !{!79, !7, i64 8}
!79 = !{!"edge_def", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !23, i64 56}
!80 = !{!79, !10, i64 48}
!81 = !{!79, !10, i64 52}
!82 = !{!79, !23, i64 56}
!83 = !{!71, !10, i64 304}
!84 = distinct !{!84, !16}
