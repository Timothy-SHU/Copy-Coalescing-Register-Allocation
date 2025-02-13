; ModuleID = 'tree-ssa-live.c'
source_filename = "tree-ssa-live.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._var_map = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, ptr, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.var_ann_d = type { i8, i32, ptr }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.referenced_var_iterator = type { %struct.htab_iterator }
%struct.htab_iterator = type { ptr, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_live_info_d = type { ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }

@.str = private unnamed_addr constant [16 x i8] c"tree-ssa-live.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@optimize = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Scope blocks after cleanups:\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\0APartition map \0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Partition %d (\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"\0ALive on entry to BB%d : \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"\0ALive on exit from BB%d : \00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.12 = private unnamed_addr constant [26 x i8] c"\0A%*s{ Scope block #%i%s%s\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [10 x i8] c" (unused)\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c" (abstract)\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c" %s:%i\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c" Originating from :\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.18 = private unnamed_addr constant [4 x i8] c"#%i\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c" (nonlocalized)\0A\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"\0A%*s}\0A\00", align 1
@debug_hooks = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.25 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.26 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@debug_info_level = external local_unnamed_addr global i32, align 4
@.str.27 = private unnamed_addr constant [11 x i8] c"artificial\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"./tree-ssa-live.h\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @init_var_map(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @xmalloc(i64 noundef 56) #16
  %3 = tail call ptr @partition_new(i32 noundef %0) #16
  store ptr %3, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct._var_map, ptr %2, i64 0, i32 1
  %5 = getelementptr inbounds %struct._var_map, ptr %2, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store i32 %0, ptr %5, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct._var_map, ptr %2, i64 0, i32 4
  store i32 %0, ptr %6, align 4, !tbaa !12
  %7 = getelementptr inbounds %struct._var_map, ptr %2, i64 0, i32 5
  store i32 0, ptr %7, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct._var_map, ptr %2, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @partition_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_var_map(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @var_map_base_fini(ptr noundef %0) #17
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  tail call void @partition_delete(ptr noundef %2) #16
  %3 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %4) #17
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %9) #17
  br label %12

12:                                               ; preds = %11, %7
  tail call void @free(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @var_map_base_fini(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 7
  tail call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %6) #17
  %7 = load ptr, ptr %2, align 8, !tbaa !16
  tail call void @free(ptr noundef %7) #17
  store ptr null, ptr %2, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 5
  store i32 0, ptr %8, align 8, !tbaa !13
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @partition_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @var_union(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 175, ptr noundef nonnull @.str.1) #16
  br label %8

8:                                                ; preds = %3, %7
  %9 = load i64, ptr %2, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 176, ptr noundef nonnull @.str.1) #16
  br label %13

13:                                               ; preds = %8, %12
  %14 = load ptr, ptr %0, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !17
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.partition_def, ptr %14, i64 0, i32 1, i64 %17
  %19 = load i32, ptr %18, align 8, !tbaa !18
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !17
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.partition_def, ptr %14, i64 0, i32 1, i64 %22
  %24 = load i32, ptr %23, align 8, !tbaa !18
  %25 = icmp eq i32 %19, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 185, ptr noundef nonnull @.str.1) #16
  br label %27

27:                                               ; preds = %13, %26
  %28 = icmp eq i32 %24, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 186, ptr noundef nonnull @.str.1) #16
  br label %30

30:                                               ; preds = %27, %29
  %31 = icmp eq i32 %19, %24
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %0, align 8, !tbaa !5
  %34 = tail call i32 @partition_union(ptr noundef %33, i32 noundef %19, i32 noundef %24) #16
  br label %35

35:                                               ; preds = %30, %32
  %36 = phi i32 [ %34, %32 ], [ %19, %30 ]
  %37 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = sext i32 %36 to i64
  %42 = getelementptr inbounds i32, ptr %38, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !20
  br label %44

44:                                               ; preds = %40, %35
  %45 = phi i32 [ %43, %40 ], [ %36, %35 ]
  ret i32 %45
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @partition_union(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @partition_view_normal(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @partition_view_init(ptr noundef %0) #17
  tail call fastcc void @partition_view_fini(ptr noundef %0, ptr noundef %3) #17
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @var_map_base_init(ptr noundef %0) #17
  br label %7

6:                                                ; preds = %2
  tail call fastcc void @var_map_base_fini(ptr noundef %0) #17
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @partition_view_init(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %3 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %4) #17
  store ptr null, ptr %3, align 8, !tbaa !14
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %9) #17
  store ptr null, ptr %8, align 8, !tbaa !15
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %57, label %16

16:                                               ; preds = %12, %52
  %17 = phi i64 [ %53, %52 ], [ 0, %12 ]
  %18 = load ptr, ptr %0, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.partition_def, ptr %18, i64 0, i32 1, i64 %17
  %20 = load i32, ptr %19, align 8, !tbaa !18
  %21 = load ptr, ptr @cfun, align 8, !tbaa !21
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  %24 = getelementptr inbounds %struct.gimple_df, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !24
  %26 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %25, i32 noundef %20) #17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %52, label %28

28:                                               ; preds = %16
  %29 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %26) #16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr @cfun, align 8, !tbaa !21
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !22
  %35 = getelementptr inbounds %struct.gimple_df, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !24
  %37 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %36, i32 noundef %20) #17
  %38 = tail call fastcc zeroext i8 @has_zero_uses(ptr noundef %37) #17
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %31
  %41 = load ptr, ptr @cfun, align 8, !tbaa !21
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !22
  %44 = getelementptr inbounds %struct.gimple_df, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !24
  %46 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %45, i32 noundef %20) #17
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 4294967296
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40, %31
  %51 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %20) #16
  br label %52

52:                                               ; preds = %16, %28, %40, %50
  %53 = add nuw nsw i64 %17, 1
  %54 = load i32, ptr %13, align 4, !tbaa !12
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %16, label %57, !llvm.loop !28

57:                                               ; preds = %52, %12
  %58 = phi i32 [ 0, %12 ], [ %54, %52 ]
  %59 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 3
  store i32 %58, ptr %59, align 8, !tbaa !11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @partition_view_fini(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 269, ptr noundef nonnull @.str.1) #16
  br label %7

7:                                                ; preds = %2, %6
  %8 = tail call i64 @bitmap_count_bits(ptr noundef %1) #16
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !12
  %12 = icmp ugt i32 %11, %9
  br i1 %12, label %13, label %42

13:                                               ; preds = %7
  %14 = zext i32 %11 to i64
  %15 = shl nuw nsw i64 %14, 2
  %16 = tail call ptr @xmalloc(i64 noundef %15) #16
  %17 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr align 4 %16, i8 -1, i64 %15, i1 false)
  %18 = shl i64 %8, 2
  %19 = and i64 %18, 17179869180
  %20 = tail call ptr @xmalloc(i64 noundef %19) #16
  %21 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !15
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %4) #17
  %22 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #17, !range !30
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %13
  %25 = load ptr, ptr %17, align 8, !tbaa !14
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i32 [ 0, %24 ], [ %33, %26 ]
  %28 = load i32, ptr %4, align 4, !tbaa !20
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, ptr %25, i64 %29
  store i32 %27, ptr %30, align 4, !tbaa !20
  %31 = zext i32 %27 to i64
  %32 = getelementptr inbounds i32, ptr %20, i64 %31
  store i32 %28, ptr %32, align 4, !tbaa !20
  %33 = add i32 %27, 1
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %34 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #17, !range !30
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %26, !llvm.loop !31

36:                                               ; preds = %26, %13
  %37 = phi i32 [ 0, %13 ], [ %33, %26 ]
  %38 = icmp eq i32 %37, %9
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 289, ptr noundef nonnull @.str.1) #16
  br label %40

40:                                               ; preds = %36, %39
  %41 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 3
  store i32 %37, ptr %41, align 8, !tbaa !11
  br label %42

42:                                               ; preds = %40, %7
  tail call void @bitmap_obstack_free(ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @var_map_base_init(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @num_var_partitions(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %4) #17
  %7 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !32
  tail call fastcc void @VEC_tree_base_truncate(ptr noundef %8) #17
  br label %15

9:                                                ; preds = %1
  %10 = icmp slt i32 %2, 400
  %11 = sdiv i32 %2, 10
  %12 = select i1 %10, i32 40, i32 %11
  %13 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %12) #17
  %14 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 7
  store ptr %13, ptr %14, align 8, !tbaa !32
  br label %15

15:                                               ; preds = %9, %6
  %16 = sext i32 %2 to i64
  %17 = shl nsw i64 %16, 2
  %18 = tail call ptr @xmalloc(i64 noundef %17) #16
  store ptr %18, ptr %3, align 8, !tbaa !16
  %19 = icmp sgt i32 %2, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 5
  store i32 0, ptr %21, align 8, !tbaa !13
  br label %70

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 7
  %24 = zext nneg i32 %2 to i64
  br label %25

25:                                               ; preds = %22, %48
  %26 = phi ptr [ %18, %22 ], [ %49, %48 ]
  %27 = phi i64 [ 0, %22 ], [ %54, %48 ]
  %28 = phi i32 [ 0, %22 ], [ %50, %48 ]
  %29 = trunc i64 %27 to i32
  %30 = tail call fastcc ptr @partition_to_var(ptr noundef nonnull %0, i32 noundef %29) #17
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 141
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.tree_ssa_name, ptr %30, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !17
  br label %37

37:                                               ; preds = %34, %25
  %38 = phi ptr [ %36, %34 ], [ %30, %25 ]
  %39 = tail call fastcc ptr @var_ann(ptr noundef %38) #17
  %40 = load i8, ptr %39, align 8
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = or disjoint i8 %40, 1
  store i8 %44, ptr %39, align 8
  %45 = add nsw i32 %28, 1
  %46 = getelementptr inbounds %struct.var_ann_d, ptr %39, i64 0, i32 1
  store i32 %28, ptr %46, align 4, !tbaa !33
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %23, ptr noundef %38) #17
  %47 = load ptr, ptr %3, align 8, !tbaa !16
  br label %48

48:                                               ; preds = %43, %37
  %49 = phi ptr [ %26, %37 ], [ %47, %43 ]
  %50 = phi i32 [ %28, %37 ], [ %45, %43 ]
  %51 = getelementptr inbounds %struct.var_ann_d, ptr %39, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !33
  %53 = getelementptr inbounds i32, ptr %49, i64 %27
  store i32 %52, ptr %53, align 4, !tbaa !20
  %54 = add nuw nsw i64 %27, 1
  %55 = icmp eq i64 %54, %24
  br i1 %55, label %56, label %25, !llvm.loop !35

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 5
  store i32 %50, ptr %57, align 8, !tbaa !13
  %58 = icmp sgt i32 %50, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 7
  br label %61

