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

@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str = private unnamed_addr constant [10 x i8] c"varpool.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@varpool_hash = internal global ptr null, align 8
@cgraph_order = external local_unnamed_addr global i32, align 4
@varpool_nodes = dso_local local_unnamed_addr global ptr null, align 8
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
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@flag_whole_program = external local_unnamed_addr global i32, align 4
@flag_lto = external local_unnamed_addr global i32, align 4
@flag_whopr = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@flag_toplevel_reorder = external local_unnamed_addr global i32, align 4
@in_lto_p = external local_unnamed_addr global i8, align 1
@cgraph_global_info_ready = external local_unnamed_addr global i8, align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@varpool_first_unanalyzed_node = internal global ptr null, align 8
@varpool_assembled_nodes_queue = internal global ptr null, align 8
@varpool_nodes_queue = dso_local local_unnamed_addr global ptr null, align 8
@global_dc = external local_unnamed_addr global ptr, align 8
@varpool_last_needed_node = internal global ptr null, align 8
@gt_ggc_r_gt_varpool_h = dso_local local_unnamed_addr constant [5 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @varpool_assembled_nodes_queue, i64 1, i64 8, ptr @gt_ggc_mx_varpool_node, ptr @gt_pch_nx_varpool_node }, %struct.ggc_root_tab { ptr @varpool_first_unanalyzed_node, i64 1, i64 8, ptr @gt_ggc_mx_varpool_node, ptr @gt_pch_nx_varpool_node }, %struct.ggc_root_tab { ptr @varpool_last_needed_node, i64 1, i64 8, ptr @gt_ggc_mx_varpool_node, ptr @gt_pch_nx_varpool_node }, %struct.ggc_root_tab { ptr @varpool_hash, i64 1, i64 8, ptr @gt_ggc_m_P12varpool_node4htab, ptr @gt_pch_n_P12varpool_node4htab }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @varpool_node_name(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !61 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !62
  %3 = load ptr, ptr %0, align 8, !tbaa !74
  %4 = tail call ptr %2(ptr noundef %3, i32 noundef 2) #7
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @varpool_node(ptr noundef %0) local_unnamed_addr #0 !prof !77 {
  %2 = alloca %struct.varpool_node, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #8
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !78
  %7 = icmp ne i32 %6, 3
  %8 = icmp eq i64 %4, 29
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %11, !prof !79

10:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 114, ptr noundef nonnull @.str.1) #7
  br label %11

11:                                               ; preds = %1, %10
  %12 = load ptr, ptr @varpool_hash, align 8, !tbaa !80
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16, !prof !81

