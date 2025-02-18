; ModuleID = 'tree-profile.c'
source_filename = "tree-profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.profile_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.anon = type { ptr, ptr, ptr, ptr }
%struct.histogram_value_t = type { %struct.anon, i32, i32, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32, i32 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"tree_profile\00", align 1
@pass_tree_profile = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @do_tree_profiling, ptr @tree_profiling, ptr null, ptr null, i32 0, i32 138, i32 12, i32 0, i32 0, i32 0, i32 17 } }, align 8
@tree_profile_hooks = dso_local local_unnamed_addr global %struct.profile_hooks { ptr @tree_init_edge_profiler, ptr @tree_gen_edge_profiler, ptr @tree_gen_interval_profiler, ptr @tree_gen_pow2_profiler, ptr @tree_gen_one_value_profiler, ptr @tree_gen_const_delta_profiler, ptr @tree_gen_ic_profiler, ptr @tree_gen_average_profiler, ptr @tree_gen_ior_profiler }, align 8
@ptr_void = internal global ptr null, align 8
@ic_gcov_type_ptr_var = internal global ptr null, align 8
@ic_void_ptr_var = internal global ptr null, align 8
@tree_ior_profiler_fn = internal global ptr null, align 8
@tree_average_profiler_fn = internal global ptr null, align 8
@tree_indirect_call_profiler_fn = internal global ptr null, align 8
@tree_one_value_profiler_fn = internal global ptr null, align 8
@tree_pow2_profiler_fn = internal global ptr null, align 8
@tree_interval_profiler_fn = internal global ptr null, align 8
@gcov_type_tmp_var = internal global ptr null, align 8
@gcov_type_node = internal global ptr null, align 8
@gt_ggc_r_gt_tree_profile_h = dso_local local_unnamed_addr constant [12 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @ptr_void, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @ic_gcov_type_ptr_var, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @ic_void_ptr_var, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @tree_ior_profiler_fn, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @tree_average_profiler_fn, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @tree_indirect_call_profiler_fn, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @tree_one_value_profiler_fn, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @tree_pow2_profiler_fn, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @tree_interval_profiler_fn, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @gcov_type_tmp_var, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @gcov_type_node, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab zeroinitializer], align 16
@profile_arc_flag = external local_unnamed_addr global i32, align 4
@flag_test_coverage = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@cgraph_state = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@flag_profile_values = external local_unnamed_addr global i32, align 4
@flag_value_profile_transformations = external local_unnamed_addr global i32, align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"tree-profile.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.3 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@.str.4 = private unnamed_addr constant [25 x i8] c"__gcov_interval_profiler\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"__gcov_pow2_profiler\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"__gcov_one_value_profiler\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"__gcov_indirect_call_profiler\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"__gcov_average_profiler\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"__gcov_ior_profiler\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"__gcov_indirect_call_callee\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"__gcov_indirect_call_counters\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"PROF_edge_counter\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.13 = private unnamed_addr constant [5 x i8] c"PROF\00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #11
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #11
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #11
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #11
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #11
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #11
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #11
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
  %5 = tail call ptr @__ctype_tolower_loc() #11
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
  %5 = tail call ptr @__ctype_toupper_loc() #11
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #11
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

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @do_tree_profiling() #9 !prof !54 !PGOFuncName !55 {
  %1 = load i32, ptr @profile_arc_flag, align 4, !tbaa !50
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_test_coverage, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4, !prof !56
  %6 = load i32, ptr @flag_branch_probabilities, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7, !prof !56
  br i1 %8, label %9, label %10, !prof !56

9:                                                ; preds = %0
  tail call void @tree_register_profile_hooks() #11
  tail call void @gimple_register_value_prof_hooks() #11
  br label %10

10:                                               ; preds = %0, %9
  %11 = phi i8 [ 1, %9 ], [ 0, %0 ]
  ret i8 %11
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @tree_profiling() #10 !prof !34 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = load i32, ptr @cgraph_state, align 4, !tbaa !50
  %3 = icmp eq i32 %2, 4
  br i1 %3, label %140, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @cfun, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 20
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 268435456
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %140