61:                                               ; preds = %59, %61
  %62 = phi i32 [ 0, %59 ], [ %68, %61 ]
  %63 = load ptr, ptr %60, align 8, !tbaa !32
  %64 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %63, i32 noundef %62) #17
  %65 = tail call fastcc ptr @var_ann(ptr noundef %64) #17
  %66 = load i8, ptr %65, align 8
  %67 = and i8 %66, -2
  store i8 %67, ptr %65, align 8
  %68 = add nuw nsw i32 %62, 1
  %69 = icmp eq i32 %68, %50
  br i1 %69, label %70, label %61, !llvm.loop !36

70:                                               ; preds = %61, %20, %56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @partition_view_bitmap(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %7 = tail call fastcc ptr @partition_view_init(ptr noundef %0) #17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %4) #17
  %8 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #17, !range !30
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %3, %19
  %11 = load ptr, ptr %0, align 8, !tbaa !5
  %12 = load i32, ptr %4, align 4, !tbaa !20
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.partition_def, ptr %11, i64 0, i32 1, i64 %13
  %15 = load i32, ptr %14, align 8, !tbaa !18
  %16 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef %15) #16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 331, ptr noundef nonnull @.str.1) #16
  br label %19

19:                                               ; preds = %10, %18
  %20 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %15) #16
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  %21 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #17, !range !30
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %10, !llvm.loop !37

23:                                               ; preds = %19, %3
  tail call fastcc void @partition_view_fini(ptr noundef %0, ptr noundef %6) #17
  tail call void @bitmap_obstack_free(ptr noundef %7) #16
  %24 = icmp eq i8 %2, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call fastcc void @var_map_base_init(ptr noundef %0) #17
  br label %27

26:                                               ; preds = %23
  tail call fastcc void @var_map_base_fini(ptr noundef %0) #17
  br label %27

27:                                               ; preds = %26, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret void
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 {
  %4 = load ptr, ptr %1, align 8, !tbaa !38
  store ptr %4, ptr %0, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !43
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !40
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !44
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !48
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !48
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !20
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !49

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !20
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !20
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !46
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !40
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !46
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !47
  store i64 %35, ptr %3, align 8, !tbaa !48
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !20
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !20
  %40 = load i32, ptr %23, align 8, !tbaa !46
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !46
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !50

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !51
  store ptr %44, ptr %0, align 8, !tbaa !40
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !44
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !20
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !48
  store i32 %16, ptr %1, align 4, !tbaa !20
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !48
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !48
  %6 = load i32, ptr %1, align 4, !tbaa !20
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !20
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_scope_block(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !21
  tail call fastcc void @dump_scope_block(ptr noundef %3, i32 noundef 0, ptr noundef %0, i32 noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_scope_block(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.expanded_location, align 8
  %6 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 1
  %9 = load i64, ptr %2, align 8
  %10 = and i64 %9, 16777216
  %11 = icmp eq i64 %10, 0
  %12 = select i1 %11, ptr @.str.14, ptr @.str.13
  %13 = and i32 %7, 1
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, ptr @.str.13, ptr @.str.15
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %1, ptr noundef nonnull @.str.13, i32 noundef %8, ptr noundef nonnull %12, ptr noundef nonnull %15) #17
  %17 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %18) #16
  %21 = load ptr, ptr %5, align 8, !tbaa !52
  %22 = getelementptr inbounds %struct.expanded_location, ptr %5, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !54
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %21, i32 noundef %23) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  br label %25

25:                                               ; preds = %20, %4
  %26 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %45, label %29

29:                                               ; preds = %25
  %30 = call ptr @block_ultimate_origin(ptr noundef nonnull %2) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %29
  %33 = call i64 @fwrite(ptr nonnull @.str.17, i64 19, i64 1, ptr %0)
  %34 = load i64, ptr %30, align 8
  %35 = and i64 %34, 65535
  %36 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !20
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  call void @print_generic_decl(ptr noundef %0, ptr noundef nonnull %30, i32 noundef %3) #16
  br label %45

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.tree_block, ptr %30, i64 0, i32 1
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 1
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %43) #17
  br label %45

45:                                               ; preds = %29, %40, %39, %25
  %46 = call i64 @fwrite(ptr nonnull @.str.19, i64 2, i64 1, ptr %0)
  %47 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !17
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %64, %45
  %51 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !17
  %53 = call fastcc i32 @VEC_tree_base_length(ptr noundef %52) #17
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %81, label %71

55:                                               ; preds = %45, %64
  %56 = phi ptr [ %69, %64 ], [ %48, %45 ]
  %57 = call fastcc ptr @var_ann(ptr noundef nonnull %56) #17
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = load i8, ptr %57, align 8
  %61 = and i8 %60, 2
  %62 = icmp eq i8 %61, 0
  %63 = select i1 %62, ptr @.str.14, ptr @.str.13
  br label %64

64:                                               ; preds = %59, %55
  %65 = phi ptr [ @.str.14, %55 ], [ %63, %59 ]
  %66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %1, ptr noundef nonnull @.str.13) #17
  call void @print_generic_decl(ptr noundef %0, ptr noundef nonnull %56, i32 noundef %3) #16
  %67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull %65) #17
  %68 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !17
  %70 = icmp eq ptr %69, null
  br i1 %70, label %50, label %55, !llvm.loop !55

71:                                               ; preds = %50, %71
  %72 = phi i32 [ %77, %71 ], [ 0, %50 ]
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %1, ptr noundef nonnull @.str.13) #17
  %74 = load ptr, ptr %51, align 8, !tbaa !17
  %75 = call fastcc ptr @VEC_tree_base_index(ptr noundef %74, i32 noundef %72) #17
  call void @print_generic_decl(ptr noundef %0, ptr noundef %75, i32 noundef %3) #16
  %76 = call i64 @fwrite(ptr nonnull @.str.22, i64 16, i64 1, ptr %0)
  %77 = add nuw i32 %72, 1
  %78 = load ptr, ptr %51, align 8, !tbaa !17
  %79 = call fastcc i32 @VEC_tree_base_length(ptr noundef %78) #17
  %80 = icmp ult i32 %77, %79
  br i1 %80, label %71, label %81, !llvm.loop !56

81:                                               ; preds = %71, %50
  %82 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !17
  %84 = icmp eq ptr %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %81
  %86 = add nsw i32 %1, 2
  br label %87

87:                                               ; preds = %85, %87
  %88 = phi ptr [ %83, %85 ], [ %90, %87 ]
  call fastcc void @dump_scope_block(ptr noundef %0, i32 noundef %86, ptr noundef nonnull %88, i32 noundef %3) #17
  %89 = getelementptr inbounds %struct.tree_common, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !17
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %87, !llvm.loop !57

92:                                               ; preds = %87, %81
  %93 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %1, ptr noundef nonnull @.str.13) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_scope_blocks(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  tail call fastcc void @dump_scope_block(ptr noundef %0, i32 noundef 0, ptr noundef %5, i32 noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_scope_blocks(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !21
  tail call void @dump_scope_blocks(ptr noundef %2, i32 noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_unused_locals() local_unnamed_addr #0 {
  %1 = alloca %struct.referenced_var_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ssa_operand_iterator_d, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #18
  %8 = load i32, ptr @optimize, align 4, !tbaa !20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %287, label %10

10:                                               ; preds = %0
  %11 = load ptr, ptr @current_function_decl, align 8, !tbaa !21
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  tail call fastcc void @mark_scope_block_unused(ptr noundef %13) #17
  %14 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %1) #17
  %15 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #17, !range !30
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %10, %17
  %18 = phi ptr [ %22, %17 ], [ %14, %10 ]
  %19 = tail call fastcc ptr @var_ann(ptr noundef %18) #17
  %20 = load i8, ptr %19, align 8
  %21 = and i8 %20, -3
  store i8 %21, ptr %19, align 8
  %22 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %1) #17
  %23 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #17, !range !30
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %17, label %25, !llvm.loop !58

25:                                               ; preds = %17, %10
  %26 = load ptr, ptr @cfun, align 8, !tbaa !21
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !59
  %29 = load ptr, ptr %28, align 8, !tbaa !60
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !62
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !64
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %118, label %35

35:                                               ; preds = %25
  %36 = getelementptr inbounds i8, ptr %3, i64 8
  br label %37

37:                                               ; preds = %35, %109
  %38 = phi ptr [ %31, %35 ], [ %111, %109 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %38) #17
  %39 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !30
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %37, %63
  %42 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %43 = call fastcc ptr @gimple_block(ptr noundef %42) #17
  %44 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %42) #17, !range !30
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %41
  %47 = icmp eq ptr %43, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %46
  %49 = load i64, ptr %43, align 8
  %50 = or i64 %49, 16777216
  store i64 %50, ptr %43, align 8
  br label %51

51:                                               ; preds = %48, %46
  %52 = call fastcc i32 @gimple_num_ops(ptr noundef %42) #17
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %51, %54
  %55 = phi i64 [ %59, %54 ], [ 0, %51 ]
  %56 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %57 = trunc i64 %55 to i32
  %58 = call fastcc ptr @gimple_op_ptr(ptr noundef %56, i32 noundef %57) #17
  call fastcc void @mark_all_vars_used(ptr noundef %58, ptr noundef null) #17
  %59 = add nuw nsw i64 %55, 1
  %60 = call fastcc i32 @gimple_num_ops(ptr noundef %42) #17
  %61 = zext i32 %60 to i64
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %54, label %63, !llvm.loop !65

63:                                               ; preds = %54, %51, %41
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %64 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !30
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %41, label %66, !llvm.loop !66

66:                                               ; preds = %63, %37
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %38) #16
  %67 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !30
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %66, %86
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %70 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %71 = call fastcc ptr @gimple_phi_result(ptr noundef %70) #17
  %72 = getelementptr inbounds %struct.tree_ssa_name, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !17
  %74 = call fastcc zeroext i8 @is_global_var(ptr noundef %73) #17, !range !30
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %69
  store ptr %71, ptr %6, align 8, !tbaa !21
  call fastcc void @mark_all_vars_used(ptr noundef nonnull %6, ptr noundef null) #17
  %77 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %5, ptr noundef %70) #17
  %78 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #17
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76, %80
  %81 = phi ptr [ %83, %80 ], [ %77, %76 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  %82 = call fastcc ptr @get_use_from_ptr(ptr noundef %81) #17
  store ptr %82, ptr %7, align 8, !tbaa !21
  call fastcc void @mark_all_vars_used(ptr noundef nonnull %7, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  %83 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %5) #17
  %84 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #17
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %80, label %86, !llvm.loop !67

86:                                               ; preds = %80, %76, %69
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #18
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %87 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !30
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %69, label %89, !llvm.loop !68

89:                                               ; preds = %86, %66
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 1
  %91 = call fastcc ptr @ei_start_1(ptr noundef nonnull %90) #17
  store i32 0, ptr %3, align 8, !tbaa.struct !69
  store ptr %91, ptr %36, align 8, !tbaa.struct !70
  %92 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %91, ptr noundef nonnull %4) #17, !range !30
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %109, label %94

