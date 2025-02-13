; ModuleID = 'varpool.c'
source_filename = "varpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.varpool_node = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }

@varpool_nodes = dso_local local_unnamed_addr global ptr null, align 8
@varpool_nodes_queue = dso_local local_unnamed_addr global ptr null, align 8
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str = private unnamed_addr constant [10 x i8] c"varpool.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@varpool_hash = internal global ptr null, align 8
@cgraph_order = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c" availability:%s\00", align 1
@cgraph_function_flags_ready = external local_unnamed_addr global i8, align 1
@cgraph_availability_names = external local_unnamed_addr constant [0 x ptr], align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"not-ready\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c" initialized\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" needed\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c" analyzed\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c" finalized\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c" output\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c" externally_visible\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"variable pool:\0A\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@varpool_last_needed_node = internal global ptr null, align 8
@varpool_first_unanalyzed_node = internal global ptr null, align 8
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@flag_whole_program = external local_unnamed_addr global i32, align 4
@flag_lto = external local_unnamed_addr global i32, align 4
@flag_whopr = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@flag_toplevel_reorder = external local_unnamed_addr global i32, align 4
@in_lto_p = external local_unnamed_addr global i8, align 1
@cgraph_global_info_ready = external local_unnamed_addr global i8, align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@varpool_assembled_nodes_queue = internal global ptr null, align 8
@global_dc = external local_unnamed_addr global ptr, align 8
@gt_ggc_r_gt_varpool_h = dso_local local_unnamed_addr constant [5 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @varpool_assembled_nodes_queue, i64 1, i64 8, ptr @gt_ggc_mx_varpool_node, ptr @gt_pch_nx_varpool_node }, %struct.ggc_root_tab { ptr @varpool_first_unanalyzed_node, i64 1, i64 8, ptr @gt_ggc_mx_varpool_node, ptr @gt_pch_nx_varpool_node }, %struct.ggc_root_tab { ptr @varpool_last_needed_node, i64 1, i64 8, ptr @gt_ggc_mx_varpool_node, ptr @gt_pch_nx_varpool_node }, %struct.ggc_root_tab { ptr @varpool_hash, i64 1, i64 8, ptr @gt_ggc_m_P12varpool_node4htab, ptr @gt_pch_n_P12varpool_node4htab }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @varpool_node_name(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !62 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !63
  %3 = load ptr, ptr %0, align 8, !tbaa !75
  %4 = tail call ptr %2(ptr noundef %3, i32 noundef 2) #7
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @varpool_node(ptr noundef %0) local_unnamed_addr #0 !prof !78 {
  %2 = alloca %struct.varpool_node, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #8
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !79
  %7 = icmp ne i32 %6, 3
  %8 = icmp eq i64 %4, 29
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %11, !prof !80

10:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 114, ptr noundef nonnull @.str.1) #7
  br label %11

11:                                               ; preds = %1, %10
  %12 = load ptr, ptr @varpool_hash, align 8, !tbaa !81
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16, !prof !82

14:                                               ; preds = %11
  %15 = tail call ptr @htab_create_alloc(i64 noundef 10, ptr noundef nonnull @hash_varpool_node, ptr noundef nonnull @eq_varpool_node, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #7
  store ptr %15, ptr @varpool_hash, align 8, !tbaa !81
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi ptr [ %15, %14 ], [ %12, %11 ]
  store ptr %0, ptr %2, align 8, !tbaa !75
  %18 = call ptr @htab_find_slot(ptr noundef %17, ptr noundef nonnull %2, i32 noundef 1) #7
  %19 = load ptr, ptr %18, align 8, !tbaa !81
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %28, !prof !83

21:                                               ; preds = %16
  %22 = call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #7
  store ptr %0, ptr %22, align 8, !tbaa !75
  %23 = load i32, ptr @cgraph_order, align 4, !tbaa !79
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr @cgraph_order, align 4, !tbaa !79
  %25 = getelementptr inbounds %struct.varpool_node, ptr %22, i64 0, i32 4
  store i32 %23, ptr %25, align 8, !tbaa !84
  %26 = load ptr, ptr @varpool_nodes, align 8, !tbaa !81
  %27 = getelementptr inbounds %struct.varpool_node, ptr %22, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !85
  store ptr %22, ptr @varpool_nodes, align 8, !tbaa !81
  store ptr %22, ptr %18, align 8, !tbaa !81
  br label %28

28:                                               ; preds = %16, %21
  %29 = phi ptr [ %22, %21 ], [ %19, %16 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #8
  ret ptr %29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @hash_varpool_node(ptr nocapture noundef readonly %0) #3 !prof !86 !PGOFuncName !87 {
  %2 = load ptr, ptr %0, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !88
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @eq_varpool_node(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !89 !PGOFuncName !90 {
  %3 = load ptr, ptr %0, align 8, !tbaa !75
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !88
  %6 = load ptr, ptr %1, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !88
  %9 = icmp eq i32 %5, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @ggc_calloc(i64 noundef, i64 noundef) #2

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) #2

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_varpool_node(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !62 {
  %3 = tail call ptr @varpool_node_name(ptr noundef %1) #9
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %3) #9
  %5 = load i8, ptr @cgraph_function_flags_ready, align 1, !tbaa !88
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @cgraph_variable_initializer_availability(ptr noundef %1) #9, !range !91
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [0 x ptr], ptr @cgraph_availability_names, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !81
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi ptr [ %11, %7 ], [ @.str.4, %2 ]
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %13) #9
  %15 = load ptr, ptr %1, align 8, !tbaa !75
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !88
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 12, i64 1, ptr %0)
  br label %21

21:                                               ; preds = %19, %12
  %22 = getelementptr inbounds %struct.varpool_node, ptr %1, i64 0, i32 5
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 7, i64 1, ptr %0)
  %28 = load i8, ptr %22, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi i8 [ %28, %26 ], [ %23, %21 ]
  %31 = and i8 %30, 4
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 9, i64 1, ptr %0)
  %35 = load i8, ptr %22, align 4
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi i8 [ %35, %33 ], [ %30, %29 ]
  %38 = and i8 %37, 8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 10, i64 1, ptr %0)
  %42 = load i8, ptr %22, align 4
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i8 [ %42, %40 ], [ %37, %36 ]
  %45 = and i8 %44, 16
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 7, i64 1, ptr %0)
  %49 = load i8, ptr %22, align 4
  br label %50