10:                                               ; preds = %4
  store ptr null, ptr @gcov_type_tmp_var, align 8, !tbaa !35
  tail call void @branch_prob() #11
  %11 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !50
  %12 = icmp eq i32 %11, 0
  %13 = load i32, ptr @flag_profile_values, align 4
  %14 = icmp ne i32 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %124

16:                                               ; preds = %10
  %17 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %18 = tail call ptr @cgraph_node(ptr noundef %17) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #11
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 27
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %123, label %23

23:                                               ; preds = %16
  tail call void @tree_init_edge_profiler()
  %24 = load ptr, ptr @cfun, align 8, !tbaa !35
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  %27 = load ptr, ptr %26, align 8, !tbaa !59
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 1
  %29 = getelementptr inbounds i8, ptr %1, i64 8
  %30 = getelementptr inbounds i8, ptr %1, i64 16
  %31 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 26
  br label %32

32:                                               ; preds = %121, %23
  %33 = phi i32 [ 0, %23 ], [ %122, %121 ]
  %34 = load ptr, ptr %28, align 8, !tbaa !35
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr %34, align 8, !tbaa !61
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i32 [ %37, %36 ], [ 0, %32 ]
  %40 = icmp eq i32 %39, %33
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = zext i32 %33 to i64
  %43 = getelementptr inbounds %struct.VEC_edge_base, ptr %34, i64 0, i32 2, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !35
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi ptr [ %44, %41 ], [ null, %38 ]
  br i1 %40, label %123, label %47

47:                                               ; preds = %45
  %48 = call ptr @split_edge(ptr noundef %46) #11
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 13
  %50 = load i32, ptr %49, align 8, !tbaa !63, !noalias !65
  %51 = and i32 %50, 512
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !46, !noalias !65
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %55, align 8, !tbaa !68, !noalias !65
  br label %59

59:                                               ; preds = %57, %53, %47
  %60 = phi ptr [ %58, %57 ], [ null, %53 ], [ null, %47 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %60, align 8, !tbaa !70, !noalias !65
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi ptr [ %63, %62 ], [ null, %59 ]
  store ptr %65, ptr %1, align 8, !tbaa.struct !72
  store ptr %60, ptr %29, align 8, !tbaa.struct !73
  store ptr %48, ptr %30, align 8, !tbaa.struct !74
  %66 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %67 = call ptr @build_addr(ptr noundef %66, ptr noundef %66) #11
  %68 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %1, ptr noundef %67, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #11
  %69 = load ptr, ptr @gcov_type_node, align 8, !tbaa !35
  %70 = load i32, ptr %31, align 8, !tbaa !75
  %71 = sext i32 %70 to i64
  %72 = call ptr @build_int_cst(ptr noundef %69, i64 noundef %71) #11
  %73 = load ptr, ptr @tree_indirect_call_profiler_fn, align 8, !tbaa !35
  %74 = load ptr, ptr @ic_gcov_type_ptr_var, align 8, !tbaa !35
  %75 = load ptr, ptr @ic_void_ptr_var, align 8, !tbaa !35
  %76 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %73, i32 noundef 4, ptr noundef %74, ptr noundef %72, ptr noundef %68, ptr noundef %75) #11
  call void @gsi_insert_after(ptr noundef nonnull %1, ptr noundef %76, i32 noundef 0) #11
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !83
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %64
  %81 = load i32, ptr %78, align 8, !tbaa !61
  br label %82

82:                                               ; preds = %80, %64
  %83 = phi i32 [ %81, %80 ], [ 0, %64 ]
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 370, ptr noundef nonnull @.str.2) #11
  br label %86

86:                                               ; preds = %85, %82
  %87 = load ptr, ptr %77, align 8, !tbaa !83
  %88 = getelementptr inbounds %struct.VEC_edge_base, ptr %87, i64 0, i32 2, i64 0
  %89 = load ptr, ptr %88, align 8, !tbaa !35
  %90 = call ptr @split_edge(ptr noundef %89) #11
  call fastcc void @add_abnormal_goto_call_edges(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1)
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 13
  %92 = load i32, ptr %91, align 8, !tbaa !63, !noalias !84
  %93 = and i32 %92, 512
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 7
  %97 = load ptr, ptr %96, align 8, !tbaa !46, !noalias !84
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %97, align 8, !tbaa !68, !noalias !84
  br label %101