94:                                               ; preds = %89, %104
  %95 = load ptr, ptr %4, align 8, !tbaa !21
  %96 = getelementptr inbounds %struct.edge_def, ptr %95, i64 0, i32 5
  %97 = load i32, ptr %96, align 8, !tbaa !71
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.edge_def, ptr %95, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !73
  %102 = load i64, ptr %101, align 8
  %103 = or i64 %102, 16777216
  store i64 %103, ptr %101, align 8
  br label %104

104:                                              ; preds = %94, %99
  call fastcc void @ei_next(ptr noundef nonnull %3) #17
  %105 = load i32, ptr %3, align 8
  %106 = load ptr, ptr %36, align 8
  %107 = call fastcc zeroext i8 @ei_cond(i32 %105, ptr %106, ptr noundef nonnull %4) #17, !range !30
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %94, !llvm.loop !74

109:                                              ; preds = %104, %89
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %111 = load ptr, ptr %110, align 8, !tbaa !62
  %112 = load ptr, ptr @cfun, align 8, !tbaa !21
  %113 = getelementptr inbounds %struct.function, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !59
  %115 = getelementptr inbounds %struct.control_flow_graph, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !64
  %117 = icmp eq ptr %111, %116
  br i1 %117, label %118, label %37, !llvm.loop !75

118:                                              ; preds = %109, %25
  %119 = phi ptr [ %26, %25 ], [ %112, %109 ]
  %120 = getelementptr inbounds %struct.function, ptr %119, i64 0, i32 20
  %121 = load i32, ptr %120, align 8
  %122 = and i32 %121, -536870913
  store i32 %122, ptr %120, align 8
  %123 = getelementptr inbounds %struct.function, ptr %119, i64 0, i32 9
  %124 = load ptr, ptr %123, align 8, !tbaa !21
  %125 = icmp eq ptr %124, null
  br i1 %125, label %248, label %126

126:                                              ; preds = %118, %177
  %127 = phi ptr [ %178, %177 ], [ %124, %118 ]
  %128 = phi ptr [ %180, %177 ], [ %123, %118 ]
  %129 = phi ptr [ %179, %177 ], [ null, %118 ]
  %130 = getelementptr inbounds %struct.tree_list, ptr %127, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !17
  %132 = load i64, ptr %131, align 8
  %133 = and i64 %132, 65535
  %134 = icmp eq i64 %133, 29
  br i1 %134, label %172, label %135

135:                                              ; preds = %126
  %136 = call fastcc ptr @var_ann(ptr noundef nonnull %131) #17
  %137 = icmp eq ptr %136, null
  br i1 %137, label %142, label %138

138:                                              ; preds = %135
  %139 = load i8, ptr %136, align 8
  %140 = and i8 %139, 2
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %138, %135
  %143 = call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %131) #17, !range !30
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %154, label %145

145:                                              ; preds = %142
  %146 = icmp eq ptr %129, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %145
  %148 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi ptr [ %148, %147 ], [ %129, %145 ]
  %151 = getelementptr inbounds %struct.tree_decl_minimal, ptr %131, i64 0, i32 2
  %152 = load i32, ptr %151, align 4, !tbaa !17
  %153 = call zeroext i8 @bitmap_set_bit(ptr noundef %150, i32 noundef %152) #16
  br label %172

154:                                              ; preds = %142
  %155 = getelementptr inbounds %struct.tree_common, ptr %127, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !17
  store ptr %156, ptr %128, align 8, !tbaa !21
  br label %177, !llvm.loop !76

157:                                              ; preds = %138
  %158 = icmp eq i64 %133, 32
  br i1 %158, label %159, label %172

159:                                              ; preds = %157
  %160 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %131, i64 0, i32 4
  %161 = load i32, ptr %160, align 8
  %162 = and i32 %161, 2
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %172, label %164

164:                                              ; preds = %159
  %165 = call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %131) #17, !range !30
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = load ptr, ptr @cfun, align 8, !tbaa !21
  %169 = getelementptr inbounds %struct.function, ptr %168, i64 0, i32 20
  %170 = load i32, ptr %169, align 8
  %171 = or i32 %170, 536870912
  store i32 %171, ptr %169, align 8
  br label %172

172:                                              ; preds = %126, %157, %159, %164, %167, %149
  %173 = phi ptr [ %129, %164 ], [ %129, %167 ], [ %129, %159 ], [ %129, %157 ], [ %150, %149 ], [ %129, %126 ]
  %174 = load ptr, ptr %128, align 8, !tbaa !21
  %175 = getelementptr inbounds %struct.tree_common, ptr %174, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !21
  br label %177

177:                                              ; preds = %172, %154
  %178 = phi ptr [ %176, %172 ], [ %156, %154 ]
  %179 = phi ptr [ %173, %172 ], [ %129, %154 ]
  %180 = phi ptr [ %175, %172 ], [ %128, %154 ]
  %181 = icmp eq ptr %178, null
  br i1 %181, label %182, label %126

182:                                              ; preds = %177
  %183 = icmp eq ptr %179, null
  br i1 %183, label %248, label %184

184:                                              ; preds = %182
  %185 = load ptr, ptr @cfun, align 8, !tbaa !21
  %186 = getelementptr inbounds %struct.function, ptr %185, i64 0, i32 9
  %187 = load ptr, ptr %186, align 8, !tbaa !17
  %188 = icmp eq ptr %187, null
  br i1 %188, label %247, label %189

189:                                              ; preds = %184, %208
  %190 = phi ptr [ %210, %208 ], [ %187, %184 ]
  %191 = getelementptr inbounds %struct.tree_list, ptr %190, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !17
  %193 = load i64, ptr %192, align 8
  %194 = and i64 %193, 65535
  %195 = icmp eq i64 %194, 32
  br i1 %195, label %196, label %208

196:                                              ; preds = %189
  %197 = call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %192) #17, !range !30
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %208, label %199

199:                                              ; preds = %196
  %200 = call fastcc ptr @var_ann(ptr noundef nonnull %192) #17
  %201 = icmp eq ptr %200, null
  br i1 %201, label %208, label %202

202:                                              ; preds = %199
  %203 = load i8, ptr %200, align 8
  %204 = and i8 %203, 2
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.tree_decl_common, ptr %192, i64 0, i32 5
  call fastcc void @mark_all_vars_used(ptr noundef nonnull %207, ptr noundef nonnull %179) #17
  br label %208

208:                                              ; preds = %206, %202, %199, %196, %189
  %209 = getelementptr inbounds %struct.tree_common, ptr %190, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !17
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %189, !llvm.loop !77

212:                                              ; preds = %208
  %213 = load ptr, ptr @cfun, align 8, !tbaa !21
  %214 = getelementptr inbounds %struct.function, ptr %213, i64 0, i32 9
  %215 = load ptr, ptr %214, align 8, !tbaa !21
  %216 = icmp eq ptr %215, null
  br i1 %216, label %247, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.function, ptr %213, i64 0, i32 9
  br label %219

219:                                              ; preds = %217, %243
  %220 = phi ptr [ %244, %243 ], [ %215, %217 ]
  %221 = phi ptr [ %245, %243 ], [ %218, %217 ]
  %222 = getelementptr inbounds %struct.tree_list, ptr %220, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !17
  %224 = load i64, ptr %223, align 8
  %225 = and i64 %224, 65535
  %226 = icmp eq i64 %225, 32
  br i1 %226, label %227, label %239

227:                                              ; preds = %219
  %228 = call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %223) #17, !range !30
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %239, label %230

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.tree_decl_minimal, ptr %223, i64 0, i32 2
  %232 = load i32, ptr %231, align 4, !tbaa !17
  %233 = call i32 @bitmap_bit_p(ptr noundef nonnull %179, i32 noundef %232) #16
  %234 = icmp eq i32 %233, 0
  %235 = load ptr, ptr %221, align 8, !tbaa !21
  br i1 %234, label %239, label %236

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.tree_common, ptr %235, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !17
  store ptr %238, ptr %221, align 8, !tbaa !21
  br label %243

239:                                              ; preds = %230, %227, %219
  %240 = phi ptr [ %235, %230 ], [ %220, %227 ], [ %220, %219 ]
  %241 = getelementptr inbounds %struct.tree_common, ptr %240, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !21
  br label %243

243:                                              ; preds = %239, %236
  %244 = phi ptr [ %238, %236 ], [ %242, %239 ]
  %245 = phi ptr [ %221, %236 ], [ %241, %239 ]
  %246 = icmp eq ptr %244, null
  br i1 %246, label %247, label %219, !llvm.loop !78

247:                                              ; preds = %243, %184, %212
  call void @bitmap_obstack_free(ptr noundef nonnull %179) #16
  br label %248

248:                                              ; preds = %118, %247, %182
  %249 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %1) #17
  %250 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #17, !range !30
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %252, label %272

252:                                              ; preds = %248, %268
  %253 = phi ptr [ %269, %268 ], [ %249, %248 ]
  %254 = call fastcc zeroext i8 @is_global_var(ptr noundef %253) #17, !range !30
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %256, label %268

256:                                              ; preds = %252
  %257 = load i64, ptr %253, align 8
  %258 = trunc i64 %257 to i16
  switch i16 %258, label %259 [
    i16 34, label %268
    i16 36, label %268
  ]

259:                                              ; preds = %256
  %260 = call fastcc ptr @var_ann(ptr noundef nonnull %253) #17
  %261 = load i8, ptr %260, align 8
  %262 = and i8 %261, 18
  %263 = icmp eq i8 %262, 0
  %264 = and i64 %257, 262144
  %265 = icmp eq i64 %264, 0
  %266 = and i1 %265, %263
  br i1 %266, label %267, label %268

267:                                              ; preds = %259
  call void @remove_referenced_var(ptr noundef nonnull %253) #16
  br label %268

268:                                              ; preds = %256, %256, %252, %259, %267
  %269 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %1) #17
  %270 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #17, !range !30
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %252, label %272, !llvm.loop !79

272:                                              ; preds = %268, %248
  %273 = load ptr, ptr @current_function_decl, align 8, !tbaa !21
  %274 = getelementptr inbounds %struct.tree_decl_common, ptr %273, i64 0, i32 5
  %275 = load ptr, ptr %274, align 8, !tbaa !17
  %276 = call fastcc zeroext i8 @remove_unused_scope_block_p(ptr noundef %275) #17, !range !30
  %277 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %278 = icmp eq ptr %277, null
  br i1 %278, label %287, label %279

