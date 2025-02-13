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
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.tree_live_info_d = type { ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }

@.str = private unnamed_addr constant [16 x i8] c"tree-ssa-live.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"\0A%*s{ Scope block #%i%s%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" (unused)\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" (abstract)\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" %s:%i\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c" Originating from :\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"#%i\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c" (nonlocalized)\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"\0A%*s}\0A\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@optimize = external local_unnamed_addr global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [30 x i8] c"Scope blocks after cleanups:\0A\00", align 1
@debug_hooks = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.16 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@debug_info_level = external local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [11 x i8] c"artificial\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"./tree-ssa-live.h\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"\0APartition map \0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Partition %d (\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"\0ALive on entry to BB%d : \00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"\0ALive on exit from BB%d : \00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @init_var_map(i32 noundef %0) local_unnamed_addr #0 !prof !229 {
  %2 = tail call ptr @xmalloc(i64 noundef 56) #16
  %3 = tail call ptr @partition_new(i32 noundef %0) #16
  store ptr %3, ptr %2, align 8, !tbaa !230
  %4 = getelementptr inbounds %struct._var_map, ptr %2, i64 0, i32 1
  %5 = getelementptr inbounds %struct._var_map, ptr %2, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store i32 %0, ptr %5, align 8, !tbaa !236
  %6 = getelementptr inbounds %struct._var_map, ptr %2, i64 0, i32 4
  store i32 %0, ptr %6, align 4, !tbaa !237
  %7 = getelementptr inbounds %struct._var_map, ptr %2, i64 0, i32 5
  store i32 0, ptr %7, align 8, !tbaa !238
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
define dso_local void @delete_var_map(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !229 {
  tail call fastcc void @var_map_base_fini(ptr noundef %0) #17
  %2 = load ptr, ptr %0, align 8, !tbaa !230
  tail call void @partition_delete(ptr noundef %2) #16
  %3 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !239
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !240

6:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %4) #17
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !241
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !240

11:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %9) #17
  br label %12

12:                                               ; preds = %11, %7
  tail call void @free(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @var_map_base_fini(ptr nocapture noundef %0) unnamed_addr #3 !prof !242 !PGOFuncName !243 {
  %2 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !244
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !245

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 7
  tail call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %6) #17
  %7 = load ptr, ptr %2, align 8, !tbaa !244
  tail call void @free(ptr noundef %7) #17
  store ptr null, ptr %2, align 8, !tbaa !244
  %8 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 5
  store i32 0, ptr %8, align 8, !tbaa !238
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @partition_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #3 !prof !246 !PGOFuncName !247 {
  %2 = load ptr, ptr %0, align 8, !tbaa !248
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !249

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !248
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @var_union(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !250 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %8, label %7, !prof !251

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 175, ptr noundef nonnull @.str.1) #16
  br label %8

8:                                                ; preds = %3, %7
  %9 = load i64, ptr %2, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %13, label %12, !prof !251

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 176, ptr noundef nonnull @.str.1) #16
  br label %13

13:                                               ; preds = %8, %12
  %14 = load ptr, ptr %0, align 8, !tbaa !230
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !252
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.partition_def, ptr %14, i64 0, i32 1, i64 %17
  %19 = load i32, ptr %18, align 8, !tbaa !253
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !252
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.partition_def, ptr %14, i64 0, i32 1, i64 %22
  %24 = load i32, ptr %23, align 8, !tbaa !253
  %25 = icmp eq i32 %19, -1
  br i1 %25, label %26, label %27, !prof !255

26:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 185, ptr noundef nonnull @.str.1) #16
  br label %27

27:                                               ; preds = %13, %26
  %28 = icmp eq i32 %24, -1
  br i1 %28, label %29, label %30, !prof !255

29:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 186, ptr noundef nonnull @.str.1) #16
  br label %30

30:                                               ; preds = %27, %29
  %31 = icmp eq i32 %19, %24
  br i1 %31, label %35, label %32, !prof !255

32:                                               ; preds = %30
  %33 = load ptr, ptr %0, align 8, !tbaa !230
  %34 = tail call i32 @partition_union(ptr noundef %33, i32 noundef %19, i32 noundef %24) #16
  br label %35

35:                                               ; preds = %30, %32
  %36 = phi i32 [ %34, %32 ], [ %19, %30 ]
  %37 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !239
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40, !prof !255

40:                                               ; preds = %35
  %41 = sext i32 %36 to i64
  %42 = getelementptr inbounds i32, ptr %38, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !256
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
define dso_local void @partition_view_normal(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !246 {
  %3 = tail call fastcc ptr @partition_view_init(ptr noundef %0) #17
  tail call fastcc void @partition_view_fini(ptr noundef %0, ptr noundef %3) #17
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %6, label %5, !prof !257

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
define internal fastcc ptr @partition_view_init(ptr nocapture noundef %0) unnamed_addr #0 !prof !258 !PGOFuncName !259 {
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %3 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !239
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !260

6:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %4) #17
  store ptr null, ptr %3, align 8, !tbaa !239
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !241
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !260

11:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %9) #17
  store ptr null, ptr %8, align 8, !tbaa !241
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !237
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %57, label %16, !prof !261

16:                                               ; preds = %12, %52
  %17 = phi i64 [ %53, %52 ], [ 0, %12 ]
  %18 = load ptr, ptr %0, align 8, !tbaa !230
  %19 = getelementptr inbounds %struct.partition_def, ptr %18, i64 0, i32 1, i64 %17
  %20 = load i32, ptr %19, align 8, !tbaa !253
  %21 = load ptr, ptr @cfun, align 8, !tbaa !248
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !262
  %24 = getelementptr inbounds %struct.gimple_df, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !264
  %26 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %25, i32 noundef %20) #17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %52, label %28, !prof !268

28:                                               ; preds = %16
  %29 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %26) #16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %52, label %31, !prof !269

31:                                               ; preds = %28
  %32 = load ptr, ptr @cfun, align 8, !tbaa !248
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !262
  %35 = getelementptr inbounds %struct.gimple_df, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !264
  %37 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %36, i32 noundef %20) #17
  %38 = tail call fastcc zeroext i8 @has_zero_uses(ptr noundef %37) #17
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %50, label %40, !prof !270

40:                                               ; preds = %31
  %41 = load ptr, ptr @cfun, align 8, !tbaa !248
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !262
  %44 = getelementptr inbounds %struct.gimple_df, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !264
  %46 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %45, i32 noundef %20) #17
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 4294967296
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52, !prof !271

50:                                               ; preds = %40, %31
  %51 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %20) #16
  br label %52

52:                                               ; preds = %16, %28, %40, %50
  %53 = add nuw nsw i64 %17, 1
  %54 = load i32, ptr %13, align 4, !tbaa !237
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %16, label %57, !prof !272, !llvm.loop !273

57:                                               ; preds = %52, %12
  %58 = phi i32 [ 0, %12 ], [ %54, %52 ]
  %59 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 3
  store i32 %58, ptr %59, align 8, !tbaa !236
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @partition_view_fini(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !258 !PGOFuncName !275 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7, !prof !276

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 269, ptr noundef nonnull @.str.1) #16
  br label %7

7:                                                ; preds = %2, %6
  %8 = tail call i64 @bitmap_count_bits(ptr noundef %1) #16
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !237
  %12 = icmp ugt i32 %11, %9
  br i1 %12, label %13, label %42, !prof !277

13:                                               ; preds = %7
  %14 = zext i32 %11 to i64
  %15 = shl nuw nsw i64 %14, 2
  %16 = tail call ptr @xmalloc(i64 noundef %15) #16
  %17 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !239
  tail call void @llvm.memset.p0.i64(ptr align 4 %16, i8 -1, i64 %15, i1 false)
  %18 = shl i64 %8, 2
  %19 = and i64 %18, 17179869180
  %20 = tail call ptr @xmalloc(i64 noundef %19) #16
  %21 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !241
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %4) #17
  %22 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #17, !range !278
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %36, label %24, !prof !261

24:                                               ; preds = %13
  %25 = load ptr, ptr %17, align 8, !tbaa !239
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i32 [ 0, %24 ], [ %33, %26 ]
  %28 = load i32, ptr %4, align 4, !tbaa !256
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, ptr %25, i64 %29
  store i32 %27, ptr %30, align 4, !tbaa !256
  %31 = zext i32 %27 to i64
  %32 = getelementptr inbounds i32, ptr %20, i64 %31
  store i32 %28, ptr %32, align 4, !tbaa !256
  %33 = add i32 %27, 1
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %34 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #17, !range !278
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %26, !prof !279, !llvm.loop !280

36:                                               ; preds = %26, %13
  %37 = phi i32 [ 0, %13 ], [ %33, %26 ]
  %38 = icmp eq i32 %37, %9
  br i1 %38, label %40, label %39, !prof !277

39:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 289, ptr noundef nonnull @.str.1) #16
  br label %40

40:                                               ; preds = %36, %39
  %41 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 3
  store i32 %37, ptr %41, align 8, !tbaa !236
  br label %42

42:                                               ; preds = %40, %7
  tail call void @bitmap_obstack_free(ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @var_map_base_init(ptr nocapture noundef %0) unnamed_addr #0 !prof !246 !PGOFuncName !281 {
  %2 = tail call fastcc i32 @num_var_partitions(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !244
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !257

6:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %4) #17
  %7 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !282
  tail call fastcc void @VEC_tree_base_truncate(ptr noundef %8) #17
  br label %17

9:                                                ; preds = %1
  %10 = icmp slt i32 %2, 400
  br i1 %10, label %13, label %11, !prof !283

11:                                               ; preds = %9
  %12 = udiv i32 %2, 10
  br label %13

13:                                               ; preds = %9, %11
  %14 = phi i32 [ %12, %11 ], [ 40, %9 ]
  %15 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %14) #17
  %16 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 7
  store ptr %15, ptr %16, align 8, !tbaa !282
  br label %17

17:                                               ; preds = %13, %6
  %18 = sext i32 %2 to i64
  %19 = shl nsw i64 %18, 2
  %20 = tail call ptr @xmalloc(i64 noundef %19) #16
  store ptr %20, ptr %3, align 8, !tbaa !244
  %21 = icmp sgt i32 %2, 0
  br i1 %21, label %24, label %22, !prof !284

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 5
  store i32 0, ptr %23, align 8, !tbaa !238
  br label %72

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 7
  %26 = zext nneg i32 %2 to i64
  br label %27

27:                                               ; preds = %24, %50
  %28 = phi ptr [ %20, %24 ], [ %51, %50 ]
  %29 = phi i64 [ 0, %24 ], [ %56, %50 ]
  %30 = phi i32 [ 0, %24 ], [ %52, %50 ]
  %31 = trunc i64 %29 to i32
  %32 = tail call fastcc ptr @partition_to_var(ptr noundef nonnull %0, i32 noundef %31) #17
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 141
  br i1 %35, label %36, label %39, !prof !285

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %32, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !252
  br label %39

39:                                               ; preds = %36, %27
  %40 = phi ptr [ %38, %36 ], [ %32, %27 ]
  %41 = tail call fastcc ptr @var_ann(ptr noundef %40) #17
  %42 = load i8, ptr %41, align 8
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %50, !prof !286

45:                                               ; preds = %39
  %46 = or disjoint i8 %42, 1
  store i8 %46, ptr %41, align 8
  %47 = add nsw i32 %30, 1
  %48 = getelementptr inbounds %struct.var_ann_d, ptr %41, i64 0, i32 1
  store i32 %30, ptr %48, align 4, !tbaa !287
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %25, ptr noundef %40) #17
  %49 = load ptr, ptr %3, align 8, !tbaa !244
  br label %50

50:                                               ; preds = %45, %39
  %51 = phi ptr [ %28, %39 ], [ %49, %45 ]
  %52 = phi i32 [ %30, %39 ], [ %47, %45 ]
  %53 = getelementptr inbounds %struct.var_ann_d, ptr %41, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !287
  %55 = getelementptr inbounds i32, ptr %51, i64 %29
  store i32 %54, ptr %55, align 4, !tbaa !256
  %56 = add nuw nsw i64 %29, 1
  %57 = icmp eq i64 %56, %26
  br i1 %57, label %58, label %27, !prof !289, !llvm.loop !290

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 5
  store i32 %52, ptr %59, align 8, !tbaa !238
  %60 = icmp sgt i32 %52, 0
  br i1 %60, label %61, label %72, !prof !291

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 7
  br label %63

63:                                               ; preds = %61, %63
  %64 = phi i32 [ 0, %61 ], [ %70, %63 ]
  %65 = load ptr, ptr %62, align 8, !tbaa !282
  %66 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %65, i32 noundef %64) #17
  %67 = tail call fastcc ptr @var_ann(ptr noundef %66) #17
  %68 = load i8, ptr %67, align 8
  %69 = and i8 %68, -2
  store i8 %69, ptr %67, align 8
  %70 = add nuw nsw i32 %64, 1
  %71 = icmp eq i32 %70, %52
  br i1 %71, label %72, label %63, !prof !292, !llvm.loop !293

72:                                               ; preds = %63, %22, %58
  ret void
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !294 !PGOFuncName !295 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !248
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_zero_uses(ptr noundef %0) unnamed_addr #0 !prof !296 !PGOFuncName !297 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !298
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6, !prof !300

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !301

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %2) #16
  br label %11