14:                                               ; preds = %11
  %15 = tail call ptr @htab_create_alloc(i64 noundef 10, ptr noundef nonnull @hash_varpool_node, ptr noundef nonnull @eq_varpool_node, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #7
  store ptr %15, ptr @varpool_hash, align 8, !tbaa !80
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi ptr [ %15, %14 ], [ %12, %11 ]
  store ptr %0, ptr %2, align 8, !tbaa !74
  %18 = call ptr @htab_find_slot(ptr noundef %17, ptr noundef nonnull %2, i32 noundef 1) #7
  %19 = load ptr, ptr %18, align 8, !tbaa !80
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %28, !prof !82

21:                                               ; preds = %16
  %22 = call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #7
  store ptr %0, ptr %22, align 8, !tbaa !74
  %23 = load i32, ptr @cgraph_order, align 4, !tbaa !78
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr @cgraph_order, align 4, !tbaa !78
  %25 = getelementptr inbounds %struct.varpool_node, ptr %22, i64 0, i32 4
  store i32 %23, ptr %25, align 8, !tbaa !83
  %26 = load ptr, ptr @varpool_nodes, align 8, !tbaa !80
  %27 = getelementptr inbounds %struct.varpool_node, ptr %22, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !84
  store ptr %22, ptr @varpool_nodes, align 8, !tbaa !80
  store ptr %22, ptr %18, align 8, !tbaa !80
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
define internal i32 @hash_varpool_node(ptr nocapture noundef readonly %0) #3 !prof !85 !PGOFuncName !86 {
  %2 = load ptr, ptr %0, align 8, !tbaa !74
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !87
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @eq_varpool_node(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !88 !PGOFuncName !89 {
  %3 = load ptr, ptr %0, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !87
  %6 = load ptr, ptr %1, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !87
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
define dso_local void @dump_varpool_node(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !61 {
  %3 = tail call ptr @varpool_node_name(ptr noundef %1) #9
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %3) #9
  %5 = load i8, ptr @cgraph_function_flags_ready, align 1, !tbaa !87
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @cgraph_variable_initializer_availability(ptr noundef %1) #9, !range !90
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [0 x ptr], ptr @cgraph_availability_names, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi ptr [ %11, %7 ], [ @.str.4, %2 ]
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %13) #9
  %15 = load ptr, ptr %1, align 8, !tbaa !74
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !87
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
define dso_local noundef i32 @cgraph_variable_initializer_availability(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !61 {
  %2 = load i8, ptr @cgraph_function_flags_ready, align 1, !tbaa !87
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
  %11 = load ptr, ptr %0, align 8, !tbaa !74
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 134217728
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !91
  %17 = tail call zeroext i8 %16(ptr noundef nonnull %11) #7
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load ptr, ptr %0, align 8, !tbaa !74
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
define dso_local void @dump_varpool(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !61 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 16, i64 1, ptr %0)
  %3 = load ptr, ptr @varpool_nodes, align 8, !tbaa !80
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  tail call void @dump_varpool_node(ptr noundef %0, ptr noundef nonnull %6) #9
  %7 = getelementptr inbounds %struct.varpool_node, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !103

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_varpool() local_unnamed_addr #0 !prof !61 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !80
  tail call void @dump_varpool(ptr noundef %1) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @varpool_node_for_asm(ptr noundef %0) local_unnamed_addr #0 !prof !61 {
  %2 = load ptr, ptr @varpool_nodes, align 8, !tbaa !80
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1, %9
  %5 = phi ptr [ %11, %9 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = tail call zeroext i8 @decl_assembler_name_equal(ptr noundef %6, ptr noundef %0) #7
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.varpool_node, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !llvm.loop !105

13:                                               ; preds = %4, %9, %1
  %14 = phi ptr [ null, %1 ], [ null, %9 ], [ %5, %4 ]
  ret ptr %14
}

; Function Attrs: optsize
declare zeroext i8 @decl_assembler_name_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @varpool_mark_needed_node(ptr noundef %0) local_unnamed_addr #0 !prof !77 {
  %2 = getelementptr inbounds %struct.varpool_node, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 64
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6, !prof !106

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.varpool_node, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !107
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr %0, ptr %8
  %11 = getelementptr inbounds %struct.varpool_node, ptr %10, i64 0, i32 5
  %12 = load i8, ptr %11, align 4
  br label %13

13:                                               ; preds = %6, %1
  %14 = phi i8 [ %3, %1 ], [ %12, %6 ]
  %15 = phi ptr [ %0, %1 ], [ %10, %6 ]
  %16 = getelementptr inbounds %struct.varpool_node, ptr %15, i64 0, i32 5
  %17 = and i8 %14, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %29, !prof !108

19:                                               ; preds = %13
  %20 = and i8 %14, 8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %29, label %22, !prof !109

22:                                               ; preds = %19
  %23 = load ptr, ptr %15, align 8, !tbaa !74
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 4194304
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29, !prof !110

27:                                               ; preds = %22
  tail call fastcc void @varpool_enqueue_needed_node(ptr noundef nonnull %15) #9
  %28 = load i8, ptr %16, align 4
  br label %29

29:                                               ; preds = %27, %22, %19, %13
  %30 = phi i8 [ %28, %27 ], [ %14, %22 ], [ %14, %19 ], [ %14, %13 ]
  %31 = or i8 %30, 1
  store i8 %31, ptr %16, align 4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @varpool_enqueue_needed_node(ptr noundef %0) unnamed_addr #0 !prof !111 !PGOFuncName !112 {
  %2 = load ptr, ptr @varpool_last_needed_node, align 8, !tbaa !80
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !113

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.varpool_node, ptr %2, i64 0, i32 2
  store ptr %0, ptr %5, align 8, !tbaa !114
  br label %6

6:                                                ; preds = %4, %1
  store ptr %0, ptr @varpool_last_needed_node, align 8, !tbaa !80
  %7 = getelementptr inbounds %struct.varpool_node, ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !114
  %8 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !80
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !113

10:                                               ; preds = %6
  store ptr %0, ptr @varpool_nodes_queue, align 8, !tbaa !80
  br label %11

11:                                               ; preds = %10, %6
  %12 = load ptr, ptr @varpool_first_unanalyzed_node, align 8, !tbaa !80
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !115

14:                                               ; preds = %11
  store ptr %0, ptr @varpool_first_unanalyzed_node, align 8, !tbaa !80
  br label %15

15:                                               ; preds = %14, %11
  %16 = load ptr, ptr %0, align 8, !tbaa !74
  tail call void @notice_global_symbol(ptr noundef %16) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @decide_is_variable_needed(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !111 {
  %3 = getelementptr inbounds %struct.varpool_node, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 32
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7, !prof !116

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 512
  %11 = icmp ne i32 %10, 0
  %12 = and i8 %4, 2
  %13 = icmp eq i8 %12, 0
  %14 = and i1 %13, %11
  br i1 %14, label %18, label %83, !prof !117

15:                                               ; preds = %2
  %16 = and i8 %4, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %83, !prof !118

18:                                               ; preds = %7, %15
  %19 = load i64, ptr %1, align 8
  %20 = and i64 %19, 65535
  %21 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %20, i64 13
  %22 = load i8, ptr %21, align 1, !tbaa !87
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %35, label %24, !prof !119

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !87
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28, !prof !120

28:                                               ; preds = %24
  %29 = tail call ptr @decl_assembler_name(ptr noundef nonnull %1) #7
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 67108864
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %83

33:                                               ; preds = %28
  %34 = load i64, ptr %1, align 8
  br label %35

35:                                               ; preds = %33, %24, %18
  %36 = phi i64 [ %34, %33 ], [ %19, %24 ], [ %19, %18 ]
  %37 = and i64 %36, 134217728
  %38 = icmp eq i64 %37, 0
  %39 = load i32, ptr @flag_whole_program, align 4
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 true, i1 %40
  %42 = load i32, ptr @flag_lto, align 4
  %43 = icmp ne i32 %42, 0
  %44 = select i1 %41, i1 true, i1 %43
  %45 = load i32, ptr @flag_whopr, align 4
  %46 = icmp ne i32 %45, 0
  %47 = select i1 %44, i1 true, i1 %46
  br i1 %47, label %58, label %48, !prof !121

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 512
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58, !prof !122

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %55 = load i64, ptr %54, align 8
  %56 = and i64 %55, 33554432
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %83, label %58, !prof !122

58:                                               ; preds = %53, %48, %35
  %59 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 113), align 4, !tbaa !123
  %60 = icmp eq i8 %59, 0
  %61 = and i64 %36, 65535
  %62 = icmp eq i64 %61, 32
  %63 = and i1 %62, %60
  br i1 %63, label %64, label %74, !prof !124

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 49152
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = tail call ptr @emutls_decl(ptr noundef nonnull %1) #7
  %71 = tail call ptr @varpool_node(ptr noundef %70) #9
  %72 = tail call zeroext i8 @decide_is_variable_needed(ptr noundef %71, ptr noundef %70) #9, !range !125
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69, %64, %58
  %75 = load i32, ptr @flag_toplevel_reorder, align 4, !tbaa !78
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %83, !prof !126

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 512
  %81 = icmp eq i32 %80, 0
  %82 = zext i1 %81 to i8
  br label %83

83:                                               ; preds = %69, %77, %74, %53, %28, %7, %15
  %84 = phi i8 [ 1, %69 ], [ 1, %15 ], [ 1, %7 ], [ 1, %28 ], [ 1, %53 ], [ 0, %74 ], [ %82, %77 ]
  ret i8 %84
}

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emutls_decl(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @varpool_finalize_decl(ptr noundef %0) local_unnamed_addr #0 !prof !127 {
  %2 = tail call ptr @varpool_node(ptr noundef %0) #9
  %3 = load i8, ptr @in_lto_p, align 1, !tbaa !87
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr inbounds %struct.varpool_node, ptr %2, i64 0, i32 5
  %6 = load i8, ptr %5, align 4
  br i1 %4, label %9, label %7, !prof !120

7:                                                ; preds = %1
  %8 = or i8 %6, 4
  store i8 %8, ptr %5, align 4
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ %6, %1 ]
  %11 = getelementptr inbounds %struct.varpool_node, ptr %2, i64 0, i32 5
  %12 = and i8 %10, 8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14, !prof !120

14:                                               ; preds = %9
  %15 = load i8, ptr @cgraph_global_info_ready, align 1, !tbaa !87
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %47, label %45

17:                                               ; preds = %9
  %18 = and i8 %10, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20, !prof !128

20:                                               ; preds = %17
  tail call fastcc void @varpool_enqueue_needed_node(ptr noundef nonnull %2) #9
  %21 = load i8, ptr %11, align 4
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i8 [ %21, %20 ], [ %10, %17 ]
  %24 = or i8 %23, 8
  store i8 %24, ptr %11, align 4
  %25 = tail call zeroext i8 @decide_is_variable_needed(ptr noundef nonnull %2, ptr noundef %0) #9, !range !125
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %41, !prof !129

27:                                               ; preds = %22
  %28 = load i64, ptr %0, align 8
  %29 = and i64 %28, 134217728
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %42, label %31, !prof !130

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
  %43 = load i8, ptr @cgraph_global_info_ready, align 1, !tbaa !87
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %47, label %45, !prof !120

45:                                               ; preds = %42, %14
  %46 = tail call zeroext i8 @varpool_assemble_pending_decls() #9, !range !125
  br label %47

47:                                               ; preds = %45, %42, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @varpool_assemble_pending_decls() local_unnamed_addr #0 !prof !131 {
  %1 = load ptr, ptr @global_dc, align 8, !tbaa !80
  %2 = getelementptr inbounds %struct.diagnostic_context, ptr %1, i64 0, i32 1, i64 4
  %3 = load i32, ptr %2, align 8, !tbaa !78
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %27, !prof !132

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.diagnostic_context, ptr %1, i64 0, i32 1, i64 5
  %7 = load i32, ptr %6, align 4, !tbaa !78
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %27, !prof !132

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @varpool_analyze_pending_decls() #9, !range !125
  %11 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !80
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13, !prof !133

13:                                               ; preds = %9, %21
  %14 = phi ptr [ %23, %21 ], [ %11, %9 ]
  %15 = phi i8 [ %22, %21 ], [ 0, %9 ]
  %16 = getelementptr inbounds %struct.varpool_node, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !114
  store ptr %17, ptr @varpool_nodes_queue, align 8, !tbaa !80
  %18 = tail call zeroext i8 @varpool_assemble_decl(ptr noundef nonnull %14) #9, !range !125
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21, !prof !119

20:                                               ; preds = %13
  store ptr null, ptr %16, align 8, !tbaa !114
  br label %21

21:                                               ; preds = %13, %20
  %22 = phi i8 [ %15, %20 ], [ 1, %13 ]
  %23 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !80
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %13, !prof !134, !llvm.loop !135

25:                                               ; preds = %21, %9
  %26 = phi i8 [ 0, %9 ], [ %22, %21 ]
  store ptr null, ptr @varpool_last_needed_node, align 8, !tbaa !80
  br label %27

27:                                               ; preds = %0, %5, %25
  %28 = phi i8 [ %26, %25 ], [ 0, %5 ], [ 0, %0 ]
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @varpool_analyze_pending_decls() local_unnamed_addr #0 !prof !136 {
  %1 = load i8, ptr @timevar_enable, align 1, !tbaa !87
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3, !prof !137

3:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 4) #7
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @varpool_first_unanalyzed_node, align 8, !tbaa !80
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7, !prof !138

7:                                                ; preds = %4, %28
  %8 = phi ptr [ %29, %28 ], [ %5, %4 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = getelementptr inbounds %struct.varpool_node, ptr %8, i64 0, i32 5
  %11 = load i8, ptr %10, align 4
  %12 = lshr i8 %11, 2
  %13 = and i8 %12, 1
  %14 = or i8 %11, 4
  store i8 %14, ptr %10, align 4
  %15 = getelementptr inbounds %struct.varpool_node, ptr %8, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !114
  store ptr %16, ptr @varpool_first_unanalyzed_node, align 8, !tbaa !80
  %17 = icmp eq i8 %13, 0
  br i1 %17, label %18, label %23, !prof !139

18:                                               ; preds = %7
  %19 = load i8, ptr @in_lto_p, align 1, !tbaa !87
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21, !prof !120

21:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 361, ptr noundef nonnull @.str.1) #7
  br label %22

22:                                               ; preds = %18, %21
  tail call void @align_variable(ptr noundef %9, i8 noundef zeroext 0) #7
  br label %23

23:                                               ; preds = %22, %7
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !87
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27, !prof !124

27:                                               ; preds = %23
  tail call void @record_references_in_initializer(ptr noundef nonnull %9, i8 noundef zeroext %13) #7
  br label %28

28:                                               ; preds = %27, %23
  %29 = load ptr, ptr @varpool_first_unanalyzed_node, align 8, !tbaa !80
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %7, !prof !140, !llvm.loop !141

31:                                               ; preds = %28, %4
  %32 = phi i8 [ 0, %4 ], [ 1, %28 ]
  %33 = load i8, ptr @timevar_enable, align 1, !tbaa !87
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35, !prof !137

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
define dso_local noundef zeroext i8 @varpool_assemble_decl(ptr noundef %0) local_unnamed_addr #0 !prof !127 {
  %2 = load ptr, ptr %0, align 8, !tbaa !74
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 4194304
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %63, !prof !120

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.varpool_node, ptr %0, i64 0, i32 5
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 64
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %63, !prof !120

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 33554432
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %63, !prof !120

16:                                               ; preds = %11
  %17 = and i64 %3, 65535
  %18 = icmp ne i64 %17, 32
  %19 = and i64 %13, 67108864
  %20 = icmp eq i64 %19, 0
  %21 = or i1 %18, %20
  br i1 %21, label %22, label %63, !prof !142

22:                                               ; preds = %16
  tail call void @assemble_variable(ptr noundef nonnull %2, i32 noundef 0, i32 noundef 1, i32 noundef 0) #7
  %23 = load i64, ptr %2, align 8
  %24 = and i64 %23, 4194304
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %63, label %26, !prof !119

26:                                               ; preds = %22
  %27 = load ptr, ptr @varpool_assembled_nodes_queue, align 8, !tbaa !80
  %28 = getelementptr inbounds %struct.varpool_node, ptr %0, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !114
  store ptr %0, ptr @varpool_assembled_nodes_queue, align 8, !tbaa !80
  %29 = load i8, ptr %7, align 4
  %30 = or i8 %29, 8
  store i8 %30, ptr %7, align 4
  %31 = getelementptr inbounds %struct.varpool_node, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !80
  %33 = icmp eq ptr %32, null
  br i1 %33, label %63, label %34, !prof !130

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %2, i64 0, i32 4
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi ptr [ %32, %34 ], [ %61, %36 ]
  %38 = load i32, ptr %35, align 8
  %39 = and i32 %38, 128
  %40 = load ptr, ptr %37, align 8, !tbaa !74
  %41 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %40, i64 0, i32 4
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, -129
  %44 = or disjoint i32 %43, %39
  store i32 %44, ptr %41, align 8
  %45 = load i64, ptr %2, align 8
  %46 = and i64 %45, 134217728
  %47 = load ptr, ptr %37, align 8, !tbaa !74
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, -134217729
  %50 = or disjoint i64 %49, %46
  store i64 %50, ptr %47, align 8
  %51 = load i32, ptr %35, align 8
  %52 = and i32 %51, 3072
  %53 = load ptr, ptr %37, align 8, !tbaa !74
  %54 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %53, i64 0, i32 4
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, -3073
  %57 = or disjoint i32 %56, %52
  store i32 %57, ptr %54, align 8
  %58 = load ptr, ptr %37, align 8, !tbaa !74
  %59 = tail call ptr @decl_assembler_name(ptr noundef nonnull %2) #7
  tail call void @assemble_alias(ptr noundef %58, ptr noundef %59) #7
  %60 = getelementptr inbounds %struct.varpool_node, ptr %37, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !80
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %36, !prof !143, !llvm.loop !144

63:                                               ; preds = %36, %26, %1, %6, %11, %22, %16
  %64 = phi i8 [ 0, %16 ], [ 0, %22 ], [ 0, %11 ], [ 0, %6 ], [ 0, %1 ], [ 1, %26 ], [ 1, %36 ]
  ret i8 %64
}

; Function Attrs: optsize
declare void @assemble_variable(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @assemble_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @varpool_remove_unreferenced_decls() local_unnamed_addr #0 !prof !145 {
  %1 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !80
  tail call fastcc void @varpool_reset_queue() #9
  %2 = load ptr, ptr @global_dc, align 8, !tbaa !80
  %3 = getelementptr inbounds %struct.diagnostic_context, ptr %2, i64 0, i32 1, i64 4
  %4 = load i32, ptr %3, align 8, !tbaa !78
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %40, !prof !122

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.diagnostic_context, ptr %2, i64 0, i32 1, i64 5
  %8 = load i32, ptr %7, align 4, !tbaa !78
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %40, !prof !122

10:                                               ; preds = %6
  %11 = icmp eq ptr %1, null
  br i1 %11, label %38, label %12, !prof !146

12:                                               ; preds = %10, %36
  %13 = phi ptr [ %16, %36 ], [ %1, %10 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  %15 = getelementptr inbounds %struct.varpool_node, ptr %13, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !114
  %17 = getelementptr inbounds %struct.varpool_node, ptr %13, i64 0, i32 5
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, -2
  store i8 %19, ptr %17, align 4
  %20 = and i8 %18, 8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %36, label %22, !prof !119

22:                                               ; preds = %12
  %23 = tail call zeroext i8 @decide_is_variable_needed(ptr noundef nonnull %13, ptr noundef %14) #9, !range !125
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %35, !prof !119

25:                                               ; preds = %22
  %26 = load i64, ptr %14, align 8
  %27 = and i64 %26, 65535
  %28 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %27, i64 11
  %29 = load i8, ptr %28, align 1, !tbaa !87
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %14, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !87
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31, %22
  tail call void @varpool_mark_needed_node(ptr noundef nonnull %13) #9
  br label %36

36:                                               ; preds = %35, %31, %25, %12
  %37 = icmp eq ptr %16, null
  br i1 %37, label %38, label %12, !prof !147, !llvm.loop !148

38:                                               ; preds = %36, %10
  tail call void @finish_aliases_1() #7
  %39 = tail call zeroext i8 @varpool_analyze_pending_decls() #9, !range !125
  br label %40

40:                                               ; preds = %0, %6, %38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @varpool_reset_queue() unnamed_addr #5 !prof !145 !PGOFuncName !149 {
  store ptr null, ptr @varpool_last_needed_node, align 8, !tbaa !80
  store ptr null, ptr @varpool_nodes_queue, align 8, !tbaa !80
  store ptr null, ptr @varpool_first_unanalyzed_node, align 8, !tbaa !80
  ret void
}

; Function Attrs: optsize
declare void @finish_aliases_1() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @varpool_empty_needed_queue() local_unnamed_addr #0 !prof !61 {
  %1 = tail call zeroext i8 @varpool_analyze_pending_decls() #9, !range !125
  %2 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !80
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %0, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %0 ]
  %6 = getelementptr inbounds %struct.varpool_node, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !114
  store ptr null, ptr %6, align 8, !tbaa !114
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !150

9:                                                ; preds = %4
  store ptr null, ptr @varpool_nodes_queue, align 8, !tbaa !80
  br label %10

10:                                               ; preds = %9, %0
  store ptr null, ptr @varpool_last_needed_node, align 8, !tbaa !80
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @add_new_static_var(ptr noundef %0) local_unnamed_addr #0 !prof !61 {
  %2 = tail call ptr @create_tmp_var(ptr noundef %0, ptr noundef null) #7
  %3 = tail call ptr @create_tmp_var_name(ptr noundef null) #7
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 3
  store ptr %3, ptr %4, align 8, !tbaa !87
  %5 = load i64, ptr %2, align 8
  %6 = and i64 %5, -84934657
  %7 = or disjoint i64 %6, 83886080
  store i64 %7, ptr %2, align 8
  %8 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 4
  store ptr null, ptr %8, align 8, !tbaa !87
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, -2049
  store i64 %11, ptr %9, align 8
  %12 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 15), align 8, !tbaa !151
  tail call void %12(ptr noundef nonnull %2) #7
  %13 = tail call ptr @create_var_ann(ptr noundef nonnull %2) #7
  %14 = tail call ptr @varpool_node(ptr noundef nonnull %2) #9
  tail call void @varpool_mark_needed_node(ptr noundef %14) #9
  %15 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %2) #7
  tail call void @varpool_finalize_decl(ptr noundef nonnull %2) #9
  %16 = load ptr, ptr %14, align 8, !tbaa !74
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
define dso_local noundef zeroext i8 @varpool_extra_name_alias(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !61 {
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
  store ptr %0, ptr %3, align 8, !tbaa !74
  %15 = load ptr, ptr @varpool_hash, align 8, !tbaa !80
  %16 = call ptr @htab_find_slot(ptr noundef %15, ptr noundef nonnull %3, i32 noundef 1) #7
  %17 = load ptr, ptr %16, align 8, !tbaa !80
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = call ptr @ggc_alloc_cleared_stat(i64 noundef 40) #7
  store ptr %0, ptr %20, align 8, !tbaa !74
  %21 = getelementptr inbounds %struct.varpool_node, ptr %20, i64 0, i32 5
  %22 = load i8, ptr %21, align 4
  %23 = or i8 %22, 64
  store i8 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.varpool_node, ptr %20, i64 0, i32 3
  store ptr %14, ptr %24, align 8, !tbaa !107
  %25 = getelementptr inbounds %struct.varpool_node, ptr %14, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !107
  %27 = getelementptr inbounds %struct.varpool_node, ptr %20, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !84
  store ptr %20, ptr %25, align 8, !tbaa !107
  store ptr %20, ptr %16, align 8, !tbaa !80
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

; Function Attrs: optsize
declare void @notice_global_symbol(ptr noundef) local_unnamed_addr #2

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!60}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!35 = !{ptr @varpool_node, ptr @fancy_abort, i64 2}
!36 = !{ptr @varpool_node, ptr @htab_create_alloc, i64 2}
!37 = !{ptr @varpool_node, ptr @htab_find_slot, i64 77410}
!38 = !{ptr @varpool_node, ptr @ggc_alloc_cleared_stat, i64 47}
!39 = !{ptr @varpool_mark_needed_node, ptr @varpool_enqueue_needed_node, i64 40}
!40 = !{ptr @varpool_enqueue_needed_node, ptr @notice_global_symbol, i64 78}
!41 = !{ptr @decide_is_variable_needed, ptr @decl_assembler_name, i64 1}
!42 = !{ptr @varpool_finalize_decl, ptr @varpool_node, i64 39}
!43 = !{ptr @varpool_finalize_decl, ptr @varpool_enqueue_needed_node, i64 36}
!44 = !{ptr @varpool_finalize_decl, ptr @decide_is_variable_needed, i64 38}
!45 = !{ptr @varpool_finalize_decl, ptr @varpool_mark_needed_node, i64 2}
!46 = !{ptr @varpool_finalize_decl, ptr @varpool_assemble_pending_decls, i64 2}
!47 = !{ptr @varpool_assemble_pending_decls, ptr @varpool_analyze_pending_decls, i64 1}
!48 = !{ptr @varpool_assemble_pending_decls, ptr @varpool_assemble_decl, i64 15}
!49 = !{ptr @varpool_analyze_pending_decls, ptr @timevar_push_1, i64 1}
!50 = !{ptr @varpool_analyze_pending_decls, ptr @fancy_abort, i64 1}
!51 = !{ptr @varpool_analyze_pending_decls, ptr @align_variable, i64 39}
!52 = !{ptr @varpool_analyze_pending_decls, ptr @record_references_in_initializer, i64 76}
!53 = !{ptr @varpool_analyze_pending_decls, ptr @timevar_pop_1, i64 1}
!54 = !{ptr @varpool_assemble_decl, ptr @assemble_variable, i64 35}
!55 = !{ptr @varpool_assemble_decl, ptr @decl_assembler_name, i64 1}
!56 = !{ptr @varpool_assemble_decl, ptr @assemble_alias, i64 1}
!57 = !{ptr @varpool_remove_unreferenced_decls, ptr @varpool_reset_queue, i64 1}
!58 = !{ptr @varpool_remove_unreferenced_decls, ptr @decide_is_variable_needed, i64 9}
!59 = !{ptr @varpool_remove_unreferenced_decls, ptr @varpool_mark_needed_node, i64 9}
!60 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!61 = !{!"function_entry_count", i64 0}
!62 = !{!63, !64, i64 176}
!63 = !{!"lang_hooks", !64, i64 0, !67, i64 8, !64, i64 16, !64, i64 24, !64, i64 32, !64, i64 40, !64, i64 48, !64, i64 56, !64, i64 64, !64, i64 72, !64, i64 80, !64, i64 88, !64, i64 96, !64, i64 104, !64, i64 112, !64, i64 120, !64, i64 128, !64, i64 136, !64, i64 144, !64, i64 152, !64, i64 160, !64, i64 168, !64, i64 176, !64, i64 184, !64, i64 192, !64, i64 200, !64, i64 208, !64, i64 216, !64, i64 224, !64, i64 232, !68, i64 240, !69, i64 248, !70, i64 256, !71, i64 272, !72, i64 432, !73, i64 560, !64, i64 584, !64, i64 592, !64, i64 600, !64, i64 608, !64, i64 616, !64, i64 624, !64, i64 632, !64, i64 640, !64, i64 648, !64, i64 656, !64, i64 664, !65, i64 672}
!64 = !{!"any pointer", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C/C++ TBAA"}
!67 = !{!"long", !65, i64 0}
!68 = !{!"lang_hooks_for_tree_inlining", !64, i64 0}
!69 = !{!"lang_hooks_for_callgraph", !64, i64 0}
!70 = !{!"lang_hooks_for_tree_dump", !64, i64 0, !64, i64 8}
!71 = !{!"lang_hooks_for_decls", !64, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !64, i64 32, !64, i64 40, !64, i64 48, !64, i64 56, !64, i64 64, !64, i64 72, !64, i64 80, !64, i64 88, !64, i64 96, !64, i64 104, !64, i64 112, !64, i64 120, !64, i64 128, !64, i64 136, !64, i64 144, !64, i64 152}
!72 = !{!"lang_hooks_for_types", !64, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !64, i64 32, !64, i64 40, !64, i64 48, !64, i64 56, !64, i64 64, !64, i64 72, !64, i64 80, !64, i64 88, !64, i64 96, !64, i64 104, !64, i64 112, !65, i64 120}
!73 = !{!"lang_hooks_for_lto", !64, i64 0, !64, i64 8, !64, i64 16}
!74 = !{!75, !64, i64 0}
!75 = !{!"varpool_node", !64, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !76, i64 32, !76, i64 36, !76, i64 36, !76, i64 36, !76, i64 36, !76, i64 36, !76, i64 36, !76, i64 36}
!76 = !{!"int", !65, i64 0}
!77 = !{!"function_entry_count", i64 77410}
!78 = !{!76, !76, i64 0}
!79 = !{!"branch_weights", i32 77411, i32 -1298735836}
!80 = !{!64, !64, i64 0}
!81 = !{!"branch_weights", i32 2, i32 77410}
!82 = !{!"branch_weights", i32 47, i32 77365}
!83 = !{!75, !76, i64 32}
!84 = !{!75, !64, i64 8}
!85 = !{!"function_entry_count", i64 77490}
!86 = !{!"varpool.c:hash_varpool_node"}
!87 = !{!65, !65, i64 0}
!88 = !{!"function_entry_count", i64 132610}
!89 = !{!"varpool.c:eq_varpool_node"}
!90 = !{i32 1, i32 4}
!91 = !{!92, !64, i64 1112}
!92 = !{!"gcc_target", !93, i64 0, !95, i64 368, !96, i64 664, !76, i64 744, !64, i64 752, !64, i64 760, !64, i64 768, !64, i64 776, !64, i64 784, !64, i64 792, !64, i64 800, !64, i64 808, !64, i64 816, !64, i64 824, !64, i64 832, !64, i64 840, !64, i64 848, !64, i64 856, !64, i64 864, !64, i64 872, !64, i64 880, !64, i64 888, !64, i64 896, !64, i64 904, !64, i64 912, !64, i64 920, !64, i64 928, !64, i64 936, !64, i64 944, !64, i64 952, !64, i64 960, !64, i64 968, !64, i64 976, !64, i64 984, !64, i64 992, !64, i64 1000, !64, i64 1008, !64, i64 1016, !64, i64 1024, !64, i64 1032, !64, i64 1040, !64, i64 1048, !64, i64 1056, !67, i64 1064, !67, i64 1072, !64, i64 1080, !64, i64 1088, !64, i64 1096, !64, i64 1104, !64, i64 1112, !64, i64 1120, !64, i64 1128, !64, i64 1136, !64, i64 1144, !64, i64 1152, !64, i64 1160, !64, i64 1168, !97, i64 1176, !64, i64 1232, !64, i64 1240, !64, i64 1248, !64, i64 1256, !64, i64 1264, !64, i64 1272, !64, i64 1280, !64, i64 1288, !64, i64 1296, !64, i64 1304, !64, i64 1312, !64, i64 1320, !64, i64 1328, !64, i64 1336, !64, i64 1344, !64, i64 1352, !64, i64 1360, !64, i64 1368, !64, i64 1376, !64, i64 1384, !64, i64 1392, !64, i64 1400, !64, i64 1408, !64, i64 1416, !64, i64 1424, !64, i64 1432, !64, i64 1440, !64, i64 1448, !64, i64 1456, !67, i64 1464, !98, i64 1472, !64, i64 1664, !64, i64 1672, !64, i64 1680, !64, i64 1688, !64, i64 1696, !64, i64 1704, !64, i64 1712, !64, i64 1720, !64, i64 1728, !64, i64 1736, !64, i64 1744, !64, i64 1752, !64, i64 1760, !64, i64 1768, !64, i64 1776, !99, i64 1784, !100, i64 1792, !101, i64 1896, !102, i64 1968, !64, i64 2016, !65, i64 2024, !65, i64 2025, !65, i64 2026, !65, i64 2027, !65, i64 2028, !65, i64 2029, !65, i64 2030, !65, i64 2031, !65, i64 2032, !65, i64 2033, !65, i64 2034, !65, i64 2035}
!93 = !{!"asm_out", !64, i64 0, !64, i64 8, !64, i64 16, !94, i64 24, !94, i64 56, !64, i64 88, !64, i64 96, !64, i64 104, !64, i64 112, !64, i64 120, !64, i64 128, !64, i64 136, !64, i64 144, !64, i64 152, !64, i64 160, !64, i64 168, !64, i64 176, !64, i64 184, !64, i64 192, !64, i64 200, !64, i64 208, !64, i64 216, !64, i64 224, !64, i64 232, !64, i64 240, !64, i64 248, !64, i64 256, !64, i64 264, !64, i64 272, !64, i64 280, !64, i64 288, !64, i64 296, !64, i64 304, !64, i64 312, !64, i64 320, !64, i64 328, !64, i64 336, !64, i64 344, !64, i64 352, !64, i64 360}
!94 = !{!"asm_int_op", !64, i64 0, !64, i64 8, !64, i64 16, !64, i64 24}
!95 = !{!"sched", !64, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !64, i64 32, !64, i64 40, !64, i64 48, !64, i64 56, !64, i64 64, !64, i64 72, !64, i64 80, !64, i64 88, !64, i64 96, !64, i64 104, !64, i64 112, !64, i64 120, !64, i64 128, !64, i64 136, !64, i64 144, !64, i64 152, !64, i64 160, !64, i64 168, !64, i64 176, !64, i64 184, !64, i64 192, !64, i64 200, !64, i64 208, !64, i64 216, !64, i64 224, !64, i64 232, !64, i64 240, !64, i64 248, !64, i64 256, !64, i64 264, !64, i64 272, !64, i64 280, !64, i64 288}
!96 = !{!"vectorize", !64, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !64, i64 32, !64, i64 40, !64, i64 48, !64, i64 56, !64, i64 64, !64, i64 72}
!97 = !{!"addr_space", !64, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !64, i64 32, !64, i64 40, !64, i64 48}
!98 = !{!"calls", !64, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !64, i64 32, !64, i64 40, !64, i64 48, !64, i64 56, !64, i64 64, !64, i64 72, !64, i64 80, !64, i64 88, !64, i64 96, !64, i64 104, !64, i64 112, !64, i64 120, !64, i64 128, !64, i64 136, !64, i64 144, !64, i64 152, !64, i64 160, !64, i64 168, !64, i64 176, !64, i64 184}
!99 = !{!"c", !64, i64 0}
!100 = !{!"cxx", !64, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !64, i64 32, !64, i64 40, !64, i64 48, !64, i64 56, !64, i64 64, !64, i64 72, !64, i64 80, !64, i64 88, !64, i64 96}
!101 = !{!"emutls", !64, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !64, i64 32, !64, i64 40, !64, i64 48, !64, i64 56, !65, i64 64, !65, i64 65}
!102 = !{!"target_option_hooks", !64, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !64, i64 32, !64, i64 40}
!103 = distinct !{!103, !104}
!104 = !{!"llvm.loop.mustprogress"}
!105 = distinct !{!105, !104}
!106 = !{!"branch_weights", i32 77411, i32 1}
!107 = !{!75, !64, i64 24}
!108 = !{!"branch_weights", i32 86, i32 77326}
!109 = !{!"branch_weights", i32 46, i32 41}
!110 = !{!"branch_weights", i32 41, i32 1}
!111 = !{!"function_entry_count", i64 78}
!112 = !{!"varpool.c:varpool_enqueue_needed_node"}
!113 = !{!"branch_weights", i32 3, i32 77}
!114 = !{!75, !64, i64 16}
!115 = !{!"branch_weights", i32 41, i32 39}
!116 = !{!"branch_weights", i32 78, i32 2}
!117 = !{!"branch_weights", i32 40, i32 197}
!118 = !{!"branch_weights", i32 40, i32 39}
!119 = !{!"branch_weights", i32 1, i32 40}
!120 = !{!"branch_weights", i32 40, i32 1}
!121 = !{!"branch_weights", i32 1091, i32 16}
!122 = !{!"branch_weights", i32 2, i32 1}
!123 = !{!92, !65, i64 2028}
!124 = !{!"branch_weights", i32 1, i32 79}
!125 = !{i8 0, i8 2}
!126 = !{!"branch_weights", i32 1, i32 39}
!127 = !{!"function_entry_count", i64 39}
!128 = !{!"branch_weights", i32 2, i32 39}
!129 = !{!"branch_weights", i32 39, i32 2}
!130 = !{!"branch_weights", i32 39, i32 1}
!131 = !{!"function_entry_count", i64 2}
!132 = !{!"branch_weights", i32 3, i32 1}
!133 = !{!"branch_weights", i32 1, i32 191}
!134 = !{!"branch_weights", i32 191, i32 2369}
!135 = distinct !{!135, !104}
!136 = !{!"function_entry_count", i64 46}
!137 = !{!"branch_weights", i32 47, i32 1}
!138 = !{!"branch_weights", i32 1, i32 187}
!139 = !{!"branch_weights", i32 40, i32 40}
!140 = !{!"branch_weights", i32 187, i32 129}
!141 = distinct !{!141, !104}
!142 = !{!"branch_weights", i32 1641, i32 40}
!143 = !{!"branch_weights", i32 1, i32 0}
!144 = distinct !{!144, !104}
!145 = !{!"function_entry_count", i64 1}
!146 = !{!"branch_weights", i32 1, i32 127}
!147 = !{!"branch_weights", i32 127, i32 2433}
!148 = distinct !{!148, !104}
!149 = !{!"varpool.c:varpool_reset_queue"}
!150 = distinct !{!150, !104}
!151 = !{!63, !64, i64 120}