279:                                              ; preds = %272
  %280 = load i32, ptr @dump_flags, align 4, !tbaa !20
  %281 = and i32 %280, 8
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %287, label %283

283:                                              ; preds = %279
  %284 = call i64 @fwrite(ptr nonnull @.str.2, i64 29, i64 1, ptr nonnull %277)
  %285 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %286 = load i32, ptr @dump_flags, align 4, !tbaa !20
  call void @dump_scope_blocks(ptr noundef %285, i32 noundef %286) #17
  br label %287

287:                                              ; preds = %272, %279, %283, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_scope_block_unused(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, -16777217
  store i64 %3, ptr %0, align 8
  %4 = load ptr, ptr @debug_hooks, align 8, !tbaa !21
  %5 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = tail call zeroext i8 %6(ptr noundef nonnull %0) #16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i64, ptr %0, align 8
  %11 = or i64 %10, 16777216
  store i64 %11, ptr %0, align 8
  br label %12

12:                                               ; preds = %9, %1
  %13 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %19, %16 ], [ %14, %12 ]
  tail call fastcc void @mark_scope_block_unused(ptr noundef nonnull %17) #17
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %16, !llvm.loop !82

21:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_referenced_var(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !21
  %3 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %2) #17
  %4 = tail call fastcc ptr @first_htab_element(ptr noundef %0, ptr noundef %3) #17
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_referenced_vars_p(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc zeroext i8 @end_htab_p(ptr noundef %0) #17, !range !30
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @var_ann(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 32, label %4
    i16 34, label %6
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %12

8:                                                ; preds = %1
  %9 = and i64 %2, 65535
  %10 = icmp eq i64 %9, 36
  %11 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  br i1 %10, label %12, label %15

12:                                               ; preds = %8, %4, %6
  %13 = phi ptr [ %7, %6 ], [ %5, %4 ], [ %11, %8 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !21
  br label %15

15:                                               ; preds = %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ]
  ret ptr %16
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_referenced_var(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = tail call fastcc ptr @next_htab_element(ptr noundef %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !83
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !85
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_block(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !89
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !17
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_all_vars_used(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @walk_tree_1(ptr noundef %0, ptr noundef nonnull @mark_all_vars_used_1, ptr noundef %1, ptr noundef null, ptr noundef null) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !30
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #17
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !83
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  store ptr %4, ptr %0, align 8, !tbaa !83
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = lshr i64 %7, 25
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i8 [ 1, %1 ], [ %10, %5 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #17
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #17
  store i8 0, ptr %0, align 8, !tbaa !91
  %4 = tail call zeroext i8 @is_gimple_reg(ptr noundef %3) #16
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %5, align 8, !tbaa !93
  %6 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #17
  %7 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %6, ptr %7, align 4, !tbaa !94
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !95
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #17
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load i8, ptr %0, align 8, !tbaa !91
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !98
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !99
  store ptr %7, ptr %2, align 8, !tbaa !98
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !101
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !94
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !101
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #17
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !91
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #10 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !30
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #17
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !21
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #17
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #17
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !102
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !102
  ret void
}

; Function Attrs: optsize
declare void @remove_referenced_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @remove_unused_scope_block_p(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 16777216
  %4 = icmp eq i64 %3, 0
  %5 = zext i1 %4 to i8
  %6 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %51, label %9

9:                                                ; preds = %1, %46
  %10 = phi ptr [ %47, %46 ], [ %7, %1 ]
  %11 = phi ptr [ %49, %46 ], [ %6, %1 ]
  %12 = phi i8 [ %48, %46 ], [ %5, %1 ]
  %13 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %14 = load i64, ptr %10, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %16 [
    i16 29, label %43
    i16 32, label %19
  ]

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %18 = load i64, ptr %17, align 8
  br label %24

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 67108864
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %16, %19
  %25 = phi i64 [ %18, %16 ], [ %21, %19 ]
  %26 = and i64 %25, 1024
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %13, align 8, !tbaa !17
  store ptr %29, ptr %11, align 8, !tbaa !21
  br label %46

30:                                               ; preds = %24
  %31 = tail call fastcc ptr @var_ann(ptr noundef nonnull %10) #17
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i8, ptr %31, align 8
  %35 = and i8 %34, 2
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33, %30
  %38 = load i32, ptr @debug_info_level, align 4
  %39 = and i32 %38, -2
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %13, align 8, !tbaa !17
  store ptr %42, ptr %11, align 8, !tbaa !21
  br label %46

43:                                               ; preds = %37, %9, %19, %33
  %44 = phi i8 [ 0, %33 ], [ 0, %19 ], [ 0, %9 ], [ %12, %37 ]
  %45 = load ptr, ptr %13, align 8, !tbaa !21
  br label %46

46:                                               ; preds = %43, %28, %41
  %47 = phi ptr [ %45, %43 ], [ %29, %28 ], [ %42, %41 ]
  %48 = phi i8 [ %44, %43 ], [ %12, %28 ], [ %12, %41 ]
  %49 = phi ptr [ %13, %43 ], [ %11, %28 ], [ %11, %41 ]
  %50 = icmp eq ptr %47, null
  br i1 %50, label %51, label %9, !llvm.loop !104

51:                                               ; preds = %46, %1
  %52 = phi i8 [ %5, %1 ], [ %48, %46 ]
  %53 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !21
  %55 = icmp eq ptr %54, null
  br i1 %55, label %105, label %56

56:                                               ; preds = %51, %98
  %57 = phi ptr [ %99, %98 ], [ %54, %51 ]
  %58 = phi ptr [ %101, %98 ], [ %53, %51 ]
  %59 = phi i32 [ %100, %98 ], [ 0, %51 ]
  %60 = tail call fastcc zeroext i8 @remove_unused_scope_block_p(ptr noundef nonnull %57) #17, !range !30
  %61 = icmp eq i8 %60, 0
  %62 = load ptr, ptr %58, align 8, !tbaa !21
  br i1 %61, label %93, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.tree_block, ptr %62, i64 0, i32 5
  %65 = load ptr, ptr %64, align 8, !tbaa !17
  %66 = icmp eq ptr %65, null
  %67 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !17
  br i1 %66, label %92, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.tree_block, ptr %62, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !17
  store ptr %65, ptr %58, align 8, !tbaa !21
  %72 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !17
  %74 = icmp eq ptr %73, null
  br i1 %74, label %85, label %75

75:                                               ; preds = %69, %75
  %76 = phi ptr [ %81, %75 ], [ %65, %69 ]
  %77 = phi ptr [ %80, %75 ], [ %58, %69 ]
  %78 = getelementptr inbounds %struct.tree_block, ptr %76, i64 0, i32 6
  store ptr %71, ptr %78, align 8, !tbaa !17
  %79 = load ptr, ptr %77, align 8, !tbaa !21
  %80 = getelementptr inbounds %struct.tree_common, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !21
  %82 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !17
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %75, !llvm.loop !105

85:                                               ; preds = %75, %69
  %86 = phi ptr [ %65, %69 ], [ %81, %75 ]
  %87 = phi ptr [ %58, %69 ], [ %80, %75 ]
  %88 = getelementptr inbounds %struct.tree_common, ptr %86, i64 0, i32 1
  store ptr %68, ptr %88, align 8, !tbaa !17
  %89 = load ptr, ptr %87, align 8, !tbaa !21
  %90 = getelementptr inbounds %struct.tree_block, ptr %89, i64 0, i32 6
  store ptr %71, ptr %90, align 8, !tbaa !17
  %91 = load ptr, ptr %87, align 8, !tbaa !21
  br label %93

92:                                               ; preds = %63
  store ptr %68, ptr %58, align 8, !tbaa !21
  br label %98

93:                                               ; preds = %56, %85
  %94 = phi ptr [ %91, %85 ], [ %62, %56 ]
  %95 = getelementptr inbounds %struct.tree_common, ptr %94, i64 0, i32 1
  %96 = add nsw i32 %59, 1
  %97 = load ptr, ptr %95, align 8, !tbaa !21
  br label %98

98:                                               ; preds = %93, %92
  %99 = phi ptr [ %97, %93 ], [ %68, %92 ]
  %100 = phi i32 [ %96, %93 ], [ %59, %92 ]
  %101 = phi ptr [ %95, %93 ], [ %58, %92 ]
  %102 = icmp eq ptr %99, null
  br i1 %102, label %103, label %56, !llvm.loop !106

103:                                              ; preds = %98
  %104 = icmp eq i32 %100, 0
  br label %105

105:                                              ; preds = %103, %51
  %106 = phi i1 [ true, %51 ], [ %104, %103 ]
  %107 = icmp eq i8 %52, 0
  br i1 %107, label %159, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 6
  %110 = load ptr, ptr %109, align 8, !tbaa !17
  %111 = icmp eq ptr %110, null
  br i1 %111, label %159, label %112

112:                                              ; preds = %108
  %113 = load i64, ptr %110, align 8
  %114 = and i64 %113, 65535
  %115 = icmp eq i64 %114, 29
  br i1 %115, label %159, label %116

116:                                              ; preds = %112
  br i1 %106, label %160, label %117

117:                                              ; preds = %116
  %118 = load i32, ptr @debug_info_level, align 4
  %119 = icmp ult i32 %118, 2
  br i1 %119, label %120, label %143

120:                                              ; preds = %117
  %121 = tail call fastcc zeroext i8 @inlined_function_outer_scope_p(ptr noundef nonnull %0) #17, !range !30
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %160, label %123

123:                                              ; preds = %120, %129
  %124 = phi ptr [ %131, %129 ], [ %0, %120 ]
  %125 = icmp eq ptr %124, null
  br i1 %125, label %160, label %126

126:                                              ; preds = %123
  %127 = load i64, ptr %124, align 8
  %128 = trunc i64 %127 to i16
  switch i16 %128, label %160 [
    i16 4, label %129
    i16 29, label %133
  ]

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.tree_block, ptr %124, i64 0, i32 7
  %131 = load ptr, ptr %130, align 8, !tbaa !17
  %132 = icmp eq ptr %131, %124
  br i1 %132, label %160, label %123, !llvm.loop !107

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.tree_function_decl, ptr %124, i64 0, i32 5
  %135 = load i32, ptr %134, align 8
  %136 = and i32 %135, 2097152
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %160, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.tree_decl_common, ptr %124, i64 0, i32 6
  %140 = load ptr, ptr %139, align 8, !tbaa !17
  %141 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.27, ptr noundef %140) #16
  %142 = icmp eq ptr %141, null
  br i1 %142, label %160, label %159

143:                                              ; preds = %117
  %144 = load ptr, ptr %6, align 8, !tbaa !17
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %159

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 4
  %148 = load ptr, ptr %147, align 8, !tbaa !17
  %149 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %148) #17
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %146
  %152 = tail call fastcc zeroext i8 @inlined_function_outer_scope_p(ptr noundef nonnull %0) #17, !range !30
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 2
  %156 = load i32, ptr %155, align 4, !tbaa !17
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %154
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 559, ptr noundef nonnull @.str.1) #16
  br label %160

159:                                              ; preds = %105, %112, %108, %146, %143, %151, %138
  br label %160

160:                                              ; preds = %129, %123, %126, %138, %133, %116, %158, %154, %120, %159
  %161 = phi i8 [ 0, %159 ], [ 1, %120 ], [ 1, %154 ], [ 1, %158 ], [ 1, %116 ], [ 1, %133 ], [ 1, %138 ], [ 1, %126 ], [ 1, %123 ], [ 1, %129 ]
  %162 = phi i64 [ 16777216, %159 ], [ 0, %120 ], [ 0, %154 ], [ 0, %158 ], [ 0, %116 ], [ 0, %133 ], [ 0, %138 ], [ 0, %126 ], [ 0, %123 ], [ 0, %129 ]
  %163 = load i64, ptr %0, align 8
  %164 = and i64 %163, -16777217
  %165 = or disjoint i64 %164, %162
  store i64 %165, ptr %0, align 8
  ret i8 %161
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_tree_live_info(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !108
  tail call void @bitmap_obstack_free(ptr noundef %3) #16
  store ptr null, ptr %2, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !110
  tail call void @free(ptr noundef %5) #17
  %6 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !111
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 6
  %11 = zext nneg i32 %7 to i64
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ %11, %9 ], [ %14, %12 ]
  %14 = add nsw i64 %13, -1
  %15 = load ptr, ptr %10, align 8, !tbaa !112
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !21
  tail call void @bitmap_obstack_free(ptr noundef %17) #16
  %18 = load ptr, ptr %10, align 8, !tbaa !112
  %19 = getelementptr inbounds ptr, ptr %18, i64 %14
  store ptr null, ptr %19, align 8, !tbaa !21
  %20 = icmp ugt i64 %13, 1
  br i1 %20, label %12, label %21, !llvm.loop !113

21:                                               ; preds = %12, %1
  %22 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !112
  tail call void @free(ptr noundef %23) #17
  %24 = load i32, ptr %6, align 8, !tbaa !111
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 2
  %28 = zext nneg i32 %24 to i64
  br label %29

29:                                               ; preds = %26, %29
  %30 = phi i64 [ %28, %26 ], [ %31, %29 ]
  %31 = add nsw i64 %30, -1
  %32 = load ptr, ptr %27, align 8, !tbaa !114
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  %34 = load ptr, ptr %33, align 8, !tbaa !21
  tail call void @bitmap_obstack_free(ptr noundef %34) #16
  %35 = load ptr, ptr %27, align 8, !tbaa !114
  %36 = getelementptr inbounds ptr, ptr %35, i64 %31
  store ptr null, ptr %36, align 8, !tbaa !21
  %37 = icmp ugt i64 %30, 1
  br i1 %37, label %29, label %38, !llvm.loop !115

38:                                               ; preds = %29, %21
  %39 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !114
  tail call void @free(ptr noundef %40) #17
  tail call void @free(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @calculate_live_on_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %5 = load ptr, ptr @cfun, align 8, !tbaa !21
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %129, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 6
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi ptr [ %10, %14 ], [ %25, %16 ]
  %18 = load ptr, ptr %15, align 8, !tbaa !112
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !116
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !21
  tail call void @bitmap_clear(ptr noundef %23) #16
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  %26 = load ptr, ptr @cfun, align 8, !tbaa !21
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !59
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !64
  %31 = icmp eq ptr %25, %30
  br i1 %31, label %32, label %16, !llvm.loop !117

32:                                               ; preds = %16
  %33 = load ptr, ptr %28, align 8, !tbaa !60
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !62
  %36 = icmp eq ptr %35, %25
  br i1 %36, label %129, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 6
  %39 = getelementptr inbounds i8, ptr %3, i64 8
  br label %40

40:                                               ; preds = %37, %120
  %41 = phi ptr [ %35, %37 ], [ %122, %120 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %41) #16
  %42 = load ptr, ptr %2, align 8, !tbaa !21
  %43 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17, !range !30
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %89

45:                                               ; preds = %40, %85
  %46 = phi ptr [ %86, %85 ], [ %42, %40 ]
  %47 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17
  %48 = call fastcc i32 @gimple_phi_num_args(ptr noundef %47) #17
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %85, label %50

50:                                               ; preds = %45, %79
  %51 = phi i64 [ %81, %79 ], [ 0, %45 ]
  %52 = phi ptr [ %80, %79 ], [ %46, %45 ]
  %53 = trunc i64 %51 to i32
  %54 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %47, i32 noundef %53) #17
  %55 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %54) #17
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 141
  br i1 %58, label %59, label %79

59:                                               ; preds = %50
  %60 = load ptr, ptr %0, align 8, !tbaa !118
  %61 = call fastcc i32 @var_to_partition(ptr noundef %60, ptr noundef nonnull %55) #17
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %79, label %63

63:                                               ; preds = %59
  %64 = call fastcc ptr @gimple_phi_arg_edge(ptr noundef %47, i64 noundef %51) #17
  %65 = load ptr, ptr %64, align 8, !tbaa !119
  %66 = load ptr, ptr @cfun, align 8, !tbaa !21
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !59
  %69 = load ptr, ptr %68, align 8, !tbaa !60
  %70 = icmp eq ptr %65, %69
  br i1 %70, label %79, label %71

71:                                               ; preds = %63
  %72 = load ptr, ptr %38, align 8, !tbaa !112
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 9
  %74 = load i32, ptr %73, align 8, !tbaa !116
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %72, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !21
  %78 = call zeroext i8 @bitmap_set_bit(ptr noundef %77, i32 noundef %61) #16
  br label %79

79:                                               ; preds = %63, %71, %59, %50
  %80 = phi ptr [ %64, %63 ], [ %64, %71 ], [ %52, %59 ], [ %52, %50 ]
  %81 = add nuw nsw i64 %51, 1
  %82 = call fastcc i32 @gimple_phi_num_args(ptr noundef %47) #17
  %83 = zext i32 %82 to i64
  %84 = icmp ult i64 %81, %83
  br i1 %84, label %50, label %85, !llvm.loop !120

85:                                               ; preds = %79, %45
  %86 = phi ptr [ %46, %45 ], [ %80, %79 ]
  call fastcc void @gsi_next(ptr noundef nonnull %4) #17
  %87 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17, !range !30
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %45, label %89, !llvm.loop !121

89:                                               ; preds = %85, %40
  %90 = phi ptr [ %42, %40 ], [ %86, %85 ]
  store ptr %90, ptr %2, align 8, !tbaa !21
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 1
  %92 = call fastcc ptr @ei_start_1(ptr noundef nonnull %91) #17
  store i32 0, ptr %3, align 8, !tbaa.struct !69
  store ptr %92, ptr %39, align 8, !tbaa.struct !70
  %93 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %92, ptr noundef nonnull %2) #17, !range !30
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %120, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 9
  br label %97

97:                                               ; preds = %95, %115
  %98 = load ptr, ptr %2, align 8, !tbaa !21
  %99 = getelementptr inbounds %struct.edge_def, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !122
  %101 = load ptr, ptr @cfun, align 8, !tbaa !21
  %102 = getelementptr inbounds %struct.function, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !59
  %104 = getelementptr inbounds %struct.control_flow_graph, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !64
  %106 = icmp eq ptr %100, %105
  br i1 %106, label %115, label %107

107:                                              ; preds = %97
  %108 = load ptr, ptr %38, align 8, !tbaa !112
  %109 = load i32, ptr %96, align 8, !tbaa !116
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds ptr, ptr %108, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !21
  %113 = call fastcc ptr @live_on_entry(ptr noundef %0, ptr noundef %100) #17
  %114 = call zeroext i8 @bitmap_ior_into(ptr noundef %112, ptr noundef %113) #16
  br label %115

115:                                              ; preds = %97, %107
  call fastcc void @ei_next(ptr noundef nonnull %3) #17
  %116 = load i32, ptr %3, align 8
  %117 = load ptr, ptr %39, align 8
  %118 = call fastcc zeroext i8 @ei_cond(i32 %116, ptr %117, ptr noundef nonnull %2) #17, !range !30
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %97, !llvm.loop !123

120:                                              ; preds = %115, %89
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  %121 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 6
  %122 = load ptr, ptr %121, align 8, !tbaa !62
  %123 = load ptr, ptr @cfun, align 8, !tbaa !21
  %124 = getelementptr inbounds %struct.function, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !59
  %126 = getelementptr inbounds %struct.control_flow_graph, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !64
  %128 = icmp eq ptr %122, %127
  br i1 %128, label %129, label %40, !llvm.loop !124

129:                                              ; preds = %120, %1, %32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !17
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #17
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @var_to_partition(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 147, ptr noundef nonnull @.str.1) #16
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !17
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.partition_def, ptr %8, i64 0, i32 1, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !18
  %14 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %7
  %18 = sext i32 %13 to i64
  %19 = getelementptr inbounds i32, ptr %15, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !20
  br label %21

21:                                               ; preds = %17, %7
  %22 = phi i32 [ %20, %17 ], [ %13, %7 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #9 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #17
  %4 = load ptr, ptr %3, align 8, !tbaa !125
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #17
  ret ptr %6
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @live_on_entry(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 285, ptr noundef nonnull @.str.1) #16
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr @cfun, align 8, !tbaa !21
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 286, ptr noundef nonnull @.str.1) #16
  %14 = load ptr, ptr @cfun, align 8, !tbaa !21
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  br label %17

17:                                               ; preds = %7, %13
  %18 = phi ptr [ %10, %7 ], [ %16, %13 ]
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 287, ptr noundef nonnull @.str.1) #16
  br label %23

23:                                               ; preds = %17, %22
  %24 = load ptr, ptr %3, align 8, !tbaa !114
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !116
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %24, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !21
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @calculate_live_ranges(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @new_tree_live_info(ptr noundef %0) #17
  %3 = tail call fastcc i32 @num_var_partitions(ptr noundef %0) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1, %10
  %6 = phi i32 [ %11, %10 ], [ 0, %1 ]
  %7 = tail call fastcc ptr @partition_to_var(ptr noundef %0, i32 noundef %6) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @set_var_live_on_entry(ptr noundef nonnull %7, ptr noundef %2) #17
  br label %10

10:                                               ; preds = %5, %9
  %11 = add nuw i32 %6, 1
  %12 = tail call fastcc i32 @num_var_partitions(ptr noundef %0) #17
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %5, label %14, !llvm.loop !126

14:                                               ; preds = %10, %1
  tail call fastcc void @live_worklist(ptr noundef %2) #17
  tail call void @calculate_live_on_exit(ptr noundef %2) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @new_tree_live_info(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @xmalloc(i64 noundef 56) #16
  store ptr %0, ptr %2, align 8, !tbaa !118
  %3 = load ptr, ptr @cfun, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !127
  %8 = getelementptr inbounds %struct.tree_live_info_d, ptr %2, i64 0, i32 3
  store i32 %7, ptr %8, align 8, !tbaa !111
  %9 = sext i32 %7 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call ptr @xmalloc(i64 noundef %10) #16
  %12 = getelementptr inbounds %struct.tree_live_info_d, ptr %2, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !114
  %13 = load ptr, ptr @cfun, align 8, !tbaa !21
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !127
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %1, %19
  %20 = phi i64 [ %24, %19 ], [ 0, %1 ]
  %21 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %22 = load ptr, ptr %12, align 8, !tbaa !114
  %23 = getelementptr inbounds ptr, ptr %22, i64 %20
  store ptr %21, ptr %23, align 8, !tbaa !21
  %24 = add nuw nsw i64 %20, 1
  %25 = load ptr, ptr @cfun, align 8, !tbaa !21
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !59
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !127
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %24, %30
  br i1 %31, label %19, label %32, !llvm.loop !128

32:                                               ; preds = %19
  %33 = sext i32 %29 to i64
  %34 = shl nsw i64 %33, 3
  br label %35

35:                                               ; preds = %32, %1
  %36 = phi i64 [ 0, %1 ], [ %34, %32 ]
  %37 = tail call ptr @xmalloc(i64 noundef %36) #16
  %38 = getelementptr inbounds %struct.tree_live_info_d, ptr %2, i64 0, i32 6
  store ptr %37, ptr %38, align 8, !tbaa !112
  %39 = load ptr, ptr @cfun, align 8, !tbaa !21
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !59
  %42 = getelementptr inbounds %struct.control_flow_graph, ptr %41, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !127
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %35, %45
  %46 = phi i64 [ %50, %45 ], [ 0, %35 ]
  %47 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %48 = load ptr, ptr %38, align 8, !tbaa !112
  %49 = getelementptr inbounds ptr, ptr %48, i64 %46
  store ptr %47, ptr %49, align 8, !tbaa !21
  %50 = add nuw nsw i64 %46, 1
  %51 = load ptr, ptr @cfun, align 8, !tbaa !21
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !59
  %54 = getelementptr inbounds %struct.control_flow_graph, ptr %53, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !127
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %50, %56
  br i1 %57, label %45, label %58, !llvm.loop !129

58:                                               ; preds = %45
  %59 = sext i32 %55 to i64
  %60 = shl nsw i64 %59, 2
  br label %61

61:                                               ; preds = %58, %35
  %62 = phi i64 [ 0, %35 ], [ %60, %58 ]
  %63 = tail call ptr @xmalloc(i64 noundef %62) #16
  %64 = getelementptr inbounds %struct.tree_live_info_d, ptr %2, i64 0, i32 4
  store ptr %63, ptr %64, align 8, !tbaa !110
  %65 = getelementptr inbounds %struct.tree_live_info_d, ptr %2, i64 0, i32 5
  store ptr %63, ptr %65, align 8, !tbaa !130
  %66 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %67 = getelementptr inbounds %struct.tree_live_info_d, ptr %2, i64 0, i32 1
  store ptr %66, ptr %67, align 8, !tbaa !108
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @num_var_partitions(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !11
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @partition_to_var(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds i32, ptr %4, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !20
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ %1, %2 ]
  %12 = load ptr, ptr %0, align 8, !tbaa !5
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds %struct.partition_def, ptr %12, i64 0, i32 1, i64 %13
  %15 = load i32, ptr %14, align 8, !tbaa !18
  %16 = load ptr, ptr @cfun, align 8, !tbaa !21
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = getelementptr inbounds %struct.gimple_df, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !24
  %21 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %20, i32 noundef %15) #17
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_var_live_on_entry(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #18
  %4 = load ptr, ptr %1, align 8, !tbaa !118
  %5 = tail call fastcc i32 @var_to_partition(ptr noundef %4, ptr noundef %0) #17
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %82, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %9) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.tree_live_info_d, ptr %1, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !112
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !116
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %16, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !21
  %22 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %21, i32 noundef %5) #16
  br label %28

23:                                               ; preds = %7
  %24 = load ptr, ptr @cfun, align 8, !tbaa !21
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = load ptr, ptr %26, align 8, !tbaa !60
  br label %28

28:                                               ; preds = %11, %14, %23
  %29 = phi ptr [ %12, %14 ], [ null, %11 ], [ %27, %23 ]
  %30 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %3, ptr noundef nonnull %0) #17
  %31 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #17, !range !30
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %82

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.tree_live_info_d, ptr %1, i64 0, i32 2
  br label %35

35:                                               ; preds = %33, %71
  %36 = phi ptr [ %30, %33 ], [ %73, %71 ]
  %37 = phi i8 [ 0, %33 ], [ %72, %71 ]
  %38 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %36, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !17
  %40 = tail call fastcc i32 @gimple_code(ptr noundef %39) #17, !range !89
  %41 = icmp eq i32 %40, 16
  br i1 %41, label %42, label %54

42:                                               ; preds = %35
  %43 = tail call fastcc i32 @phi_arg_index_from_use(ptr noundef nonnull %36) #17
  %44 = sext i32 %43 to i64
  %45 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %39, i64 noundef %44) #17
  %46 = load ptr, ptr %45, align 8, !tbaa !119
  %47 = load ptr, ptr @cfun, align 8, !tbaa !21
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !59
  %50 = load ptr, ptr %49, align 8, !tbaa !60
  %51 = icmp eq ptr %46, %50
  %52 = icmp eq ptr %46, %29
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %71, label %60