11:                                               ; preds = %6, %1, %9
  %12 = phi i8 [ %10, %9 ], [ 1, %1 ], [ 0, %6 ]
  ret i8 %12
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @bitmap_count_bits(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 !prof !302 !PGOFuncName !303 {
  %4 = load ptr, ptr %1, align 8, !tbaa !304
  store ptr %4, ptr %0, align 8, !tbaa !306
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !309
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !310

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !306
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !311
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !313

13:                                               ; preds = %8
  %14 = shl i32 %11, 7
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ %14, %13 ], [ 0, %8 ]
  %17 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !314
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !315
  %20 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %19, ptr %20, align 8, !tbaa !316
  %21 = icmp eq i64 %19, 0
  %22 = zext i1 %21 to i32
  %23 = or disjoint i32 %16, %22
  store i32 %23, ptr %2, align 4, !tbaa !256
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !prof !317 !PGOFuncName !318 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !316
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !319

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !320

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !256
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !321, !llvm.loop !322

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !256
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !256
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !314
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !306
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !314
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !323

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !315
  store i64 %35, ptr %3, align 8, !tbaa !316
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !324

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !256
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !256
  %40 = load i32, ptr %23, align 8, !tbaa !314
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !314
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !325, !llvm.loop !326

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !327
  store ptr %44, ptr %0, align 8, !tbaa !306
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !328

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !311
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !256
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !316
  store i32 %16, ptr %1, align 4, !tbaa !256
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !329 !PGOFuncName !330 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !316
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !316
  %6 = load i32, ptr %1, align 4, !tbaa !256
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !256
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @num_var_partitions(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !331 !PGOFuncName !332 {
  %2 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !236
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_tree_base_truncate(ptr noundef writeonly %0) unnamed_addr #10 !prof !333 !PGOFuncName !334 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !335
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !246 !PGOFuncName !337 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @partition_to_var(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !prof !338 !PGOFuncName !339 {
  %3 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !241
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !340

6:                                                ; preds = %2
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds i32, ptr %4, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !256
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ %1, %2 ]
  %12 = load ptr, ptr %0, align 8, !tbaa !230
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds %struct.partition_def, ptr %12, i64 0, i32 1, i64 %13
  %15 = load i32, ptr %14, align 8, !tbaa !253
  %16 = load ptr, ptr @cfun, align 8, !tbaa !248
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !262
  %19 = getelementptr inbounds %struct.gimple_df, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !264
  %21 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %20, i32 noundef %15) #17
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @var_ann(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !341 !PGOFuncName !342 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %13 [
    i16 32, label %4
    i16 34, label %6
    i16 36, label %8
  ], !prof !343

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  br label %10

10:                                               ; preds = %4, %6, %8
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ], [ %5, %4 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !248
  br label %13

13:                                               ; preds = %1, %10
  %14 = phi ptr [ %12, %10 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !344 !PGOFuncName !345 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #17
  %3 = load ptr, ptr %0, align 8, !tbaa !248
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !344 !PGOFuncName !346 {
  %2 = load ptr, ptr %0, align 8, !tbaa !248
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !347

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #16
  store ptr %6, ptr %0, align 8, !tbaa !248
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !344 !PGOFuncName !348 {
  %3 = load i32, ptr %0, align 8, !tbaa !335
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !335
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !248
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !344 !PGOFuncName !349 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !350

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !351
  %6 = load i32, ptr %0, align 8, !tbaa !335
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @partition_view_bitmap(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !246 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %7 = tail call fastcc ptr @partition_view_init(ptr noundef %0) #17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %4) #17
  %8 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #17, !range !278
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10, !prof !352

10:                                               ; preds = %3, %19
  %11 = load ptr, ptr %0, align 8, !tbaa !230
  %12 = load i32, ptr %4, align 4, !tbaa !256
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.partition_def, ptr %11, i64 0, i32 1, i64 %13
  %15 = load i32, ptr %14, align 8, !tbaa !253
  %16 = tail call i32 @bitmap_bit_p(ptr noundef %7, i32 noundef %15) #16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19, !prof !353

18:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 331, ptr noundef nonnull @.str.1) #16
  br label %19

19:                                               ; preds = %10, %18
  %20 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %15) #16
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  %21 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #17, !range !278
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %10, !prof !289, !llvm.loop !354

23:                                               ; preds = %19, %3
  tail call fastcc void @partition_view_fini(ptr noundef %0, ptr noundef %6) #17
  tail call void @bitmap_obstack_free(ptr noundef %7) #16
  %24 = icmp eq i8 %2, 0
  br i1 %24, label %26, label %25, !prof !249

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
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_scope_block(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !333 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !248
  tail call fastcc void @dump_scope_block(ptr noundef %3, i32 noundef 0, ptr noundef %0, i32 noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_scope_block(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !333 !PGOFuncName !355 {
  %5 = alloca %struct.expanded_location, align 8
  %6 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 1
  %9 = load i64, ptr %2, align 8
  %10 = and i64 %9, 16777216
  %11 = icmp eq i64 %10, 0
  %12 = select i1 %11, ptr @.str.4, ptr @.str.3
  %13 = and i32 %7, 1
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, ptr @.str.3, ptr @.str.5
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %1, ptr noundef nonnull @.str.3, i32 noundef %8, ptr noundef nonnull %12, ptr noundef nonnull %15) #17
  %17 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !252
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %18) #16
  %21 = load ptr, ptr %5, align 8, !tbaa !356
  %22 = getelementptr inbounds %struct.expanded_location, ptr %5, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !358
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %21, i32 noundef %23) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  br label %25

25:                                               ; preds = %20, %4
  %26 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !252
  %28 = icmp eq ptr %27, null
  br i1 %28, label %45, label %29

29:                                               ; preds = %25
  %30 = call ptr @block_ultimate_origin(ptr noundef nonnull %2) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %29
  %33 = call i64 @fwrite(ptr nonnull @.str.7, i64 19, i64 1, ptr %0)
  %34 = load i64, ptr %30, align 8
  %35 = and i64 %34, 65535
  %36 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !256
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  call void @print_generic_decl(ptr noundef %0, ptr noundef nonnull %30, i32 noundef %3) #16
  br label %45

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.tree_block, ptr %30, i64 0, i32 1
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 1
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %43) #17
  br label %45

45:                                               ; preds = %29, %40, %39, %25
  %46 = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %0)
  %47 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !252
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %64, %45
  %51 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !252
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
  %63 = select i1 %62, ptr @.str.4, ptr @.str.3
  br label %64

64:                                               ; preds = %59, %55
  %65 = phi ptr [ @.str.4, %55 ], [ %63, %59 ]
  %66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %1, ptr noundef nonnull @.str.3) #17
  call void @print_generic_decl(ptr noundef %0, ptr noundef nonnull %56, i32 noundef %3) #16
  %67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %65) #17
  %68 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !252
  %70 = icmp eq ptr %69, null
  br i1 %70, label %50, label %55, !llvm.loop !359

71:                                               ; preds = %50, %71
  %72 = phi i32 [ %77, %71 ], [ 0, %50 ]
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %1, ptr noundef nonnull @.str.3) #17
  %74 = load ptr, ptr %51, align 8, !tbaa !252
  %75 = call fastcc ptr @VEC_tree_base_index(ptr noundef %74, i32 noundef %72) #17
  call void @print_generic_decl(ptr noundef %0, ptr noundef %75, i32 noundef %3) #16
  %76 = call i64 @fwrite(ptr nonnull @.str.12, i64 16, i64 1, ptr %0)
  %77 = add nuw i32 %72, 1
  %78 = load ptr, ptr %51, align 8, !tbaa !252
  %79 = call fastcc i32 @VEC_tree_base_length(ptr noundef %78) #17
  %80 = icmp ult i32 %77, %79
  br i1 %80, label %71, label %81, !llvm.loop !360

81:                                               ; preds = %71, %50
  %82 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !252
  %84 = icmp eq ptr %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %81
  %86 = add nsw i32 %1, 2
  br label %87

87:                                               ; preds = %85, %87
  %88 = phi ptr [ %83, %85 ], [ %90, %87 ]
  call fastcc void @dump_scope_block(ptr noundef %0, i32 noundef %86, ptr noundef nonnull %88, i32 noundef %3) #17
  %89 = getelementptr inbounds %struct.tree_common, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !252
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %87, !llvm.loop !361

92:                                               ; preds = %87, %81
  %93 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %1, ptr noundef nonnull @.str.3) #17
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @block_ultimate_origin(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_generic_decl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !333 !PGOFuncName !362 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !335
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_scope_blocks(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !333 {
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !248
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !252
  tail call fastcc void @dump_scope_block(ptr noundef %0, i32 noundef 0, ptr noundef %5, i32 noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_scope_blocks(i32 noundef %0) local_unnamed_addr #0 !prof !333 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !248
  tail call void @dump_scope_blocks(ptr noundef %2, i32 noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_unused_locals() local_unnamed_addr #0 !prof !363 {
  %1 = alloca %struct.referenced_var_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ssa_operand_iterator_d, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #18
  %8 = load i32, ptr @optimize, align 4, !tbaa !256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %287, label %10, !prof !364

10:                                               ; preds = %0
  %11 = load ptr, ptr @current_function_decl, align 8, !tbaa !248
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !252
  tail call fastcc void @mark_scope_block_unused(ptr noundef %13) #17
  %14 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %1) #17
  %15 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #17, !range !278
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %25, !prof !365

17:                                               ; preds = %10, %17
  %18 = phi ptr [ %22, %17 ], [ %14, %10 ]
  %19 = tail call fastcc ptr @var_ann(ptr noundef %18) #17
  %20 = load i8, ptr %19, align 8
  %21 = and i8 %20, -3
  store i8 %21, ptr %19, align 8
  %22 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %1) #17
  %23 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #17, !range !278
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %17, label %25, !prof !366, !llvm.loop !367

25:                                               ; preds = %17, %10
  %26 = load ptr, ptr @cfun, align 8, !tbaa !248
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !368
  %29 = load ptr, ptr %28, align 8, !tbaa !369
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !371
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !373
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %118, label %35, !prof !374

35:                                               ; preds = %25
  %36 = getelementptr inbounds i8, ptr %3, i64 8
  br label %37

37:                                               ; preds = %35, %109
  %38 = phi ptr [ %31, %35 ], [ %111, %109 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %38) #17
  %39 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !278
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %66, !prof !375

41:                                               ; preds = %37, %63
  %42 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %43 = call fastcc ptr @gimple_block(ptr noundef %42) #17
  %44 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %42) #17, !range !278
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %63, !prof !376

46:                                               ; preds = %41
  %47 = icmp eq ptr %43, null
  br i1 %47, label %51, label %48, !prof !377

48:                                               ; preds = %46
  %49 = load i64, ptr %43, align 8
  %50 = or i64 %49, 16777216
  store i64 %50, ptr %43, align 8
  br label %51

51:                                               ; preds = %48, %46
  %52 = call fastcc i32 @gimple_num_ops(ptr noundef %42) #17
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54, !prof !378

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
  br i1 %62, label %54, label %63, !prof !379, !llvm.loop !380

63:                                               ; preds = %54, %51, %41
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %64 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !278
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %41, label %66, !prof !381, !llvm.loop !382

66:                                               ; preds = %63, %37
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %38) #16
  %67 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !278
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %89, !prof !383

69:                                               ; preds = %66, %86
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %70 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %71 = call fastcc ptr @gimple_phi_result(ptr noundef %70) #17
  %72 = getelementptr inbounds %struct.tree_ssa_name, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !252
  %74 = call fastcc zeroext i8 @is_global_var(ptr noundef %73) #17, !range !278
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %86, !prof !384

76:                                               ; preds = %69
  store ptr %71, ptr %6, align 8, !tbaa !248
  call fastcc void @mark_all_vars_used(ptr noundef nonnull %6, ptr noundef null) #17
  %77 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %5, ptr noundef %70) #17
  %78 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #17
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %86, !prof !385

80:                                               ; preds = %76, %80
  %81 = phi ptr [ %83, %80 ], [ %77, %76 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  %82 = call fastcc ptr @get_use_from_ptr(ptr noundef %81) #17
  store ptr %82, ptr %7, align 8, !tbaa !248
  call fastcc void @mark_all_vars_used(ptr noundef nonnull %7, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  %83 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %5) #17
  %84 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #17
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %80, label %86, !prof !386, !llvm.loop !387

86:                                               ; preds = %80, %76, %69
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #18
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %87 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !278
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %69, label %89, !prof !388, !llvm.loop !389

89:                                               ; preds = %86, %66
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 1
  %91 = call fastcc ptr @ei_start_1(ptr noundef nonnull %90) #17
  store i32 0, ptr %3, align 8, !tbaa.struct !390
  store ptr %91, ptr %36, align 8, !tbaa.struct !391
  %92 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %91, ptr noundef nonnull %4) #17, !range !278
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %109, label %94, !prof !392

94:                                               ; preds = %89, %104
  %95 = load ptr, ptr %4, align 8, !tbaa !248
  %96 = getelementptr inbounds %struct.edge_def, ptr %95, i64 0, i32 5
  %97 = load i32, ptr %96, align 8, !tbaa !393
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %104, label %99, !prof !395

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.edge_def, ptr %95, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !396
  %102 = load i64, ptr %101, align 8
  %103 = or i64 %102, 16777216
  store i64 %103, ptr %101, align 8
  br label %104

104:                                              ; preds = %94, %99
  call fastcc void @ei_next(ptr noundef nonnull %3) #17
  %105 = load i32, ptr %3, align 8
  %106 = load ptr, ptr %36, align 8
  %107 = call fastcc zeroext i8 @ei_cond(i32 %105, ptr %106, ptr noundef nonnull %4) #17, !range !278
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %94, !prof !397, !llvm.loop !398

109:                                              ; preds = %104, %89
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %111 = load ptr, ptr %110, align 8, !tbaa !371
  %112 = load ptr, ptr @cfun, align 8, !tbaa !248
  %113 = getelementptr inbounds %struct.function, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !368
  %115 = getelementptr inbounds %struct.control_flow_graph, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !373
  %117 = icmp eq ptr %111, %116
  br i1 %117, label %118, label %37, !prof !399, !llvm.loop !400

118:                                              ; preds = %109, %25
  %119 = phi ptr [ %26, %25 ], [ %112, %109 ]
  %120 = getelementptr inbounds %struct.function, ptr %119, i64 0, i32 20
  %121 = load i32, ptr %120, align 8
  %122 = and i32 %121, -536870913
  store i32 %122, ptr %120, align 8
  %123 = getelementptr inbounds %struct.function, ptr %119, i64 0, i32 9
  %124 = load ptr, ptr %123, align 8, !tbaa !248
  %125 = icmp eq ptr %124, null
  br i1 %125, label %248, label %126, !prof !374

126:                                              ; preds = %118, %177
  %127 = phi ptr [ %178, %177 ], [ %124, %118 ]
  %128 = phi ptr [ %180, %177 ], [ %123, %118 ]
  %129 = phi ptr [ %179, %177 ], [ null, %118 ]
  %130 = getelementptr inbounds %struct.tree_list, ptr %127, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !252
  %132 = load i64, ptr %131, align 8
  %133 = and i64 %132, 65535
  %134 = icmp eq i64 %133, 29
  br i1 %134, label %172, label %135, !prof !401

135:                                              ; preds = %126
  %136 = call fastcc ptr @var_ann(ptr noundef nonnull %131) #17
  %137 = icmp eq ptr %136, null
  br i1 %137, label %142, label %138, !prof !402

138:                                              ; preds = %135
  %139 = load i8, ptr %136, align 8
  %140 = and i8 %139, 2
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %157, !prof !403

142:                                              ; preds = %138, %135
  %143 = call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %131) #17, !range !278
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %154, label %145, !prof !404

145:                                              ; preds = %142
  %146 = icmp eq ptr %129, null
  br i1 %146, label %147, label %149, !prof !405

147:                                              ; preds = %145
  %148 = call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi ptr [ %148, %147 ], [ %129, %145 ]
  %151 = getelementptr inbounds %struct.tree_decl_minimal, ptr %131, i64 0, i32 2
  %152 = load i32, ptr %151, align 4, !tbaa !252
  %153 = call zeroext i8 @bitmap_set_bit(ptr noundef %150, i32 noundef %152) #16
  br label %172

154:                                              ; preds = %142
  %155 = getelementptr inbounds %struct.tree_common, ptr %127, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !252
  store ptr %156, ptr %128, align 8, !tbaa !248
  br label %177, !llvm.loop !406

157:                                              ; preds = %138
  %158 = icmp eq i64 %133, 32
  br i1 %158, label %159, label %172, !prof !291

159:                                              ; preds = %157
  %160 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %131, i64 0, i32 4
  %161 = load i32, ptr %160, align 8
  %162 = and i32 %161, 2
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %172, label %164, !prof !407

164:                                              ; preds = %159
  %165 = call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %131) #17, !range !278
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = load ptr, ptr @cfun, align 8, !tbaa !248
  %169 = getelementptr inbounds %struct.function, ptr %168, i64 0, i32 20
  %170 = load i32, ptr %169, align 8
  %171 = or i32 %170, 536870912
  store i32 %171, ptr %169, align 8
  br label %172

172:                                              ; preds = %126, %157, %159, %164, %167, %149
  %173 = phi ptr [ %129, %164 ], [ %129, %167 ], [ %129, %159 ], [ %129, %157 ], [ %150, %149 ], [ %129, %126 ]
  %174 = load ptr, ptr %128, align 8, !tbaa !248
  %175 = getelementptr inbounds %struct.tree_common, ptr %174, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !248
  br label %177

177:                                              ; preds = %172, %154
  %178 = phi ptr [ %176, %172 ], [ %156, %154 ]
  %179 = phi ptr [ %173, %172 ], [ %129, %154 ]
  %180 = phi ptr [ %175, %172 ], [ %128, %154 ]
  %181 = icmp eq ptr %178, null
  br i1 %181, label %182, label %126, !prof !408

182:                                              ; preds = %177
  %183 = icmp eq ptr %179, null
  br i1 %183, label %248, label %184, !prof !409

184:                                              ; preds = %182
  %185 = load ptr, ptr @cfun, align 8, !tbaa !248
  %186 = getelementptr inbounds %struct.function, ptr %185, i64 0, i32 9
  %187 = load ptr, ptr %186, align 8, !tbaa !252
  %188 = icmp eq ptr %187, null
  br i1 %188, label %247, label %189, !prof !410

189:                                              ; preds = %184, %208
  %190 = phi ptr [ %210, %208 ], [ %187, %184 ]
  %191 = getelementptr inbounds %struct.tree_list, ptr %190, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !252
  %193 = load i64, ptr %192, align 8
  %194 = and i64 %193, 65535
  %195 = icmp eq i64 %194, 32
  br i1 %195, label %196, label %208, !prof !411

196:                                              ; preds = %189
  %197 = call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %192) #17, !range !278
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %208, label %199, !prof !412

199:                                              ; preds = %196
  %200 = call fastcc ptr @var_ann(ptr noundef nonnull %192) #17
  %201 = icmp eq ptr %200, null
  br i1 %201, label %208, label %202, !prof !413

202:                                              ; preds = %199
  %203 = load i8, ptr %200, align 8
  %204 = and i8 %203, 2
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %208, label %206, !prof !414

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.tree_decl_common, ptr %192, i64 0, i32 5
  call fastcc void @mark_all_vars_used(ptr noundef nonnull %207, ptr noundef nonnull %179) #17
  br label %208

208:                                              ; preds = %206, %202, %199, %196, %189
  %209 = getelementptr inbounds %struct.tree_common, ptr %190, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !252
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %189, !prof !415, !llvm.loop !416

212:                                              ; preds = %208
  %213 = load ptr, ptr @cfun, align 8, !tbaa !248
  %214 = getelementptr inbounds %struct.function, ptr %213, i64 0, i32 9
  %215 = load ptr, ptr %214, align 8, !tbaa !248
  %216 = icmp eq ptr %215, null
  br i1 %216, label %247, label %217, !prof !417

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.function, ptr %213, i64 0, i32 9
  br label %219

219:                                              ; preds = %217, %243
  %220 = phi ptr [ %244, %243 ], [ %215, %217 ]
  %221 = phi ptr [ %245, %243 ], [ %218, %217 ]
  %222 = getelementptr inbounds %struct.tree_list, ptr %220, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !252
  %224 = load i64, ptr %223, align 8
  %225 = and i64 %224, 65535
  %226 = icmp eq i64 %225, 32
  br i1 %226, label %227, label %239, !prof !411