101:                                              ; preds = %99, %95, %86
  %102 = phi ptr [ %100, %99 ], [ null, %95 ], [ null, %86 ]
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr %102, align 8, !tbaa !70, !noalias !84
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi ptr [ %105, %104 ], [ null, %101 ]
  store ptr %107, ptr %1, align 8, !tbaa.struct !72
  store ptr %102, ptr %29, align 8, !tbaa.struct !73
  store ptr %90, ptr %30, align 8, !tbaa.struct !74
  %108 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %109 = call ptr @build_pointer_type(ptr noundef %108) #11
  %110 = call ptr @build_int_cst(ptr noundef %109, i64 noundef 0) #11
  %111 = load ptr, ptr @ic_void_ptr_var, align 8, !tbaa !35
  %112 = call ptr @gimple_build_assign_stat(ptr noundef %111, ptr noundef %110) #11
  call void @gsi_insert_after(ptr noundef nonnull %1, ptr noundef %112, i32 noundef 0) #11
  %113 = load ptr, ptr %28, align 8, !tbaa !35
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %106
  %116 = load i32, ptr %113, align 8, !tbaa !61
  br label %117

117:                                              ; preds = %115, %106
  %118 = phi i32 [ %116, %115 ], [ 0, %106 ]
  %119 = icmp ult i32 %33, %118
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.2) #11
  br label %121

121:                                              ; preds = %120, %117
  %122 = add i32 %33, 1
  br label %32, !llvm.loop !87

123:                                              ; preds = %45, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #11
  br label %124

124:                                              ; preds = %123, %10
  %125 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !50
  %126 = icmp ne i32 %125, 0
  %127 = load i32, ptr @flag_profile_values, align 4
  %128 = icmp ne i32 %127, 0
  %129 = select i1 %126, i1 %128, i1 false
  %130 = load i32, ptr @flag_value_profile_transformations, align 4
  %131 = icmp ne i32 %130, 0
  %132 = select i1 %129, i1 %131, i1 false
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = call zeroext i8 @value_profile_transformations() #11
  br label %135

135:                                              ; preds = %133, %124
  call void @free_dominance_info(i32 noundef 1) #11
  call void @free_dominance_info(i32 noundef 2) #11
  %136 = load ptr, ptr @cfun, align 8, !tbaa !35
  %137 = getelementptr inbounds %struct.function, ptr %136, i64 0, i32 20
  %138 = load i32, ptr %137, align 8
  %139 = or i32 %138, 268435456
  store i32 %139, ptr %137, align 8
  br label %140

140:                                              ; preds = %0, %4, %135
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define internal void @tree_init_edge_profiler() #10 !prof !34 {
  %1 = load ptr, ptr @gcov_type_node, align 8, !tbaa !35
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %71