54:                                               ; preds = %35
  %55 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %39) #17, !range !30
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = tail call fastcc ptr @gimple_bb(ptr noundef %39) #17
  %59 = icmp eq ptr %58, %29
  br i1 %59, label %71, label %60

60:                                               ; preds = %57, %42
  %61 = phi ptr [ %46, %42 ], [ %58, %57 ]
  %62 = icmp eq ptr %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %34, align 8, !tbaa !114
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !116
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %64, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !21
  %70 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %69, i32 noundef %5) #16
  br label %71

71:                                               ; preds = %57, %42, %60, %63, %54
  %72 = phi i8 [ %37, %54 ], [ 1, %63 ], [ %37, %60 ], [ %37, %42 ], [ %37, %57 ]
  %73 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %3) #17
  %74 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #17, !range !30
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %35, label %76, !llvm.loop !131

76:                                               ; preds = %71
  %77 = icmp eq i8 %72, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.tree_live_info_d, ptr %1, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !108
  %81 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %80, i32 noundef %5) #16
  br label %82

82:                                               ; preds = %28, %76, %78, %2
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @live_worklist(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !21
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !127
  %7 = add nsw i32 %6, 1
  %8 = tail call ptr @sbitmap_alloc(i32 noundef %7) #16
  %9 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  tail call void @sbitmap_zero(ptr noundef %8) #16
  %10 = load ptr, ptr @cfun, align 8, !tbaa !21
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !132
  %17 = load ptr, ptr %12, align 8, !tbaa !60
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %25, %1
  %20 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 5
  %21 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %20, align 8, !tbaa !130
  %23 = load ptr, ptr %21, align 8, !tbaa !110
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %47, label %34

25:                                               ; preds = %1, %25
  %26 = phi ptr [ %28, %25 ], [ %16, %1 ]
  tail call fastcc void @loe_visit_block(ptr noundef %0, ptr noundef %26, ptr noundef %8, ptr noundef %9) #17
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !132
  %29 = load ptr, ptr @cfun, align 8, !tbaa !21
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = load ptr, ptr %31, align 8, !tbaa !60
  %33 = icmp eq ptr %28, %32
  br i1 %33, label %19, label %25, !llvm.loop !133

34:                                               ; preds = %19, %34
  %35 = phi ptr [ %44, %34 ], [ %22, %19 ]
  %36 = getelementptr inbounds i32, ptr %35, i64 -1
  store ptr %36, ptr %20, align 8, !tbaa !130
  %37 = load i32, ptr %36, align 4, !tbaa !20
  %38 = load ptr, ptr @cfun, align 8, !tbaa !21
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !59
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !134
  %43 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %42, i32 noundef %37) #17
  tail call fastcc void @loe_visit_block(ptr noundef nonnull %0, ptr noundef %43, ptr noundef %8, ptr noundef %9) #17
  %44 = load ptr, ptr %20, align 8, !tbaa !130
  %45 = load ptr, ptr %21, align 8, !tbaa !110
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %47, label %34, !llvm.loop !135