227:                                              ; preds = %219
  %228 = call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %223) #17, !range !278
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %239, label %230, !prof !412

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.tree_decl_minimal, ptr %223, i64 0, i32 2
  %232 = load i32, ptr %231, align 4, !tbaa !252
  %233 = call i32 @bitmap_bit_p(ptr noundef nonnull %179, i32 noundef %232) #16
  %234 = icmp eq i32 %233, 0
  %235 = load ptr, ptr %221, align 8, !tbaa !248
  br i1 %234, label %239, label %236, !prof !418

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.tree_common, ptr %235, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !252
  store ptr %238, ptr %221, align 8, !tbaa !248
  br label %243

239:                                              ; preds = %230, %227, %219
  %240 = phi ptr [ %235, %230 ], [ %220, %227 ], [ %220, %219 ]
  %241 = getelementptr inbounds %struct.tree_common, ptr %240, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !248
  br label %243

243:                                              ; preds = %239, %236
  %244 = phi ptr [ %238, %236 ], [ %242, %239 ]
  %245 = phi ptr [ %221, %236 ], [ %241, %239 ]
  %246 = icmp eq ptr %244, null
  br i1 %246, label %247, label %219, !prof !415, !llvm.loop !419

247:                                              ; preds = %243, %184, %212
  call void @bitmap_obstack_free(ptr noundef nonnull %179) #16
  br label %248

248:                                              ; preds = %118, %247, %182
  %249 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %1) #17
  %250 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #17, !range !278
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %252, label %272, !prof !365

252:                                              ; preds = %248, %268
  %253 = phi ptr [ %269, %268 ], [ %249, %248 ]
  %254 = call fastcc zeroext i8 @is_global_var(ptr noundef %253) #17, !range !278
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %256, label %268, !prof !420

256:                                              ; preds = %252
  %257 = load i64, ptr %253, align 8
  %258 = trunc i64 %257 to i16
  switch i16 %258, label %259 [
    i16 34, label %268
    i16 36, label %268
  ], !prof !421

259:                                              ; preds = %256
  %260 = call fastcc ptr @var_ann(ptr noundef nonnull %253) #17
  %261 = load i8, ptr %260, align 8
  %262 = and i8 %261, 18
  %263 = icmp eq i8 %262, 0
  %264 = and i64 %257, 262144
  %265 = icmp eq i64 %264, 0
  %266 = and i1 %265, %263
  br i1 %266, label %267, label %268, !prof !422

267:                                              ; preds = %259
  call void @remove_referenced_var(ptr noundef nonnull %253) #16
  br label %268

268:                                              ; preds = %256, %256, %252, %259, %267
  %269 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %1) #17
  %270 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #17, !range !278
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %252, label %272, !prof !366, !llvm.loop !423

272:                                              ; preds = %268, %248
  %273 = load ptr, ptr @current_function_decl, align 8, !tbaa !248
  %274 = getelementptr inbounds %struct.tree_decl_common, ptr %273, i64 0, i32 5
  %275 = load ptr, ptr %274, align 8, !tbaa !252
  %276 = call fastcc zeroext i8 @remove_unused_scope_block_p(ptr noundef %275) #17, !range !278
  %277 = load ptr, ptr @dump_file, align 8, !tbaa !248
  %278 = icmp eq ptr %277, null
  br i1 %278, label %287, label %279, !prof !424

279:                                              ; preds = %272
  %280 = load i32, ptr @dump_flags, align 4, !tbaa !256
  %281 = and i32 %280, 8
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %287, label %283

283:                                              ; preds = %279
  %284 = call i64 @fwrite(ptr nonnull @.str.14, i64 29, i64 1, ptr nonnull %277)
  %285 = load ptr, ptr @dump_file, align 8, !tbaa !248
  %286 = load i32, ptr @dump_flags, align 4, !tbaa !256
  call void @dump_scope_blocks(ptr noundef %285, i32 noundef %286) #17
  br label %287

287:                                              ; preds = %272, %279, %283, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_scope_block_unused(ptr noundef %0) unnamed_addr #0 !prof !425 !PGOFuncName !426 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, -16777217
  store i64 %3, ptr %0, align 8
  %4 = load ptr, ptr @debug_hooks, align 8, !tbaa !248
  %5 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !427
  %7 = tail call zeroext i8 %6(ptr noundef nonnull %0) #16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %12, !prof !429

9:                                                ; preds = %1
  %10 = load i64, ptr %0, align 8
  %11 = or i64 %10, 16777216
  store i64 %11, ptr %0, align 8
  br label %12

12:                                               ; preds = %9, %1
  %13 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !252
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16, !prof !430

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %19, %16 ], [ %14, %12 ]
  tail call fastcc void @mark_scope_block_unused(ptr noundef nonnull %17) #17
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !252
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %16, !prof !431, !llvm.loop !432

21:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_referenced_var(ptr nocapture noundef %0) unnamed_addr #0 !prof !433 !PGOFuncName !434 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !248
  %3 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %2) #17
  %4 = tail call fastcc ptr @first_htab_element(ptr noundef %0, ptr noundef %3) #17
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_referenced_vars_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !435 !PGOFuncName !436 {
  %2 = tail call fastcc zeroext i8 @end_htab_p(ptr noundef %0) #17, !range !278
  ret i8 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_referenced_var(ptr nocapture noundef %0) unnamed_addr #8 !prof !437 !PGOFuncName !438 {
  %2 = tail call fastcc ptr @next_htab_element(ptr noundef %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 !prof !439 !PGOFuncName !440 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !441
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !443
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !444
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !445 !PGOFuncName !446 {
  %2 = load ptr, ptr %0, align 8, !tbaa !441
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #11 !prof !447 !PGOFuncName !448 {
  %2 = load ptr, ptr %0, align 8, !tbaa !441
  %3 = load ptr, ptr %2, align 8, !tbaa !449
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_block(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !451 !PGOFuncName !452 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !252
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !453 !PGOFuncName !454 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !455
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !456 !PGOFuncName !457 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !252
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_all_vars_used(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !458 !PGOFuncName !459 {
  %3 = tail call ptr @walk_tree_1(ptr noundef %0, ptr noundef nonnull @mark_all_vars_used_1, ptr noundef %1, ptr noundef null, ptr noundef null) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !460 !PGOFuncName !461 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !278
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5, !prof !462

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
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #7 !prof !463 !PGOFuncName !464 {
  %2 = load ptr, ptr %0, align 8, !tbaa !441
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !465
  store ptr %4, ptr %0, align 8, !tbaa !441
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !466 !PGOFuncName !467 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11, !prof !468

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
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !469 !PGOFuncName !470 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !252
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !471 !PGOFuncName !472 {
  %3 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #17
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #17
  store i8 0, ptr %0, align 8, !tbaa !473
  %4 = tail call zeroext i8 @is_gimple_reg(ptr noundef %3) #16
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %5, align 8, !tbaa !475
  %6 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #17
  %7 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %6, ptr %7, align 4, !tbaa !476
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !477
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #17
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !478 !PGOFuncName !479 {
  %2 = load i8, ptr %0, align 8, !tbaa !473
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !480 !PGOFuncName !481 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !482
  %4 = load ptr, ptr %3, align 8, !tbaa !248
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !478 !PGOFuncName !483 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !484
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !485

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !486
  store ptr %7, ptr %2, align 8, !tbaa !484
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !488
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !476
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !489

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !475
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !488
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #17
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !473
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #13 !prof !490 !PGOFuncName !491 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !492 !PGOFuncName !493 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !278
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !494

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #17
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !248
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !495 !PGOFuncName !496 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !497

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #17
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #17
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !498

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !499
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !499
  ret void
}

; Function Attrs: optsize
declare void @remove_referenced_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @remove_unused_scope_block_p(ptr noundef %0) unnamed_addr #0 !prof !425 !PGOFuncName !501 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 16777216
  %4 = icmp eq i64 %3, 0
  %5 = zext i1 %4 to i8
  %6 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !248
  %8 = icmp eq ptr %7, null
  br i1 %8, label %51, label %9, !prof !502

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
  ], !prof !503

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %18 = load i64, ptr %17, align 8
  br label %24

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 67108864
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %43, !prof !504

24:                                               ; preds = %16, %19
  %25 = phi i64 [ %18, %16 ], [ %21, %19 ]
  %26 = and i64 %25, 1024
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %30, label %28, !prof !505

28:                                               ; preds = %24
  %29 = load ptr, ptr %13, align 8, !tbaa !252
  store ptr %29, ptr %11, align 8, !tbaa !248
  br label %46

30:                                               ; preds = %24
  %31 = tail call fastcc ptr @var_ann(ptr noundef nonnull %10) #17
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33, !prof !506

33:                                               ; preds = %30
  %34 = load i8, ptr %31, align 8
  %35 = and i8 %34, 2
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %43, !prof !507

37:                                               ; preds = %33, %30
  %38 = load i32, ptr @debug_info_level, align 4
  %39 = and i32 %38, -2
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %43, label %41, !prof !508

41:                                               ; preds = %37
  %42 = load ptr, ptr %13, align 8, !tbaa !252
  store ptr %42, ptr %11, align 8, !tbaa !248
  br label %46

43:                                               ; preds = %37, %9, %19, %33
  %44 = phi i8 [ 0, %33 ], [ 0, %19 ], [ 0, %9 ], [ %12, %37 ]
  %45 = load ptr, ptr %13, align 8, !tbaa !248
  br label %46

46:                                               ; preds = %43, %28, %41
  %47 = phi ptr [ %45, %43 ], [ %29, %28 ], [ %42, %41 ]
  %48 = phi i8 [ %44, %43 ], [ %12, %28 ], [ %12, %41 ]
  %49 = phi ptr [ %13, %43 ], [ %11, %28 ], [ %11, %41 ]
  %50 = icmp eq ptr %47, null
  br i1 %50, label %51, label %9, !prof !509, !llvm.loop !510

51:                                               ; preds = %46, %1
  %52 = phi i8 [ %5, %1 ], [ %48, %46 ]
  %53 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !248
  %55 = icmp eq ptr %54, null
  br i1 %55, label %105, label %56, !prof !430

56:                                               ; preds = %51, %98
  %57 = phi ptr [ %99, %98 ], [ %54, %51 ]
  %58 = phi ptr [ %101, %98 ], [ %53, %51 ]
  %59 = phi i32 [ %100, %98 ], [ 0, %51 ]
  %60 = tail call fastcc zeroext i8 @remove_unused_scope_block_p(ptr noundef nonnull %57) #17, !range !278
  %61 = icmp eq i8 %60, 0
  %62 = load ptr, ptr %58, align 8, !tbaa !248
  br i1 %61, label %93, label %63, !prof !511

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.tree_block, ptr %62, i64 0, i32 5
  %65 = load ptr, ptr %64, align 8, !tbaa !252
  %66 = icmp eq ptr %65, null
  %67 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !252
  br i1 %66, label %92, label %69, !prof !512

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.tree_block, ptr %62, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !252
  store ptr %65, ptr %58, align 8, !tbaa !248
  %72 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !252
  %74 = icmp eq ptr %73, null
  br i1 %74, label %85, label %75, !prof !513

75:                                               ; preds = %69, %75
  %76 = phi ptr [ %81, %75 ], [ %65, %69 ]
  %77 = phi ptr [ %80, %75 ], [ %58, %69 ]
  %78 = getelementptr inbounds %struct.tree_block, ptr %76, i64 0, i32 6
  store ptr %71, ptr %78, align 8, !tbaa !252
  %79 = load ptr, ptr %77, align 8, !tbaa !248
  %80 = getelementptr inbounds %struct.tree_common, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !248
  %82 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !252
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %75, !prof !514, !llvm.loop !515

85:                                               ; preds = %75, %69
  %86 = phi ptr [ %65, %69 ], [ %81, %75 ]
  %87 = phi ptr [ %58, %69 ], [ %80, %75 ]
  %88 = getelementptr inbounds %struct.tree_common, ptr %86, i64 0, i32 1
  store ptr %68, ptr %88, align 8, !tbaa !252
  %89 = load ptr, ptr %87, align 8, !tbaa !248
  %90 = getelementptr inbounds %struct.tree_block, ptr %89, i64 0, i32 6
  store ptr %71, ptr %90, align 8, !tbaa !252
  %91 = load ptr, ptr %87, align 8, !tbaa !248
  br label %93

92:                                               ; preds = %63
  store ptr %68, ptr %58, align 8, !tbaa !248
  br label %98

93:                                               ; preds = %56, %85
  %94 = phi ptr [ %91, %85 ], [ %62, %56 ]
  %95 = getelementptr inbounds %struct.tree_common, ptr %94, i64 0, i32 1
  %96 = add nsw i32 %59, 1
  %97 = load ptr, ptr %95, align 8, !tbaa !248
  br label %98

98:                                               ; preds = %93, %92
  %99 = phi ptr [ %97, %93 ], [ %68, %92 ]
  %100 = phi i32 [ %96, %93 ], [ %59, %92 ]
  %101 = phi ptr [ %95, %93 ], [ %58, %92 ]
  %102 = icmp eq ptr %99, null
  br i1 %102, label %103, label %56, !prof !431, !llvm.loop !516

103:                                              ; preds = %98
  %104 = icmp eq i32 %100, 0
  br label %105

105:                                              ; preds = %103, %51
  %106 = phi i1 [ true, %51 ], [ %104, %103 ]
  %107 = icmp eq i8 %52, 0
  br i1 %107, label %159, label %108, !prof !517

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 6
  %110 = load ptr, ptr %109, align 8, !tbaa !252
  %111 = icmp eq ptr %110, null
  br i1 %111, label %159, label %112, !prof !518

112:                                              ; preds = %108
  %113 = load i64, ptr %110, align 8
  %114 = and i64 %113, 65535
  %115 = icmp eq i64 %114, 29
  br i1 %115, label %159, label %116, !prof !519

116:                                              ; preds = %112
  br i1 %106, label %160, label %117, !prof !512

117:                                              ; preds = %116
  %118 = load i32, ptr @debug_info_level, align 4, !tbaa !256
  %119 = icmp ult i32 %118, 2
  br i1 %119, label %120, label %143, !prof !520

120:                                              ; preds = %117
  %121 = tail call fastcc zeroext i8 @inlined_function_outer_scope_p(ptr noundef nonnull %0) #17, !range !278
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %160, label %123, !prof !521

123:                                              ; preds = %120, %129
  %124 = phi ptr [ %131, %129 ], [ %0, %120 ]
  %125 = icmp eq ptr %124, null
  br i1 %125, label %160, label %126, !prof !522

126:                                              ; preds = %123
  %127 = load i64, ptr %124, align 8
  %128 = trunc i64 %127 to i16
  switch i16 %128, label %160 [
    i16 4, label %129
    i16 29, label %133
  ], !prof !523

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.tree_block, ptr %124, i64 0, i32 7
  %131 = load ptr, ptr %130, align 8, !tbaa !252
  %132 = icmp eq ptr %131, %124
  br i1 %132, label %160, label %123, !prof !524, !llvm.loop !525

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.tree_function_decl, ptr %124, i64 0, i32 5
  %135 = load i32, ptr %134, align 8
  %136 = and i32 %135, 2097152
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %160, label %138, !prof !526

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.tree_decl_common, ptr %124, i64 0, i32 6
  %140 = load ptr, ptr %139, align 8, !tbaa !252
  %141 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.18, ptr noundef %140) #16
  %142 = icmp eq ptr %141, null
  br i1 %142, label %160, label %159, !prof !527

143:                                              ; preds = %117
  %144 = load ptr, ptr %6, align 8, !tbaa !252
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %159

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 4
  %148 = load ptr, ptr %147, align 8, !tbaa !252
  %149 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %148) #17
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %146
  %152 = tail call fastcc zeroext i8 @inlined_function_outer_scope_p(ptr noundef nonnull %0) #17, !range !278
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 2
  %156 = load i32, ptr %155, align 4, !tbaa !252
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %154
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 559, ptr noundef nonnull @.str.1) #16
  br label %160

159:                                              ; preds = %138, %105, %112, %108, %146, %143, %151
  br label %160

160:                                              ; preds = %129, %123, %126, %133, %138, %116, %158, %154, %120, %159
  %161 = phi i8 [ 0, %159 ], [ 1, %120 ], [ 1, %154 ], [ 1, %158 ], [ 1, %116 ], [ 1, %138 ], [ 1, %133 ], [ 1, %126 ], [ 1, %123 ], [ 1, %129 ]
  %162 = phi i64 [ 16777216, %159 ], [ 0, %120 ], [ 0, %154 ], [ 0, %158 ], [ 0, %116 ], [ 0, %138 ], [ 0, %133 ], [ 0, %126 ], [ 0, %123 ], [ 0, %129 ]
  %163 = load i64, ptr %0, align 8
  %164 = and i64 %163, -16777217
  %165 = or disjoint i64 %164, %162
  store i64 %165, ptr %0, align 8
  ret i8 %161
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_htab_element(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !433 !PGOFuncName !528 {
  store ptr %1, ptr %0, align 8, !tbaa !441
  %3 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !529
  %5 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !443
  %6 = tail call i64 @htab_size(ptr noundef %1) #16
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !444
  %9 = load ptr, ptr %5, align 8, !tbaa !443
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ %9, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !248
  %13 = icmp ult ptr %12, inttoptr (i64 2 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %15, ptr %5, align 8, !tbaa !443
  %16 = icmp ult ptr %15, %7
  br i1 %16, label %10, label %17, !prof !531, !llvm.loop !532

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %19 = icmp ult ptr %18, %7
  br i1 %19, label %20, label %22, !prof !533

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !248
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !433 !PGOFuncName !534 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !262
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !535

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !536
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_htab_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !435 !PGOFuncName !537 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !443
  %4 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !444
  %6 = icmp uge ptr %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_htab_element(ptr nocapture noundef %0) unnamed_addr #8 !prof !437 !PGOFuncName !538 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !444
  %5 = load ptr, ptr %2, align 8, !tbaa !443
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !443
  %9 = icmp ult ptr %8, %4
  br i1 %9, label %10, label %13, !prof !539

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !248
  %12 = icmp ult ptr %11, inttoptr (i64 2 to ptr)
  br i1 %12, label %6, label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %11, %10 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !439 !PGOFuncName !540 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !541
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !542

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !252
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !543

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !544
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 !prof !439 !PGOFuncName !546 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !543

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !547
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !549 !PGOFuncName !550 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @mark_all_vars_used_1(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 !prof !551 !PGOFuncName !552 {
  %4 = load ptr, ptr %0, align 8, !tbaa !248
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !256
  %9 = icmp eq i64 %6, 141
  br i1 %9, label %10, label %13, !prof !553

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !252
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ %12, %10 ], [ %4, %3 ]
  %15 = add i32 %8, -4
  %16 = icmp ult i32 %15, 7
  br i1 %16, label %17, label %24, !prof !554

17:                                               ; preds = %13
  %18 = tail call ptr @tree_block(ptr noundef %14) #16
  %19 = load ptr, ptr %18, align 8, !tbaa !248
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21, !prof !555

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
  ], !prof !556

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
  br i1 %32, label %42, label %33, !prof !557

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.tree_decl_minimal, ptr %14, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !252
  %36 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %2, i32 noundef %35) #16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38, !prof !558

38:                                               ; preds = %33
  %39 = load i32, ptr %34, align 4, !tbaa !252
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
  %48 = load i32, ptr %47, align 4, !tbaa !256
  %49 = and i32 %48, -2
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %52, !prof !559

51:                                               ; preds = %44, %27
  store i32 0, ptr %1, align 4, !tbaa !256
  br label %52

52:                                               ; preds = %51, %44
  ret ptr null
}

; Function Attrs: optsize
declare ptr @tree_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_is_used(ptr noundef %0) unnamed_addr #0 !prof !560 !PGOFuncName !561 {
  %2 = tail call fastcc ptr @get_var_ann(ptr noundef %0) #17
  %3 = load i8, ptr %2, align 8
  %4 = or i8 %3, 2
  store i8 %4, ptr %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_var_ann(ptr noundef %0) unnamed_addr #0 !prof !560 !PGOFuncName !562 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 32, label %4
    i16 34, label %6
  ], !prof !563

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
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 144, ptr noundef nonnull @.str.1) #16
  unreachable

13:                                               ; preds = %8, %6, %4
  %14 = phi ptr [ %7, %6 ], [ %5, %4 ], [ %11, %8 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !248
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19, !prof !564

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
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !460 !PGOFuncName !565 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !455
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !460 !PGOFuncName !566 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #17
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !315
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !462

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !460 !PGOFuncName !567 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !455
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #17
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #13 !prof !460 !PGOFuncName !568 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !256
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #10 !prof !471 !PGOFuncName !569 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !473
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !570 !PGOFuncName !571 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !252
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !480 !PGOFuncName !572 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #17
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !573 !PGOFuncName !574 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !252
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !575

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 3103, ptr noundef nonnull @.str.1) #16
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !492 !PGOFuncName !576 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !577

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !495 !PGOFuncName !578 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !497

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #17
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !579 !PGOFuncName !580 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !581

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !582
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !584 !PGOFuncName !585 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !586

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 687, ptr noundef nonnull @.str.1) #16
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !248
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !587 !PGOFuncName !588 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !248
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @inlined_function_outer_scope_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !589 !PGOFuncName !590 {
  %2 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !252
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_tree_live_info(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !591 {
  %2 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !592
  tail call void @bitmap_obstack_free(ptr noundef %3) #16
  store ptr null, ptr %2, align 8, !tbaa !592
  %4 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !594
  tail call void @free(ptr noundef %5) #17
  %6 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !595
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %21, !prof !596

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 6
  %11 = zext nneg i32 %7 to i64
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ %11, %9 ], [ %14, %12 ]
  %14 = add nsw i64 %13, -1
  %15 = load ptr, ptr %10, align 8, !tbaa !597
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !248
  tail call void @bitmap_obstack_free(ptr noundef %17) #16
  %18 = load ptr, ptr %10, align 8, !tbaa !597
  %19 = getelementptr inbounds ptr, ptr %18, i64 %14
  store ptr null, ptr %19, align 8, !tbaa !248
  %20 = icmp ugt i64 %13, 1
  br i1 %20, label %12, label %21, !prof !598, !llvm.loop !599

21:                                               ; preds = %12, %1
  %22 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !597
  tail call void @free(ptr noundef %23) #17
  %24 = load i32, ptr %6, align 8, !tbaa !595
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %38, !prof !596

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 2
  %28 = zext nneg i32 %24 to i64
  br label %29

29:                                               ; preds = %26, %29
  %30 = phi i64 [ %28, %26 ], [ %31, %29 ]
  %31 = add nsw i64 %30, -1
  %32 = load ptr, ptr %27, align 8, !tbaa !600
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  %34 = load ptr, ptr %33, align 8, !tbaa !248
  tail call void @bitmap_obstack_free(ptr noundef %34) #16
  %35 = load ptr, ptr %27, align 8, !tbaa !600
  %36 = getelementptr inbounds ptr, ptr %35, i64 %31
  store ptr null, ptr %36, align 8, !tbaa !248
  %37 = icmp ugt i64 %30, 1
  br i1 %37, label %29, label %38, !prof !598, !llvm.loop !601

38:                                               ; preds = %29, %21
  %39 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !600
  tail call void @free(ptr noundef %40) #17
  tail call void @free(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @calculate_live_on_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !591 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %5 = load ptr, ptr @cfun, align 8, !tbaa !248
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !368
  %8 = load ptr, ptr %7, align 8, !tbaa !369
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !371
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !373
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %129, label %14, !prof !602

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 6
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi ptr [ %10, %14 ], [ %25, %16 ]
  %18 = load ptr, ptr %15, align 8, !tbaa !597
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !603
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !248
  tail call void @bitmap_clear(ptr noundef %23) #16
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !371
  %26 = load ptr, ptr @cfun, align 8, !tbaa !248
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !368
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !373
  %31 = icmp eq ptr %25, %30
  br i1 %31, label %32, label %16, !prof !604, !llvm.loop !605

32:                                               ; preds = %16
  %33 = load ptr, ptr %28, align 8, !tbaa !369
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !371
  %36 = icmp eq ptr %35, %25
  br i1 %36, label %129, label %37, !prof !417

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 6
  %39 = getelementptr inbounds i8, ptr %3, i64 8
  br label %40

40:                                               ; preds = %37, %120
  %41 = phi ptr [ %35, %37 ], [ %122, %120 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %41) #16
  %42 = load ptr, ptr %2, align 8, !tbaa !248
  %43 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17, !range !278
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %89, !prof !606

45:                                               ; preds = %40, %85
  %46 = phi ptr [ %86, %85 ], [ %42, %40 ]
  %47 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17
  %48 = call fastcc i32 @gimple_phi_num_args(ptr noundef %47) #17
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %85, label %50, !prof !607

50:                                               ; preds = %45, %79
  %51 = phi i64 [ %81, %79 ], [ 0, %45 ]
  %52 = phi ptr [ %80, %79 ], [ %46, %45 ]
  %53 = trunc i64 %51 to i32
  %54 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %47, i32 noundef %53) #17
  %55 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %54) #17
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 141
  br i1 %58, label %59, label %79, !prof !608

59:                                               ; preds = %50
  %60 = load ptr, ptr %0, align 8, !tbaa !609
  %61 = call fastcc i32 @var_to_partition(ptr noundef %60, ptr noundef nonnull %55) #17
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %79, label %63, !prof !610

63:                                               ; preds = %59
  %64 = call fastcc ptr @gimple_phi_arg_edge(ptr noundef %47, i64 noundef %51) #17
  %65 = load ptr, ptr %64, align 8, !tbaa !611
  %66 = load ptr, ptr @cfun, align 8, !tbaa !248
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !368
  %69 = load ptr, ptr %68, align 8, !tbaa !369
  %70 = icmp eq ptr %65, %69
  br i1 %70, label %79, label %71, !prof !612

71:                                               ; preds = %63
  %72 = load ptr, ptr %38, align 8, !tbaa !597
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 9
  %74 = load i32, ptr %73, align 8, !tbaa !603
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %72, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !248
  %78 = call zeroext i8 @bitmap_set_bit(ptr noundef %77, i32 noundef %61) #16
  br label %79

79:                                               ; preds = %63, %71, %59, %50
  %80 = phi ptr [ %64, %63 ], [ %64, %71 ], [ %52, %59 ], [ %52, %50 ]
  %81 = add nuw nsw i64 %51, 1
  %82 = call fastcc i32 @gimple_phi_num_args(ptr noundef %47) #17
  %83 = zext i32 %82 to i64
  %84 = icmp ult i64 %81, %83
  br i1 %84, label %50, label %85, !prof !613, !llvm.loop !614

85:                                               ; preds = %79, %45
  %86 = phi ptr [ %46, %45 ], [ %80, %79 ]
  call fastcc void @gsi_next(ptr noundef nonnull %4) #17
  %87 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17, !range !278
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %45, label %89, !prof !615, !llvm.loop !616

89:                                               ; preds = %85, %40
  %90 = phi ptr [ %42, %40 ], [ %86, %85 ]
  store ptr %90, ptr %2, align 8, !tbaa !248
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 1
  %92 = call fastcc ptr @ei_start_1(ptr noundef nonnull %91) #17
  store i32 0, ptr %3, align 8, !tbaa.struct !390
  store ptr %92, ptr %39, align 8, !tbaa.struct !391
  %93 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %92, ptr noundef nonnull %2) #17, !range !278
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %120, label %95, !prof !617

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 9
  br label %97

97:                                               ; preds = %95, %115
  %98 = load ptr, ptr %2, align 8, !tbaa !248
  %99 = getelementptr inbounds %struct.edge_def, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !618
  %101 = load ptr, ptr @cfun, align 8, !tbaa !248
  %102 = getelementptr inbounds %struct.function, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !368
  %104 = getelementptr inbounds %struct.control_flow_graph, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !373
  %106 = icmp eq ptr %100, %105
  br i1 %106, label %115, label %107, !prof !619

107:                                              ; preds = %97
  %108 = load ptr, ptr %38, align 8, !tbaa !597
  %109 = load i32, ptr %96, align 8, !tbaa !603
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds ptr, ptr %108, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !248
  %113 = call fastcc ptr @live_on_entry(ptr noundef %0, ptr noundef %100) #17
  %114 = call zeroext i8 @bitmap_ior_into(ptr noundef %112, ptr noundef %113) #16
  br label %115

115:                                              ; preds = %97, %107
  call fastcc void @ei_next(ptr noundef nonnull %3) #17
  %116 = load i32, ptr %3, align 8
  %117 = load ptr, ptr %39, align 8
  %118 = call fastcc zeroext i8 @ei_cond(i32 %116, ptr %117, ptr noundef nonnull %2) #17, !range !278
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %97, !prof !620, !llvm.loop !621

120:                                              ; preds = %115, %89
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  %121 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 6
  %122 = load ptr, ptr %121, align 8, !tbaa !371
  %123 = load ptr, ptr @cfun, align 8, !tbaa !248
  %124 = getelementptr inbounds %struct.function, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !368
  %126 = getelementptr inbounds %struct.control_flow_graph, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !373
  %128 = icmp eq ptr %122, %127
  br i1 %128, label %129, label %40, !prof !604, !llvm.loop !622

129:                                              ; preds = %120, %1, %32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @var_to_partition(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !623 !PGOFuncName !624 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %7, label %6, !prof !625

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 147, ptr noundef nonnull @.str.1) #16
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !230
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !252
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.partition_def, ptr %8, i64 0, i32 1, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !253
  %14 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !239
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17, !prof !626

17:                                               ; preds = %7
  %18 = sext i32 %13 to i64
  %19 = getelementptr inbounds i32, ptr %15, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !256
  br label %21

21:                                               ; preds = %17, %7
  %22 = phi i32 [ %20, %17 ], [ %13, %7 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #11 !prof !627 !PGOFuncName !628 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #17
  %4 = load ptr, ptr %3, align 8, !tbaa !629
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #17
  ret ptr %6
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @live_on_entry(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 !prof !630 !PGOFuncName !631 {
  %3 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !600
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !632

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 285, ptr noundef nonnull @.str.1) #16
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr @cfun, align 8, !tbaa !248
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !368
  %11 = load ptr, ptr %10, align 8, !tbaa !369
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %17, !prof !632

13:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 286, ptr noundef nonnull @.str.1) #16
  %14 = load ptr, ptr @cfun, align 8, !tbaa !248
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !368
  br label %17

17:                                               ; preds = %7, %13
  %18 = phi ptr [ %10, %7 ], [ %16, %13 ]
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !373
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %23, !prof !632

22:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 287, ptr noundef nonnull @.str.1) #16
  br label %23

23:                                               ; preds = %17, %22
  %24 = load ptr, ptr %3, align 8, !tbaa !600
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !603
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %24, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !248
  ret ptr %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !633 !PGOFuncName !634 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !252
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @calculate_live_ranges(ptr noundef %0) local_unnamed_addr #0 !prof !591 {
  %2 = tail call fastcc ptr @new_tree_live_info(ptr noundef %0) #17
  %3 = tail call fastcc i32 @num_var_partitions(ptr noundef %0) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5, !prof !602

5:                                                ; preds = %1, %10
  %6 = phi i32 [ %11, %10 ], [ 0, %1 ]
  %7 = tail call fastcc ptr @partition_to_var(ptr noundef %0, i32 noundef %6) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !353

9:                                                ; preds = %5
  tail call fastcc void @set_var_live_on_entry(ptr noundef nonnull %7, ptr noundef %2) #17
  br label %10

10:                                               ; preds = %5, %9
  %11 = add nuw i32 %6, 1
  %12 = tail call fastcc i32 @num_var_partitions(ptr noundef %0) #17
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %5, label %14, !prof !635, !llvm.loop !636

14:                                               ; preds = %10, %1
  tail call fastcc void @live_worklist(ptr noundef %2) #17
  tail call void @calculate_live_on_exit(ptr noundef %2) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @new_tree_live_info(ptr noundef %0) unnamed_addr #0 !prof !591 !PGOFuncName !637 {
  %2 = tail call ptr @xmalloc(i64 noundef 56) #16
  store ptr %0, ptr %2, align 8, !tbaa !609
  %3 = load ptr, ptr @cfun, align 8, !tbaa !248
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !368
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !638
  %8 = getelementptr inbounds %struct.tree_live_info_d, ptr %2, i64 0, i32 3
  store i32 %7, ptr %8, align 8, !tbaa !595
  %9 = sext i32 %7 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call ptr @xmalloc(i64 noundef %10) #16
  %12 = getelementptr inbounds %struct.tree_live_info_d, ptr %2, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !600
  %13 = load ptr, ptr @cfun, align 8, !tbaa !248
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !368
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !638
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %35, label %19, !prof !602

19:                                               ; preds = %1, %19
  %20 = phi i64 [ %24, %19 ], [ 0, %1 ]
  %21 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %22 = load ptr, ptr %12, align 8, !tbaa !600
  %23 = getelementptr inbounds ptr, ptr %22, i64 %20
  store ptr %21, ptr %23, align 8, !tbaa !248
  %24 = add nuw nsw i64 %20, 1
  %25 = load ptr, ptr @cfun, align 8, !tbaa !248
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !368
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !638
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %24, %30
  br i1 %31, label %19, label %32, !prof !598, !llvm.loop !639

32:                                               ; preds = %19
  %33 = sext i32 %29 to i64
  %34 = shl nsw i64 %33, 3
  br label %35

35:                                               ; preds = %32, %1
  %36 = phi i64 [ 0, %1 ], [ %34, %32 ]
  %37 = tail call ptr @xmalloc(i64 noundef %36) #16
  %38 = getelementptr inbounds %struct.tree_live_info_d, ptr %2, i64 0, i32 6
  store ptr %37, ptr %38, align 8, !tbaa !597
  %39 = load ptr, ptr @cfun, align 8, !tbaa !248
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !368
  %42 = getelementptr inbounds %struct.control_flow_graph, ptr %41, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !638
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %61, label %45, !prof !602

45:                                               ; preds = %35, %45
  %46 = phi i64 [ %50, %45 ], [ 0, %35 ]
  %47 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %48 = load ptr, ptr %38, align 8, !tbaa !597
  %49 = getelementptr inbounds ptr, ptr %48, i64 %46
  store ptr %47, ptr %49, align 8, !tbaa !248
  %50 = add nuw nsw i64 %46, 1
  %51 = load ptr, ptr @cfun, align 8, !tbaa !248
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !368
  %54 = getelementptr inbounds %struct.control_flow_graph, ptr %53, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !638
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %50, %56
  br i1 %57, label %45, label %58, !prof !598, !llvm.loop !640

58:                                               ; preds = %45
  %59 = sext i32 %55 to i64
  %60 = shl nsw i64 %59, 2
  br label %61

61:                                               ; preds = %58, %35
  %62 = phi i64 [ 0, %35 ], [ %60, %58 ]
  %63 = tail call ptr @xmalloc(i64 noundef %62) #16
  %64 = getelementptr inbounds %struct.tree_live_info_d, ptr %2, i64 0, i32 4
  store ptr %63, ptr %64, align 8, !tbaa !594
  %65 = getelementptr inbounds %struct.tree_live_info_d, ptr %2, i64 0, i32 5
  store ptr %63, ptr %65, align 8, !tbaa !641
  %66 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %67 = getelementptr inbounds %struct.tree_live_info_d, ptr %2, i64 0, i32 1
  store ptr %66, ptr %67, align 8, !tbaa !592
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_var_live_on_entry(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !642 !PGOFuncName !643 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #18
  %4 = load ptr, ptr %1, align 8, !tbaa !609
  %5 = tail call fastcc i32 @var_to_partition(ptr noundef %4, ptr noundef %0) #17
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %82, label %7, !prof !353

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !252
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11, !prof !353

11:                                               ; preds = %7
  %12 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %9) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14, !prof !644

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.tree_live_info_d, ptr %1, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !597
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !603
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %16, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !248
  %22 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %21, i32 noundef %5) #16
  br label %28