3:                                                ; preds = %0
  %4 = tail call ptr @get_gcov_type() #11
  store ptr %4, ptr @gcov_type_node, align 8, !tbaa !35
  %5 = tail call ptr @build_pointer_type(ptr noundef %4) #11
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %7 = load ptr, ptr @gcov_type_node, align 8, !tbaa !35
  %8 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !35
  %10 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %6, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef null) #11
  %11 = tail call ptr @build_fn_decl(ptr noundef nonnull @.str.4, ptr noundef %10) #11
  store ptr %11, ptr @tree_interval_profiler_fn, align 8, !tbaa !35
  %12 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %13 = load ptr, ptr @gcov_type_node, align 8, !tbaa !35
  %14 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %12, ptr noundef %5, ptr noundef %13, ptr noundef null) #11
  %15 = tail call ptr @build_fn_decl(ptr noundef nonnull @.str.5, ptr noundef %14) #11
  store ptr %15, ptr @tree_pow2_profiler_fn, align 8, !tbaa !35
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %17 = load ptr, ptr @gcov_type_node, align 8, !tbaa !35
  %18 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %16, ptr noundef %5, ptr noundef %17, ptr noundef null) #11
  %19 = tail call ptr @build_fn_decl(ptr noundef nonnull @.str.6, ptr noundef %18) #11
  store ptr %19, ptr @tree_one_value_profiler_fn, align 8, !tbaa !35
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %21 = tail call ptr @build_pointer_type(ptr noundef %20) #11
  store ptr %21, ptr @ptr_void, align 8, !tbaa !35
  %22 = tail call ptr @get_identifier(ptr noundef nonnull @.str.10) #11
  %23 = load ptr, ptr @ptr_void, align 8, !tbaa !35
  %24 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 32, ptr noundef %22, ptr noundef %23) #11
  store ptr %24, ptr @ic_void_ptr_var, align 8, !tbaa !35
  %25 = load i64, ptr %24, align 8
  %26 = or i64 %25, 67108864
  store i64 %26, ptr %24, align 8
  %27 = load ptr, ptr @ic_void_ptr_var, align 8, !tbaa !35
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, -134217729
  store i64 %29, ptr %27, align 8
  %30 = load ptr, ptr @ic_void_ptr_var, align 8, !tbaa !35
  %31 = getelementptr inbounds %struct.tree_decl_common, ptr %30, i64 0, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = or i64 %32, 4096
  store i64 %33, ptr %31, align 8
  %34 = getelementptr inbounds %struct.tree_decl_common, ptr %30, i64 0, i32 5
  store ptr null, ptr %34, align 8, !tbaa !46
  tail call void @varpool_finalize_decl(ptr noundef %30) #11
  %35 = tail call ptr @get_gcov_type() #11
  %36 = tail call ptr @build_pointer_type(ptr noundef %35) #11
  %37 = tail call ptr @get_identifier(ptr noundef nonnull @.str.11) #11
  %38 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 32, ptr noundef %37, ptr noundef %36) #11
  store ptr %38, ptr @ic_gcov_type_ptr_var, align 8, !tbaa !35
  %39 = load i64, ptr %38, align 8
  %40 = or i64 %39, 67108864
  store i64 %40, ptr %38, align 8
  %41 = load ptr, ptr @ic_gcov_type_ptr_var, align 8, !tbaa !35
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, -134217729
  store i64 %43, ptr %41, align 8
  %44 = load ptr, ptr @ic_gcov_type_ptr_var, align 8, !tbaa !35
  %45 = getelementptr inbounds %struct.tree_decl_common, ptr %44, i64 0, i32 2
  %46 = load i64, ptr %45, align 8
  %47 = or i64 %46, 4096
  store i64 %47, ptr %45, align 8
  %48 = getelementptr inbounds %struct.tree_decl_common, ptr %44, i64 0, i32 5
  store ptr null, ptr %48, align 8, !tbaa !46
  tail call void @varpool_finalize_decl(ptr noundef %44) #11
  %49 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %50 = load ptr, ptr @gcov_type_node, align 8, !tbaa !35
  %51 = load ptr, ptr @ptr_void, align 8, !tbaa !35
  %52 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %49, ptr noundef %5, ptr noundef %50, ptr noundef %51, ptr noundef %51, ptr noundef null) #11
  %53 = tail call ptr @build_fn_decl(ptr noundef nonnull @.str.7, ptr noundef %52) #11
  store ptr %53, ptr @tree_indirect_call_profiler_fn, align 8, !tbaa !35
  %54 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %55 = load ptr, ptr @gcov_type_node, align 8, !tbaa !35
  %56 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %54, ptr noundef %5, ptr noundef %55, ptr noundef null) #11
  %57 = tail call ptr @build_fn_decl(ptr noundef nonnull @.str.8, ptr noundef %56) #11
  store ptr %57, ptr @tree_average_profiler_fn, align 8, !tbaa !35
  %58 = tail call ptr @build_fn_decl(ptr noundef nonnull @.str.9, ptr noundef %56) #11
  store ptr %58, ptr @tree_ior_profiler_fn, align 8, !tbaa !35
  %59 = load ptr, ptr @tree_interval_profiler_fn, align 8, !tbaa !35
  %60 = tail call ptr @decl_assembler_name(ptr noundef %59) #11
  %61 = load ptr, ptr @tree_pow2_profiler_fn, align 8, !tbaa !35
  %62 = tail call ptr @decl_assembler_name(ptr noundef %61) #11
  %63 = load ptr, ptr @tree_one_value_profiler_fn, align 8, !tbaa !35
  %64 = tail call ptr @decl_assembler_name(ptr noundef %63) #11
  %65 = load ptr, ptr @tree_indirect_call_profiler_fn, align 8, !tbaa !35
  %66 = tail call ptr @decl_assembler_name(ptr noundef %65) #11
  %67 = load ptr, ptr @tree_average_profiler_fn, align 8, !tbaa !35
  %68 = tail call ptr @decl_assembler_name(ptr noundef %67) #11
  %69 = load ptr, ptr @tree_ior_profiler_fn, align 8, !tbaa !35
  %70 = tail call ptr @decl_assembler_name(ptr noundef %69) #11
  br label %71

71:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @tree_gen_edge_profiler(i32 noundef %0, ptr noundef %1) #10 !prof !34 {
  %3 = load ptr, ptr @gcov_type_tmp_var, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @gcov_type_node, align 8, !tbaa !35
  %7 = tail call ptr @create_tmp_var(ptr noundef %6, ptr noundef nonnull @.str.12) #11
  store ptr %7, ptr @gcov_type_tmp_var, align 8, !tbaa !35
  br label %8

8:                                                ; preds = %5, %2
  %9 = tail call ptr @tree_coverage_counter_ref(i32 noundef 0, i32 noundef %0) #11
  %10 = load ptr, ptr @gcov_type_node, align 8, !tbaa !35
  %11 = tail call ptr @build_int_cst(ptr noundef %10, i64 noundef 1) #11
  %12 = load ptr, ptr @gcov_type_tmp_var, align 8, !tbaa !35
  %13 = tail call ptr @gimple_build_assign_stat(ptr noundef %12, ptr noundef %9) #11
  %14 = load ptr, ptr @gcov_type_tmp_var, align 8, !tbaa !35
  %15 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef 63, ptr noundef %14, ptr noundef %14, ptr noundef %11) #11
  %16 = tail call ptr @unshare_expr(ptr noundef %9) #11
  %17 = load ptr, ptr @gcov_type_tmp_var, align 8, !tbaa !35
  %18 = tail call ptr @gimple_build_assign_stat(ptr noundef %16, ptr noundef %17) #11
  tail call void @gsi_insert_on_edge(ptr noundef %1, ptr noundef %13) #11
  tail call void @gsi_insert_on_edge(ptr noundef %1, ptr noundef %15) #11
  tail call void @gsi_insert_on_edge(ptr noundef %1, ptr noundef %18) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @tree_gen_interval_profiler(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #10 !prof !34 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %6) #11
  %7 = call ptr @tree_coverage_counter_ref(i32 noundef %1, i32 noundef %2) #11
  %8 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.histogram_value_t, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !46
  %11 = sext i32 %10 to i64
  %12 = call ptr @build_int_cst_type(ptr noundef %8, i64 noundef %11) #11
  %13 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !35
  %14 = getelementptr inbounds %struct.histogram_value_t, ptr %0, i64 0, i32 3, i32 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !46
  %16 = zext i32 %15 to i64
  %17 = call ptr @build_int_cst_type(ptr noundef %13, i64 noundef %16) #11
  %18 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %19 = call ptr @build_addr(ptr noundef %7, ptr noundef %18) #11
  %20 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %19, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #11
  %21 = call fastcc ptr @prepare_instrumented_value(ptr noundef nonnull %4, ptr noundef %0)
  %22 = load ptr, ptr @tree_interval_profiler_fn, align 8, !tbaa !35
  %23 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %22, i32 noundef 4, ptr noundef %20, ptr noundef %21, ptr noundef %12, ptr noundef %17) #11
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %23, i32 noundef 0) #11
  call fastcc void @add_abnormal_goto_call_edges(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @tree_gen_pow2_profiler(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #10 !prof !34 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %6) #11
  %7 = call ptr @tree_coverage_counter_addr(i32 noundef %1, i32 noundef %2) #11
  %8 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %7, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #11
  %9 = call fastcc ptr @prepare_instrumented_value(ptr noundef nonnull %4, ptr noundef %0)
  %10 = load ptr, ptr @tree_pow2_profiler_fn, align 8, !tbaa !35
  %11 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %10, i32 noundef 2, ptr noundef %8, ptr noundef %9) #11
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %11, i32 noundef 0) #11
  call fastcc void @add_abnormal_goto_call_edges(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @tree_gen_one_value_profiler(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #10 !prof !34 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %6) #11
  %7 = call ptr @tree_coverage_counter_addr(i32 noundef %1, i32 noundef %2) #11
  %8 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %7, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #11
  %9 = call fastcc ptr @prepare_instrumented_value(ptr noundef nonnull %4, ptr noundef %0)
  %10 = load ptr, ptr @tree_one_value_profiler_fn, align 8, !tbaa !35
  %11 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %10, i32 noundef 2, ptr noundef %8, ptr noundef %9) #11
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %11, i32 noundef 0) #11
  call fastcc void @add_abnormal_goto_call_edges(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @tree_gen_const_delta_profiler(ptr nocapture readnone %0, i32 %1, i32 %2) #10 !prof !34 {
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 398, ptr noundef nonnull @.str.2) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @tree_gen_ic_profiler(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #10 !prof !34 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %6) #11
  %7 = call ptr @tree_coverage_counter_addr(i32 noundef %1, i32 noundef %2) #11
  %8 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %7, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #11
  %9 = load ptr, ptr @ptr_void, align 8, !tbaa !35
  %10 = call ptr @create_tmp_var(ptr noundef %9, ptr noundef nonnull @.str.13) #11
  %11 = load ptr, ptr @ic_gcov_type_ptr_var, align 8, !tbaa !35
  %12 = call ptr @gimple_build_assign_stat(ptr noundef %11, ptr noundef %8) #11
  %13 = load ptr, ptr %0, align 8, !tbaa !91
  %14 = call ptr @unshare_expr(ptr noundef %13) #11
  %15 = call ptr @gimple_build_assign_stat(ptr noundef %10, ptr noundef %14) #11
  %16 = load ptr, ptr @ic_void_ptr_var, align 8, !tbaa !35
  %17 = call ptr @gimple_build_assign_stat(ptr noundef %16, ptr noundef %10) #11
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %12, i32 noundef 1) #11
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %15, i32 noundef 1) #11
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %17, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @tree_gen_average_profiler(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #10 !prof !34 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %6) #11
  %7 = call ptr @tree_coverage_counter_addr(i32 noundef %1, i32 noundef %2) #11
  %8 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %7, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #11
  %9 = call fastcc ptr @prepare_instrumented_value(ptr noundef nonnull %4, ptr noundef %0)
  %10 = load ptr, ptr @tree_average_profiler_fn, align 8, !tbaa !35
  %11 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %10, i32 noundef 2, ptr noundef %8, ptr noundef %9) #11
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %11, i32 noundef 0) #11
  call fastcc void @add_abnormal_goto_call_edges(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @tree_gen_ior_profiler(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #10 !prof !34 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.anon, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %6) #11
  %7 = call ptr @tree_coverage_counter_addr(i32 noundef %1, i32 noundef %2) #11
  %8 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %7, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #11
  %9 = call fastcc ptr @prepare_instrumented_value(ptr noundef nonnull %4, ptr noundef %0)
  %10 = load ptr, ptr @tree_ior_profiler_fn, align 8, !tbaa !35
  %11 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %10, i32 noundef 2, ptr noundef %8, ptr noundef %9) #11
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %11, i32 noundef 0) #11
  call fastcc void @add_abnormal_goto_call_edges(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void
}

declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #3

declare void @gt_pch_nx_lang_tree_node(ptr noundef) #3

declare void @tree_register_profile_hooks() local_unnamed_addr #3

declare void @gimple_register_value_prof_hooks() local_unnamed_addr #3

declare void @branch_prob() local_unnamed_addr #3

declare zeroext i8 @value_profile_transformations() local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @build_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_abnormal_goto_call_edges(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #10 !prof !34 {
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = tail call zeroext i8 @stmt_can_make_abnormal_goto(ptr noundef %3) #11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gimple_statement_base, ptr %3, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = tail call ptr @split_block(ptr noundef %8, ptr noundef %3) #11
  %10 = getelementptr inbounds %struct.gimple_statement_base, ptr %3, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call void @make_abnormal_goto_edges(ptr noundef %11, i8 noundef zeroext 1) #11
  br label %12

12:                                               ; preds = %1, %6
  ret void
}

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_can_make_abnormal_goto(ptr noundef) local_unnamed_addr #3

declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @make_abnormal_goto_edges(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @get_gcov_type() local_unnamed_addr #3

declare ptr @build_function_type_list(ptr noundef, ...) local_unnamed_addr #3

declare ptr @build_fn_decl(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

declare void @varpool_finalize_decl(ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @tree_coverage_counter_ref(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @prepare_instrumented_value(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %11 [
    i16 10, label %8
    i16 12, label %8
  ]

8:                                                ; preds = %2, %2
  %9 = load ptr, ptr @sizetype_tab, align 16, !tbaa !35
  %10 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %9, ptr noundef %3) #11
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi ptr [ %10, %8 ], [ %3, %2 ]
  %13 = load ptr, ptr @gcov_type_node, align 8, !tbaa !35
  %14 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %13, ptr noundef %12) #11
  %15 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %14, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #11
  ret ptr %15
}

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @tree_coverage_counter_addr(i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }

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
!54 = !{!"function_entry_count", i64 40}
!55 = !{!"tree-profile.c;do_tree_profiling"}
!56 = !{!"branch_weights", i32 0, i32 40}
!57 = !{!58, !36, i64 8}
!58 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!59 = !{!60, !36, i64 0}
!60 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!61 = !{!62, !41, i64 0}
!62 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!63 = !{!64, !41, i64 96}
!64 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!65 = !{!66}
!66 = distinct !{!66, !67, !"gsi_start_bb: argument 0"}
!67 = distinct !{!67, !"gsi_start_bb"}
!68 = !{!69, !36, i64 0}
!69 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!70 = !{!71, !36, i64 0}
!71 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!72 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!73 = !{i64 0, i64 8, !35, i64 8, i64 8, !35}
!74 = !{i64 0, i64 8, !35}
!75 = !{!76, !41, i64 304}
!76 = !{!"cgraph_node", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !77, i64 144, !79, i64 184, !80, i64 224, !81, i64 232, !82, i64 256, !42, i64 288, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 308, !41, i64 309, !41, i64 309}
!77 = !{!"cgraph_local_info", !36, i64 0, !78, i64 8, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32, !41, i64 32}
!78 = !{!"inline_summary", !42, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20}
!79 = !{!"cgraph_global_info", !42, i64 0, !42, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !37, i64 36}
!80 = !{!"cgraph_rtl_info", !41, i64 0}
!81 = !{!"cgraph_clone_info", !36, i64 0, !36, i64 8, !36, i64 16}
!82 = !{!"cgraph_thunk_info", !42, i64 0, !42, i64 8, !36, i64 16, !37, i64 24, !37, i64 25, !37, i64 26}
!83 = !{!64, !36, i64 8}
!84 = !{!85}
!85 = distinct !{!85, !86, !"gsi_start_bb: argument 0"}
!86 = distinct !{!86, !"gsi_start_bb"}
!87 = distinct !{!87, !52, !53}
!88 = !{!89, !36, i64 8}
!89 = !{!"histogram_value_t", !90, i64 0, !41, i64 32, !41, i64 36, !37, i64 40}
!90 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!91 = !{!89, !36, i64 0}
!92 = !{!93, !36, i64 0}
!93 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