47:                                               ; preds = %34, %19
  tail call void @bitmap_obstack_free(ptr noundef %9) #16
  %48 = load ptr, ptr %8, align 8, !tbaa !136
  tail call void @free(ptr noundef %48) #17
  tail call void @free(ptr noundef %8) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_var_map(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 17, i64 1, ptr %0)
  %4 = getelementptr inbounds %struct._var_map, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %78, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._var_map, ptr %1, i64 0, i32 2
  %9 = getelementptr inbounds %struct._var_map, ptr %1, i64 0, i32 1
  br label %10

10:                                               ; preds = %7, %73
  %11 = phi i64 [ 0, %7 ], [ %74, %73 ]
  %12 = load ptr, ptr %8, align 8, !tbaa !15
  %13 = icmp eq ptr %12, null
  %14 = trunc i64 %11 to i32
  br i1 %13, label %18, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds i32, ptr %12, i64 %11
  %17 = load i32, ptr %16, align 4, !tbaa !20
  br label %18

18:                                               ; preds = %10, %15
  %19 = phi i32 [ %17, %15 ], [ %14, %10 ]
  %20 = load ptr, ptr @cfun, align 8, !tbaa !21
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  %23 = getelementptr inbounds %struct.gimple_df, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !24
  %25 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %24, i32 noundef %19) #17
  %26 = icmp eq ptr %25, null
  br i1 %26, label %73, label %27

27:                                               ; preds = %18
  %28 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %24) #17
  %29 = icmp ugt i32 %28, 1
  br i1 %29, label %30, label %73

30:                                               ; preds = %27, %58
  %31 = phi ptr [ %59, %58 ], [ %20, %27 ]
  %32 = phi i64 [ %61, %58 ], [ 1, %27 ]
  %33 = phi i32 [ %60, %58 ], [ 0, %27 ]
  %34 = load ptr, ptr %1, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.partition_def, ptr %34, i64 0, i32 1, i64 %32
  %36 = load i32, ptr %35, align 8, !tbaa !18
  %37 = load ptr, ptr %9, align 8, !tbaa !14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %30
  %40 = sext i32 %36 to i64
  %41 = getelementptr inbounds i32, ptr %37, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !20
  br label %43