23:                                               ; preds = %7
  %24 = load ptr, ptr @cfun, align 8, !tbaa !248
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !368
  %27 = load ptr, ptr %26, align 8, !tbaa !369
  br label %28

28:                                               ; preds = %11, %14, %23
  %29 = phi ptr [ %12, %14 ], [ null, %11 ], [ %27, %23 ]
  %30 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %3, ptr noundef nonnull %0) #17
  %31 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #17, !range !278
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %82, !prof !645

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.tree_live_info_d, ptr %1, i64 0, i32 2
  br label %35

35:                                               ; preds = %33, %71
  %36 = phi ptr [ %30, %33 ], [ %73, %71 ]
  %37 = phi i8 [ 0, %33 ], [ %72, %71 ]
  %38 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %36, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !252
  %40 = tail call fastcc i32 @gimple_code(ptr noundef %39) #17, !range !455
  %41 = icmp eq i32 %40, 16
  br i1 %41, label %42, label %54, !prof !646

42:                                               ; preds = %35
  %43 = tail call fastcc i32 @phi_arg_index_from_use(ptr noundef nonnull %36) #17
  %44 = sext i32 %43 to i64
  %45 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %39, i64 noundef %44) #17
  %46 = load ptr, ptr %45, align 8, !tbaa !611
  %47 = load ptr, ptr @cfun, align 8, !tbaa !248
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !368
  %50 = load ptr, ptr %49, align 8, !tbaa !369
  %51 = icmp eq ptr %46, %50
  %52 = icmp eq ptr %46, %29
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %71, label %60, !prof !647

54:                                               ; preds = %35
  %55 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %39) #17, !range !278
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %71, !prof !648

57:                                               ; preds = %54
  %58 = tail call fastcc ptr @gimple_bb(ptr noundef %39) #17
  %59 = icmp eq ptr %58, %29
  br i1 %59, label %71, label %60, !prof !649

60:                                               ; preds = %57, %42
  %61 = phi ptr [ %46, %42 ], [ %58, %57 ]
  %62 = icmp eq ptr %61, null
  br i1 %62, label %71, label %63, !prof !417

63:                                               ; preds = %60
  %64 = load ptr, ptr %34, align 8, !tbaa !600
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !603
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %64, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !248
  %70 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %69, i32 noundef %5) #16
  br label %71

71:                                               ; preds = %57, %42, %60, %63, %54
  %72 = phi i8 [ %37, %54 ], [ 1, %63 ], [ %37, %60 ], [ %37, %42 ], [ %37, %57 ]
  %73 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %3) #17
  %74 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #17, !range !278
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %35, label %76, !prof !650, !llvm.loop !651

76:                                               ; preds = %71
  %77 = icmp eq i8 %72, 0
  br i1 %77, label %82, label %78, !prof !652

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.tree_live_info_d, ptr %1, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !592
  %81 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %80, i32 noundef %5) #16
  br label %82

82:                                               ; preds = %28, %76, %78, %2
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @live_worklist(ptr nocapture noundef %0) unnamed_addr #0 !prof !591 !PGOFuncName !653 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !248
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !368
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !638
  %7 = add nsw i32 %6, 1
  %8 = tail call ptr @sbitmap_alloc(i32 noundef %7) #16
  %9 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  tail call void @sbitmap_zero(ptr noundef %8) #16
  %10 = load ptr, ptr @cfun, align 8, !tbaa !248
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !368
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !373
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !654
  %17 = load ptr, ptr %12, align 8, !tbaa !369
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %25, !prof !602

19:                                               ; preds = %25, %1
  %20 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 5
  %21 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %20, align 8, !tbaa !641
  %23 = load ptr, ptr %21, align 8, !tbaa !594
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %47, label %34, !prof !602

25:                                               ; preds = %1, %25
  %26 = phi ptr [ %28, %25 ], [ %16, %1 ]
  tail call fastcc void @loe_visit_block(ptr noundef %0, ptr noundef %26, ptr noundef %8, ptr noundef %9) #17
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !654
  %29 = load ptr, ptr @cfun, align 8, !tbaa !248
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !368
  %32 = load ptr, ptr %31, align 8, !tbaa !369
  %33 = icmp eq ptr %28, %32
  br i1 %33, label %19, label %25, !prof !604, !llvm.loop !655

34:                                               ; preds = %19, %34
  %35 = phi ptr [ %44, %34 ], [ %22, %19 ]
  %36 = getelementptr inbounds i32, ptr %35, i64 -1
  store ptr %36, ptr %20, align 8, !tbaa !641
  %37 = load i32, ptr %36, align 4, !tbaa !256
  %38 = load ptr, ptr @cfun, align 8, !tbaa !248
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !368
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !656
  %43 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %42, i32 noundef %37) #17
  tail call fastcc void @loe_visit_block(ptr noundef nonnull %0, ptr noundef %43, ptr noundef %8, ptr noundef %9) #17
  %44 = load ptr, ptr %20, align 8, !tbaa !641
  %45 = load ptr, ptr %21, align 8, !tbaa !594
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %47, label %34, !prof !657, !llvm.loop !658

47:                                               ; preds = %34, %19
  tail call void @bitmap_obstack_free(ptr noundef %9) #16
  %48 = load ptr, ptr %8, align 8, !tbaa !659
  tail call void @free(ptr noundef %48) #17
  tail call void @free(ptr noundef %8) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #9 !prof !642 !PGOFuncName !661 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !662
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !298
  store ptr %6, ptr %0, align 8, !tbaa !664
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #17, !range !278
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null, !prof !665
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !666 !PGOFuncName !667 {
  %2 = load ptr, ptr %0, align 8, !tbaa !664
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !662
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @phi_arg_index_from_use(ptr noundef %0) unnamed_addr #0 !prof !668 !PGOFuncName !669 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !252
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #17, !range !455
  %5 = icmp eq i32 %4, 16
  br i1 %5, label %7, label %6, !prof !670

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 544, ptr noundef nonnull @.str.1) #16
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
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #7 !prof !671 !PGOFuncName !672 {
  %2 = load ptr, ptr %0, align 8, !tbaa !664
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !298
  store ptr %4, ptr %0, align 8, !tbaa !664
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #17, !range !278
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null, !prof !673
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @loe_visit_block(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 !prof !674 !PGOFuncName !675 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !603
  %9 = lshr i32 %8, 6
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !315
  %13 = and i32 %8, 63
  %14 = zext nneg i32 %13 to i64
  %15 = shl nuw i64 1, %14
  %16 = and i64 %15, %12
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %20, label %18, !prof !676

18:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 876, ptr noundef nonnull @.str.1) #16
  %19 = load i32, ptr %7, align 8, !tbaa !603
  br label %20

20:                                               ; preds = %4, %18
  %21 = phi i32 [ %8, %4 ], [ %19, %18 ]
  tail call fastcc void @SET_BIT(ptr noundef nonnull %2, i32 noundef %21) #17
  %22 = tail call fastcc ptr @live_on_entry(ptr noundef %0, ptr noundef nonnull %1) #17
  %23 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %1) #17
  store i32 0, ptr %6, align 8, !tbaa.struct !390
  %24 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %23, ptr %24, align 8, !tbaa.struct !391
  %25 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %23, ptr noundef nonnull %5) #17, !range !278
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %69, label %27, !prof !677

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 6
  br label %29

29:                                               ; preds = %27, %64
  %30 = load ptr, ptr %5, align 8, !tbaa !248
  %31 = load ptr, ptr %30, align 8, !tbaa !611
  %32 = load ptr, ptr @cfun, align 8, !tbaa !248
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !368
  %35 = load ptr, ptr %34, align 8, !tbaa !369
  %36 = icmp eq ptr %31, %35
  br i1 %36, label %64, label %37, !prof !678

37:                                               ; preds = %29
  %38 = load ptr, ptr %28, align 8, !tbaa !597
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !603
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %38, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !248
  %44 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %3, ptr noundef %22, ptr noundef %43) #16
  %45 = tail call fastcc ptr @live_on_entry(ptr noundef %0, ptr noundef %31) #17
  %46 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %45, ptr noundef %3) #16
  %47 = load i32, ptr %39, align 8, !tbaa !603
  %48 = lshr i32 %47, 6
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2, i64 0, i32 3, i64 %49
  %51 = load i64, ptr %50, align 8, !tbaa !315
  %52 = and i32 %47, 63
  %53 = zext nneg i32 %52 to i64
  %54 = shl nuw i64 1, %53
  %55 = and i64 %54, %51
  %56 = icmp ne i64 %55, 0
  %57 = icmp ne i8 %46, 0
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %64, !prof !679

59:                                               ; preds = %37
  %60 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 5
  tail call fastcc void @RESET_BIT(ptr noundef nonnull %2, i32 noundef %47) #17
  %61 = load i32, ptr %39, align 8, !tbaa !603
  %62 = load ptr, ptr %60, align 8, !tbaa !641
  %63 = getelementptr inbounds i32, ptr %62, i64 1
  store ptr %63, ptr %60, align 8, !tbaa !641
  store i32 %61, ptr %62, align 4, !tbaa !256
  br label %64

64:                                               ; preds = %37, %59, %29
  call fastcc void @ei_next(ptr noundef nonnull %6) #17
  %65 = load i32, ptr %6, align 8
  %66 = load ptr, ptr %24, align 8
  %67 = call fastcc zeroext i8 @ei_cond(i32 %65, ptr %66, ptr noundef nonnull %5) #17, !range !278
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %29, !prof !680, !llvm.loop !681

69:                                               ; preds = %64, %20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !682 !PGOFuncName !683 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !248
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #14 !prof !674 !PGOFuncName !684 {
  %3 = load ptr, ptr %0, align 8, !tbaa !659
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !676

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
  %15 = load i64, ptr %14, align 8, !tbaa !315
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !252
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !252
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !315
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !315
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #14 !prof !682 !PGOFuncName !685 {
  %3 = load ptr, ptr %0, align 8, !tbaa !659
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !686

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
  %15 = load i64, ptr %14, align 8, !tbaa !315
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !252
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !252
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !315
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !315
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_var_map(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !333 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 17, i64 1, ptr %0)
  %4 = getelementptr inbounds %struct._var_map, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !236
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %78, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._var_map, ptr %1, i64 0, i32 2
  %9 = getelementptr inbounds %struct._var_map, ptr %1, i64 0, i32 1
  br label %10

10:                                               ; preds = %7, %73
  %11 = phi i64 [ 0, %7 ], [ %74, %73 ]
  %12 = load ptr, ptr %8, align 8, !tbaa !241
  %13 = icmp eq ptr %12, null
  %14 = trunc i64 %11 to i32
  br i1 %13, label %18, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds i32, ptr %12, i64 %11
  %17 = load i32, ptr %16, align 4, !tbaa !256
  br label %18

18:                                               ; preds = %10, %15
  %19 = phi i32 [ %17, %15 ], [ %14, %10 ]
  %20 = load ptr, ptr @cfun, align 8, !tbaa !248
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !262
  %23 = getelementptr inbounds %struct.gimple_df, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !264
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
  %34 = load ptr, ptr %1, align 8, !tbaa !230
  %35 = getelementptr inbounds %struct.partition_def, ptr %34, i64 0, i32 1, i64 %32
  %36 = load i32, ptr %35, align 8, !tbaa !253
  %37 = load ptr, ptr %9, align 8, !tbaa !239
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %30
  %40 = sext i32 %36 to i64
  %41 = getelementptr inbounds i32, ptr %37, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !256
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
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %14) #17
  %52 = tail call fastcc ptr @partition_to_var(ptr noundef nonnull %1, i32 noundef %44) #17
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %52, i32 noundef 2) #16
  %53 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 3, i64 1, ptr %0)
  br label %54

54:                                               ; preds = %50, %47
  %55 = trunc i64 %32 to i32
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %55) #17
  %57 = load ptr, ptr @cfun, align 8, !tbaa !248
  br label %58

58:                                               ; preds = %43, %54
  %59 = phi ptr [ %57, %54 ], [ %31, %43 ]
  %60 = phi i32 [ %48, %54 ], [ %33, %43 ]
  %61 = add nuw nsw i64 %32, 1
  %62 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !262
  %64 = getelementptr inbounds %struct.gimple_df, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !264
  %66 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %65) #17
  %67 = zext i32 %66 to i64
  %68 = icmp ult i64 %61, %67
  br i1 %68, label %30, label %69, !llvm.loop !687

69:                                               ; preds = %58
  %70 = icmp eq i32 %60, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %69
  %72 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 2, i64 1, ptr %0)
  br label %73

73:                                               ; preds = %27, %69, %71, %18
  %74 = add nuw nsw i64 %11, 1
  %75 = load i32, ptr %4, align 8, !tbaa !236
  %76 = zext i32 %75 to i64
  %77 = icmp ult i64 %74, %76
  br i1 %77, label %10, label %78, !llvm.loop !688

78:                                               ; preds = %73, %2
  %79 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_live_info(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !prof !333 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %6 = load ptr, ptr %1, align 8, !tbaa !609
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %7 = and i32 %2, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %51, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_live_info_d, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !600
  %12 = icmp eq ptr %11, null
  br i1 %12, label %51, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @cfun, align 8, !tbaa !248
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !368
  %17 = load ptr, ptr %16, align 8, !tbaa !369
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !371
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !373
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %51, label %23

23:                                               ; preds = %13, %41
  %24 = phi ptr [ %44, %41 ], [ %19, %13 ]
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !603
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %26) #17
  %28 = load ptr, ptr %10, align 8, !tbaa !600
  %29 = load i32, ptr %25, align 8, !tbaa !603
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !248
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %32, ptr noundef nonnull %4) #17
  %33 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #17, !range !278
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %23, %35
  %36 = load i32, ptr %4, align 4, !tbaa !256
  %37 = tail call fastcc ptr @partition_to_var(ptr noundef %6, i32 noundef %36) #17
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %37, i32 noundef 2) #16
  %38 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 2, i64 1, ptr %0)
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  %39 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #17, !range !278
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %35, !llvm.loop !689