50:                                               ; preds = %47, %43
  %51 = phi i8 [ %49, %47 ], [ %44, %43 ]
  %52 = and i8 %51, 32
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 19, i64 1, ptr %0)
  br label %56

56:                                               ; preds = %54, %50
  %57 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @cgraph_variable_initializer_availability(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !62 {
  %2 = load i8, ptr @cgraph_function_flags_ready, align 1, !tbaa !88
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 326, ptr noundef nonnull @.str.1) #7
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.varpool_node, ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 8, !tbaa !75
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 134217728
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !92
  %17 = tail call zeroext i8 %16(ptr noundef nonnull %11) #7
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load ptr, ptr %0, align 8, !tbaa !75
  %21 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %20, i64 0, i32 4
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 512
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19, %15
  br label %26

26:                                               ; preds = %19, %10, %5, %25
  %27 = phi i32 [ 3, %25 ], [ 1, %5 ], [ 3, %10 ], [ 2, %19 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_varpool(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !62 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 16, i64 1, ptr %0)
  %3 = load ptr, ptr @varpool_nodes, align 8, !tbaa !81
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  tail call void @dump_varpool_node(ptr noundef %0, ptr noundef nonnull %6) #9
  %7 = getelementptr inbounds %struct.varpool_node, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !81
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !104

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_varpool() local_unnamed_addr #0 !prof !62 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !81
  tail call void @dump_varpool(ptr noundef %1) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @varpool_node_for_asm(ptr noundef %0) local_unnamed_addr #0 !prof !62 {
  %2 = load ptr, ptr @varpool_nodes, align 8, !tbaa !81
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1, %9
  %5 = phi ptr [ %11, %9 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = tail call zeroext i8 @decl_assembler_name_equal(ptr noundef %6, ptr noundef %0) #7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.varpool_node, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !81
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !llvm.loop !106

13:                                               ; preds = %4, %9, %1
  %14 = phi ptr [ null, %1 ], [ null, %9 ], [ %5, %4 ]
  ret ptr %14
}

; Function Attrs: optsize
declare zeroext i8 @decl_assembler_name_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @varpool_mark_needed_node(ptr noundef %0) local_unnamed_addr #0 !prof !107 {
  %2 = getelementptr inbounds %struct.varpool_node, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 64
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6, !prof !108

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.varpool_node, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr %0, ptr %8
  %11 = getelementptr inbounds %struct.varpool_node, ptr %10, i64 0, i32 5
  %12 = load i8, ptr %11, align 4
  br label %13

13:                                               ; preds = %6, %1
  %14 = phi i8 [ %3, %1 ], [ %12, %6 ]
  %15 = phi ptr [ %0, %1 ], [ %10, %6 ]
  %16 = getelementptr inbounds %struct.varpool_node, ptr %15, i64 0, i32 5
  %17 = and i8 %14, 9
  %18 = icmp eq i8 %17, 8
  br i1 %18, label %19, label %26, !prof !110

19:                                               ; preds = %13
  %20 = load ptr, ptr %15, align 8, !tbaa !75
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 4194304
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26, !prof !111

24:                                               ; preds = %19
  tail call fastcc void @varpool_enqueue_needed_node(ptr noundef nonnull %15) #9
  %25 = load i8, ptr %16, align 4
  br label %26

26:                                               ; preds = %24, %19, %13
  %27 = phi i8 [ %25, %24 ], [ %14, %19 ], [ %14, %13 ]
  %28 = or i8 %27, 1
  store i8 %28, ptr %16, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @varpool_enqueue_needed_node(ptr noundef %0) unnamed_addr #0 !prof !112 !PGOFuncName !113 {
  %2 = load ptr, ptr @varpool_last_needed_node, align 8, !tbaa !81
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !114

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.varpool_node, ptr %2, i64 0, i32 2
  store ptr %0, ptr %5, align 8, !tbaa !115
  br label %6

6:                                                ; preds = %4, %1
  store ptr %0, ptr @varpool_last_needed_node, align 8, !tbaa !81
  %7 = getelementptr inbounds %struct.varpool_node, ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !115
  %8 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !81
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !114

10:                                               ; preds = %6
  store ptr %0, ptr @varpool_nodes_queue, align 8, !tbaa !81
  br label %11

11:                                               ; preds = %10, %6
  %12 = load ptr, ptr @varpool_first_unanalyzed_node, align 8, !tbaa !81
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !116

14:                                               ; preds = %11
  store ptr %0, ptr @varpool_first_unanalyzed_node, align 8, !tbaa !81
  br label %15

15:                                               ; preds = %14, %11
  %16 = load ptr, ptr %0, align 8, !tbaa !75
  tail call void @notice_global_symbol(ptr noundef %16) #7
  ret void
}

; Function Attrs: optsize
declare void @notice_global_symbol(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @decide_is_variable_needed(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !117 {
  %3 = getelementptr inbounds %struct.varpool_node, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 32
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7, !prof !118

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %80, label %12, !prof !119

12:                                               ; preds = %7, %2
  %13 = and i8 %4, 2
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %80, !prof !120

15:                                               ; preds = %12
  %16 = load i64, ptr %1, align 8
  %17 = and i64 %16, 65535
  %18 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %17, i64 13
  %19 = load i8, ptr %18, align 1, !tbaa !88
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %32, label %21, !prof !121

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !88
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25, !prof !122

25:                                               ; preds = %21
  %26 = tail call ptr @decl_assembler_name(ptr noundef nonnull %1) #7
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 67108864
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %80, !prof !123

30:                                               ; preds = %25
  %31 = load i64, ptr %1, align 8
  br label %32

32:                                               ; preds = %30, %21, %15
  %33 = phi i64 [ %31, %30 ], [ %16, %21 ], [ %16, %15 ]
  %34 = and i64 %33, 134217728
  %35 = icmp eq i64 %34, 0
  %36 = load i32, ptr @flag_whole_program, align 4
  %37 = icmp ne i32 %36, 0
  %38 = select i1 %35, i1 true, i1 %37
  %39 = load i32, ptr @flag_lto, align 4
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 true, i1 %40
  %42 = load i32, ptr @flag_whopr, align 4
  %43 = icmp ne i32 %42, 0
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %55, label %45, !prof !124

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 512
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55, !prof !119

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 33554432
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %80, label %55, !prof !119

55:                                               ; preds = %50, %45, %32
  %56 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 113), align 4, !tbaa !125
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %71, !prof !126

58:                                               ; preds = %55
  %59 = and i64 %33, 65535
  %60 = icmp eq i64 %59, 32
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 49152
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = tail call ptr @emutls_decl(ptr noundef nonnull %1) #7
  %68 = tail call ptr @varpool_node(ptr noundef %67) #9
  %69 = tail call zeroext i8 @decide_is_variable_needed(ptr noundef %68, ptr noundef %67) #9, !range !127
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66, %61, %58, %55
  %72 = load i32, ptr @flag_toplevel_reorder, align 4, !tbaa !79
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80, !prof !126

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 512
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i8
  br label %80

80:                                               ; preds = %66, %74, %71, %50, %25, %7, %12
  %81 = phi i8 [ 1, %66 ], [ 1, %12 ], [ 1, %7 ], [ 1, %25 ], [ 1, %50 ], [ 0, %71 ], [ %79, %74 ]
  ret i8 %81
}

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emutls_decl(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @varpool_finalize_decl(ptr noundef %0) local_unnamed_addr #0 !prof !128 {
  %2 = tail call ptr @varpool_node(ptr noundef %0) #9
  %3 = load i8, ptr @in_lto_p, align 1, !tbaa !88
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr inbounds %struct.varpool_node, ptr %2, i64 0, i32 5
  %6 = load i8, ptr %5, align 4
  br i1 %4, label %9, label %7, !prof !129

7:                                                ; preds = %1
  %8 = or i8 %6, 4
  store i8 %8, ptr %5, align 4
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ %6, %1 ]
  %11 = getelementptr inbounds %struct.varpool_node, ptr %2, i64 0, i32 5
  %12 = and i8 %10, 8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14, !prof !130

14:                                               ; preds = %9
  %15 = load i8, ptr @cgraph_global_info_ready, align 1, !tbaa !88
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %47, label %45, !prof !131

17:                                               ; preds = %9
  %18 = and i8 %10, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20, !prof !132

20:                                               ; preds = %17
  tail call fastcc void @varpool_enqueue_needed_node(ptr noundef nonnull %2) #9
  %21 = load i8, ptr %11, align 4
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i8 [ %21, %20 ], [ %10, %17 ]
  %24 = or i8 %23, 8
  store i8 %24, ptr %11, align 4
  %25 = tail call zeroext i8 @decide_is_variable_needed(ptr noundef nonnull %2, ptr noundef %0) #9, !range !127
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %41, !prof !133

27:                                               ; preds = %22
  %28 = load i64, ptr %0, align 8
  %29 = and i64 %28, 134217728
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %42, label %31, !prof !134

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 512
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 33554432
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %22
  tail call void @varpool_mark_needed_node(ptr noundef nonnull %2) #9
  br label %42

42:                                               ; preds = %41, %27, %31, %36
  %43 = load i8, ptr @cgraph_global_info_ready, align 1, !tbaa !88
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %47, label %45, !prof !135

45:                                               ; preds = %42, %14
  %46 = tail call zeroext i8 @varpool_assemble_pending_decls() #9, !range !127
  br label %47

47:                                               ; preds = %45, %42, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @varpool_assemble_pending_decls() local_unnamed_addr #0 !prof !136 {
  %1 = load ptr, ptr @global_dc, align 8, !tbaa !81
  %2 = getelementptr inbounds %struct.diagnostic_context, ptr %1, i64 0, i32 1, i64 4
  %3 = load i32, ptr %2, align 8, !tbaa !79
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %27, !prof !137

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.diagnostic_context, ptr %1, i64 0, i32 1, i64 5
  %7 = load i32, ptr %6, align 4, !tbaa !79
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %27, !prof !137

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @varpool_analyze_pending_decls() #9, !range !127
  %11 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !81
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13, !prof !138

13:                                               ; preds = %9, %21
  %14 = phi ptr [ %23, %21 ], [ %11, %9 ]
  %15 = phi i8 [ %22, %21 ], [ 0, %9 ]
  %16 = getelementptr inbounds %struct.varpool_node, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !115
  store ptr %17, ptr @varpool_nodes_queue, align 8, !tbaa !81
  %18 = tail call zeroext i8 @varpool_assemble_decl(ptr noundef nonnull %14) #9, !range !127
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21, !prof !139

20:                                               ; preds = %13
  store ptr null, ptr %16, align 8, !tbaa !115
  br label %21

21:                                               ; preds = %13, %20
  %22 = phi i8 [ %15, %20 ], [ 1, %13 ]
  %23 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !81
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %13, !prof !140, !llvm.loop !141

25:                                               ; preds = %21, %9
  %26 = phi i8 [ 0, %9 ], [ %22, %21 ]
  store ptr null, ptr @varpool_last_needed_node, align 8, !tbaa !81
  br label %27

27:                                               ; preds = %0, %5, %25
  %28 = phi i8 [ %26, %25 ], [ 0, %5 ], [ 0, %0 ]
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @varpool_analyze_pending_decls() local_unnamed_addr #0 !prof !142 {
  %1 = load i8, ptr @timevar_enable, align 1, !tbaa !88
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3, !prof !143

3:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 4) #7
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @varpool_first_unanalyzed_node, align 8, !tbaa !81
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7, !prof !144

7:                                                ; preds = %4, %28
  %8 = phi ptr [ %29, %28 ], [ %5, %4 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = getelementptr inbounds %struct.varpool_node, ptr %8, i64 0, i32 5
  %11 = load i8, ptr %10, align 4
  %12 = lshr i8 %11, 2
  %13 = and i8 %12, 1
  %14 = or i8 %11, 4
  store i8 %14, ptr %10, align 4
  %15 = getelementptr inbounds %struct.varpool_node, ptr %8, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !115
  store ptr %16, ptr @varpool_first_unanalyzed_node, align 8, !tbaa !81
  %17 = icmp eq i8 %13, 0
  br i1 %17, label %18, label %23, !prof !145

18:                                               ; preds = %7
  %19 = load i8, ptr @in_lto_p, align 1, !tbaa !88
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21, !prof !146

21:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 361, ptr noundef nonnull @.str.1) #7
  br label %22

22:                                               ; preds = %18, %21
  tail call void @align_variable(ptr noundef %9, i8 noundef zeroext 0) #7
  br label %23

23:                                               ; preds = %22, %7
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !88
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27, !prof !147

27:                                               ; preds = %23
  tail call void @record_references_in_initializer(ptr noundef nonnull %9, i8 noundef zeroext %13) #7
  br label %28

28:                                               ; preds = %27, %23
  %29 = load ptr, ptr @varpool_first_unanalyzed_node, align 8, !tbaa !81
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %7, !prof !148, !llvm.loop !149

31:                                               ; preds = %28, %4
  %32 = phi i8 [ 0, %4 ], [ 1, %28 ]
  %33 = load i8, ptr @timevar_enable, align 1, !tbaa !88
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35, !prof !143

35:                                               ; preds = %31
  tail call void @timevar_pop_1(i32 noundef 4) #7
  br label %36

36:                                               ; preds = %35, %31
  ret i8 %32
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @align_variable(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @record_references_in_initializer(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @varpool_assemble_decl(ptr noundef %0) local_unnamed_addr #0 !prof !150 {
  %2 = load ptr, ptr %0, align 8, !tbaa !75
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 4194304
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %63, !prof !151

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.varpool_node, ptr %0, i64 0, i32 5
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 64
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %63, !prof !151

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 33554432
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %63, !prof !151

16:                                               ; preds = %11
  %17 = and i64 %3, 65535
  %18 = icmp ne i64 %17, 32
  %19 = and i64 %13, 67108864
  %20 = icmp eq i64 %19, 0
  %21 = or i1 %18, %20
  br i1 %21, label %22, label %63, !prof !152

22:                                               ; preds = %16
  tail call void @assemble_variable(ptr noundef nonnull %2, i32 noundef 0, i32 noundef 1, i32 noundef 0) #7
  %23 = load i64, ptr %2, align 8
  %24 = and i64 %23, 4194304
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %63, label %26, !prof !139

26:                                               ; preds = %22
  %27 = load ptr, ptr @varpool_assembled_nodes_queue, align 8, !tbaa !81
  %28 = getelementptr inbounds %struct.varpool_node, ptr %0, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !115
  store ptr %0, ptr @varpool_assembled_nodes_queue, align 8, !tbaa !81
  %29 = load i8, ptr %7, align 4
  %30 = or i8 %29, 8
  store i8 %30, ptr %7, align 4
  %31 = getelementptr inbounds %struct.varpool_node, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !81
  %33 = icmp eq ptr %32, null
  br i1 %33, label %63, label %34, !prof !153

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %2, i64 0, i32 4
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi ptr [ %32, %34 ], [ %61, %36 ]
  %38 = load i32, ptr %35, align 8
  %39 = and i32 %38, 128
  %40 = load ptr, ptr %37, align 8, !tbaa !75
  %41 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %40, i64 0, i32 4
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, -129
  %44 = or disjoint i32 %43, %39
  store i32 %44, ptr %41, align 8
  %45 = load i64, ptr %2, align 8
  %46 = and i64 %45, 134217728
  %47 = load ptr, ptr %37, align 8, !tbaa !75
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, -134217729
  %50 = or disjoint i64 %49, %46
  store i64 %50, ptr %47, align 8
  %51 = load i32, ptr %35, align 8
  %52 = and i32 %51, 3072
  %53 = load ptr, ptr %37, align 8, !tbaa !75
  %54 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %53, i64 0, i32 4
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, -3073
  %57 = or disjoint i32 %56, %52
  store i32 %57, ptr %54, align 8
  %58 = load ptr, ptr %37, align 8, !tbaa !75
  %59 = tail call ptr @decl_assembler_name(ptr noundef nonnull %2) #7
  tail call void @assemble_alias(ptr noundef %58, ptr noundef %59) #7
  %60 = getelementptr inbounds %struct.varpool_node, ptr %37, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !81
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %36, !prof !154, !llvm.loop !155

63:                                               ; preds = %36, %26, %1, %6, %11, %22, %16
  %64 = phi i8 [ 0, %16 ], [ 0, %22 ], [ 0, %11 ], [ 0, %6 ], [ 0, %1 ], [ 1, %26 ], [ 1, %36 ]
  ret i8 %64
}

; Function Attrs: optsize
declare void @assemble_variable(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @assemble_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @varpool_remove_unreferenced_decls() local_unnamed_addr #0 !prof !156 {
  %1 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !81
  tail call fastcc void @varpool_reset_queue() #9
  %2 = load ptr, ptr @global_dc, align 8, !tbaa !81
  %3 = getelementptr inbounds %struct.diagnostic_context, ptr %2, i64 0, i32 1, i64 4
  %4 = load i32, ptr %3, align 8, !tbaa !79
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %40, !prof !157

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.diagnostic_context, ptr %2, i64 0, i32 1, i64 5
  %8 = load i32, ptr %7, align 4, !tbaa !79
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %40, !prof !157

10:                                               ; preds = %6
  %11 = icmp eq ptr %1, null
  br i1 %11, label %38, label %12, !prof !158

12:                                               ; preds = %10, %36
  %13 = phi ptr [ %16, %36 ], [ %1, %10 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  %15 = getelementptr inbounds %struct.varpool_node, ptr %13, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !115
  %17 = getelementptr inbounds %struct.varpool_node, ptr %13, i64 0, i32 5
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, -2
  store i8 %19, ptr %17, align 4
  %20 = and i8 %18, 8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %36, label %22, !prof !159

22:                                               ; preds = %12
  %23 = tail call zeroext i8 @decide_is_variable_needed(ptr noundef nonnull %13, ptr noundef %14) #9, !range !127
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %35, !prof !160

25:                                               ; preds = %22
  %26 = load i64, ptr %14, align 8
  %27 = and i64 %26, 65535
  %28 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %27, i64 11
  %29 = load i8, ptr %28, align 1, !tbaa !88
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31, !prof !161

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %14, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !88
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35, !prof !162

35:                                               ; preds = %31, %22
  tail call void @varpool_mark_needed_node(ptr noundef nonnull %13) #9
  br label %36

36:                                               ; preds = %35, %31, %25, %12
  %37 = icmp eq ptr %16, null
  br i1 %37, label %38, label %12, !prof !163, !llvm.loop !164

38:                                               ; preds = %36, %10
  tail call void @finish_aliases_1() #7
  %39 = tail call zeroext i8 @varpool_analyze_pending_decls() #9, !range !127
  br label %40

40:                                               ; preds = %0, %6, %38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @varpool_reset_queue() unnamed_addr #5 !prof !156 !PGOFuncName !165 {
  store ptr null, ptr @varpool_last_needed_node, align 8, !tbaa !81
  store ptr null, ptr @varpool_nodes_queue, align 8, !tbaa !81
  store ptr null, ptr @varpool_first_unanalyzed_node, align 8, !tbaa !81
  ret void
}

; Function Attrs: optsize
declare void @finish_aliases_1() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @varpool_empty_needed_queue() local_unnamed_addr #0 !prof !62 {
  %1 = tail call zeroext i8 @varpool_analyze_pending_decls() #9, !range !127
  %2 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !81
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %0, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %0 ]
  %6 = getelementptr inbounds %struct.varpool_node, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !115
  store ptr null, ptr %6, align 8, !tbaa !115
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !166

9:                                                ; preds = %4
  store ptr null, ptr @varpool_nodes_queue, align 8, !tbaa !81
  br label %10

10:                                               ; preds = %9, %0
  store ptr null, ptr @varpool_last_needed_node, align 8, !tbaa !81
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @add_new_static_var(ptr noundef %0) local_unnamed_addr #0 !prof !62 {
  %2 = tail call ptr @create_tmp_var(ptr noundef %0, ptr noundef null) #7
  %3 = tail call ptr @create_tmp_var_name(ptr noundef null) #7
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 3
  store ptr %3, ptr %4, align 8, !tbaa !88
  %5 = load i64, ptr %2, align 8
  %6 = and i64 %5, -84934657
  %7 = or disjoint i64 %6, 83886080
  store i64 %7, ptr %2, align 8
  %8 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 4
  store ptr null, ptr %8, align 8, !tbaa !88
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, -2049
  store i64 %11, ptr %9, align 8
  %12 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 15), align 8, !tbaa !167
  tail call void %12(ptr noundef nonnull %2) #7
  %13 = tail call ptr @create_var_ann(ptr noundef nonnull %2) #7
  %14 = tail call ptr @varpool_node(ptr noundef nonnull %2) #9
  tail call void @varpool_mark_needed_node(ptr noundef %14) #9
  %15 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %2) #7
  tail call void @varpool_finalize_decl(ptr noundef nonnull %2) #9
  %16 = load ptr, ptr %14, align 8, !tbaa !75
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_tmp_var_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_var_ann(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @varpool_extra_name_alias(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !62 {
  %3 = alloca %struct.varpool_node, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #8
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 32
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 538, ptr noundef nonnull @.str.1) #7
  br label %8

8:                                                ; preds = %2, %7
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 32
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 539, ptr noundef nonnull @.str.1) #7
  br label %13

13:                                               ; preds = %8, %12
  %14 = tail call ptr @varpool_node(ptr noundef nonnull %1) #9
  store ptr %0, ptr %3, align 8, !tbaa !75
  %15 = load ptr, ptr @varpool_hash, align 8, !tbaa !81
  %16 = call ptr @htab_find_slot(ptr noundef %15, ptr noundef nonnull %3, i32 noundef 1) #7
  %17 = load ptr, ptr %16, align 8, !tbaa !81
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #7
  store ptr %0, ptr %20, align 8, !tbaa !75
  %21 = getelementptr inbounds %struct.varpool_node, ptr %20, i64 0, i32 5
  %22 = load i8, ptr %21, align 4
  %23 = or i8 %22, 64
  store i8 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.varpool_node, ptr %20, i64 0, i32 3
  store ptr %14, ptr %24, align 8, !tbaa !109
  %25 = getelementptr inbounds %struct.varpool_node, ptr %14, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !109
  %27 = getelementptr inbounds %struct.varpool_node, ptr %20, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !85
  store ptr %20, ptr %25, align 8, !tbaa !109
  store ptr %20, ptr %16, align 8, !tbaa !81
  br label %28

28:                                               ; preds = %13, %19
  %29 = phi i8 [ 1, %19 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #8
  ret i8 %29
}

; Function Attrs: optsize
declare void @gt_ggc_mx_varpool_node(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_nx_varpool_node(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_ggc_m_P12varpool_node4htab(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_n_P12varpool_node4htab(ptr noundef) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!61}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!36 = !{ptr @varpool_node, ptr @fancy_abort, i64 2}
!37 = !{ptr @varpool_node, ptr @htab_create_alloc, i64 2}
!38 = !{ptr @varpool_node, ptr @htab_find_slot, i64 100769}
!39 = !{ptr @varpool_node, ptr @ggc_alloc_cleared_stat, i64 2956}
!40 = !{ptr @varpool_mark_needed_node, ptr @varpool_enqueue_needed_node, i64 5117}
!41 = !{ptr @varpool_enqueue_needed_node, ptr @notice_global_symbol, i64 5826}
!42 = !{ptr @decide_is_variable_needed, ptr @decl_assembler_name, i64 11}
!43 = !{ptr @varpool_finalize_decl, ptr @varpool_node, i64 3012}
!44 = !{ptr @varpool_finalize_decl, ptr @varpool_enqueue_needed_node, i64 708}
!45 = !{ptr @varpool_finalize_decl, ptr @decide_is_variable_needed, i64 2950}
!46 = !{ptr @varpool_finalize_decl, ptr @varpool_mark_needed_node, i64 938}
!47 = !{ptr @varpool_finalize_decl, ptr @varpool_assemble_pending_decls, i64 2}
!48 = !{ptr @varpool_assemble_pending_decls, ptr @varpool_analyze_pending_decls, i64 1}
!49 = !{ptr @varpool_assemble_pending_decls, ptr @varpool_assemble_decl, i64 1088}
!50 = !{ptr @varpool_analyze_pending_decls, ptr @timevar_push_1, i64 1}
!51 = !{ptr @varpool_analyze_pending_decls, ptr @fancy_abort, i64 1}
!52 = !{ptr @varpool_analyze_pending_decls, ptr @align_variable, i64 2926}
!53 = !{ptr @varpool_analyze_pending_decls, ptr @record_references_in_initializer, i64 2782}
!54 = !{ptr @varpool_analyze_pending_decls, ptr @timevar_pop_1, i64 1}
!55 = !{ptr @varpool_assemble_decl, ptr @assemble_variable, i64 2896}
!56 = !{ptr @varpool_assemble_decl, ptr @decl_assembler_name, i64 1}
!57 = !{ptr @varpool_assemble_decl, ptr @assemble_alias, i64 1}
!58 = !{ptr @varpool_remove_unreferenced_decls, ptr @varpool_reset_queue, i64 1}
!59 = !{ptr @varpool_remove_unreferenced_decls, ptr @decide_is_variable_needed, i64 650}
!60 = !{ptr @varpool_remove_unreferenced_decls, ptr @varpool_mark_needed_node, i64 614}
!61 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!62 = !{!"function_entry_count", i64 0}
!63 = !{!64, !65, i64 176}
!64 = !{!"lang_hooks", !65, i64 0, !68, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !65, i64 48, !65, i64 56, !65, i64 64, !65, i64 72, !65, i64 80, !65, i64 88, !65, i64 96, !65, i64 104, !65, i64 112, !65, i64 120, !65, i64 128, !65, i64 136, !65, i64 144, !65, i64 152, !65, i64 160, !65, i64 168, !65, i64 176, !65, i64 184, !65, i64 192, !65, i64 200, !65, i64 208, !65, i64 216, !65, i64 224, !65, i64 232, !69, i64 240, !70, i64 248, !71, i64 256, !72, i64 272, !73, i64 432, !74, i64 560, !65, i64 584, !65, i64 592, !65, i64 600, !65, i64 608, !65, i64 616, !65, i64 624, !65, i64 632, !65, i64 640, !65, i64 648, !65, i64 656, !65, i64 664, !66, i64 672}
!65 = !{!"any pointer", !66, i64 0}
!66 = !{!"omnipotent char", !67, i64 0}
!67 = !{!"Simple C/C++ TBAA"}
!68 = !{!"long", !66, i64 0}
!69 = !{!"lang_hooks_for_tree_inlining", !65, i64 0}
!70 = !{!"lang_hooks_for_callgraph", !65, i64 0}
!71 = !{!"lang_hooks_for_tree_dump", !65, i64 0, !65, i64 8}
!72 = !{!"lang_hooks_for_decls", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !65, i64 48, !65, i64 56, !65, i64 64, !65, i64 72, !65, i64 80, !65, i64 88, !65, i64 96, !65, i64 104, !65, i64 112, !65, i64 120, !65, i64 128, !65, i64 136, !65, i64 144, !65, i64 152}
!73 = !{!"lang_hooks_for_types", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !65, i64 48, !65, i64 56, !65, i64 64, !65, i64 72, !65, i64 80, !65, i64 88, !65, i64 96, !65, i64 104, !65, i64 112, !66, i64 120}
!74 = !{!"lang_hooks_for_lto", !65, i64 0, !65, i64 8, !65, i64 16}
!75 = !{!76, !65, i64 0}
!76 = !{!"varpool_node", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !77, i64 32, !77, i64 36, !77, i64 36, !77, i64 36, !77, i64 36, !77, i64 36, !77, i64 36, !77, i64 36}
!77 = !{!"int", !66, i64 0}
!78 = !{!"function_entry_count", i64 100769}
!79 = !{!77, !77, i64 0}
!80 = !{!"branch_weights", i32 50385, i32 -1756319071}
!81 = !{!65, !65, i64 0}
!82 = !{!"branch_weights", i32 2, i32 100769}
!83 = !{!"branch_weights", i32 2956, i32 97815}
!84 = !{!76, !77, i64 32}
!85 = !{!76, !65, i64 8}
!86 = !{!"function_entry_count", i64 103812}
!87 = !{!"varpool.c:hash_varpool_node"}
!88 = !{!66, !66, i64 0}
!89 = !{!"function_entry_count", i64 151255}
!90 = !{!"varpool.c:eq_varpool_node"}
!91 = !{i32 1, i32 4}
!92 = !{!93, !65, i64 1112}
!93 = !{!"gcc_target", !94, i64 0, !96, i64 368, !97, i64 664, !77, i64 744, !65, i64 752, !65, i64 760, !65, i64 768, !65, i64 776, !65, i64 784, !65, i64 792, !65, i64 800, !65, i64 808, !65, i64 816, !65, i64 824, !65, i64 832, !65, i64 840, !65, i64 848, !65, i64 856, !65, i64 864, !65, i64 872, !65, i64 880, !65, i64 888, !65, i64 896, !65, i64 904, !65, i64 912, !65, i64 920, !65, i64 928, !65, i64 936, !65, i64 944, !65, i64 952, !65, i64 960, !65, i64 968, !65, i64 976, !65, i64 984, !65, i64 992, !65, i64 1000, !65, i64 1008, !65, i64 1016, !65, i64 1024, !65, i64 1032, !65, i64 1040, !65, i64 1048, !65, i64 1056, !68, i64 1064, !68, i64 1072, !65, i64 1080, !65, i64 1088, !65, i64 1096, !65, i64 1104, !65, i64 1112, !65, i64 1120, !65, i64 1128, !65, i64 1136, !65, i64 1144, !65, i64 1152, !65, i64 1160, !65, i64 1168, !98, i64 1176, !65, i64 1232, !65, i64 1240, !65, i64 1248, !65, i64 1256, !65, i64 1264, !65, i64 1272, !65, i64 1280, !65, i64 1288, !65, i64 1296, !65, i64 1304, !65, i64 1312, !65, i64 1320, !65, i64 1328, !65, i64 1336, !65, i64 1344, !65, i64 1352, !65, i64 1360, !65, i64 1368, !65, i64 1376, !65, i64 1384, !65, i64 1392, !65, i64 1400, !65, i64 1408, !65, i64 1416, !65, i64 1424, !65, i64 1432, !65, i64 1440, !65, i64 1448, !65, i64 1456, !68, i64 1464, !99, i64 1472, !65, i64 1664, !65, i64 1672, !65, i64 1680, !65, i64 1688, !65, i64 1696, !65, i64 1704, !65, i64 1712, !65, i64 1720, !65, i64 1728, !65, i64 1736, !65, i64 1744, !65, i64 1752, !65, i64 1760, !65, i64 1768, !65, i64 1776, !100, i64 1784, !101, i64 1792, !102, i64 1896, !103, i64 1968, !65, i64 2016, !66, i64 2024, !66, i64 2025, !66, i64 2026, !66, i64 2027, !66, i64 2028, !66, i64 2029, !66, i64 2030, !66, i64 2031, !66, i64 2032, !66, i64 2033, !66, i64 2034, !66, i64 2035}
!94 = !{!"asm_out", !65, i64 0, !65, i64 8, !65, i64 16, !95, i64 24, !95, i64 56, !65, i64 88, !65, i64 96, !65, i64 104, !65, i64 112, !65, i64 120, !65, i64 128, !65, i64 136, !65, i64 144, !65, i64 152, !65, i64 160, !65, i64 168, !65, i64 176, !65, i64 184, !65, i64 192, !65, i64 200, !65, i64 208, !65, i64 216, !65, i64 224, !65, i64 232, !65, i64 240, !65, i64 248, !65, i64 256, !65, i64 264, !65, i64 272, !65, i64 280, !65, i64 288, !65, i64 296, !65, i64 304, !65, i64 312, !65, i64 320, !65, i64 328, !65, i64 336, !65, i64 344, !65, i64 352, !65, i64 360}
!95 = !{!"asm_int_op", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24}
!96 = !{!"sched", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !65, i64 48, !65, i64 56, !65, i64 64, !65, i64 72, !65, i64 80, !65, i64 88, !65, i64 96, !65, i64 104, !65, i64 112, !65, i64 120, !65, i64 128, !65, i64 136, !65, i64 144, !65, i64 152, !65, i64 160, !65, i64 168, !65, i64 176, !65, i64 184, !65, i64 192, !65, i64 200, !65, i64 208, !65, i64 216, !65, i64 224, !65, i64 232, !65, i64 240, !65, i64 248, !65, i64 256, !65, i64 264, !65, i64 272, !65, i64 280, !65, i64 288}
!97 = !{!"vectorize", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !65, i64 48, !65, i64 56, !65, i64 64, !65, i64 72}
!98 = !{!"addr_space", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !65, i64 48}
!99 = !{!"calls", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !65, i64 48, !65, i64 56, !65, i64 64, !65, i64 72, !65, i64 80, !65, i64 88, !65, i64 96, !65, i64 104, !65, i64 112, !65, i64 120, !65, i64 128, !65, i64 136, !65, i64 144, !65, i64 152, !65, i64 160, !65, i64 168, !65, i64 176, !65, i64 184}
!100 = !{!"c", !65, i64 0}
!101 = !{!"cxx", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !65, i64 48, !65, i64 56, !65, i64 64, !65, i64 72, !65, i64 80, !65, i64 88, !65, i64 96}
!102 = !{!"emutls", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !65, i64 48, !65, i64 56, !66, i64 64, !66, i64 65}
!103 = !{!"target_option_hooks", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40}
!104 = distinct !{!104, !105}
!105 = !{!"llvm.loop.mustprogress"}
!106 = distinct !{!106, !105}
!107 = !{!"function_entry_count", i64 94148}
!108 = !{!"branch_weights", i32 94149, i32 1}
!109 = !{!76, !65, i64 24}
!110 = !{!"branch_weights", i32 29848889, i32 519233911}
!111 = !{!"branch_weights", i32 5119, i32 1}
!112 = !{!"function_entry_count", i64 5826}
!113 = !{!"varpool.c:varpool_enqueue_needed_node"}
!114 = !{!"branch_weights", i32 3, i32 5825}
!115 = !{!76, !65, i64 16}
!116 = !{!"branch_weights", i32 994, i32 4834}
!117 = !{!"function_entry_count", i64 5877}
!118 = !{!"branch_weights", i32 4940, i32 939}
!119 = !{!"branch_weights", i32 939, i32 1}
!120 = !{!"branch_weights", i32 3114, i32 1827}
!121 = !{!"branch_weights", i32 1, i32 3114}
!122 = !{!"branch_weights", i32 3104, i32 11}
!123 = !{!"branch_weights", i32 11, i32 1}
!124 = !{!"branch_weights", i32 -760128941, i32 1518421722}
!125 = !{!93, !66, i64 2028}
!126 = !{!"branch_weights", i32 1, i32 2176}
!127 = !{i8 0, i8 2}
!128 = !{!"function_entry_count", i64 3012}
!129 = !{!"branch_weights", i32 3013, i32 1}
!130 = !{!"branch_weights", i32 2952, i32 62}
!131 = !{!"branch_weights", i32 62, i32 1}
!132 = !{!"branch_weights", i32 2244, i32 709}
!133 = !{!"branch_weights", i32 2014, i32 939}
!134 = !{!"branch_weights", i32 2014, i32 1}
!135 = !{!"branch_weights", i32 2952, i32 1}
!136 = !{!"function_entry_count", i64 2}
!137 = !{!"branch_weights", i32 3, i32 1}
!138 = !{!"branch_weights", i32 1, i32 191}
!139 = !{!"branch_weights", i32 1, i32 2901}
!140 = !{!"branch_weights", i32 191, i32 185473}
!141 = distinct !{!141, !105}
!142 = !{!"function_entry_count", i64 8970}
!143 = !{!"branch_weights", i32 8971, i32 1}
!144 = !{!"branch_weights", i32 3155, i32 5816}
!145 = !{!"branch_weights", i32 2927, i32 2890}
!146 = !{!"branch_weights", i32 2927, i32 1}
!147 = !{!"branch_weights", i32 3034, i32 2783}
!148 = !{!"branch_weights", i32 5816, i32 0}
!149 = distinct !{!149, !105}
!150 = !{!"function_entry_count", i64 2900}
!151 = !{!"branch_weights", i32 2901, i32 1}
!152 = !{!"branch_weights", i32 8418703, i32 2901}
!153 = !{!"branch_weights", i32 2900, i32 1}
!154 = !{!"branch_weights", i32 1, i32 0}
!155 = distinct !{!155, !105}
!156 = !{!"function_entry_count", i64 1}
!157 = !{!"branch_weights", i32 2, i32 1}
!158 = !{!"branch_weights", i32 1, i32 127}
!159 = !{!"branch_weights", i32 1, i32 2927}
!160 = !{!"branch_weights", i32 163, i32 2765}
!161 = !{!"branch_weights", i32 1, i32 163}
!162 = !{!"branch_weights", i32 163, i32 1}
!163 = !{!"branch_weights", i32 127, i32 187201}
!164 = distinct !{!164, !105}
!165 = !{!"varpool.c:varpool_reset_queue"}
!166 = distinct !{!166, !105}
!167 = !{!64, !65, i64 120}