43:                                               ; preds = %39, %30
  %44 = phi i32 [ %42, %39 ], [ %36, %30 ]
  %45 = zext i32 %44 to i64
  %46 = icmp eq i64 %11, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = add nsw i32 %33, 1
  %49 = icmp eq i32 %33, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %14) #17
  %52 = tail call fastcc ptr @partition_to_var(ptr noundef nonnull %1, i32 noundef %44) #17
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %52, i32 noundef 2) #16
  %53 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 3, i64 1, ptr %0)
  br label %54

54:                                               ; preds = %50, %47
  %55 = trunc i64 %32 to i32
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %55) #17
  %57 = load ptr, ptr @cfun, align 8, !tbaa !21
  br label %58

58:                                               ; preds = %43, %54
  %59 = phi ptr [ %57, %54 ], [ %31, %43 ]
  %60 = phi i32 [ %48, %54 ], [ %33, %43 ]
  %61 = add nuw nsw i64 %32, 1
  %62 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !22
  %64 = getelementptr inbounds %struct.gimple_df, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !24
  %66 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %65) #17
  %67 = zext i32 %66 to i64
  %68 = icmp ult i64 %61, %67
  br i1 %68, label %30, label %69, !llvm.loop !138

69:                                               ; preds = %58
  %70 = icmp eq i32 %60, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %69
  %72 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0)
  br label %73

73:                                               ; preds = %27, %69, %71, %18
  %74 = add nuw nsw i64 %11, 1
  %75 = load i32, ptr %4, align 8, !tbaa !11
  %76 = zext i32 %75 to i64
  %77 = icmp ult i64 %74, %76
  br i1 %77, label %10, label %78, !llvm.loop !139

78:                                               ; preds = %73, %2
  %79 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !140
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_live_info(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %6 = load ptr, ptr %1, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %7 = and i32 %2, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %51, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_live_info_d, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !114
  %12 = icmp eq ptr %11, null
  br i1 %12, label %51, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @cfun, align 8, !tbaa !21
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !62
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %51, label %23

23:                                               ; preds = %13, %41
  %24 = phi ptr [ %44, %41 ], [ %19, %13 ]
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !116
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %26) #17
  %28 = load ptr, ptr %10, align 8, !tbaa !114
  %29 = load i32, ptr %25, align 8, !tbaa !116
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %32, ptr noundef nonnull %4) #17
  %33 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #17, !range !30
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %23, %35
  %36 = load i32, ptr %4, align 4, !tbaa !20
  %37 = tail call fastcc ptr @partition_to_var(ptr noundef %6, i32 noundef %36) #17
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %37, i32 noundef 2) #16
  %38 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 2, i64 1, ptr %0)
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  %39 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #17, !range !30
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %35, !llvm.loop !142

41:                                               ; preds = %35, %23
  %42 = tail call i32 @fputc(i32 10, ptr %0)
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !62
  %45 = load ptr, ptr @cfun, align 8, !tbaa !21
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !59
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !64
  %50 = icmp eq ptr %44, %49
  br i1 %50, label %51, label %23, !llvm.loop !143

51:                                               ; preds = %41, %13, %9, %3
  %52 = and i32 %2, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %96, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.tree_live_info_d, ptr %1, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !112
  %57 = icmp eq ptr %56, null
  br i1 %57, label %96, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr @cfun, align 8, !tbaa !21
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !59
  %62 = load ptr, ptr %61, align 8, !tbaa !60
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !62
  %65 = getelementptr inbounds %struct.control_flow_graph, ptr %61, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !64
  %67 = icmp eq ptr %64, %66
  br i1 %67, label %96, label %68

68:                                               ; preds = %58, %86
  %69 = phi ptr [ %89, %86 ], [ %64, %58 ]
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 9
  %71 = load i32, ptr %70, align 8, !tbaa !116
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %71) #17
  %73 = load ptr, ptr %55, align 8, !tbaa !112
  %74 = load i32, ptr %70, align 8, !tbaa !116
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %73, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %77, ptr noundef nonnull %4) #17
  %78 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #17, !range !30
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %68, %80
  %81 = load i32, ptr %4, align 4, !tbaa !20
  %82 = tail call fastcc ptr @partition_to_var(ptr noundef %6, i32 noundef %81) #17
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %82, i32 noundef 2) #16
  %83 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 2, i64 1, ptr %0)
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  %84 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #17, !range !30
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %80, !llvm.loop !144

86:                                               ; preds = %80, %68
  %87 = tail call i32 @fputc(i32 10, ptr %0)
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !62
  %90 = load ptr, ptr @cfun, align 8, !tbaa !21
  %91 = getelementptr inbounds %struct.function, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !59
  %93 = getelementptr inbounds %struct.control_flow_graph, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !64
  %95 = icmp eq ptr %89, %94
  br i1 %95, label %96, label %68, !llvm.loop !145

96:                                               ; preds = %86, %58, %54, %51
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !21
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_zero_uses(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !146
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %2) #16
  br label %11

11:                                               ; preds = %6, %1, %9
  %12 = phi i8 [ %10, %9 ], [ 1, %1 ], [ 0, %6 ]
  ret i8 %12
}

; Function Attrs: optsize
declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @bitmap_count_bits(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_tree_base_truncate(ptr noundef writeonly %0) unnamed_addr #13 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !140
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #17
  %3 = load ptr, ptr %0, align 8, !tbaa !21
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !21
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #16
  store ptr %6, ptr %0, align 8, !tbaa !21
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !140
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !140
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !147
  %6 = load i32, ptr %0, align 8, !tbaa !140
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @block_ultimate_origin(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_generic_decl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_htab_element(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  store ptr %1, ptr %0, align 8, !tbaa !83
  %3 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !85
  %6 = tail call i64 @htab_size(ptr noundef %1) #16
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !86
  %9 = load ptr, ptr %5, align 8, !tbaa !85
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ %9, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  %13 = icmp ult ptr %12, inttoptr (i64 2 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %15, ptr %5, align 8, !tbaa !85
  %16 = icmp ult ptr %15, %7
  br i1 %16, label %10, label %17, !llvm.loop !150

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %19 = icmp ult ptr %18, %7
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !21
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !151
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_htab_p(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = icmp uge ptr %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_htab_element(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = load ptr, ptr %2, align 8, !tbaa !85
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !85
  %9 = icmp ult ptr %8, %4
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !21
  %12 = icmp ult ptr %11, inttoptr (i64 2 to ptr)
  br i1 %12, label %6, label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %11, %10 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !152
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !153
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !155
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @mark_all_vars_used_1(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !21
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !20
  %9 = icmp eq i64 %6, 141
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !17
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ %12, %10 ], [ %4, %3 ]
  %15 = add i32 %8, -4
  %16 = icmp ult i32 %15, 7
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = tail call ptr @tree_block(ptr noundef %14) #16
  %19 = load ptr, ptr %18, align 8, !tbaa !21
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i64, ptr %19, align 8
  %23 = or i64 %22, 16777216
  store i64 %23, ptr %19, align 8
  br label %24

24:                                               ; preds = %21, %17, %13
  %25 = load i64, ptr %14, align 8
  %26 = trunc i64 %25 to i16
  switch i16 %26, label %44 [
    i16 152, label %27
    i16 32, label %31
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 0, i32 3
  tail call fastcc void @mark_all_vars_used(ptr noundef nonnull %28, ptr noundef %2) #17
  %29 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1
  tail call fastcc void @mark_all_vars_used(ptr noundef nonnull %29, ptr noundef %2) #17
  %30 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1, i32 0, i32 1
  tail call fastcc void @mark_all_vars_used(ptr noundef nonnull %30, ptr noundef %2) #17
  br label %51

31:                                               ; preds = %24
  %32 = icmp eq ptr %2, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.tree_decl_minimal, ptr %14, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !17
  %36 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %2, i32 noundef %35) #16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, ptr %34, align 4, !tbaa !17
  %40 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %2, i32 noundef %39) #16
  %41 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 5
  tail call fastcc void @mark_all_vars_used(ptr noundef nonnull %41, ptr noundef nonnull %2) #17
  br label %42

42:                                               ; preds = %38, %33, %31
  tail call fastcc void @set_is_used(ptr noundef nonnull %14) #17
  %43 = load i64, ptr %14, align 8
  br label %44

44:                                               ; preds = %24, %42
  %45 = phi i64 [ %25, %24 ], [ %43, %42 ]
  %46 = and i64 %45, 65535
  %47 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !20
  %49 = and i32 %48, -2
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %52

51:                                               ; preds = %44, %27
  store i32 0, ptr %1, align 4, !tbaa !20
  br label %52

52:                                               ; preds = %51, %44
  ret ptr null
}

; Function Attrs: optsize
declare ptr @tree_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_is_used(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @get_var_ann(ptr noundef %0) #17
  %3 = load i8, ptr %2, align 8
  %4 = or i8 %3, 2
  store i8 %4, ptr %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_var_ann(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 32, label %4
    i16 34, label %6
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %13

8:                                                ; preds = %1
  %9 = and i64 %2, 65535
  %10 = icmp eq i64 %9, 36
  %11 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  br i1 %10, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.24, i32 noundef 144, ptr noundef nonnull @.str.1) #16
  unreachable

13:                                               ; preds = %8, %6, %4
  %14 = phi ptr [ %7, %6 ], [ %5, %4 ], [ %11, %8 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call ptr @create_var_ann(ptr noundef nonnull %0) #16
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi ptr [ %18, %17 ], [ %15, %13 ]
  ret ptr %20
}

; Function Attrs: optsize
declare ptr @create_var_ann(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !89
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #17
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !47
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !89
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #17
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #10 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !20
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !91
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #17
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #17
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !157
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 687, ptr noundef nonnull @.str.1) #16
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !21
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @inlined_function_outer_scope_p(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !17
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !17
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.25, i32 noundef 3103, ptr noundef nonnull @.str.1) #16
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !159
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !146
  store ptr %6, ptr %0, align 8, !tbaa !161
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #17, !range !30
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !161
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !159
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @phi_arg_index_from_use(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #17, !range !89
  %5 = icmp eq i32 %4, 16
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.24, i32 noundef 544, ptr noundef nonnull @.str.1) #16
  br label %7

7:                                                ; preds = %1, %6
  %8 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %3, i32 noundef 0) #17
  %9 = ptrtoint ptr %0 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 48
  %13 = trunc i64 %12 to i32
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !161
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !146
  store ptr %4, ptr %0, align 8, !tbaa !161
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #17, !range !30
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @loe_visit_block(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !116
  %9 = lshr i32 %8, 6
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !47
  %13 = and i32 %8, 63
  %14 = zext nneg i32 %13 to i64
  %15 = shl nuw i64 1, %14
  %16 = and i64 %15, %12
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 876, ptr noundef nonnull @.str.1) #16
  %19 = load i32, ptr %7, align 8, !tbaa !116
  br label %20

20:                                               ; preds = %4, %18
  %21 = phi i32 [ %8, %4 ], [ %19, %18 ]
  tail call fastcc void @SET_BIT(ptr noundef nonnull %2, i32 noundef %21) #17
  %22 = tail call fastcc ptr @live_on_entry(ptr noundef %0, ptr noundef nonnull %1) #17
  %23 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %1) #17
  store i32 0, ptr %6, align 8, !tbaa.struct !69
  %24 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %23, ptr %24, align 8, !tbaa.struct !70
  %25 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %23, ptr noundef nonnull %5) #17, !range !30
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %69, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 6
  %29 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 5
  br label %30

30:                                               ; preds = %27, %64
  %31 = load ptr, ptr %5, align 8, !tbaa !21
  %32 = load ptr, ptr %31, align 8, !tbaa !119
  %33 = load ptr, ptr @cfun, align 8, !tbaa !21
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !59
  %36 = load ptr, ptr %35, align 8, !tbaa !60
  %37 = icmp eq ptr %32, %36
  br i1 %37, label %64, label %38

38:                                               ; preds = %30
  %39 = load ptr, ptr %28, align 8, !tbaa !112
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  %41 = load i32, ptr %40, align 8, !tbaa !116
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %39, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !21
  %45 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %3, ptr noundef %22, ptr noundef %44) #16
  %46 = tail call fastcc ptr @live_on_entry(ptr noundef %0, ptr noundef %32) #17
  %47 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %46, ptr noundef %3) #16
  %48 = load i32, ptr %40, align 8, !tbaa !116
  %49 = lshr i32 %48, 6
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !47
  %53 = and i32 %48, 63
  %54 = zext nneg i32 %53 to i64
  %55 = shl nuw i64 1, %54
  %56 = and i64 %55, %52
  %57 = icmp ne i64 %56, 0
  %58 = icmp ne i8 %47, 0
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %60, label %64