41:                                               ; preds = %35, %23
  %42 = tail call i32 @fputc(i32 10, ptr %0)
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !371
  %45 = load ptr, ptr @cfun, align 8, !tbaa !248
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !368
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !373
  %50 = icmp eq ptr %44, %49
  br i1 %50, label %51, label %23, !llvm.loop !690

51:                                               ; preds = %41, %13, %9, %3
  %52 = and i32 %2, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %96, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.tree_live_info_d, ptr %1, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !597
  %57 = icmp eq ptr %56, null
  br i1 %57, label %96, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr @cfun, align 8, !tbaa !248
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !368
  %62 = load ptr, ptr %61, align 8, !tbaa !369
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !371
  %65 = getelementptr inbounds %struct.control_flow_graph, ptr %61, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !373
  %67 = icmp eq ptr %64, %66
  br i1 %67, label %96, label %68

68:                                               ; preds = %58, %86
  %69 = phi ptr [ %89, %86 ], [ %64, %58 ]
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 9
  %71 = load i32, ptr %70, align 8, !tbaa !603
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %71) #17
  %73 = load ptr, ptr %55, align 8, !tbaa !597
  %74 = load i32, ptr %70, align 8, !tbaa !603
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %73, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !248
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %77, ptr noundef nonnull %4) #17
  %78 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #17, !range !278
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %68, %80
  %81 = load i32, ptr %4, align 4, !tbaa !256
  %82 = tail call fastcc ptr @partition_to_var(ptr noundef %6, i32 noundef %81) #17
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %82, i32 noundef 2) #16
  %83 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 2, i64 1, ptr %0)
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  %84 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #17, !range !278
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %80, !llvm.loop !691

86:                                               ; preds = %80, %68
  %87 = tail call i32 @fputc(i32 10, ptr %0)
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !371
  %90 = load ptr, ptr @cfun, align 8, !tbaa !248
  %91 = getelementptr inbounds %struct.function, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !368
  %93 = getelementptr inbounds %struct.control_flow_graph, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !373
  %95 = icmp eq ptr %89, %94
  br i1 %95, label %96, label %68, !llvm.loop !692