60:                                               ; preds = %38
  tail call fastcc void @RESET_BIT(ptr noundef nonnull %2, i32 noundef %48) #17
  %61 = load i32, ptr %40, align 8, !tbaa !116
  %62 = load ptr, ptr %29, align 8, !tbaa !130
  %63 = getelementptr inbounds i32, ptr %62, i64 1
  store ptr %63, ptr %29, align 8, !tbaa !130
  store i32 %61, ptr %62, align 4, !tbaa !20
  br label %64

64:                                               ; preds = %38, %60, %30
  call fastcc void @ei_next(ptr noundef nonnull %6) #17
  %65 = load i32, ptr %6, align 8
  %66 = load ptr, ptr %24, align 8
  %67 = call fastcc zeroext i8 @ei_cond(i32 %65, ptr %66, ptr noundef nonnull %5) #17, !range !30
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %30, !llvm.loop !162

69:                                               ; preds = %64, %20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #14 {
  %3 = load ptr, ptr %0, align 8, !tbaa !136
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !47
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !17
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !17
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !47
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !47
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #14 {
  %3 = load ptr, ptr %0, align 8, !tbaa !136
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !47
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !17
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !17
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !47
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !47
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_var_map", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !7, i64 40, !7, i64 48}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !10, i64 24}
!12 = !{!6, !10, i64 28}
!13 = !{!6, !10, i64 32}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !7, i64 16}
!16 = !{!6, !7, i64 40}
!17 = !{!8, !8, i64 0}
!18 = !{!19, !10, i64 0}
!19 = !{!"partition_elem", !10, i64 0, !7, i64 8, !10, i64 16}
!20 = !{!10, !10, i64 0}
!21 = !{!7, !7, i64 0}
!22 = !{!23, !7, i64 24}
!23 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !7, i64 128, !10, i64 136, !10, i64 137, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139}
!24 = !{!25, !7, i64 16}
!25 = !{!"gimple_df", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !26, i64 32, !26, i64 48, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !10, i64 96, !27, i64 104}
!26 = !{!"pt_solution", !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !7, i64 8}
!27 = !{!"ssa_operands", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16, !7, i64 24, !7, i64 32}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{i8 0, i8 2}
!31 = distinct !{!31, !29}
!32 = !{!6, !7, i64 48}
!33 = !{!34, !10, i64 4}
!34 = !{!"var_ann_d", !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 4, !7, i64 8}
!35 = distinct !{!35, !29}
!36 = distinct !{!36, !29}
!37 = distinct !{!37, !29}
!38 = !{!39, !7, i64 0}
!39 = !{!"bitmap_head_def", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 24}
!40 = !{!41, !7, i64 0}
!41 = !{!"", !7, i64 0, !7, i64 8, !10, i64 16, !42, i64 24}
!42 = !{!"long", !8, i64 0}
!43 = !{!41, !7, i64 8}
!44 = !{!45, !10, i64 16}
!45 = !{!"bitmap_element_def", !7, i64 0, !7, i64 8, !10, i64 16, !8, i64 24}
!46 = !{!41, !10, i64 16}
!47 = !{!42, !42, i64 0}
!48 = !{!41, !42, i64 24}
!49 = distinct !{!49, !29}
!50 = distinct !{!50, !29}
!51 = !{!45, !7, i64 0}
!52 = !{!53, !7, i64 0}
!53 = !{!"", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!54 = !{!53, !10, i64 8}
!55 = distinct !{!55, !29}
!56 = distinct !{!56, !29}
!57 = distinct !{!57, !29}
!58 = distinct !{!58, !29}
!59 = !{!23, !7, i64 8}
!60 = !{!61, !7, i64 0}
!61 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !7, i64 40, !10, i64 48, !8, i64 52, !8, i64 60, !10, i64 68, !10, i64 72}
!62 = !{!63, !7, i64 56}
!63 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !42, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96}
!64 = !{!61, !7, i64 8}
!65 = distinct !{!65, !29}
!66 = distinct !{!66, !29}
!67 = distinct !{!67, !29}
!68 = distinct !{!68, !29}
!69 = !{i64 0, i64 4, !20, i64 8, i64 8, !21}
!70 = !{i64 0, i64 8, !21}
!71 = !{!72, !10, i64 40}
!72 = !{!"edge_def", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !42, i64 56}
!73 = !{!72, !7, i64 32}
!74 = distinct !{!74, !29}
!75 = distinct !{!75, !29}
!76 = distinct !{!76, !29}
!77 = distinct !{!77, !29}
!78 = distinct !{!78, !29}
!79 = distinct !{!79, !29}
!80 = !{!81, !7, i64 72}
!81 = !{!"gcc_debug_hooks", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !10, i64 248}
!82 = distinct !{!82, !29}
!83 = !{!84, !7, i64 0}
!84 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!85 = !{!84, !7, i64 8}
!86 = !{!84, !7, i64 16}
!87 = !{!88, !7, i64 0}
!88 = !{!"gimple_seq_node_d", !7, i64 0, !7, i64 8, !7, i64 16}
!89 = !{i32 0, i32 256}
!90 = !{!88, !7, i64 16}
!91 = !{!92, !8, i64 0}
!92 = !{!"ssa_operand_iterator_d", !8, i64 0, !10, i64 4, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32}
!93 = !{!92, !7, i64 32}
!94 = !{!92, !10, i64 28}
!95 = !{!92, !10, i64 4}
!96 = !{!97, !7, i64 24}
!97 = !{!"ssa_use_operand_d", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24}
!98 = !{!92, !7, i64 16}
!99 = !{!100, !7, i64 0}
!100 = !{!"use_optype_d", !7, i64 0, !97, i64 8}
!101 = !{!92, !10, i64 24}
!102 = !{!103, !10, i64 0}
!103 = !{!"", !10, i64 0, !7, i64 8}
!104 = distinct !{!104, !29}
!105 = distinct !{!105, !29}
!106 = distinct !{!106, !29}
!107 = distinct !{!107, !29}
!108 = !{!109, !7, i64 8}
!109 = !{!"tree_live_info_d", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!110 = !{!109, !7, i64 32}
!111 = !{!109, !10, i64 24}
!112 = !{!109, !7, i64 48}
!113 = distinct !{!113, !29}
!114 = !{!109, !7, i64 16}
!115 = distinct !{!115, !29}
!116 = !{!63, !10, i64 80}
!117 = distinct !{!117, !29}
!118 = !{!109, !7, i64 0}
!119 = !{!72, !7, i64 0}
!120 = distinct !{!120, !29}
!121 = distinct !{!121, !29}
!122 = !{!72, !7, i64 8}
!123 = distinct !{!123, !29}
!124 = distinct !{!124, !29}
!125 = !{!63, !7, i64 0}
!126 = distinct !{!126, !29}
!127 = !{!61, !10, i64 32}
!128 = distinct !{!128, !29}
!129 = distinct !{!129, !29}
!130 = !{!109, !7, i64 40}
!131 = distinct !{!131, !29}
!132 = !{!63, !7, i64 48}
!133 = distinct !{!133, !29}
!134 = !{!61, !7, i64 16}
!135 = distinct !{!135, !29}
!136 = !{!137, !7, i64 0}
!137 = !{!"simple_bitmap_def", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!138 = distinct !{!138, !29}
!139 = distinct !{!139, !29}
!140 = !{!141, !10, i64 0}
!141 = !{!"VEC_tree_base", !10, i64 0, !10, i64 4, !8, i64 8}
!142 = distinct !{!142, !29}
!143 = distinct !{!143, !29}
!144 = distinct !{!144, !29}
!145 = distinct !{!145, !29}
!146 = !{!97, !7, i64 8}
!147 = !{!141, !10, i64 4}
!148 = !{!149, !7, i64 24}
!149 = !{!"htab", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !10, i64 56, !10, i64 60, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !10, i64 104}
!150 = distinct !{!150, !29}
!151 = !{!25, !7, i64 0}
!152 = !{!63, !10, i64 96}
!153 = !{!154, !7, i64 0}
!154 = !{!"gimple_bb_info", !7, i64 0, !7, i64 8}
!155 = !{!156, !7, i64 0}
!156 = !{!"gimple_seq_d", !7, i64 0, !7, i64 8, !7, i64 16}
!157 = !{!158, !10, i64 0}
!158 = !{!"VEC_edge_base", !10, i64 0, !10, i64 4, !8, i64 8}
!159 = !{!160, !7, i64 8}
!160 = !{!"immediate_use_iterator_d", !7, i64 0, !7, i64 8, !97, i64 16, !7, i64 48}
!161 = !{!160, !7, i64 0}
!162 = distinct !{!162, !29}