96:                                               ; preds = %86, %58, %54, %51
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
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
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!228}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227}
!36 = !{ptr @init_var_map, ptr @xmalloc, i64 35572}
!37 = !{ptr @init_var_map, ptr @partition_new, i64 35572}
!38 = !{ptr @delete_var_map, ptr @var_map_base_fini, i64 35572}
!39 = !{ptr @delete_var_map, ptr @partition_delete, i64 35572}
!40 = !{ptr @delete_var_map, ptr @free, i64 48878}
!41 = !{ptr @var_map_base_fini, ptr @VEC_tree_heap_free, i64 6653}
!42 = !{ptr @var_map_base_fini, ptr @free, i64 6653}
!43 = !{ptr @VEC_tree_heap_free, ptr @free, i64 6651}
!44 = !{ptr @var_union, ptr @fancy_abort, i64 4}
!45 = !{ptr @var_union, ptr @partition_union, i64 109094}
!46 = !{ptr @partition_view_normal, ptr @partition_view_init, i64 6652}
!47 = !{ptr @partition_view_normal, ptr @partition_view_fini, i64 6652}
!48 = !{ptr @partition_view_normal, ptr @var_map_base_init, i64 1}
!49 = !{ptr @partition_view_normal, ptr @var_map_base_fini, i64 6651}
!50 = !{ptr @partition_view_init, ptr @bitmap_obstack_alloc_stat, i64 13304}
!51 = !{ptr @partition_view_init, ptr @free, i64 13304}
!52 = !{ptr @partition_view_init, ptr @VEC_tree_base_index, i64 4336093}
!53 = !{ptr @partition_view_init, ptr @is_gimple_reg, i64 1773837}
!54 = !{ptr @partition_view_init, ptr @has_zero_uses, i64 1453762}
!55 = !{ptr @partition_view_init, ptr @bitmap_set_bit, i64 1453315}
!56 = !{ptr @partition_view_fini, ptr @fancy_abort, i64 2}
!57 = !{ptr @partition_view_fini, ptr @bitmap_count_bits, i64 13304}
!58 = !{ptr @partition_view_fini, ptr @xmalloc, i64 26606}
!59 = !{ptr @partition_view_fini, ptr @bmp_iter_set_init, i64 13303}
!60 = !{ptr @partition_view_fini, ptr @bmp_iter_set, i64 792612}
!61 = !{ptr @partition_view_fini, ptr @bmp_iter_next, i64 779309}
!62 = !{ptr @partition_view_fini, ptr @bitmap_obstack_free, i64 13304}
!63 = !{ptr @var_map_base_init, ptr @num_var_partitions, i64 6652}
!64 = !{ptr @var_map_base_init, ptr @free, i64 1}
!65 = !{ptr @var_map_base_init, ptr @VEC_tree_base_truncate, i64 1}
!66 = !{ptr @var_map_base_init, ptr @VEC_tree_heap_alloc, i64 6651}
!67 = !{ptr @var_map_base_init, ptr @xmalloc, i64 6652}
!68 = !{ptr @var_map_base_init, ptr @partition_to_var, i64 161784}
!69 = !{ptr @var_map_base_init, ptr @var_ann, i64 204104}
!70 = !{ptr @var_map_base_init, ptr @VEC_tree_heap_safe_push, i64 42319}
!71 = !{ptr @var_map_base_init, ptr @VEC_tree_base_index, i64 42320}
!72 = !{ptr @has_zero_uses, ptr @has_zero_uses_1, i64 1}
!73 = !{ptr @VEC_tree_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 6652}
!74 = !{ptr @partition_to_var, ptr @VEC_tree_base_index, i64 323614}
!75 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_heap_reserve, i64 42325}
!76 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_base_quick_push, i64 42325}
!77 = !{ptr @VEC_tree_heap_reserve, ptr @VEC_tree_base_space, i64 42325}
!78 = !{ptr @VEC_tree_heap_reserve, ptr @vec_heap_p_reserve, i64 209}
!79 = !{ptr @partition_view_bitmap, ptr @bitmap_obstack_alloc_stat, i64 6652}
!80 = !{ptr @partition_view_bitmap, ptr @partition_view_init, i64 6652}
!81 = !{ptr @partition_view_bitmap, ptr @bmp_iter_set_init, i64 6652}
!82 = !{ptr @partition_view_bitmap, ptr @bmp_iter_set, i64 168436}
!83 = !{ptr @partition_view_bitmap, ptr @bitmap_bit_p, i64 161784}
!84 = !{ptr @partition_view_bitmap, ptr @fancy_abort, i64 1}
!85 = !{ptr @partition_view_bitmap, ptr @bitmap_set_bit, i64 161784}
!86 = !{ptr @partition_view_bitmap, ptr @bmp_iter_next, i64 161784}
!87 = !{ptr @partition_view_bitmap, ptr @partition_view_fini, i64 6652}
!88 = !{ptr @partition_view_bitmap, ptr @bitmap_obstack_free, i64 6652}
!89 = !{ptr @partition_view_bitmap, ptr @var_map_base_init, i64 6651}
!90 = !{ptr @partition_view_bitmap, ptr @var_map_base_fini, i64 1}
!91 = !{ptr @remove_unused_locals, ptr @mark_scope_block_unused, i64 78816}
!92 = !{ptr @remove_unused_locals, ptr @first_referenced_var, i64 157632}
!93 = !{ptr @remove_unused_locals, ptr @end_referenced_vars_p, i64 13567398}
!94 = !{ptr @remove_unused_locals, ptr @var_ann, i64 19196905}
!95 = !{ptr @remove_unused_locals, ptr @next_referenced_var, i64 13409766}
!96 = !{ptr @remove_unused_locals, ptr @gsi_start_bb, i64 5234506}
!97 = !{ptr @remove_unused_locals, ptr @gsi_end_p, i64 27888848}
!98 = !{ptr @remove_unused_locals, ptr @gsi_stmt, i64 61034289}
!99 = !{ptr @remove_unused_locals, ptr @gimple_block, i64 15070507}
!100 = !{ptr @remove_unused_locals, ptr @is_gimple_debug, i64 15070507}
!101 = !{ptr @remove_unused_locals, ptr @gimple_num_ops, i64 58684959}
!102 = !{ptr @remove_unused_locals, ptr @gimple_op_ptr, i64 43614453}
!103 = !{ptr @remove_unused_locals, ptr @mark_all_vars_used, i64 48814739}
!104 = !{ptr @remove_unused_locals, ptr @gsi_next, i64 17419836}
!105 = !{ptr @remove_unused_locals, ptr @gsi_start_phis, i64 5234506}
!106 = !{ptr @remove_unused_locals, ptr @gimple_phi_result, i64 2349329}
!107 = !{ptr @remove_unused_locals, ptr @is_global_var, i64 9432846}
!108 = !{ptr @remove_unused_locals, ptr @op_iter_init_phiuse, i64 1339264}
!109 = !{ptr @remove_unused_locals, ptr @op_iter_done, i64 5200170}
!110 = !{ptr @remove_unused_locals, ptr @get_use_from_ptr, i64 3860906}
!111 = !{ptr @remove_unused_locals, ptr @op_iter_next_use, i64 3860906}
!112 = !{ptr @remove_unused_locals, ptr @ei_start_1, i64 5234506}
!113 = !{ptr @remove_unused_locals, ptr @ei_cond, i64 13777865}
!114 = !{ptr @remove_unused_locals, ptr @ei_next, i64 8543359}
!115 = !{ptr @remove_unused_locals, ptr @bitmap_obstack_alloc_stat, i64 92}
!116 = !{ptr @remove_unused_locals, ptr @bitmap_set_bit, i64 123}
!117 = !{ptr @remove_unused_locals, ptr @bitmap_bit_p, i64 239}
!118 = !{ptr @remove_unused_locals, ptr @bitmap_obstack_free, i64 93}
!119 = !{ptr @remove_unused_locals, ptr @remove_referenced_var, i64 169721}
!120 = !{ptr @remove_unused_locals, ptr @remove_unused_scope_block_p, i64 78816}
!121 = !{ptr @mark_scope_block_unused, ptr @mark_scope_block_unused, i64 924545}
!122 = !{ptr @first_referenced_var, ptr @gimple_referenced_vars, i64 157634}
!123 = !{ptr @first_referenced_var, ptr @first_htab_element, i64 157634}
!124 = !{ptr @end_referenced_vars_p, ptr @end_htab_p, i64 13567738}
!125 = !{ptr @next_referenced_var, ptr @next_htab_element, i64 13410104}
!126 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 5234638}
!127 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 5234638}
!128 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 15320960}
!129 = !{ptr @mark_all_vars_used, ptr @walk_tree_1, i64 49001387}
!130 = !{ptr @gimple_op_ptr, ptr @gimple_has_ops, i64 43615562}
!131 = !{ptr @gimple_op_ptr, ptr @gimple_ops, i64 43615561}
!132 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_result, i64 1339298}
!133 = !{ptr @op_iter_init_phiuse, ptr @clear_and_done_ssa_iter, i64 1339298}
!134 = !{ptr @op_iter_init_phiuse, ptr @is_gimple_reg, i64 1339298}
!135 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_num_args, i64 1339298}
!136 = !{ptr @op_iter_init_phiuse, ptr @op_iter_next_use, i64 1339298}
!137 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 3861004}
!138 = !{ptr @ei_cond, ptr @ei_end_p, i64 15182017}
!139 = !{ptr @ei_cond, ptr @ei_edge, i64 9414582}
!140 = !{ptr @ei_next, ptr @ei_container, i64 18829163}
!141 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 9414582}
!142 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!143 = !{ptr @remove_unused_scope_block_p, ptr @var_ann, i64 969256}
!144 = !{ptr @remove_unused_scope_block_p, ptr @remove_unused_scope_block_p, i64 924545}
!145 = !{ptr @remove_unused_scope_block_p, ptr @inlined_function_outer_scope_p, i64 26709}
!146 = !{ptr @remove_unused_scope_block_p, ptr @lookup_attribute, i64 2694}
!147 = !{ptr @first_htab_element, ptr @htab_size, i64 157634}
!148 = !{ptr @mark_all_vars_used_1, ptr @tree_block, i64 16477385}
!149 = !{ptr @mark_all_vars_used_1, ptr @mark_all_vars_used, i64 185410}
!150 = !{ptr @mark_all_vars_used_1, ptr @bitmap_bit_p, i64 10}
!151 = !{ptr @mark_all_vars_used_1, ptr @bitmap_clear_bit, i64 1}
!152 = !{ptr @mark_all_vars_used_1, ptr @set_is_used, i64 29098402}
!153 = !{ptr @set_is_used, ptr @get_var_ann, i64 29098402}
!154 = !{ptr @get_var_ann, ptr @create_var_ann, i64 1}
!155 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 43615562}
!156 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 43615562}
!157 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!158 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 43615562}
!159 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 43615562}
!160 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 4056634}
!161 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!162 = !{ptr @ei_end_p, ptr @ei_container, i64 30351251}
!163 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 15182017}
!164 = !{ptr @ei_edge, ptr @ei_container, i64 18829163}
!165 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 9414582}
!166 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!167 = !{ptr @delete_tree_live_info, ptr @bitmap_obstack_free, i64 509016}
!168 = !{ptr @delete_tree_live_info, ptr @free, i64 25000}
!169 = !{ptr @calculate_live_on_exit, ptr @bitmap_clear, i64 238885}
!170 = !{ptr @calculate_live_on_exit, ptr @gsi_start_phis, i64 238885}
!171 = !{ptr @calculate_live_on_exit, ptr @gsi_end_p, i64 311627}
!172 = !{ptr @calculate_live_on_exit, ptr @gsi_stmt, i64 72742}
!173 = !{ptr @calculate_live_on_exit, ptr @gimple_phi_num_args, i64 268341}
!174 = !{ptr @calculate_live_on_exit, ptr @gimple_phi_arg_imm_use_ptr, i64 195599}
!175 = !{ptr @calculate_live_on_exit, ptr @get_use_from_ptr, i64 195599}
!176 = !{ptr @calculate_live_on_exit, ptr @var_to_partition, i64 149701}
!177 = !{ptr @calculate_live_on_exit, ptr @gimple_phi_arg_edge, i64 148597}
!178 = !{ptr @calculate_live_on_exit, ptr @bitmap_set_bit, i64 148592}
!179 = !{ptr @calculate_live_on_exit, ptr @gsi_next, i64 72742}
!180 = !{ptr @calculate_live_on_exit, ptr @ei_start_1, i64 238885}
!181 = !{ptr @calculate_live_on_exit, ptr @ei_cond, i64 629794}
!182 = !{ptr @calculate_live_on_exit, ptr @live_on_entry, i64 384668}
!183 = !{ptr @calculate_live_on_exit, ptr @bitmap_ior_into, i64 384668}
!184 = !{ptr @calculate_live_on_exit, ptr @ei_next, i64 390909}
!185 = !{ptr @var_to_partition, ptr @fancy_abort, i64 1}
!186 = !{ptr @gimple_phi_arg_edge, ptr @gimple_bb, i64 297244}
!187 = !{ptr @gimple_phi_arg_edge, ptr @VEC_edge_base_index, i64 297244}
!188 = !{ptr @live_on_entry, ptr @fancy_abort, i64 3}
!189 = !{ptr @calculate_live_ranges, ptr @new_tree_live_info, i64 6250}
!190 = !{ptr @calculate_live_ranges, ptr @num_var_partitions, i64 168032}
!191 = !{ptr @calculate_live_ranges, ptr @partition_to_var, i64 161782}
!192 = !{ptr @calculate_live_ranges, ptr @set_var_live_on_entry, i64 161781}
!193 = !{ptr @calculate_live_ranges, ptr @live_worklist, i64 6250}
!194 = !{ptr @calculate_live_ranges, ptr @calculate_live_on_exit, i64 6250}
!195 = !{ptr @new_tree_live_info, ptr @xmalloc, i64 25000}
!196 = !{ptr @new_tree_live_info, ptr @bitmap_obstack_alloc_stat, i64 509016}
!197 = !{ptr @set_var_live_on_entry, ptr @var_to_partition, i64 161807}
!198 = !{ptr @set_var_live_on_entry, ptr @gimple_bb, i64 411872}
!199 = !{ptr @set_var_live_on_entry, ptr @bitmap_set_bit, i64 422290}
!200 = !{ptr @set_var_live_on_entry, ptr @first_readonly_imm_use, i64 161806}
!201 = !{ptr @set_var_live_on_entry, ptr @end_readonly_imm_use_p, i64 560495}
!202 = !{ptr @set_var_live_on_entry, ptr @gimple_code, i64 398689}
!203 = !{ptr @set_var_live_on_entry, ptr @phi_arg_index_from_use, i64 148621}
!204 = !{ptr @set_var_live_on_entry, ptr @gimple_phi_arg_edge, i64 148621}
!205 = !{ptr @set_var_live_on_entry, ptr @is_gimple_debug, i64 250068}
!206 = !{ptr @set_var_live_on_entry, ptr @next_readonly_imm_use, i64 398689}
!207 = !{ptr @live_worklist, ptr @sbitmap_alloc, i64 6250}
!208 = !{ptr @live_worklist, ptr @bitmap_obstack_alloc_stat, i64 6250}
!209 = !{ptr @live_worklist, ptr @sbitmap_zero, i64 6250}
!210 = !{ptr @live_worklist, ptr @loe_visit_block, i64 293830}
!211 = !{ptr @live_worklist, ptr @VEC_basic_block_base_index, i64 54945}
!212 = !{ptr @live_worklist, ptr @bitmap_obstack_free, i64 6250}
!213 = !{ptr @live_worklist, ptr @free, i64 12500}
!214 = !{ptr @first_readonly_imm_use, ptr @end_readonly_imm_use_p, i64 161807}
!215 = !{ptr @phi_arg_index_from_use, ptr @gimple_code, i64 148622}
!216 = !{ptr @phi_arg_index_from_use, ptr @fancy_abort, i64 1}
!217 = !{ptr @phi_arg_index_from_use, ptr @gimple_phi_arg, i64 148622}
!218 = !{ptr @next_readonly_imm_use, ptr @end_readonly_imm_use_p, i64 398693}
!219 = !{ptr @loe_visit_block, ptr @fancy_abort, i64 1}
!220 = !{ptr @loe_visit_block, ptr @SET_BIT, i64 293875}
!221 = !{ptr @loe_visit_block, ptr @live_on_entry, i64 767567}
!222 = !{ptr @loe_visit_block, ptr @ei_start_1, i64 293875}
!223 = !{ptr @loe_visit_block, ptr @ei_cond, i64 773910}
!224 = !{ptr @loe_visit_block, ptr @bitmap_and_compl, i64 473692}
!225 = !{ptr @loe_visit_block, ptr @bitmap_ior_into, i64 473692}
!226 = !{ptr @loe_visit_block, ptr @RESET_BIT, i64 54953}
!227 = !{ptr @loe_visit_block, ptr @ei_next, i64 480035}
!228 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!229 = !{!"function_entry_count", i64 35572}
!230 = !{!231, !232, i64 0}
!231 = !{!"_var_map", !232, i64 0, !232, i64 8, !232, i64 16, !235, i64 24, !235, i64 28, !235, i64 32, !232, i64 40, !232, i64 48}
!232 = !{!"any pointer", !233, i64 0}
!233 = !{!"omnipotent char", !234, i64 0}
!234 = !{!"Simple C/C++ TBAA"}
!235 = !{!"int", !233, i64 0}
!236 = !{!231, !235, i64 24}
!237 = !{!231, !235, i64 28}
!238 = !{!231, !235, i64 32}
!239 = !{!231, !232, i64 8}
!240 = !{!"branch_weights", i32 28921, i32 6653}
!241 = !{!231, !232, i64 16}
!242 = !{!"function_entry_count", i64 42224}
!243 = !{!"tree-ssa-live.c:var_map_base_fini"}
!244 = !{!231, !232, i64 40}
!245 = !{!"branch_weights", i32 35573, i32 6653}
!246 = !{!"function_entry_count", i64 6652}
!247 = !{!"tree-ssa-live.c:VEC_tree_heap_free"}
!248 = !{!232, !232, i64 0}
!249 = !{!"branch_weights", i32 1, i32 6653}
!250 = !{!"function_entry_count", i64 109095}
!251 = !{!"branch_weights", i32 109096, i32 1}
!252 = !{!233, !233, i64 0}
!253 = !{!254, !235, i64 0}
!254 = !{!"partition_elem", !235, i64 0, !232, i64 8, !235, i64 16}
!255 = !{!"branch_weights", i32 1, i32 109096}
!256 = !{!235, !235, i64 0}
!257 = !{!"branch_weights", i32 6653, i32 1}
!258 = !{!"function_entry_count", i64 13304}
!259 = !{!"tree-ssa-live.c:partition_view_init"}
!260 = !{!"branch_weights", i32 6653, i32 6653}
!261 = !{!"branch_weights", i32 1, i32 13304}
!262 = !{!263, !232, i64 24}
!263 = !{!"function", !232, i64 0, !232, i64 8, !232, i64 16, !232, i64 24, !232, i64 32, !232, i64 40, !232, i64 48, !232, i64 56, !232, i64 64, !232, i64 72, !232, i64 80, !232, i64 88, !232, i64 96, !235, i64 104, !235, i64 108, !235, i64 112, !235, i64 116, !235, i64 120, !235, i64 124, !232, i64 128, !235, i64 136, !235, i64 137, !235, i64 138, !235, i64 138, !235, i64 138, !235, i64 138, !235, i64 138, !235, i64 138, !235, i64 138, !235, i64 139, !235, i64 139, !235, i64 139, !235, i64 139, !235, i64 139, !235, i64 139, !235, i64 139}
!264 = !{!265, !232, i64 16}
!265 = !{!"gimple_df", !232, i64 0, !232, i64 8, !232, i64 16, !232, i64 24, !266, i64 32, !266, i64 48, !232, i64 64, !232, i64 72, !232, i64 80, !232, i64 88, !235, i64 96, !267, i64 104}
!266 = !{!"pt_solution", !235, i64 0, !235, i64 0, !235, i64 0, !235, i64 0, !235, i64 0, !235, i64 0, !232, i64 8}
!267 = !{!"ssa_operands", !232, i64 0, !235, i64 8, !235, i64 12, !233, i64 16, !232, i64 24, !232, i64 32}
!268 = !{!"branch_weights", i32 644083, i32 1773971}
!269 = !{!"branch_weights", i32 320099, i32 1453873}
!270 = !{!"branch_weights", i32 989378, i32 464496}
!271 = !{!"branch_weights", i32 464050, i32 447}
!272 = !{!"branch_weights", i32 2404749, i32 13304}
!273 = distinct !{!273, !274}
!274 = !{!"llvm.loop.mustprogress"}
!275 = !{!"tree-ssa-live.c:partition_view_fini"}
!276 = !{!"branch_weights", i32 1, i32 13305}
!277 = !{!"branch_weights", i32 13305, i32 1}
!278 = !{i8 0, i8 2}
!279 = !{!"branch_weights", i32 13304, i32 766122}
!280 = distinct !{!280, !274}
!281 = !{!"tree-ssa-live.c:var_map_base_init"}
!282 = !{!231, !232, i64 48}
!283 = !{!"branch_weights", i32 6614, i32 40}
!284 = !{!"branch_weights", i32 6652, i32 1}
!285 = !{!"branch_weights", i32 161808, i32 1}
!286 = !{!"branch_weights", i32 42326, i32 119483}
!287 = !{!288, !235, i64 4}
!288 = !{!"var_ann_d", !235, i64 0, !235, i64 0, !235, i64 0, !235, i64 0, !235, i64 0, !235, i64 4, !232, i64 8}
!289 = !{!"branch_weights", i32 6652, i32 155156}
!290 = distinct !{!290, !274}
!291 = !{!"branch_weights", i32 -2147483648, i32 0}
!292 = !{!"branch_weights", i32 6652, i32 35674}
!293 = distinct !{!293, !274}
!294 = !{!"function_entry_count", i64 6476328}
!295 = !{!"tree-ssa-live.c:VEC_tree_base_index"}
!296 = !{!"function_entry_count", i64 1453872}
!297 = !{!"tree-ssa-live.c:has_zero_uses"}
!298 = !{!299, !232, i64 8}
!299 = !{!"ssa_use_operand_d", !232, i64 0, !232, i64 8, !233, i64 16, !232, i64 24}
!300 = !{!"branch_weights", i32 464496, i32 989378}
!301 = !{!"branch_weights", i32 989378, i32 1}
!302 = !{!"function_entry_count", i64 19956}
!303 = !{!"tree-ssa-live.c:bmp_iter_set_init"}
!304 = !{!305, !232, i64 0}
!305 = !{!"bitmap_head_def", !232, i64 0, !232, i64 8, !235, i64 16, !232, i64 24}
!306 = !{!307, !232, i64 0}
!307 = !{!"", !232, i64 0, !232, i64 8, !235, i64 16, !308, i64 24}
!308 = !{!"long", !233, i64 0}
!309 = !{!307, !232, i64 8}
!310 = !{!"branch_weights", i32 983, i32 18975}
!311 = !{!312, !235, i64 16}
!312 = !{!"bitmap_element_def", !232, i64 0, !232, i64 8, !235, i64 16, !233, i64 24}
!313 = !{!"branch_weights", i32 19957, i32 1}
!314 = !{!307, !235, i64 16}
!315 = !{!308, !308, i64 0}
!316 = !{!307, !308, i64 24}
!317 = !{!"function_entry_count", i64 961188}
!318 = !{!"tree-ssa-live.c:bmp_iter_set"}
!319 = !{!"branch_weights", i32 55671, i32 905519}
!320 = !{!"branch_weights", i32 941232, i32 1}
!321 = !{!"branch_weights", i32 538790, i32 941232}
!322 = distinct !{!322, !274}
!323 = !{!"branch_weights", i32 1, i32 36710}
!324 = !{!"branch_weights", i32 17751, i32 35715}
!325 = !{!"branch_weights", i32 36710, i32 16755}
!326 = distinct !{!326, !274}
!327 = !{!312, !232, i64 0}
!328 = !{!"branch_weights", i32 19957, i32 16755}
!329 = !{!"function_entry_count", i64 941232}
!330 = !{!"tree-ssa-live.c:bmp_iter_next"}
!331 = !{!"function_entry_count", i64 174709}
!332 = !{!"tree-ssa-live.c:num_var_partitions"}
!333 = !{!"function_entry_count", i64 0}
!334 = !{!"tree-ssa-live.c:VEC_tree_base_truncate"}
!335 = !{!336, !235, i64 0}
!336 = !{!"VEC_tree_base", !235, i64 0, !235, i64 4, !233, i64 8}
!337 = !{!"tree-ssa-live.c:VEC_tree_heap_alloc"}
!338 = !{!"function_entry_count", i64 323614}
!339 = !{!"tree-ssa-live.c:partition_to_var"}
!340 = !{!"branch_weights", i32 1, i32 323615}
!341 = !{!"function_entry_count", i64 20370783}
!342 = !{!"tree-ssa-live.c:var_ann"}
!343 = !{!"branch_weights", i32 24342741, i32 -1853929792, i32 236304, i32 133792}
!344 = !{!"function_entry_count", i64 42325}
!345 = !{!"tree-ssa-live.c:VEC_tree_heap_safe_push"}
!346 = !{!"tree-ssa-live.c:VEC_tree_heap_reserve"}
!347 = !{!"branch_weights", i32 209, i32 42118}
!348 = !{!"tree-ssa-live.c:VEC_tree_base_quick_push"}
!349 = !{!"tree-ssa-live.c:VEC_tree_base_space"}
!350 = !{!"branch_weights", i32 1, i32 42326}
!351 = !{!336, !235, i64 4}
!352 = !{!"branch_weights", i32 1, i32 6652}
!353 = !{!"branch_weights", i32 1, i32 161808}
!354 = distinct !{!354, !274}
!355 = !{!"tree-ssa-live.c:dump_scope_block"}
!356 = !{!357, !232, i64 0}
!357 = !{!"", !232, i64 0, !235, i64 8, !235, i64 12, !233, i64 16}
!358 = !{!357, !235, i64 8}
!359 = distinct !{!359, !274}
!360 = distinct !{!360, !274}
!361 = distinct !{!361, !274}
!362 = !{!"tree-ssa-live.c:VEC_tree_base_length"}
!363 = !{!"function_entry_count", i64 78817}
!364 = !{!"branch_weights", i32 1, i32 78818}
!365 = !{!"branch_weights", i32 78817, i32 1}
!366 = !{!"branch_weights", i32 6626236, i32 78817}
!367 = distinct !{!367, !274}
!368 = !{!263, !232, i64 8}
!369 = !{!370, !232, i64 0}
!370 = !{!"control_flow_graph", !232, i64 0, !232, i64 8, !232, i64 16, !235, i64 24, !235, i64 28, !235, i64 32, !232, i64 40, !235, i64 48, !233, i64 52, !233, i64 60, !235, i64 68, !235, i64 72}
!371 = !{!372, !232, i64 56}
!372 = !{!"basic_block_def", !232, i64 0, !232, i64 8, !232, i64 16, !232, i64 24, !233, i64 32, !232, i64 48, !232, i64 56, !233, i64 64, !308, i64 72, !235, i64 80, !235, i64 84, !235, i64 88, !235, i64 92, !235, i64 96}
!373 = !{!370, !232, i64 8}
!374 = !{!"branch_weights", i32 1, i32 78817}
!375 = !{!"branch_weights", i32 5234638, i32 1}
!376 = !{!"branch_weights", i32 15070890, i32 1}
!377 = !{!"branch_weights", i32 408439, i32 14662452}
!378 = !{!"branch_weights", i32 1, i32 15070889}
!379 = !{!"branch_weights", i32 28544674, i32 15070889}
!380 = distinct !{!380, !274}
!381 = !{!"branch_weights", i32 9836252, i32 5234638}
!382 = distinct !{!382, !274}
!383 = !{!"branch_weights", i32 2349389, i32 2885250}
!384 = !{!"branch_weights", i32 1339299, i32 1010091}
!385 = !{!"branch_weights", i32 1339298, i32 1}
!386 = !{!"branch_weights", i32 2521708, i32 1339298}
!387 = distinct !{!387, !274}
!388 = !{!"branch_weights", i32 0, i32 2349389}
!389 = distinct !{!389, !274}
!390 = !{i64 0, i64 4, !256, i64 8, i64 8, !248}
!391 = !{i64 0, i64 8, !248}
!392 = !{!"branch_weights", i32 1, i32 5234638}
!393 = !{!394, !235, i64 40}
!394 = !{!"edge_def", !232, i64 0, !232, i64 8, !233, i64 16, !232, i64 24, !232, i64 32, !235, i64 40, !235, i64 44, !235, i64 48, !235, i64 52, !308, i64 56}
!395 = !{!"branch_weights", i32 8240847, i32 302730}
!396 = !{!394, !232, i64 32}
!397 = !{!"branch_weights", i32 5234638, i32 3308938}
!398 = distinct !{!398, !274}
!399 = !{!"branch_weights", i32 78817, i32 5155822}
!400 = distinct !{!400, !274}
!401 = !{!"branch_weights", i32 1, i32 6397675}
!402 = !{!"branch_weights", i32 2981, i32 6394695}
!403 = !{!"branch_weights", i32 341755, i32 6052941}
!404 = !{!"branch_weights", i32 344613, i32 123}
!405 = !{!"branch_weights", i32 93, i32 31}
!406 = distinct !{!406, !274}
!407 = !{!"branch_weights", i32 6052941, i32 1}
!408 = !{!"branch_weights", i32 78817, i32 6318858}
!409 = !{!"branch_weights", i32 2144949760, i32 2533888}
!410 = !{!"branch_weights", i32 1, i32 185}
!411 = !{!"branch_weights", i32 16955, i32 1}
!412 = !{!"branch_weights", i32 16717, i32 239}
!413 = !{!"branch_weights", i32 12, i32 228}
!414 = !{!"branch_weights", i32 112, i32 117}
!415 = !{!"branch_weights", i32 185, i32 33725}
!416 = distinct !{!416, !274}
!417 = !{!"branch_weights", i32 0, i32 -2147483648}
!418 = !{!"branch_weights", i32 117, i32 123}
!419 = distinct !{!419, !274}
!420 = !{!"branch_weights", i32 6257190, i32 447864}
!421 = !{!"branch_weights", i32 -2027580814, i32 60139560, i32 415199}
!422 = !{!"branch_weights", i32 74877556, i32 -1681166371}
!423 = distinct !{!423, !274}
!424 = !{!"branch_weights", i32 78818, i32 1}
!425 = !{!"function_entry_count", i64 1003362}
!426 = !{!"tree-ssa-live.c:mark_scope_block_unused"}
!427 = !{!428, !232, i64 72}
!428 = !{!"gcc_debug_hooks", !232, i64 0, !232, i64 8, !232, i64 16, !232, i64 24, !232, i64 32, !232, i64 40, !232, i64 48, !232, i64 56, !232, i64 64, !232, i64 72, !232, i64 80, !232, i64 88, !232, i64 96, !232, i64 104, !232, i64 112, !232, i64 120, !232, i64 128, !232, i64 136, !232, i64 144, !232, i64 152, !232, i64 160, !232, i64 168, !232, i64 176, !232, i64 184, !232, i64 192, !232, i64 200, !232, i64 208, !232, i64 216, !232, i64 224, !232, i64 232, !232, i64 240, !235, i64 248}
!429 = !{!"branch_weights", i32 1, i32 1003363}
!430 = !{!"branch_weights", i32 78817, i32 924546}
!431 = !{!"branch_weights", i32 924546, i32 0}
!432 = distinct !{!432, !274}
!433 = !{!"function_entry_count", i64 157634}
!434 = !{!"tree-ssa-live.c:first_referenced_var"}
!435 = !{!"function_entry_count", i64 13567738}
!436 = !{!"tree-ssa-live.c:end_referenced_vars_p"}
!437 = !{!"function_entry_count", i64 13410104}
!438 = !{!"tree-ssa-live.c:next_referenced_var"}
!439 = !{!"function_entry_count", i64 5234638}
!440 = !{!"tree-ssa-live.c:gsi_start_bb"}
!441 = !{!442, !232, i64 0}
!442 = !{!"", !232, i64 0, !232, i64 8, !232, i64 16}
!443 = !{!442, !232, i64 8}
!444 = !{!442, !232, i64 16}
!445 = !{!"function_entry_count", i64 28201228}
!446 = !{!"tree-ssa-live.c:gsi_end_p"}
!447 = !{!"function_entry_count", i64 61108592}
!448 = !{!"tree-ssa-live.c:gsi_stmt"}
!449 = !{!450, !232, i64 0}
!450 = !{!"gimple_seq_node_d", !232, i64 0, !232, i64 8, !232, i64 16}
!451 = !{!"function_entry_count", i64 15070889}
!452 = !{!"tree-ssa-live.c:gimple_block"}
!453 = !{!"function_entry_count", i64 15320960}
!454 = !{!"tree-ssa-live.c:is_gimple_debug"}
!455 = !{i32 0, i32 256}
!456 = !{!"function_entry_count", i64 58686451}
!457 = !{!"tree-ssa-live.c:gimple_num_ops"}
!458 = !{!"function_entry_count", i64 49001387}
!459 = !{!"tree-ssa-live.c:mark_all_vars_used"}
!460 = !{!"function_entry_count", i64 43615562}
!461 = !{!"tree-ssa-live.c:gimple_op_ptr"}
!462 = !{!"branch_weights", i32 1, i32 43615563}
!463 = !{!"function_entry_count", i64 17493030}
!464 = !{!"tree-ssa-live.c:gsi_next"}
!465 = !{!450, !232, i64 16}
!466 = !{!"function_entry_count", i64 9433082}
!467 = !{!"tree-ssa-live.c:is_global_var"}
!468 = !{!"branch_weights", i32 8020573, i32 1412511}
!469 = !{!"function_entry_count", i64 5027984}
!470 = !{!"tree-ssa-live.c:gimple_phi_result"}
!471 = !{!"function_entry_count", i64 1339298}
!472 = !{!"tree-ssa-live.c:op_iter_init_phiuse"}
!473 = !{!474, !233, i64 0}
!474 = !{!"ssa_operand_iterator_d", !233, i64 0, !235, i64 4, !232, i64 8, !232, i64 16, !235, i64 24, !235, i64 28, !232, i64 32}
!475 = !{!474, !232, i64 32}
!476 = !{!474, !235, i64 28}
!477 = !{!474, !235, i64 4}
!478 = !{!"function_entry_count", i64 5200303}
!479 = !{!"tree-ssa-live.c:op_iter_done"}
!480 = !{!"function_entry_count", i64 4056634}
!481 = !{!"tree-ssa-live.c:get_use_from_ptr"}
!482 = !{!299, !232, i64 24}
!483 = !{!"tree-ssa-live.c:op_iter_next_use"}
!484 = !{!474, !232, i64 16}
!485 = !{!"branch_weights", i32 5200304, i32 1}
!486 = !{!487, !232, i64 0}
!487 = !{!"use_optype_d", !232, i64 0, !299, i64 8}
!488 = !{!474, !235, i64 24}
!489 = !{!"branch_weights", i32 3861006, i32 1339299}
!490 = !{!"function_entry_count", i64 5767435}
!491 = !{!"tree-ssa-live.c:ei_start_1"}
!492 = !{!"function_entry_count", i64 15182017}
!493 = !{!"tree-ssa-live.c:ei_cond"}
!494 = !{!"branch_weights", i32 9414583, i32 5767436}
!495 = !{!"function_entry_count", i64 9414582}
!496 = !{!"tree-ssa-live.c:ei_next"}
!497 = !{!"branch_weights", i32 1, i32 9414583}
!498 = !{!"branch_weights", i32 9414583, i32 1}
!499 = !{!500, !235, i64 0}
!500 = !{!"", !235, i64 0, !232, i64 8}
!501 = !{!"tree-ssa-live.c:remove_unused_scope_block_p"}
!502 = !{!"branch_weights", i32 14139, i32 989224}
!503 = !{!"branch_weights", i32 31937251, i32 3864, i32 -504384581}
!504 = !{!"branch_weights", i32 980896, i32 65}
!505 = !{!"branch_weights", i32 969260, i32 19901}
!506 = !{!"branch_weights", i32 60995, i32 908266}
!507 = !{!"branch_weights", i32 22, i32 908245}
!508 = !{!"branch_weights", i32 122033, i32 -572015040}
!509 = !{!"branch_weights", i32 989224, i32 0}
!510 = distinct !{!510, !274}
!511 = !{!"branch_weights", i32 894625, i32 29922}
!512 = !{!"branch_weights", i32 3211, i32 26712}
!513 = !{!"branch_weights", i32 26461, i32 251}
!514 = !{!"branch_weights", i32 251, i32 0}
!515 = distinct !{!515, !274}
!516 = distinct !{!516, !274}
!517 = !{!"branch_weights", i32 973398, i32 29966}
!518 = !{!"branch_weights", i32 3, i32 29964}
!519 = !{!"branch_weights", i32 43, i32 29922}
!520 = !{!"branch_weights", i32 53425, i32 1}
!521 = !{!"branch_weights", i32 908, i32 25805}
!522 = !{!"branch_weights", i32 1, i32 55148}
!523 = !{!"branch_weights", i32 0, i32 -448790528, i32 -912654336}
!524 = !{!"branch_weights", i32 25805, i32 29344}
!525 = distinct !{!525, !274}
!526 = !{!"branch_weights", i32 21678, i32 4128}
!527 = !{!"branch_weights", i32 4128, i32 1}
!528 = !{!"tree-ssa-live.c:first_htab_element"}
!529 = !{!530, !232, i64 24}
!530 = !{!"htab", !232, i64 0, !232, i64 8, !232, i64 16, !232, i64 24, !308, i64 32, !308, i64 40, !308, i64 48, !235, i64 56, !235, i64 60, !232, i64 64, !232, i64 72, !232, i64 80, !232, i64 88, !232, i64 96, !235, i64 104}
!531 = !{!"branch_weights", i32 685299, i32 1}
!532 = distinct !{!532, !274}
!533 = !{!"branch_weights", i32 157635, i32 1}
!534 = !{!"tree-ssa-live.c:gimple_referenced_vars"}
!535 = !{!"branch_weights", i32 1, i32 157635}
!536 = !{!265, !232, i64 0}
!537 = !{!"tree-ssa-live.c:end_htab_p"}
!538 = !{!"tree-ssa-live.c:next_htab_element"}
!539 = !{!"branch_weights", i32 31443095, i32 157635}
!540 = !{!"tree-ssa-live.c:bb_seq"}
!541 = !{!372, !235, i64 96}
!542 = !{!"branch_weights", i32 5234639, i32 1}
!543 = !{!"branch_weights", i32 1, i32 5234639}
!544 = !{!545, !232, i64 0}
!545 = !{!"gimple_bb_info", !232, i64 0, !232, i64 8}
!546 = !{!"tree-ssa-live.c:gimple_seq_first"}
!547 = !{!548, !232, i64 0}
!548 = !{!"gimple_seq_d", !232, i64 0, !232, i64 8, !232, i64 16}
!549 = !{!"function_entry_count", i64 146714961}
!550 = !{!"tree-ssa-live.c:gimple_code"}
!551 = !{!"function_entry_count", i64 66509981}
!552 = !{!"tree-ssa-live.c:mark_all_vars_used_1"}
!553 = !{!"branch_weights", i32 29054639, i32 37455344}
!554 = !{!"branch_weights", i32 1035706517, i32 -1150106152}
!555 = !{!"branch_weights", i32 16477386, i32 1}
!556 = !{!"branch_weights", i32 -1928114754, i32 3916451, i32 1843963546}
!557 = !{!"branch_weights", i32 29098394, i32 10}
!558 = !{!"branch_weights", i32 10, i32 1}
!559 = !{!"branch_weights", i32 -1705142739, i32 1620991594}
!560 = !{!"function_entry_count", i64 29098402}
!561 = !{!"tree-ssa-live.c:set_is_used"}
!562 = !{!"tree-ssa-live.c:get_var_ann"}
!563 = !{!"branch_weights", i32 111, i32 -1064997943, i32 0}
!564 = !{!"branch_weights", i32 1, i32 29098403}
!565 = !{!"tree-ssa-live.c:gimple_has_ops"}
!566 = !{!"tree-ssa-live.c:gimple_ops"}
!567 = !{!"tree-ssa-live.c:gimple_statement_structure"}
!568 = !{!"tree-ssa-live.c:gss_for_code"}
!569 = !{!"tree-ssa-live.c:clear_and_done_ssa_iter"}
!570 = !{!"function_entry_count", i64 1607680}
!571 = !{!"tree-ssa-live.c:gimple_phi_num_args"}
!572 = !{!"tree-ssa-live.c:gimple_phi_arg_imm_use_ptr"}
!573 = !{!"function_entry_count", i64 4205256}
!574 = !{!"tree-ssa-live.c:gimple_phi_arg"}
!575 = !{!"branch_weights", i32 1, i32 4205257}
!576 = !{!"tree-ssa-live.c:ei_end_p"}
!577 = !{!"branch_weights", i32 12783, i32 15169236}
!578 = !{!"tree-ssa-live.c:ei_edge"}
!579 = !{!"function_entry_count", i64 24596599}
!580 = !{!"tree-ssa-live.c:VEC_edge_base_length"}
!581 = !{!"branch_weights", i32 12783, i32 24583818}
!582 = !{!583, !235, i64 0}
!583 = !{!"VEC_edge_base", !235, i64 0, !235, i64 4, !233, i64 8}
!584 = !{!"function_entry_count", i64 68009580}
!585 = !{!"tree-ssa-live.c:ei_container"}
!586 = !{!"branch_weights", i32 1, i32 68009581}
!587 = !{!"function_entry_count", i64 9711826}
!588 = !{!"tree-ssa-live.c:VEC_edge_base_index"}
!589 = !{!"function_entry_count", i64 26711}
!590 = !{!"tree-ssa-live.c:inlined_function_outer_scope_p"}
!591 = !{!"function_entry_count", i64 6250}
!592 = !{!593, !232, i64 8}
!593 = !{!"tree_live_info_d", !232, i64 0, !232, i64 8, !232, i64 16, !235, i64 24, !232, i64 32, !232, i64 40, !232, i64 48}
!594 = !{!593, !232, i64 32}
!595 = !{!593, !235, i64 24}
!596 = !{!"branch_weights", i32 6250, i32 1}
!597 = !{!593, !232, i64 48}
!598 = !{!"branch_weights", i32 245173, i32 6250}
!599 = distinct !{!599, !274}
!600 = !{!593, !232, i64 16}
!601 = distinct !{!601, !274}
!602 = !{!"branch_weights", i32 1, i32 6250}
!603 = !{!372, !235, i64 80}
!604 = !{!"branch_weights", i32 6250, i32 232673}
!605 = distinct !{!605, !274}
!606 = !{!"branch_weights", i32 72754, i32 166169}
!607 = !{!"branch_weights", i32 1, i32 72753}
!608 = !{!"branch_weights", i32 149726, i32 45905}
!609 = !{!593, !232, i64 0}
!610 = !{!"branch_weights", i32 1104, i32 148623}
!611 = !{!394, !232, i64 0}
!612 = !{!"branch_weights", i32 5, i32 148619}
!613 = !{!"branch_weights", i32 122877, i32 72753}
!614 = distinct !{!614, !274}
!615 = !{!"branch_weights", i32 0, i32 72754}
!616 = distinct !{!616, !274}
!617 = !{!"branch_weights", i32 1, i32 238922}
!618 = !{!394, !232, i64 8}
!619 = !{!"branch_weights", i32 6242, i32 384731}
!620 = !{!"branch_weights", i32 238922, i32 152050}
!621 = distinct !{!621, !274}
!622 = distinct !{!622, !274}
!623 = !{!"function_entry_count", i64 311532}
!624 = !{!"tree-ssa-live.c:var_to_partition"}
!625 = !{!"branch_weights", i32 311533, i32 1}
!626 = !{!"branch_weights", i32 1, i32 311533}
!627 = !{!"function_entry_count", i64 297244}
!628 = !{!"tree-ssa-live.c:gimple_phi_arg_edge"}
!629 = !{!372, !232, i64 0}
!630 = !{!"function_entry_count", i64 1152299}
!631 = !{!"tree-ssa-live.c:live_on_entry"}
!632 = !{!"branch_weights", i32 1, i32 1152300}
!633 = !{!"function_entry_count", i64 1006366}
!634 = !{!"tree-ssa-live.c:gimple_bb"}
!635 = !{!"branch_weights", i32 155558, i32 6250}
!636 = distinct !{!636, !274}
!637 = !{!"tree-ssa-live.c:new_tree_live_info"}
!638 = !{!370, !235, i64 32}
!639 = distinct !{!639, !274}
!640 = distinct !{!640, !274}
!641 = !{!593, !232, i64 40}
!642 = !{!"function_entry_count", i64 161807}
!643 = !{!"tree-ssa-live.c:set_var_live_on_entry"}
!644 = !{!"branch_weights", i32 12703, i32 149106}
!645 = !{!"branch_weights", i32 161807, i32 1}
!646 = !{!"branch_weights", i32 148623, i32 250072}
!647 = !{!"branch_weights", i32 -631917647, i32 1859075071}
!648 = !{!"branch_weights", i32 250072, i32 1}
!649 = !{!"branch_weights", i32 83273, i32 166800}
!650 = !{!"branch_weights", i32 236887, i32 161807}
!651 = distinct !{!651, !274}
!652 = !{!"branch_weights", i32 1399511463, i32 747972185}
!653 = !{!"tree-ssa-live.c:live_worklist"}
!654 = !{!372, !232, i64 48}
!655 = distinct !{!655, !274}
!656 = !{!370, !232, i64 16}
!657 = !{!"branch_weights", i32 6250, i32 48704}
!658 = distinct !{!658, !274}
!659 = !{!660, !232, i64 0}
!660 = !{!"simple_bitmap_def", !232, i64 0, !235, i64 8, !235, i64 12, !233, i64 16}
!661 = !{!"tree-ssa-live.c:first_readonly_imm_use"}
!662 = !{!663, !232, i64 8}
!663 = !{!"immediate_use_iterator_d", !232, i64 0, !232, i64 8, !299, i64 16, !232, i64 48}
!664 = !{!663, !232, i64 0}
!665 = !{!"branch_weights", i32 161795, i32 14}
!666 = !{!"function_entry_count", i64 1121000}
!667 = !{!"tree-ssa-live.c:end_readonly_imm_use_p"}
!668 = !{!"function_entry_count", i64 148622}
!669 = !{!"tree-ssa-live.c:phi_arg_index_from_use"}
!670 = !{!"branch_weights", i32 148623, i32 1}
!671 = !{!"function_entry_count", i64 398693}
!672 = !{!"tree-ssa-live.c:next_readonly_imm_use"}
!673 = !{!"branch_weights", i32 236900, i32 161795}
!674 = !{!"function_entry_count", i64 293875}
!675 = !{!"tree-ssa-live.c:loe_visit_block"}
!676 = !{!"branch_weights", i32 293876, i32 1}
!677 = !{!"branch_weights", i32 1, i32 293875}
!678 = !{!"branch_weights", i32 6343, i32 473695}
!679 = !{!"branch_weights", i32 340075959, i32 -1703605166}
!680 = !{!"branch_weights", i32 293875, i32 186162}
!681 = distinct !{!681, !274}
!682 = !{!"function_entry_count", i64 54953}
!683 = !{!"tree-ssa-live.c:VEC_basic_block_base_index"}
!684 = !{!"tree-ssa-live.c:SET_BIT"}
!685 = !{!"tree-ssa-live.c:RESET_BIT"}
!686 = !{!"branch_weights", i32 54954, i32 1}
!687 = distinct !{!687, !274}
!688 = distinct !{!688, !274}
!689 = distinct !{!689, !274}
!690 = distinct !{!690, !274}
!691 = distinct !{!691, !274}
!692 = distinct !{!692, !274}
