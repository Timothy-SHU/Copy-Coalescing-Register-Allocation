; ModuleID = 'tree-ssa-coalesce.c'
source_filename = "tree-ssa-coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.coalesce_list_d = type { ptr, ptr, i32, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.coalesce_pair = type { i32, i32, i32 }
%struct._var_map = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr }
%struct.ssa_conflicts_d = type { i32, ptr }
%struct.coalesce_pair_iterator = type { %struct.htab_iterator }
%struct.htab_iterator = type { ptr, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.cost_one_pair_d = type { i32, i32, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.live_track_d = type { ptr, ptr, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.tree_live_info_d = type { ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, ptr, i32 }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }

@coalesce_ssa_name.ssa_name_hash = internal unnamed_addr global ptr null, align 8
@optimize = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"\0AAfter sorting:\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"tree-ssa-coalesce.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c" Corrupt SSA across abnormal edge BB%d->BB%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Argument %d (\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c") is not an SSA_NAME.\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c") does not have the same base variable as the result \00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"SSA corruption\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.11 = private unnamed_addr constant [18 x i8] c"./tree-ssa-live.h\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"\0AConflict graph:\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%d: \00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Coalesce List:\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c" <-> \00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"  (%1d), \00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Sorted Coalesce list:\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"(%d) \00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Abnormal coalesce: \00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Coalesce list: \00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c" & (%d)\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c": Already Coalesced.\0A\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c" [map: %d, %d] \00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c": Unable to perform partition union.\0A\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c": Success -> %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c": Fail due to conflict\0A\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"\0AUnable to coalesce ssa_names %d and %d\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c" which are marked as MUST COALESCE.\0A\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c" and  \00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @coalesce_ssa_name() local_unnamed_addr #0 !prof !279 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %2 = tail call fastcc ptr @create_coalesce_list() #18
  %3 = tail call fastcc ptr @create_outofssa_var_map(ptr noundef %2, ptr noundef %1) #18
  %4 = load i32, ptr @optimize, align 4, !tbaa !280
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %66, !prof !284

6:                                                ; preds = %0
  %7 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @hash_ssa_name_by_var, ptr noundef nonnull @eq_ssa_name_by_var, ptr noundef null) #17
  store ptr %7, ptr @coalesce_ssa_name.ssa_name_hash, align 8, !tbaa !285
  %8 = load ptr, ptr @cfun, align 8, !tbaa !285
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !287
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !289
  %13 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %12) #18
  %14 = icmp ugt i32 %13, 1
  br i1 %14, label %15, label %64

15:                                               ; preds = %6, %53
  %16 = phi ptr [ %59, %53 ], [ %12, %6 ]
  %17 = phi i32 [ %54, %53 ], [ 1, %6 ]
  %18 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %16, i32 noundef %17) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %53, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tree_ssa_name, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !293
  %23 = icmp eq ptr %22, null
  br i1 %23, label %53, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tree_decl_common, ptr %22, i64 0, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 4096
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %24
  %30 = tail call fastcc zeroext i8 @has_zero_uses(ptr noundef nonnull %18) #18
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i64, ptr %18, align 8
  %34 = and i64 %33, 4294967296
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %32, %29
  %37 = load ptr, ptr @coalesce_ssa_name.ssa_name_hash, align 8, !tbaa !285
  %38 = tail call ptr @htab_find_slot(ptr noundef %37, ptr noundef nonnull %18, i32 noundef 1) #17
  %39 = load ptr, ptr %38, align 8, !tbaa !285
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store ptr %18, ptr %38, align 8, !tbaa !285
  br label %53

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.tree_ssa_name, ptr %18, i64 0, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !293
  %45 = getelementptr inbounds %struct.tree_ssa_name, ptr %39, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !293
  tail call fastcc void @add_coalesce(ptr noundef %2, i32 noundef %44, i32 noundef %46, i32 noundef 2147483646) #18
  %47 = load i32, ptr %43, align 8, !tbaa !293
  %48 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %47) #17
  %49 = load ptr, ptr %38, align 8, !tbaa !285
  %50 = getelementptr inbounds %struct.tree_ssa_name, ptr %49, i64 0, i32 3
  %51 = load i32, ptr %50, align 8, !tbaa !293
  %52 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %51) #17
  br label %53

53:                                               ; preds = %41, %42, %32, %24, %20, %15
  %54 = add nuw i32 %17, 1
  %55 = load ptr, ptr @cfun, align 8, !tbaa !285
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !287
  %58 = getelementptr inbounds %struct.gimple_df, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !289
  %60 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %59) #18
  %61 = icmp ult i32 %54, %60
  br i1 %61, label %15, label %62, !llvm.loop !294

62:                                               ; preds = %53
  %63 = load ptr, ptr @coalesce_ssa_name.ssa_name_hash, align 8, !tbaa !285
  br label %64

64:                                               ; preds = %62, %6
  %65 = phi ptr [ %63, %62 ], [ %7, %6 ]
  tail call void @htab_delete(ptr noundef %65) #17
  br label %66

66:                                               ; preds = %64, %0
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !285
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69, !prof !296

69:                                               ; preds = %66
  %70 = load i32, ptr @dump_flags, align 4, !tbaa !280
  %71 = and i32 %70, 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  tail call void @dump_var_map(ptr noundef nonnull %67, ptr noundef %3) #17
  br label %74

74:                                               ; preds = %73, %69, %66
  tail call void @partition_view_bitmap(ptr noundef %3, ptr noundef %1, i8 noundef zeroext 1) #17
  tail call void @bitmap_obstack_free(ptr noundef %1) #17
  %75 = tail call fastcc i32 @num_var_partitions(ptr noundef %3) #18
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78, !prof !284

77:                                               ; preds = %74
  tail call fastcc void @delete_coalesce_list(ptr noundef %2) #18
  br label %131

78:                                               ; preds = %74
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !285
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81, !prof !296

81:                                               ; preds = %78
  %82 = load i32, ptr @dump_flags, align 4, !tbaa !280
  %83 = and i32 %82, 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  tail call void @dump_var_map(ptr noundef nonnull %79, ptr noundef %3) #17
  br label %86

86:                                               ; preds = %85, %81, %78
  %87 = tail call ptr @calculate_live_ranges(ptr noundef %3) #17
  %88 = load ptr, ptr @dump_file, align 8, !tbaa !285
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %90, !prof !296

90:                                               ; preds = %86
  %91 = load i32, ptr @dump_flags, align 4, !tbaa !280
  %92 = and i32 %91, 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  tail call void @dump_live_info(ptr noundef nonnull %88, ptr noundef %87, i32 noundef 1) #17
  br label %95

95:                                               ; preds = %94, %90, %86
  %96 = tail call fastcc ptr @build_ssa_conflict_graph(ptr noundef %87) #18
  tail call void @delete_tree_live_info(ptr noundef %87) #17
  %97 = load ptr, ptr @dump_file, align 8, !tbaa !285
  %98 = icmp eq ptr %97, null
  br i1 %98, label %104, label %99, !prof !296

99:                                               ; preds = %95
  %100 = load i32, ptr @dump_flags, align 4, !tbaa !280
  %101 = and i32 %100, 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  tail call fastcc void @ssa_conflicts_dump(ptr noundef nonnull %97, ptr noundef %96) #18
  br label %104

104:                                              ; preds = %103, %99, %95
  tail call fastcc void @sort_coalesce_list(ptr noundef %2) #18
  %105 = load ptr, ptr @dump_file, align 8
  %106 = icmp eq ptr %105, null
  %107 = load i32, ptr @dump_flags, align 4, !tbaa !280
  br i1 %106, label %125, label %108, !prof !296

108:                                              ; preds = %104
  %109 = and i32 %107, 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %108
  %112 = tail call i64 @fwrite(ptr nonnull @.str, i64 16, i64 1, ptr nonnull %105)
  %113 = load ptr, ptr @dump_file, align 8, !tbaa !285
  tail call fastcc void @dump_coalesce_list(ptr noundef %113, ptr noundef %2) #18
  %114 = load ptr, ptr @dump_file, align 8
  %115 = load i32, ptr @dump_flags, align 4, !tbaa !280
  %116 = icmp eq ptr %114, null
  br i1 %116, label %125, label %117, !prof !297

117:                                              ; preds = %108, %111
  %118 = phi ptr [ %114, %111 ], [ %105, %108 ]
  %119 = phi i32 [ %115, %111 ], [ %107, %108 ]
  %120 = and i32 %119, 8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  tail call void @dump_var_map(ptr noundef nonnull %118, ptr noundef %3) #17
  %123 = load i32, ptr @dump_flags, align 4, !tbaa !280
  %124 = load ptr, ptr @dump_file, align 8
  br label %125

125:                                              ; preds = %104, %122, %117, %111
  %126 = phi ptr [ null, %104 ], [ %124, %122 ], [ %118, %117 ], [ null, %111 ]
  %127 = phi i32 [ %107, %104 ], [ %123, %122 ], [ %119, %117 ], [ %115, %111 ]
  %128 = and i32 %127, 8
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %129, ptr null, ptr %126, !prof !296
  tail call fastcc void @coalesce_partitions(ptr noundef %3, ptr noundef %96, ptr noundef %2, ptr noundef %130) #18
  tail call fastcc void @delete_coalesce_list(ptr noundef %2) #18
  tail call fastcc void @ssa_conflicts_delete(ptr noundef %96) #18
  br label %131

131:                                              ; preds = %125, %77
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_coalesce_list() unnamed_addr #0 !prof !279 !PGOFuncName !298 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !285
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !287
  %4 = getelementptr inbounds %struct.gimple_df, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !289
  %6 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %5) #18
  %7 = mul i32 %6, 3
  %8 = tail call i32 @llvm.umax.i32(i32 %7, i32 40)
  %9 = tail call ptr @xmalloc(i64 noundef 32) #17
  %10 = zext i32 %8 to i64
  %11 = tail call ptr @htab_create(i64 noundef %10, ptr noundef nonnull @coalesce_pair_map_hash, ptr noundef nonnull @coalesce_pair_map_eq, ptr noundef null) #17
  store ptr %11, ptr %9, align 8, !tbaa !299
  %12 = getelementptr inbounds %struct.coalesce_list_d, ptr %9, i64 0, i32 1
  store ptr null, ptr %12, align 8, !tbaa !301
  %13 = getelementptr inbounds %struct.coalesce_list_d, ptr %9, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !302
  %14 = getelementptr inbounds %struct.coalesce_list_d, ptr %9, i64 0, i32 3
  store ptr null, ptr %14, align 8, !tbaa !303
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_outofssa_var_map(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !279 !PGOFuncName !304 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #19
  %7 = load ptr, ptr @cfun, align 8, !tbaa !285
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !287
  %10 = getelementptr inbounds %struct.gimple_df, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !289
  %12 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %11) #18
  %13 = tail call ptr @init_var_map(i32 noundef %12) #17
  %14 = load ptr, ptr @cfun, align 8, !tbaa !285
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !305
  %17 = load ptr, ptr %16, align 8, !tbaa !306
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !308
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !311
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %32, label %40, !prof !312

23:                                               ; preds = %213, %105
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !308
  %26 = load ptr, ptr @cfun, align 8, !tbaa !285
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !305
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !311
  %31 = icmp eq ptr %25, %30
  br i1 %31, label %32, label %40, !prof !313, !llvm.loop !314

32:                                               ; preds = %23, %2
  %33 = phi ptr [ %14, %2 ], [ %26, %23 ]
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !287
  %36 = getelementptr inbounds %struct.gimple_df, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !289
  %38 = call fastcc i32 @VEC_tree_base_length(ptr noundef %37) #18
  %39 = icmp ugt i32 %38, 1
  br i1 %39, label %216, label %275, !prof !315

40:                                               ; preds = %2, %23
  %41 = phi ptr [ %25, %23 ], [ %19, %2 ]
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %41) #17
  %42 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !316
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %105, !prof !317

44:                                               ; preds = %40, %102
  %45 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18
  %46 = call fastcc ptr @gimple_phi_result(ptr noundef %45) #18
  %47 = getelementptr inbounds %struct.tree_ssa_name, ptr %46, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !293
  %49 = call fastcc i32 @gimple_phi_num_args(ptr noundef %45) #18
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %102, label %51, !prof !318

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.tree_ssa_name, ptr %46, i64 0, i32 1
  br label %53

53:                                               ; preds = %51, %92
  %54 = phi i64 [ 0, %51 ], [ %94, %92 ]
  %55 = phi i8 [ 0, %51 ], [ %93, %92 ]
  %56 = call fastcc ptr @gimple_phi_arg_edge(ptr noundef %45, i64 noundef %54) #18
  %57 = trunc i64 %54 to i32
  %58 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %45, i32 noundef %57) #18
  %59 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %58) #18
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 141
  br i1 %62, label %63, label %86, !prof !319

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.tree_ssa_name, ptr %59, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !293
  %66 = load ptr, ptr %52, align 8, !tbaa !293
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %68, label %86, !prof !320

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.tree_ssa_name, ptr %59, i64 0, i32 3
  %70 = load i32, ptr %69, align 8, !tbaa !293
  %71 = call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %70) #17
  %72 = getelementptr inbounds %struct.edge_def, ptr %56, i64 0, i32 7
  %73 = load i32, ptr %72, align 8, !tbaa !321
  %74 = and i32 %73, 2
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %92, !prof !320

76:                                               ; preds = %68
  %77 = call fastcc i32 @coalesce_cost_edge(ptr noundef nonnull %56) #18
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %84, !prof !323

79:                                               ; preds = %76
  %80 = call fastcc zeroext i8 @has_single_use(ptr noundef nonnull %59) #18
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %84, label %82, !prof !324

82:                                               ; preds = %79
  %83 = load i32, ptr %69, align 8, !tbaa !293
  call fastcc void @add_cost_one_coalesce(ptr noundef %0, i32 noundef %48, i32 noundef %83) #18
  br label %92

84:                                               ; preds = %79, %76
  %85 = load i32, ptr %69, align 8, !tbaa !293
  call fastcc void @add_coalesce(ptr noundef %0, i32 noundef %48, i32 noundef %85, i32 noundef %77) #18
  br label %92

86:                                               ; preds = %63, %53
  %87 = getelementptr inbounds %struct.edge_def, ptr %56, i64 0, i32 7
  %88 = load i32, ptr %87, align 8, !tbaa !321
  %89 = and i32 %88, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91, !prof !325

91:                                               ; preds = %86
  call fastcc void @abnormal_corrupt(ptr noundef %45, i32 noundef %57) #18
  br label %92

92:                                               ; preds = %82, %84, %86, %91, %68
  %93 = phi i8 [ 1, %68 ], [ %55, %91 ], [ %55, %86 ], [ 1, %84 ], [ 1, %82 ]
  %94 = add nuw nsw i64 %54, 1
  %95 = call fastcc i32 @gimple_phi_num_args(ptr noundef %45) #18
  %96 = zext i32 %95 to i64
  %97 = icmp ult i64 %94, %96
  br i1 %97, label %53, label %98, !prof !326, !llvm.loop !327

98:                                               ; preds = %92
  %99 = icmp eq i8 %93, 0
  br i1 %99, label %102, label %100, !prof !328

100:                                              ; preds = %98
  %101 = call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %48) #17
  br label %102

102:                                              ; preds = %44, %100, %98
  call fastcc void @gsi_next(ptr noundef nonnull %3) #18
  %103 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !316
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %44, label %105, !prof !329, !llvm.loop !330

105:                                              ; preds = %102, %40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %41) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !331
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  %106 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !316
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %23, !prof !332

108:                                              ; preds = %105, %213
  %109 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18
  %110 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %109) #18, !range !316
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %213, !prof !333

112:                                              ; preds = %108
  %113 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %109, i32 noundef 3) #18
  %114 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #18
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %120, !prof !334

116:                                              ; preds = %112, %116
  %117 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #18
  %118 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #18
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %116, label %120, !prof !335, !llvm.loop !336

120:                                              ; preds = %116, %112
  %121 = call fastcc i32 @gimple_code(ptr noundef %109) #18, !range !337
  %122 = trunc i32 %121 to i8
  switch i8 %122, label %213 [
    i8 6, label %123
    i8 7, label %150
  ], !prof !338

123:                                              ; preds = %120
  %124 = call fastcc ptr @gimple_assign_lhs(ptr noundef %109) #18
  %125 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %109) #18
  %126 = call zeroext i8 @gimple_assign_copy_p(ptr noundef %109) #17
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %213, label %128, !prof !339

128:                                              ; preds = %123
  %129 = load i64, ptr %124, align 8
  %130 = and i64 %129, 65535
  %131 = icmp eq i64 %130, 141
  br i1 %131, label %132, label %213, !prof !340

132:                                              ; preds = %128
  %133 = load i64, ptr %125, align 8
  %134 = and i64 %133, 65535
  %135 = icmp eq i64 %134, 141
  br i1 %135, label %136, label %213

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.tree_ssa_name, ptr %124, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !293
  %139 = getelementptr inbounds %struct.tree_ssa_name, ptr %125, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !293
  %141 = icmp eq ptr %138, %140
  br i1 %141, label %142, label %213

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.tree_ssa_name, ptr %124, i64 0, i32 3
  %144 = load i32, ptr %143, align 8, !tbaa !293
  %145 = getelementptr inbounds %struct.tree_ssa_name, ptr %125, i64 0, i32 3
  %146 = load i32, ptr %145, align 8, !tbaa !293
  %147 = call fastcc i32 @coalesce_cost_bb(ptr noundef %41) #18
  call fastcc void @add_coalesce(ptr noundef %0, i32 noundef %144, i32 noundef %146, i32 noundef %147) #18
  %148 = call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %144) #17
  %149 = call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %146) #17
  br label %213

150:                                              ; preds = %120
  %151 = call fastcc i32 @gimple_asm_noutputs(ptr noundef %109) #18, !range !337
  %152 = zext nneg i32 %151 to i64
  %153 = call fastcc i32 @gimple_asm_ninputs(ptr noundef %109) #18, !range !337
  %154 = zext nneg i32 %153 to i64
  %155 = shl nuw nsw i64 %152, 3
  %156 = alloca i8, i64 %155, align 16
  %157 = icmp eq i32 %151, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %160, %150
  %159 = icmp eq i32 %153, 0
  br i1 %159, label %213, label %169

160:                                              ; preds = %150, %160
  %161 = phi i64 [ %167, %160 ], [ 0, %150 ]
  %162 = trunc i64 %161 to i32
  %163 = call fastcc ptr @gimple_asm_output_op(ptr noundef %109, i32 noundef %162) #18
  %164 = getelementptr inbounds %struct.tree_list, ptr %163, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !293
  %166 = getelementptr inbounds ptr, ptr %156, i64 %161
  store ptr %165, ptr %166, align 8, !tbaa !285
  %167 = add nuw nsw i64 %161, 1
  %168 = icmp eq i64 %167, %152
  br i1 %168, label %158, label %160, !llvm.loop !341

169:                                              ; preds = %158, %210
  %170 = phi i64 [ %211, %210 ], [ 0, %158 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %171 = trunc i64 %170 to i32
  %172 = call fastcc ptr @gimple_asm_input_op(ptr noundef %109, i32 noundef %171) #18
  %173 = getelementptr inbounds %struct.tree_list, ptr %172, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !293
  %175 = load i64, ptr %174, align 8
  %176 = and i64 %175, 65535
  %177 = icmp eq i64 %176, 141
  br i1 %177, label %178, label %210

178:                                              ; preds = %169
  %179 = getelementptr inbounds %struct.tree_list, ptr %172, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !293
  %181 = getelementptr inbounds %struct.tree_list, ptr %180, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !293
  %183 = getelementptr inbounds %struct.tree_string, ptr %182, i64 0, i32 2
  %184 = call i64 @strtoul(ptr noundef nonnull %183, ptr noundef nonnull %6, i32 noundef 10) #18
  %185 = icmp uge i64 %184, %152
  %186 = load ptr, ptr %6, align 8
  %187 = icmp eq ptr %186, %183
  %188 = select i1 %185, i1 true, i1 %187
  br i1 %188, label %210, label %189

189:                                              ; preds = %178
  %190 = getelementptr inbounds ptr, ptr %156, i64 %184
  %191 = load ptr, ptr %190, align 8, !tbaa !285
  %192 = load i64, ptr %191, align 8
  %193 = and i64 %192, 65535
  %194 = icmp eq i64 %193, 141
  br i1 %194, label %195, label %210

195:                                              ; preds = %189
  %196 = getelementptr inbounds %struct.tree_ssa_name, ptr %191, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !293
  %198 = getelementptr inbounds %struct.tree_ssa_name, ptr %174, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !293
  %200 = icmp eq ptr %197, %199
  br i1 %200, label %201, label %210

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.tree_ssa_name, ptr %174, i64 0, i32 3
  %203 = load i32, ptr %202, align 8, !tbaa !293
  %204 = getelementptr inbounds %struct.tree_ssa_name, ptr %191, i64 0, i32 3
  %205 = load i32, ptr %204, align 8, !tbaa !293
  %206 = call zeroext i8 @optimize_bb_for_size_p(ptr noundef %41) #17
  %207 = call fastcc i32 @coalesce_cost(i32 noundef 10000, i8 noundef zeroext %206) #18
  call fastcc void @add_coalesce(ptr noundef %0, i32 noundef %205, i32 noundef %203, i32 noundef %207) #18
  %208 = call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %205) #17
  %209 = call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %203) #17
  br label %210

210:                                              ; preds = %195, %201, %189, %178, %169
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  %211 = add nuw nsw i64 %170, 1
  %212 = icmp eq i64 %211, %154
  br i1 %212, label %213, label %169, !llvm.loop !342

213:                                              ; preds = %210, %158, %123, %128, %132, %136, %142, %120, %108
  call fastcc void @gsi_next(ptr noundef nonnull %3) #18
  %214 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !316
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %108, label %23, !prof !343, !llvm.loop !344

216:                                              ; preds = %32, %265
  %217 = phi ptr [ %272, %265 ], [ %37, %32 ]
  %218 = phi ptr [ %266, %265 ], [ null, %32 ]
  %219 = phi i32 [ %267, %265 ], [ 1, %32 ]
  %220 = call fastcc ptr @VEC_tree_base_index(ptr noundef %217, i32 noundef %219) #18
  %221 = icmp eq ptr %220, null
  br i1 %221, label %265, label %222, !prof !345

222:                                              ; preds = %216
  %223 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %220) #17
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %265, label %225, !prof !346

225:                                              ; preds = %222
  %226 = getelementptr inbounds %struct.tree_ssa_name, ptr %220, i64 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !293
  %228 = load i64, ptr %227, align 8
  %229 = and i64 %228, 65535
  %230 = icmp eq i64 %229, 36
  br i1 %230, label %231, label %252, !prof !347

231:                                              ; preds = %225
  %232 = icmp eq ptr %218, null
  br i1 %232, label %252, label %233

233:                                              ; preds = %231
  %234 = getelementptr inbounds %struct.tree_ssa_name, ptr %218, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !293
  %236 = icmp eq ptr %227, %235
  br i1 %236, label %238, label %237

237:                                              ; preds = %233
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1170, ptr noundef nonnull @.str.2) #17
  br label %238

238:                                              ; preds = %233, %237
  %239 = getelementptr inbounds %struct.tree_ssa_name, ptr %218, i64 0, i32 3
  %240 = load i32, ptr %239, align 8, !tbaa !293
  %241 = getelementptr inbounds %struct.tree_ssa_name, ptr %220, i64 0, i32 3
  %242 = load i32, ptr %241, align 8, !tbaa !293
  %243 = call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %240) #17
  %244 = call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %242) #17
  %245 = load ptr, ptr @cfun, align 8, !tbaa !285
  %246 = getelementptr inbounds %struct.function, ptr %245, i64 0, i32 1
  %247 = load ptr, ptr %246, align 8, !tbaa !305
  %248 = getelementptr inbounds %struct.control_flow_graph, ptr %247, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !311
  %250 = call fastcc i32 @coalesce_cost_bb(ptr noundef %249) #18
  call fastcc void @add_coalesce(ptr noundef %0, i32 noundef %240, i32 noundef %242, i32 noundef %250) #18
  %251 = load ptr, ptr %226, align 8, !tbaa !293
  br label %252

252:                                              ; preds = %231, %238, %225
  %253 = phi ptr [ %251, %238 ], [ %227, %225 ], [ %227, %231 ]
  %254 = phi ptr [ %218, %238 ], [ %218, %225 ], [ %220, %231 ]
  %255 = load ptr, ptr @cfun, align 8, !tbaa !285
  %256 = call ptr @gimple_default_def(ptr noundef %255, ptr noundef %253) #17
  %257 = icmp eq ptr %256, %220
  br i1 %257, label %258, label %265, !prof !348

258:                                              ; preds = %252
  %259 = call fastcc zeroext i8 @has_zero_uses(ptr noundef nonnull %220) #18
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %261, label %265, !prof !296

261:                                              ; preds = %258
  %262 = getelementptr inbounds %struct.tree_ssa_name, ptr %220, i64 0, i32 3
  %263 = load i32, ptr %262, align 8, !tbaa !293
  %264 = call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %263) #17
  br label %265

265:                                              ; preds = %216, %222, %261, %258, %252
  %266 = phi ptr [ %254, %258 ], [ %254, %261 ], [ %254, %252 ], [ %218, %222 ], [ %218, %216 ]
  %267 = add nuw i32 %219, 1
  %268 = load ptr, ptr @cfun, align 8, !tbaa !285
  %269 = getelementptr inbounds %struct.function, ptr %268, i64 0, i32 3
  %270 = load ptr, ptr %269, align 8, !tbaa !287
  %271 = getelementptr inbounds %struct.gimple_df, ptr %270, i64 0, i32 2
  %272 = load ptr, ptr %271, align 8, !tbaa !289
  %273 = call fastcc i32 @VEC_tree_base_length(ptr noundef %272) #18
  %274 = icmp ult i32 %267, %273
  br i1 %274, label %216, label %275, !prof !349, !llvm.loop !350

275:                                              ; preds = %265, %32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @hash_ssa_name_by_var(ptr nocapture noundef readonly %0) #0 !prof !351 !PGOFuncName !352 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !285
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !293
  %5 = tail call i32 %2(ptr noundef %4) #17
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @eq_ssa_name_by_var(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !351 !PGOFuncName !353 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !293
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !293
  %7 = icmp eq ptr %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !354 !PGOFuncName !355 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !356

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !357
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !359 !PGOFuncName !360 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !285
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_zero_uses(ptr noundef %0) unnamed_addr #0 !prof !279 !PGOFuncName !361 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !362
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6, !prof !284

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !280
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !296

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %2) #17
  br label %11

11:                                               ; preds = %6, %1, %9
  %12 = phi i8 [ %10, %9 ], [ 1, %1 ], [ 0, %6 ]
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_coalesce(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !364 !PGOFuncName !365 {
  %5 = getelementptr inbounds %struct.coalesce_list_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !301
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !366

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 314, ptr noundef nonnull @.str.2) #17
  br label %9

9:                                                ; preds = %4, %8
  %10 = icmp eq i32 %1, %2
  br i1 %10, label %20, label %11, !prof !367

11:                                               ; preds = %9
  %12 = tail call fastcc ptr @find_coalesce_pair(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #18
  %13 = getelementptr inbounds %struct.coalesce_pair, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !368
  %15 = icmp slt i32 %14, 2147483646
  br i1 %15, label %16, label %20, !prof !366

16:                                               ; preds = %11
  %17 = icmp slt i32 %3, 2147483646
  %18 = select i1 %17, i32 %14, i32 0, !prof !366
  %19 = add nsw i32 %18, %3
  store i32 %19, ptr %13, align 4, !tbaa !368
  br label %20

20:                                               ; preds = %16, %11, %9
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_var_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @partition_view_bitmap(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @num_var_partitions(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !370 !PGOFuncName !371 {
  %2 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !372
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_coalesce_list(ptr nocapture noundef %0) unnamed_addr #0 !prof !279 !PGOFuncName !374 {
  %2 = getelementptr inbounds %struct.coalesce_list_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !303
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !296

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 243, ptr noundef nonnull @.str.2) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr %0, align 8, !tbaa !299
  tail call void @htab_delete(ptr noundef %7) #17
  %8 = getelementptr inbounds %struct.coalesce_list_d, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !301
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !284

11:                                               ; preds = %6
  tail call void @free(ptr noundef nonnull %9) #18
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %struct.coalesce_list_d, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !302
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !296

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 247, ptr noundef nonnull @.str.2) #17
  br label %17

17:                                               ; preds = %12, %16
  tail call void @free(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: optsize
declare ptr @calculate_live_ranges(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_live_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_ssa_conflict_graph(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !279 !PGOFuncName !375 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #19
  %4 = tail call fastcc ptr @live_var_map(ptr noundef %0) #18
  %5 = tail call fastcc i32 @num_var_partitions(ptr noundef %4) #18
  %6 = tail call fastcc ptr @ssa_conflicts_new(i32 noundef %5) #18
  %7 = tail call fastcc ptr @new_live_track(ptr noundef %4) #18
  %8 = load ptr, ptr @cfun, align 8, !tbaa !285
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !305
  %11 = load ptr, ptr %10, align 8, !tbaa !306
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !308
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !311
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %86, label %17, !prof !312

17:                                               ; preds = %1, %77
  %18 = phi ptr [ %79, %77 ], [ %13, %1 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  %19 = call fastcc ptr @live_on_exit(ptr noundef %0, ptr noundef %18) #18
  call fastcc void @live_track_init(ptr noundef %7, ptr noundef %19) #18
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %18) #18
  %20 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !316
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %64, !prof !332

22:                                               ; preds = %17, %61
  %23 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18
  %24 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %23) #18, !range !316
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %40, label %26, !prof !376

26:                                               ; preds = %22
  %27 = call fastcc ptr @gimple_assign_lhs(ptr noundef %23) #18
  %28 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %23) #18
  %29 = call zeroext i8 @gimple_assign_copy_p(ptr noundef %23) #17
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %43, label %31, !prof !339

31:                                               ; preds = %26
  %32 = load i64, ptr %27, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 141
  br i1 %34, label %35, label %43, !prof !340

35:                                               ; preds = %31
  %36 = load i64, ptr %28, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 141
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  call fastcc void @live_track_clear_var(ptr noundef %7, ptr noundef nonnull %28) #18
  br label %43

40:                                               ; preds = %22
  %41 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %23) #18, !range !316
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %61, !prof !377

43:                                               ; preds = %26, %31, %35, %39, %40
  %44 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %23, i32 noundef 2) #18
  %45 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #18
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %52, !prof !378

47:                                               ; preds = %43, %47
  %48 = phi ptr [ %49, %47 ], [ %44, %43 ]
  call fastcc void @live_track_process_def(ptr noundef %7, ptr noundef %48, ptr noundef %6) #18
  %49 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #18
  %50 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #18
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %47, label %52, !prof !379, !llvm.loop !380

52:                                               ; preds = %47, %43
  %53 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %23, i32 noundef 1) #18
  %54 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #18
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %61, !prof !381

56:                                               ; preds = %52, %56
  %57 = phi ptr [ %58, %56 ], [ %53, %52 ]
  call fastcc void @live_track_process_use(ptr noundef %7, ptr noundef %57) #18
  %58 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #18
  %59 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #18
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %56, label %61, !prof !382, !llvm.loop !383

61:                                               ; preds = %56, %52, %40
  call fastcc void @gsi_prev(ptr noundef nonnull %3) #18
  %62 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !316
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %22, label %64, !prof !343, !llvm.loop !384

64:                                               ; preds = %61, %17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %18) #17
  %65 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !316
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %77, !prof !317

67:                                               ; preds = %64, %74
  %68 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18
  %69 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %68) #18
  %70 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %69) #18
  %71 = call fastcc zeroext i8 @live_track_live_p(ptr noundef %7, ptr noundef %70) #18
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %74, label %73, !prof !385

73:                                               ; preds = %67
  call fastcc void @live_track_process_def(ptr noundef %7, ptr noundef %70, ptr noundef %6) #18
  br label %74

74:                                               ; preds = %73, %67
  call fastcc void @gsi_next(ptr noundef nonnull %3) #18
  %75 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !316
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %67, label %77, !prof !329, !llvm.loop !386

77:                                               ; preds = %74, %64
  call fastcc void @live_track_clear_base_vars(ptr noundef %7) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %79 = load ptr, ptr %78, align 8, !tbaa !308
  %80 = load ptr, ptr @cfun, align 8, !tbaa !285
  %81 = getelementptr inbounds %struct.function, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !305
  %83 = getelementptr inbounds %struct.control_flow_graph, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !311
  %85 = icmp eq ptr %79, %84
  br i1 %85, label %86, label %17, !prof !313, !llvm.loop !387

86:                                               ; preds = %77, %1
  call fastcc void @delete_live_track(ptr noundef %7) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #19
  ret ptr %6
}

; Function Attrs: optsize
declare void @delete_tree_live_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ssa_conflicts_dump(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !351 !PGOFuncName !388 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 17, i64 1, ptr %0)
  %4 = load i32, ptr %1, align 8, !tbaa !389
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ssa_conflicts_d, ptr %1, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %23
  %9 = phi i32 [ %4, %6 ], [ %24, %23 ]
  %10 = phi i64 [ 0, %6 ], [ %25, %23 ]
  %11 = load ptr, ptr %7, align 8, !tbaa !391
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !285
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !285
  %17 = trunc i64 %10 to i32
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.13, i32 noundef %17) #18
  %19 = load ptr, ptr %7, align 8, !tbaa !391
  %20 = getelementptr inbounds ptr, ptr %19, i64 %10
  %21 = load ptr, ptr %20, align 8, !tbaa !285
  tail call void @bitmap_print(ptr noundef %0, ptr noundef %21, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #17
  %22 = load i32, ptr %1, align 8, !tbaa !389
  br label %23

23:                                               ; preds = %8, %15
  %24 = phi i32 [ %9, %8 ], [ %22, %15 ]
  %25 = add nuw nsw i64 %10, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %8, label %28, !llvm.loop !392

28:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sort_coalesce_list(ptr nocapture noundef %0) unnamed_addr #0 !prof !279 !PGOFuncName !393 {
  %2 = alloca %struct.coalesce_pair_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  %3 = getelementptr inbounds %struct.coalesce_list_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !301
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !296

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 422, ptr noundef nonnull @.str.2) #17
  br label %7

7:                                                ; preds = %1, %6
  %8 = tail call fastcc i32 @num_coalesce_pairs(ptr noundef nonnull %0) #18
  %9 = getelementptr inbounds %struct.coalesce_list_d, ptr %0, i64 0, i32 2
  store i32 %8, ptr %9, align 8, !tbaa !302
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %48, label %11, !prof !284

11:                                               ; preds = %7
  %12 = zext i32 %8 to i64
  %13 = shl nuw nsw i64 %12, 3
  %14 = tail call ptr @xmalloc(i64 noundef %13) #17
  store ptr %14, ptr %3, align 8, !tbaa !301
  %15 = call fastcc ptr @first_coalesce_pair(ptr noundef nonnull %0, ptr noundef nonnull %2) #18
  %16 = call fastcc zeroext i8 @end_coalesce_pair_p(ptr noundef nonnull %2) #18, !range !316
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %28, !prof !315

18:                                               ; preds = %11, %18
  %19 = phi ptr [ %25, %18 ], [ %15, %11 ]
  %20 = phi i32 [ %22, %18 ], [ 0, %11 ]
  %21 = load ptr, ptr %3, align 8, !tbaa !301
  %22 = add i32 %20, 1
  %23 = zext i32 %20 to i64
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  store ptr %19, ptr %24, align 8, !tbaa !285
  %25 = call fastcc ptr @next_coalesce_pair(ptr noundef nonnull %2) #18
  %26 = call fastcc zeroext i8 @end_coalesce_pair_p(ptr noundef nonnull %2) #18, !range !316
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %18, label %28, !prof !394, !llvm.loop !395

28:                                               ; preds = %18, %11
  %29 = phi i32 [ 0, %11 ], [ %22, %18 ]
  %30 = icmp eq i32 %29, %8
  br i1 %30, label %32, label %31, !prof !296

31:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 436, ptr noundef nonnull @.str.2) #17
  br label %32

32:                                               ; preds = %28, %31
  switch i32 %8, label %46 [
    i32 1, label %48
    i32 2, label %33
  ], !prof !396

33:                                               ; preds = %32
  %34 = load ptr, ptr %3, align 8, !tbaa !301
  %35 = load ptr, ptr %34, align 8, !tbaa !285
  %36 = getelementptr inbounds %struct.coalesce_pair, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !368
  %38 = getelementptr inbounds ptr, ptr %34, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !285
  %40 = getelementptr inbounds %struct.coalesce_pair, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !368
  %42 = icmp sgt i32 %37, %41
  br i1 %42, label %43, label %48, !prof !397

43:                                               ; preds = %33
  store ptr %39, ptr %34, align 8, !tbaa !285
  %44 = load ptr, ptr %3, align 8, !tbaa !301
  %45 = getelementptr inbounds ptr, ptr %44, i64 1
  store ptr %35, ptr %45, align 8, !tbaa !285
  br label %48

46:                                               ; preds = %32
  %47 = load ptr, ptr %3, align 8, !tbaa !301
  tail call void @spec_qsort(ptr noundef %47, i64 noundef %12, i64 noundef 8, ptr noundef nonnull @compare_pairs) #17
  br label %48

48:                                               ; preds = %33, %43, %32, %7, %46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_coalesce_list(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !351 !PGOFuncName !398 {
  %3 = alloca %struct.coalesce_pair_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.coalesce_list_d, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !301
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 15, i64 1, ptr %0)
  %9 = call fastcc ptr @first_coalesce_pair(ptr noundef nonnull %1, ptr noundef nonnull %3) #18
  %10 = call fastcc zeroext i8 @end_coalesce_pair_p(ptr noundef nonnull %3) #18, !range !316
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %66

12:                                               ; preds = %7, %12
  %13 = phi ptr [ %29, %12 ], [ %9, %7 ]
  %14 = load ptr, ptr @cfun, align 8, !tbaa !285
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !287
  %17 = getelementptr inbounds %struct.gimple_df, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !289
  %19 = load i32, ptr %13, align 4, !tbaa !399
  %20 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %18, i32 noundef %19) #18
  %21 = getelementptr inbounds %struct.coalesce_pair, ptr %13, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !400
  %23 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %18, i32 noundef %22) #18
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %20, i32 noundef 2) #17
  %24 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 5, i64 1, ptr %0)
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %23, i32 noundef 2) #17
  %25 = getelementptr inbounds %struct.coalesce_pair, ptr %13, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !368
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %26) #18
  %28 = tail call i32 @fputc(i32 10, ptr %0)
  %29 = call fastcc ptr @next_coalesce_pair(ptr noundef nonnull %3) #18
  %30 = call fastcc zeroext i8 @end_coalesce_pair_p(ptr noundef nonnull %3) #18, !range !316
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %12, label %66, !llvm.loop !401

32:                                               ; preds = %2
  %33 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 22, i64 1, ptr %0)
  %34 = getelementptr inbounds %struct.coalesce_list_d, ptr %1, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !302
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %32
  %38 = zext nneg i32 %35 to i64
  br label %39

39:                                               ; preds = %37, %39
  %40 = phi i64 [ %38, %37 ], [ %41, %39 ]
  %41 = add nsw i64 %40, -1
  %42 = load ptr, ptr %4, align 8, !tbaa !301
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !285
  %45 = getelementptr inbounds %struct.coalesce_pair, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !368
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %46) #18
  %48 = load ptr, ptr @cfun, align 8, !tbaa !285
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !287
  %51 = getelementptr inbounds %struct.gimple_df, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !289
  %53 = load i32, ptr %44, align 4, !tbaa !399
  %54 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %52, i32 noundef %53) #18
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %54, i32 noundef 2) #17
  %55 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 5, i64 1, ptr %0)
  %56 = load ptr, ptr @cfun, align 8, !tbaa !285
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !287
  %59 = getelementptr inbounds %struct.gimple_df, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !289
  %61 = getelementptr inbounds %struct.coalesce_pair, ptr %44, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !400
  %63 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %60, i32 noundef %62) #18
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %63, i32 noundef 2) #17
  %64 = tail call i32 @fputc(i32 10, ptr %0)
  %65 = icmp ugt i64 %40, 1
  br i1 %65, label %39, label %66, !llvm.loop !402

66:                                               ; preds = %39, %12, %32, %7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @coalesce_partitions(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 !prof !279 !PGOFuncName !403 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca %struct.edge_iterator, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !tbaa !280
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !tbaa !280
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #19
  %10 = load ptr, ptr @cfun, align 8, !tbaa !285
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !305
  %13 = load ptr, ptr %12, align 8, !tbaa !306
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !308
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !311
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %30, label %19, !prof !312

19:                                               ; preds = %4
  %20 = getelementptr inbounds i8, ptr %8, i64 8
  br label %35

21:                                               ; preds = %81, %35
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !308
  %24 = load ptr, ptr @cfun, align 8, !tbaa !285
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !305
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !311
  %29 = icmp eq ptr %23, %28
  br i1 %29, label %30, label %35, !prof !313, !llvm.loop !404

30:                                               ; preds = %21, %4
  %31 = call fastcc i32 @pop_best_coalesce(ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %109, label %33, !prof !312

33:                                               ; preds = %30
  %34 = icmp eq ptr %3, null
  br label %86

35:                                               ; preds = %19, %21
  %36 = phi ptr [ %15, %19 ], [ %23, %21 ]
  %37 = call fastcc ptr @ei_start_1(ptr noundef %36) #18
  store i32 0, ptr %8, align 8, !tbaa.struct !405
  store ptr %37, ptr %20, align 8, !tbaa.struct !406
  %38 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %37, ptr noundef nonnull %7) #18, !range !316
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %21, label %40, !prof !407

40:                                               ; preds = %35, %81
  %41 = load ptr, ptr %7, align 8, !tbaa !285
  %42 = getelementptr inbounds %struct.edge_def, ptr %41, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !321
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %81, label %46, !prof !408

46:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %36) #17
  %47 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %9) #18, !range !316
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %46
  %50 = icmp eq ptr %3, null
  %51 = getelementptr inbounds %struct.edge_def, ptr %41, i64 0, i32 6
  br label %52

52:                                               ; preds = %49, %77
  %53 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %9) #18
  %54 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %53) #18
  %55 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %54) #18
  %56 = load i32, ptr %51, align 4, !tbaa !409
  %57 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %53, i32 noundef %56) #18
  %58 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %57) #18
  %59 = getelementptr inbounds %struct.tree_ssa_name, ptr %55, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !293
  %61 = getelementptr inbounds %struct.tree_ssa_name, ptr %58, i64 0, i32 3
  %62 = load i32, ptr %61, align 8, !tbaa !293
  %63 = getelementptr inbounds %struct.tree_ssa_name, ptr %58, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !293
  %65 = getelementptr inbounds %struct.tree_ssa_name, ptr %55, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !293
  %67 = icmp eq ptr %64, %66
  br i1 %67, label %70, label %68

68:                                               ; preds = %52
  %69 = load i32, ptr %51, align 4, !tbaa !409
  call fastcc void @abnormal_corrupt(ptr noundef %53, i32 noundef %69) #18
  br label %70

70:                                               ; preds = %68, %52
  br i1 %50, label %73, label %71

71:                                               ; preds = %70
  %72 = call i64 @fwrite(ptr nonnull @.str.21, i64 19, i64 1, ptr nonnull %3)
  br label %73

73:                                               ; preds = %71, %70
  %74 = call fastcc zeroext i8 @attempt_coalesce(ptr noundef %0, ptr noundef %1, i32 noundef %60, i32 noundef %62, ptr noundef %3) #18, !range !316
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  call fastcc void @fail_abnormal_edge_coalesce(i32 noundef %60, i32 noundef %62) #18
  br label %77

77:                                               ; preds = %76, %73
  call fastcc void @gsi_next(ptr noundef nonnull %9) #18
  %78 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %9) #18, !range !316
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %52, label %80, !llvm.loop !410

80:                                               ; preds = %77, %46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #19
  br label %81

81:                                               ; preds = %40, %80
  call fastcc void @ei_next(ptr noundef nonnull %8) #18
  %82 = load i32, ptr %8, align 8
  %83 = load ptr, ptr %20, align 8
  %84 = call fastcc zeroext i8 @ei_cond(i32 %82, ptr %83, ptr noundef nonnull %7) #18, !range !316
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %21, label %40, !prof !411, !llvm.loop !412

86:                                               ; preds = %33, %105
  %87 = load ptr, ptr @cfun, align 8, !tbaa !285
  %88 = getelementptr inbounds %struct.function, ptr %87, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !287
  %90 = getelementptr inbounds %struct.gimple_df, ptr %89, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !289
  %92 = load i32, ptr %5, align 4, !tbaa !280
  %93 = call fastcc ptr @VEC_tree_base_index(ptr noundef %91, i32 noundef %92) #18
  %94 = load i32, ptr %6, align 4, !tbaa !280
  %95 = call fastcc ptr @VEC_tree_base_index(ptr noundef %91, i32 noundef %94) #18
  %96 = getelementptr inbounds %struct.tree_ssa_name, ptr %93, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !293
  %98 = getelementptr inbounds %struct.tree_ssa_name, ptr %95, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !293
  %100 = icmp eq ptr %97, %99
  br i1 %100, label %102, label %101, !prof !413

101:                                              ; preds = %86
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1331, ptr noundef nonnull @.str.2) #17
  br label %102

102:                                              ; preds = %86, %101
  br i1 %34, label %105, label %103, !prof !413

103:                                              ; preds = %102
  %104 = call i64 @fwrite(ptr nonnull @.str.22, i64 15, i64 1, ptr nonnull %3)
  br label %105

105:                                              ; preds = %103, %102
  %106 = call fastcc zeroext i8 @attempt_coalesce(ptr noundef %0, ptr noundef %1, i32 noundef %92, i32 noundef %94, ptr noundef %3) #18, !range !316
  %107 = call fastcc i32 @pop_best_coalesce(ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %86, !prof !414, !llvm.loop !415

109:                                              ; preds = %105, %30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ssa_conflicts_delete(ptr nocapture noundef %0) unnamed_addr #0 !prof !279 !PGOFuncName !416 {
  %2 = load i32, ptr %0, align 8, !tbaa !389
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %22, label %4, !prof !312

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_conflicts_d, ptr %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %4, %17
  %7 = phi i32 [ %2, %4 ], [ %18, %17 ]
  %8 = phi i64 [ 0, %4 ], [ %19, %17 ]
  %9 = load ptr, ptr %5, align 8, !tbaa !391
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !285
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !417

13:                                               ; preds = %6
  tail call void @bitmap_obstack_free(ptr noundef nonnull %11) #17
  %14 = load ptr, ptr %5, align 8, !tbaa !391
  %15 = getelementptr inbounds ptr, ptr %14, i64 %8
  store ptr null, ptr %15, align 8, !tbaa !285
  %16 = load i32, ptr %0, align 8, !tbaa !389
  br label %17

17:                                               ; preds = %6, %13
  %18 = phi i32 [ %7, %6 ], [ %16, %13 ]
  %19 = add nuw nsw i64 %8, 1
  %20 = zext i32 %18 to i64
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %6, label %22, !prof !418, !llvm.loop !419

22:                                               ; preds = %17, %1
  %23 = getelementptr inbounds %struct.ssa_conflicts_d, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !391
  tail call void @free(ptr noundef %24) #18
  tail call void @free(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @coalesce_pair_map_hash(ptr nocapture noundef readonly %0) #3 !prof !364 !PGOFuncName !420 {
  %2 = load i32, ptr %0, align 4, !tbaa !399
  %3 = getelementptr inbounds %struct.coalesce_pair, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !400
  %5 = add i32 %4, -1
  %6 = mul i32 %5, %4
  %7 = lshr i32 %6, 1
  %8 = add i32 %7, %2
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @coalesce_pair_map_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !421 !PGOFuncName !422 {
  %3 = load i32, ptr %0, align 4, !tbaa !399
  %4 = load i32, ptr %1, align 4, !tbaa !399
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %13, !prof !423

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.coalesce_pair, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !400
  %9 = getelementptr inbounds %struct.coalesce_pair, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !400
  %11 = icmp eq i32 %8, %10
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %6 ]
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @init_var_map(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !424 !PGOFuncName !425 {
  %2 = load ptr, ptr %0, align 8, !tbaa !426
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !428 !PGOFuncName !429 {
  %2 = load ptr, ptr %0, align 8, !tbaa !426
  %3 = load ptr, ptr %2, align 8, !tbaa !430
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !432 !PGOFuncName !433 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !293
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !434 !PGOFuncName !435 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !293
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #6 !prof !436 !PGOFuncName !437 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #18
  %4 = load ptr, ptr %3, align 8, !tbaa !438
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #18
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !439 !PGOFuncName !440 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !441
  %4 = load ptr, ptr %3, align 8, !tbaa !285
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !436 !PGOFuncName !442 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #18
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @coalesce_cost_edge(ptr noundef %0) unnamed_addr #0 !prof !443 !PGOFuncName !444 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !445
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !446
  %7 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %6) #18
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %16, !prof !447

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !448
  %12 = load ptr, ptr %11, align 8, !tbaa !438
  %13 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %12) #18
  %14 = icmp ugt i32 %13, 1
  %15 = select i1 %14, i32 2, i32 1, !prof !449
  br label %16

16:                                               ; preds = %9, %1
  %17 = phi i32 [ 1, %1 ], [ %15, %9 ]
  %18 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !321
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %63, !prof !320

22:                                               ; preds = %16
  %23 = and i32 %19, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %50, label %25, !prof !320

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  %26 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !448
  %28 = tail call fastcc ptr @ei_start_1(ptr noundef %27) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !405
  %29 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %28, ptr %29, align 8, !tbaa.struct !406
  %30 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %28, ptr noundef nonnull %2) #18, !range !316
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %25, %41
  %33 = phi i32 [ %42, %41 ], [ %17, %25 ]
  %34 = load ptr, ptr %2, align 8, !tbaa !285
  %35 = icmp eq ptr %34, %0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 7
  %38 = load i32, ptr %37, align 8, !tbaa !321
  %39 = and i32 %38, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32, %36
  %42 = phi i32 [ 2, %36 ], [ %33, %32 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %43 = load i32, ptr %3, align 8
  %44 = load ptr, ptr %29, align 8
  %45 = call fastcc zeroext i8 @ei_cond(i32 %43, ptr %44, ptr noundef nonnull %2) #18, !range !316
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %32, !llvm.loop !450

47:                                               ; preds = %41, %36, %25
  %48 = phi i32 [ %17, %25 ], [ 5, %36 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  %49 = load ptr, ptr %0, align 8, !tbaa !445
  br label %50

50:                                               ; preds = %47, %22
  %51 = phi ptr [ %49, %47 ], [ %4, %22 ]
  %52 = phi i32 [ %48, %47 ], [ %17, %22 ]
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 11
  %54 = load i32, ptr %53, align 8, !tbaa !451
  %55 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %56 = load i32, ptr %55, align 4, !tbaa !452
  %57 = mul nsw i32 %56, %54
  %58 = add nsw i32 %57, 5000
  %59 = sdiv i32 %58, 10000
  %60 = tail call zeroext i8 @optimize_edge_for_size_p(ptr noundef nonnull %0) #17
  %61 = tail call fastcc i32 @coalesce_cost(i32 noundef %59, i8 noundef zeroext %60) #18
  %62 = mul nsw i32 %61, %52
  br label %63

63:                                               ; preds = %16, %50
  %64 = phi i32 [ %62, %50 ], [ 2147483647, %16 ]
  ret i32 %64
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_single_use(ptr noundef %0) unnamed_addr #0 !prof !453 !PGOFuncName !454 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !362
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %20, label %6, !prof !455

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !362
  %9 = icmp eq ptr %2, %8
  br i1 %9, label %10, label %15, !prof !456

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !293
  %13 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %12) #18, !range !316
  %14 = xor i8 %13, 1
  br label %20

15:                                               ; preds = %6
  %16 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !280
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18, !prof !457

18:                                               ; preds = %15
  %19 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #17
  br label %20

20:                                               ; preds = %15, %1, %18, %10
  %21 = phi i8 [ %14, %10 ], [ %19, %18 ], [ 0, %1 ], [ 0, %15 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_cost_one_coalesce(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !458 !PGOFuncName !459 {
  %4 = tail call ptr @xmalloc(i64 noundef 16) #17
  store i32 %1, ptr %4, align 8, !tbaa !460
  %5 = getelementptr inbounds %struct.cost_one_pair_d, ptr %4, i64 0, i32 1
  store i32 %2, ptr %5, align 4, !tbaa !462
  %6 = getelementptr inbounds %struct.coalesce_list_d, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !303
  %8 = getelementptr inbounds %struct.cost_one_pair_d, ptr %4, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !463
  store ptr %4, ptr %6, align 8, !tbaa !303
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @abnormal_corrupt(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !351 !PGOFuncName !464 {
  %3 = sext i32 %1 to i64
  %4 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %0, i64 noundef %3) #18
  %5 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #18
  %6 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %3) #18
  %7 = load ptr, ptr @stderr, align 8, !tbaa !285
  %8 = load ptr, ptr %4, align 8, !tbaa !445
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !465
  %11 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !448
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !465
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.5, i32 noundef %10, i32 noundef %14) #20
  %16 = load ptr, ptr @stderr, align 8, !tbaa !285
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.6, i32 noundef %1) #20
  %18 = load ptr, ptr @stderr, align 8, !tbaa !285
  tail call void @print_generic_expr(ptr noundef %18, ptr noundef %6, i32 noundef 2) #17
  %19 = load i64, ptr %6, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 141
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load ptr, ptr @stderr, align 8, !tbaa !285
  %24 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 22, i64 1, ptr %23) #21
  br label %36

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.tree_ssa_name, ptr %5, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !293
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !293
  %30 = icmp eq ptr %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 958, ptr noundef nonnull @.str.2) #17
  br label %32

32:                                               ; preds = %25, %31
  %33 = load ptr, ptr @stderr, align 8, !tbaa !285
  %34 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 53, i64 1, ptr %33) #21
  %35 = load ptr, ptr @stderr, align 8, !tbaa !285
  tail call void @print_generic_stmt(ptr noundef %35, ptr noundef nonnull %5, i32 noundef 2) #17
  br label %36

36:                                               ; preds = %32, %22
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.9) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #7 !prof !466 !PGOFuncName !467 {
  %2 = load ptr, ptr %0, align 8, !tbaa !426
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !468
  store ptr %4, ptr %0, align 8, !tbaa !426
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 !prof !469 !PGOFuncName !470 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #18
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #18
  store ptr %4, ptr %0, align 8, !tbaa !426
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !471
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !472
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !473 !PGOFuncName !474 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !337
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #7 !prof !475 !PGOFuncName !476 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #18
  %4 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %4, align 4, !tbaa !477
  %5 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #18
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !479 !PGOFuncName !480 {
  %2 = load i8, ptr %0, align 8, !tbaa !481
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #7 !prof !479 !PGOFuncName !482 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !483
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !484

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #18
  %8 = load ptr, ptr %3, align 8, !tbaa !485
  store ptr %8, ptr %2, align 8, !tbaa !483
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !487
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !488

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !489
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #18
  %17 = load ptr, ptr %11, align 8, !tbaa !491
  store ptr %17, ptr %10, align 8, !tbaa !487
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !481
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !492 !PGOFuncName !493 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !494 !PGOFuncName !495 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !494 !PGOFuncName !496 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #18
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_copy_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @coalesce_cost_bb(ptr noundef %0) unnamed_addr #0 !prof !351 !PGOFuncName !497 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 8, !tbaa !451
  %4 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef %0) #17
  %5 = tail call fastcc i32 @coalesce_cost(i32 noundef %3, i8 noundef zeroext %4) #18
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_noutputs(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !351 !PGOFuncName !498 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !293
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_ninputs(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !351 !PGOFuncName !499 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !293
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !351 !PGOFuncName !500 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !293
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2655, ptr noundef nonnull @.str.2) #17
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !293
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %12) #18
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !351 !PGOFuncName !501 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !293
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2622, ptr noundef nonnull @.str.2) #17
  br label %8

8:                                                ; preds = %2, %7
  %9 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %1) #18
  ret ptr %9
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @coalesce_cost(i32 noundef %0, i8 noundef zeroext %1) unnamed_addr #9 !prof !443 !PGOFuncName !502 {
  %3 = tail call i32 @llvm.umax.i32(i32 %0, i32 1)
  %4 = icmp eq i8 %1, 0
  %5 = select i1 %4, i32 %3, i32 1, !prof !503
  ret i32 %5
}

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_size_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !504 !PGOFuncName !505 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !285
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !506 !PGOFuncName !507 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !293
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !436 !PGOFuncName !508 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !293
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !509

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3103, ptr noundef nonnull @.str.2) #17
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !510 !PGOFuncName !511 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !512

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !513
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #9 !prof !469 !PGOFuncName !515 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !516 !PGOFuncName !517 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #18, !range !316
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !518

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #18
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !285
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !519 !PGOFuncName !520 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !521

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #18
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #18
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !408

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef nonnull @.str.2) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !522
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !522
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @optimize_edge_for_size_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !516 !PGOFuncName !524 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !525

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #18
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !519 !PGOFuncName !526 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !521

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #18
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !527 !PGOFuncName !528 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !529

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 687, ptr noundef nonnull @.str.2) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !285
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !351 !PGOFuncName !530 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #18
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #18
  ret ptr %5
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_generic_stmt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @internal_error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !531 !PGOFuncName !532 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !533
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !534

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !293
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !535

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !536
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #3 !prof !469 !PGOFuncName !538 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !539

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !540
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #7 !prof !475 !PGOFuncName !542 {
  %4 = and i32 %2, 10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8, !prof !543

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !487
  br label %17

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #18
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !487
  %11 = icmp eq ptr %9, null
  br i1 %11, label %17, label %12, !prof !544

12:                                               ; preds = %8
  %13 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !545

15:                                               ; preds = %12
  %16 = load ptr, ptr %9, align 8, !tbaa !491
  store ptr %16, ptr %10, align 8, !tbaa !487
  br label %17

17:                                               ; preds = %6, %15, %12, %8
  %18 = and i32 %2, 5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22, !prof !543

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %21, align 8, !tbaa !483
  br label %31

22:                                               ; preds = %17
  %23 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #18
  %24 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !483
  %25 = icmp eq ptr %23, null
  br i1 %25, label %31, label %26, !prof !546

26:                                               ; preds = %22
  %27 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #18
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29, !prof !547

29:                                               ; preds = %26
  %30 = load ptr, ptr %23, align 8, !tbaa !485
  store ptr %30, ptr %24, align 8, !tbaa !483
  br label %31

31:                                               ; preds = %20, %29, %26, %22
  store i8 0, ptr %0, align 8, !tbaa !481
  %32 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !548 !PGOFuncName !549 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !316
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !550

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !293
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !551 !PGOFuncName !552 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #18, !range !316
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !553

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !293
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !548 !PGOFuncName !554 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !316
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !550

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !293
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !555 !PGOFuncName !556 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #18, !range !316
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !557

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !293
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !558 !PGOFuncName !559 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !337
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !560 !PGOFuncName !561 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !337
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !562 !PGOFuncName !563 {
  %2 = load ptr, ptr %0, align 8, !tbaa !285
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !564 !PGOFuncName !565 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !316
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !566

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #18
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !285
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !564 !PGOFuncName !567 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #18
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !568
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !566

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #17
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !564 !PGOFuncName !569 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !337
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #18
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #9 !prof !564 !PGOFuncName !570 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !280
  ret i32 %4
}

; Function Attrs: optsize
declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_coalesce_pair(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !364 !PGOFuncName !571 {
  %4 = alloca %struct.coalesce_pair, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  %5 = tail call i32 @llvm.smin.i32(i32 %2, i32 %1)
  %6 = tail call i32 @llvm.smax.i32(i32 %2, i32 %1)
  store i32 %5, ptr %4, align 8
  %7 = getelementptr inbounds %struct.coalesce_pair, ptr %4, i64 0, i32 1
  store i32 %6, ptr %7, align 4
  %8 = call i32 @coalesce_pair_map_hash(ptr noundef nonnull %4) #18
  %9 = load ptr, ptr %0, align 8, !tbaa !299
  %10 = call ptr @htab_find_slot_with_hash(ptr noundef %9, ptr noundef nonnull %4, i32 noundef %8, i32 noundef 1) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12, !prof !367

12:                                               ; preds = %3
  %13 = load ptr, ptr %10, align 8, !tbaa !285
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %24, !prof !572

15:                                               ; preds = %12
  %16 = call ptr @xmalloc(i64 noundef 12) #17
  %17 = getelementptr inbounds %struct.coalesce_list_d, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !301
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !573

20:                                               ; preds = %15
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 284, ptr noundef nonnull @.str.2) #17
  br label %21

21:                                               ; preds = %15, %20
  %22 = load <2 x i32>, ptr %4, align 8, !tbaa !280
  store <2 x i32> %22, ptr %16, align 4, !tbaa !280
  %23 = getelementptr inbounds %struct.coalesce_pair, ptr %16, i64 0, i32 2
  store i32 0, ptr %23, align 4, !tbaa !368
  store ptr %16, ptr %10, align 8, !tbaa !285
  br label %24

24:                                               ; preds = %12, %21, %3
  %25 = phi ptr [ null, %3 ], [ %16, %21 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  ret ptr %25
}

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @live_var_map(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !279 !PGOFuncName !574 {
  %2 = load ptr, ptr %0, align 8, !tbaa !575
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ssa_conflicts_new(i32 noundef %0) unnamed_addr #0 !prof !279 !PGOFuncName !577 {
  %2 = tail call ptr @xmalloc(i64 noundef 16) #17
  %3 = zext i32 %0 to i64
  %4 = tail call ptr @xcalloc(i64 noundef %3, i64 noundef 8) #17
  %5 = getelementptr inbounds %struct.ssa_conflicts_d, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !391
  store i32 %0, ptr %2, align 8, !tbaa !389
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @new_live_track(ptr noundef %0) unnamed_addr #0 !prof !279 !PGOFuncName !578 {
  %2 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !579
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !284

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 677, ptr noundef nonnull @.str.2) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call ptr @xmalloc(i64 noundef 24) #17
  %8 = getelementptr inbounds %struct.live_track_d, ptr %7, i64 0, i32 2
  store ptr %0, ptr %8, align 8, !tbaa !580
  %9 = tail call fastcc i32 @num_basevars(ptr noundef nonnull %0) #18
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = tail call ptr @xmalloc(i64 noundef %11) #17
  %13 = getelementptr inbounds %struct.live_track_d, ptr %7, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !582
  %14 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %14, ptr %7, align 8, !tbaa !583
  %15 = icmp sgt i32 %9, 0
  br i1 %15, label %16, label %25, !prof !315

16:                                               ; preds = %6
  %17 = zext nneg i32 %9 to i64
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %23, %18 ]
  %20 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %21 = load ptr, ptr %13, align 8, !tbaa !582
  %22 = getelementptr inbounds ptr, ptr %21, i64 %19
  store ptr %20, ptr %22, align 8, !tbaa !285
  %23 = add nuw nsw i64 %19, 1
  %24 = icmp eq i64 %23, %17
  br i1 %24, label %25, label %18, !prof !584, !llvm.loop !585

25:                                               ; preds = %18, %6
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @live_track_init(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !469 !PGOFuncName !586 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %3) #18
  %5 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #18, !range !316
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !587

7:                                                ; preds = %2, %7
  %8 = load i32, ptr %3, align 4, !tbaa !280
  tail call fastcc void @live_track_add_partition(ptr noundef %0, i32 noundef %8) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #18
  %9 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #18, !range !316
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %7, !prof !588, !llvm.loop !589

11:                                               ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @live_on_exit(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 !prof !469 !PGOFuncName !590 {
  %3 = getelementptr inbounds %struct.tree_live_info_d, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !591
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !539

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 299, ptr noundef nonnull @.str.2) #17
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr @cfun, align 8, !tbaa !285
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !305
  %11 = load ptr, ptr %10, align 8, !tbaa !306
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %17, !prof !539

13:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 300, ptr noundef nonnull @.str.2) #17
  %14 = load ptr, ptr @cfun, align 8, !tbaa !285
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !305
  br label %17

17:                                               ; preds = %7, %13
  %18 = phi ptr [ %10, %7 ], [ %16, %13 ]
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !311
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %23, !prof !539

22:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 301, ptr noundef nonnull @.str.2) #17
  br label %23

23:                                               ; preds = %17, %22
  %24 = load ptr, ptr %3, align 8, !tbaa !591
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %26 = load i32, ptr %25, align 8, !tbaa !465
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %24, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !285
  ret ptr %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 !prof !469 !PGOFuncName !592 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #18
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #18
  store ptr %4, ptr %0, align 8, !tbaa !426
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !471
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !472
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !593 !PGOFuncName !594 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !337
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @live_track_clear_var(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !351 !PGOFuncName !595 {
  %3 = getelementptr inbounds %struct.live_track_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !580
  %5 = tail call fastcc i32 @var_to_partition(ptr noundef %4, ptr noundef %1) #18
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call fastcc void @live_track_remove_partition(ptr noundef nonnull %0, i32 noundef %5) #18
  br label %8

8:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @live_track_process_def(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !596 !PGOFuncName !597 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %6 = getelementptr inbounds %struct.live_track_d, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !580
  %8 = tail call fastcc i32 @var_to_partition(ptr noundef %7, ptr noundef %1) #18
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %28, label %10, !prof !598

10:                                               ; preds = %3
  tail call fastcc void @live_track_remove_partition(ptr noundef nonnull %0, i32 noundef %8) #18
  %11 = load ptr, ptr %6, align 8, !tbaa !580
  %12 = tail call fastcc i32 @basevar_index(ptr noundef %11, i32 noundef %8) #18
  %13 = load ptr, ptr %0, align 8, !tbaa !583
  %14 = tail call i32 @bitmap_bit_p(ptr noundef %13, i32 noundef %12) #17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %16, !prof !599

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.live_track_d, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !582
  %19 = sext i32 %12 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !285
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %21, ptr noundef nonnull %4) #18
  %22 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #18, !range !316
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24, !prof !600

24:                                               ; preds = %16, %24
  %25 = load i32, ptr %4, align 4, !tbaa !280
  tail call fastcc void @ssa_conflicts_add(ptr noundef %2, i32 noundef %8, i32 noundef %25) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #18, !range !316
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %24, !prof !601, !llvm.loop !602

28:                                               ; preds = %24, %16, %10, %3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @live_track_process_use(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !603 !PGOFuncName !604 {
  %3 = getelementptr inbounds %struct.live_track_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !580
  %5 = tail call fastcc i32 @var_to_partition(ptr noundef %4, ptr noundef %1) #18
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %8, label %7, !prof !605

7:                                                ; preds = %2
  tail call fastcc void @live_track_add_partition(ptr noundef nonnull %0, i32 noundef %5) #18
  br label %8

8:                                                ; preds = %2, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #7 !prof !593 !PGOFuncName !606 {
  %2 = load ptr, ptr %0, align 8, !tbaa !426
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !607
  store ptr %4, ptr %0, align 8, !tbaa !426
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #9 !prof !432 !PGOFuncName !608 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @live_track_live_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !432 !PGOFuncName !609 {
  %3 = getelementptr inbounds %struct.live_track_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !580
  %5 = tail call fastcc i32 @var_to_partition(ptr noundef %4, ptr noundef %1) #18
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %21, label %7, !prof !385

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !580
  %9 = tail call fastcc i32 @basevar_index(ptr noundef %8, i32 noundef %5) #18
  %10 = load ptr, ptr %0, align 8, !tbaa !583
  %11 = tail call i32 @bitmap_bit_p(ptr noundef %10, i32 noundef %9) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13, !prof !610

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.live_track_d, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !582
  %16 = sext i32 %9 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !285
  %19 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %5) #17
  %20 = trunc i32 %19 to i8
  br label %21

21:                                               ; preds = %2, %7, %13
  %22 = phi i8 [ %20, %13 ], [ 0, %7 ], [ 0, %2 ]
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @live_track_clear_base_vars(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !469 !PGOFuncName !611 {
  %2 = load ptr, ptr %0, align 8, !tbaa !583
  tail call void @bitmap_clear(ptr noundef %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_live_track(ptr nocapture noundef %0) unnamed_addr #0 !prof !279 !PGOFuncName !612 {
  %2 = getelementptr inbounds %struct.live_track_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !580
  %4 = tail call fastcc i32 @num_basevars(ptr noundef %3) #18
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %18, !prof !315

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.live_track_d, ptr %0, i64 0, i32 1
  %8 = zext nneg i32 %4 to i64
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %16, %9 ]
  %11 = load ptr, ptr %7, align 8, !tbaa !582
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !285
  tail call void @bitmap_obstack_free(ptr noundef %13) #17
  %14 = load ptr, ptr %7, align 8, !tbaa !582
  %15 = getelementptr inbounds ptr, ptr %14, i64 %10
  store ptr null, ptr %15, align 8, !tbaa !285
  %16 = add nuw nsw i64 %10, 1
  %17 = icmp eq i64 %16, %8
  br i1 %17, label %18, label %9, !prof !584, !llvm.loop !613

18:                                               ; preds = %9, %1
  %19 = load ptr, ptr %0, align 8, !tbaa !583
  tail call void @bitmap_obstack_free(ptr noundef %19) #17
  store ptr null, ptr %0, align 8, !tbaa !583
  %20 = getelementptr inbounds %struct.live_track_d, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !582
  tail call void @free(ptr noundef %21) #18
  tail call void @free(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @num_basevars(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !614 !PGOFuncName !615 {
  %2 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !616
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 !prof !617 !PGOFuncName !618 {
  %4 = load ptr, ptr %1, align 8, !tbaa !619
  store ptr %4, ptr %0, align 8, !tbaa !621
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !623
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !624

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !621
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !625
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !627

13:                                               ; preds = %8
  %14 = shl i32 %11, 7
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ %14, %13 ], [ 0, %8 ]
  %17 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !628
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !568
  %20 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %19, ptr %20, align 8, !tbaa !629
  %21 = icmp eq i64 %19, 0
  %22 = zext i1 %21 to i32
  %23 = or disjoint i32 %16, %22
  store i32 %23, ptr %2, align 4, !tbaa !280
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #11 !prof !630 !PGOFuncName !631 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !629
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !632

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !633

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !280
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !634, !llvm.loop !635

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !280
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !280
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !628
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !621
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !628
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !636

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !568
  store i64 %35, ptr %3, align 8, !tbaa !629
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !637

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !280
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !280
  %40 = load i32, ptr %23, align 8, !tbaa !628
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !628
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !638, !llvm.loop !639

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !640
  store ptr %44, ptr %0, align 8, !tbaa !621
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !641

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !625
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !280
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !629
  store i32 %16, ptr %1, align 4, !tbaa !280
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @live_track_add_partition(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !642 !PGOFuncName !643 {
  %3 = getelementptr inbounds %struct.live_track_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !580
  %5 = tail call fastcc i32 @basevar_index(ptr noundef %4, i32 noundef %1) #18
  %6 = load ptr, ptr %0, align 8, !tbaa !583
  %7 = tail call i32 @bitmap_bit_p(ptr noundef %6, i32 noundef %5) #17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !644

9:                                                ; preds = %2
  %10 = sext i32 %5 to i64
  br label %19

11:                                               ; preds = %2
  %12 = load ptr, ptr %0, align 8, !tbaa !583
  %13 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %12, i32 noundef %5) #17
  %14 = getelementptr inbounds %struct.live_track_d, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !582
  %16 = sext i32 %5 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !285
  tail call void @bitmap_clear(ptr noundef %18) #17
  br label %19

19:                                               ; preds = %9, %11
  %20 = phi i64 [ %10, %9 ], [ %16, %11 ]
  %21 = getelementptr inbounds %struct.live_track_d, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !582
  %23 = getelementptr inbounds ptr, ptr %22, i64 %20
  %24 = load ptr, ptr %23, align 8, !tbaa !285
  %25 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %24, i32 noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 !prof !645 !PGOFuncName !646 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !629
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !629
  %6 = load i32, ptr %1, align 4, !tbaa !280
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !280
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @basevar_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !647 !PGOFuncName !648 {
  %3 = icmp sgt i32 %1, -1
  br i1 %3, label %4, label %7, !prof !649

4:                                                ; preds = %2
  %5 = tail call fastcc i32 @num_var_partitions(ptr noundef %0) #18
  %6 = icmp slt i32 %5, %1
  br i1 %6, label %7, label %8, !prof !650

7:                                                ; preds = %4, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 176, ptr noundef nonnull @.str.2) #17
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !579
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !280
  ret i32 %13
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #3 !prof !469 !PGOFuncName !651 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !539

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !652
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @var_to_partition(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !653 !PGOFuncName !654 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %7, label %6, !prof !655

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 147, ptr noundef nonnull @.str.2) #17
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !656
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !293
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.partition_def, ptr %8, i64 0, i32 1, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !657
  %14 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !659
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17, !prof !660

17:                                               ; preds = %7
  %18 = sext i32 %13 to i64
  %19 = getelementptr inbounds i32, ptr %15, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !280
  br label %21

21:                                               ; preds = %17, %7
  %22 = phi i32 [ %20, %17 ], [ %13, %7 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @live_track_remove_partition(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !661 !PGOFuncName !662 {
  %3 = getelementptr inbounds %struct.live_track_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !580
  %5 = tail call fastcc i32 @basevar_index(ptr noundef %4, i32 noundef %1) #18
  %6 = getelementptr inbounds %struct.live_track_d, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !582
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !285
  %11 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %10, i32 noundef %1) #17
  %12 = load ptr, ptr %6, align 8, !tbaa !582
  %13 = getelementptr inbounds ptr, ptr %12, i64 %8
  %14 = load ptr, ptr %13, align 8, !tbaa !285
  %15 = load ptr, ptr %14, align 8, !tbaa !619
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20, !prof !599

17:                                               ; preds = %2
  %18 = load ptr, ptr %0, align 8, !tbaa !583
  %19 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %18, i32 noundef %5) #17
  br label %20

20:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ssa_conflicts_add(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !663 !PGOFuncName !664 {
  tail call fastcc void @ssa_conflicts_add_one(ptr noundef %0, i32 noundef %1, i32 noundef %2) #18
  tail call fastcc void @ssa_conflicts_add_one(ptr noundef %0, i32 noundef %2, i32 noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ssa_conflicts_add_one(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !665 !PGOFuncName !666 {
  %4 = getelementptr inbounds %struct.ssa_conflicts_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !391
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !285
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17, !prof !667

10:                                               ; preds = %3
  %11 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %12 = load ptr, ptr %4, align 8, !tbaa !391
  %13 = getelementptr inbounds ptr, ptr %12, i64 %6
  store ptr %11, ptr %13, align 8, !tbaa !285
  %14 = load ptr, ptr %4, align 8, !tbaa !391
  %15 = getelementptr inbounds ptr, ptr %14, i64 %6
  %16 = load ptr, ptr %15, align 8, !tbaa !285
  br label %17

17:                                               ; preds = %10, %3
  %18 = phi ptr [ %16, %10 ], [ %8, %3 ]
  %19 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %18, i32 noundef %2) #17
  ret void
}

; Function Attrs: optsize
declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @num_coalesce_pairs(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !279 !PGOFuncName !668 {
  %2 = load ptr, ptr %0, align 8, !tbaa !299
  %3 = tail call i64 @htab_elements(ptr noundef %2) #17
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_coalesce_pair(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !279 !PGOFuncName !669 {
  %3 = load ptr, ptr %0, align 8, !tbaa !299
  %4 = tail call fastcc ptr @first_htab_element(ptr noundef %1, ptr noundef %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_coalesce_pair_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !670 !PGOFuncName !671 {
  %2 = tail call fastcc zeroext i8 @end_htab_p(ptr noundef %0) #18, !range !316
  ret i8 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_coalesce_pair(ptr nocapture noundef %0) unnamed_addr #11 !prof !672 !PGOFuncName !673 {
  %2 = tail call fastcc ptr @next_htab_element(ptr noundef %0) #18
  ret ptr %2
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pairs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !prof !674 !PGOFuncName !675 {
  %3 = load ptr, ptr %0, align 8, !tbaa !285
  %4 = getelementptr inbounds %struct.coalesce_pair, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !368
  %6 = load ptr, ptr %1, align 8, !tbaa !285
  %7 = getelementptr inbounds %struct.coalesce_pair, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !368
  %9 = sub nsw i32 %5, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22, !prof !676

11:                                               ; preds = %2
  %12 = load i32, ptr %6, align 4, !tbaa !399
  %13 = load i32, ptr %3, align 4, !tbaa !399
  %14 = sub nsw i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22, !prof !677

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.coalesce_pair, ptr %6, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !400
  %19 = getelementptr inbounds %struct.coalesce_pair, ptr %3, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !400
  %21 = sub nsw i32 %18, %20
  br label %22

22:                                               ; preds = %11, %16, %2
  %23 = phi i32 [ %21, %16 ], [ %14, %11 ], [ %9, %2 ]
  ret i32 %23
}

; Function Attrs: optsize
declare i64 @htab_elements(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_htab_element(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !279 !PGOFuncName !678 {
  store ptr %1, ptr %0, align 8, !tbaa !426
  %3 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !679
  %5 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !471
  %6 = tail call i64 @htab_size(ptr noundef %1) #17
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !472
  %9 = load ptr, ptr %5, align 8, !tbaa !471
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ %9, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !285
  %13 = icmp ult ptr %12, inttoptr (i64 2 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %15, ptr %5, align 8, !tbaa !471
  %16 = icmp ult ptr %15, %7
  br i1 %16, label %10, label %17, !prof !681, !llvm.loop !682

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %19 = icmp ult ptr %18, %7
  br i1 %19, label %20, label %22, !prof !296

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !285
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_htab_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !670 !PGOFuncName !683 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !471
  %4 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !472
  %6 = icmp uge ptr %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_htab_element(ptr nocapture noundef %0) unnamed_addr #11 !prof !672 !PGOFuncName !684 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !472
  %5 = load ptr, ptr %2, align 8, !tbaa !471
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %8, %10 ], [ %5, %1 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !471
  %9 = icmp ult ptr %8, %4
  br i1 %9, label %10, label %13, !prof !685

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !285
  %12 = icmp ult ptr %11, inttoptr (i64 2 to ptr)
  br i1 %12, label %6, label %13

13:                                               ; preds = %6, %10
  %14 = phi ptr [ %11, %10 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @attempt_coalesce(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 !prof !686 !PGOFuncName !687 {
  %6 = load ptr, ptr @cfun, align 8, !tbaa !285
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !287
  %9 = getelementptr inbounds %struct.gimple_df, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !289
  %11 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %10, i32 noundef %2) #18
  %12 = tail call fastcc i32 @var_to_partition(ptr noundef %0, ptr noundef %11) #18
  %13 = load ptr, ptr @cfun, align 8, !tbaa !285
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !287
  %16 = getelementptr inbounds %struct.gimple_df, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !289
  %18 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %17, i32 noundef %3) #18
  %19 = tail call fastcc i32 @var_to_partition(ptr noundef %0, ptr noundef %18) #18
  %20 = icmp eq ptr %4, null
  br i1 %20, label %21, label %23, !prof !413

21:                                               ; preds = %5
  %22 = icmp eq i32 %12, %19
  br i1 %22, label %55, label %31, !prof !688

23:                                               ; preds = %5
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.23, i32 noundef %2) #18
  %25 = tail call fastcc ptr @partition_to_var(ptr noundef %0, i32 noundef %12) #18
  tail call void @print_generic_expr(ptr noundef nonnull %4, ptr noundef %25, i32 noundef 2) #17
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.24, i32 noundef %3) #18
  %27 = tail call fastcc ptr @partition_to_var(ptr noundef %0, i32 noundef %19) #18
  tail call void @print_generic_expr(ptr noundef nonnull %4, ptr noundef %27, i32 noundef 2) #17
  %28 = icmp eq i32 %12, %19
  br i1 %28, label %29, label %34, !prof !688

29:                                               ; preds = %23
  %30 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 21, i64 1, ptr nonnull %4)
  br label %55

31:                                               ; preds = %21
  %32 = tail call fastcc zeroext i8 @ssa_conflicts_test_p(ptr noundef %1, i32 noundef %12, i32 noundef %19) #18
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %55, !prof !689

34:                                               ; preds = %23
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.26, i32 noundef %12, i32 noundef %19) #18
  %36 = tail call fastcc zeroext i8 @ssa_conflicts_test_p(ptr noundef %1, i32 noundef %12, i32 noundef %19) #18
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %53, !prof !689

38:                                               ; preds = %34, %31
  %39 = tail call fastcc ptr @partition_to_var(ptr noundef %0, i32 noundef %12) #18
  %40 = tail call fastcc ptr @partition_to_var(ptr noundef %0, i32 noundef %19) #18
  %41 = tail call i32 @var_union(ptr noundef %0, ptr noundef %39, ptr noundef %40) #17
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %46, !prof !690

43:                                               ; preds = %38
  br i1 %20, label %55, label %44

44:                                               ; preds = %43
  %45 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 37, i64 1, ptr nonnull %4)
  br label %55

46:                                               ; preds = %38
  %47 = icmp eq i32 %41, %12
  br i1 %47, label %48, label %49, !prof !691

48:                                               ; preds = %46
  tail call fastcc void @ssa_conflicts_merge(ptr noundef %1, i32 noundef %12, i32 noundef %19) #18
  br label %50

49:                                               ; preds = %46
  tail call fastcc void @ssa_conflicts_merge(ptr noundef %1, i32 noundef %19, i32 noundef %12) #18
  br label %50

50:                                               ; preds = %49, %48
  br i1 %20, label %55, label %51, !prof !689

51:                                               ; preds = %50
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.28, i32 noundef %41) #18
  br label %55

53:                                               ; preds = %34
  %54 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 23, i64 1, ptr nonnull %4)
  br label %55

55:                                               ; preds = %31, %21, %53, %50, %51, %43, %44, %29
  %56 = phi i8 [ 1, %29 ], [ 0, %44 ], [ 0, %43 ], [ 1, %51 ], [ 1, %50 ], [ 0, %53 ], [ 1, %21 ], [ 0, %31 ]
  ret i8 %56
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fail_abnormal_edge_coalesce(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !351 !PGOFuncName !692 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !285
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.30, i32 noundef %0, i32 noundef %1) #20
  %5 = load ptr, ptr @stderr, align 8, !tbaa !285
  %6 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 36, i64 1, ptr %5) #21
  %7 = load ptr, ptr @stderr, align 8, !tbaa !285
  %8 = load ptr, ptr @cfun, align 8, !tbaa !285
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !287
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !289
  %13 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %12, i32 noundef %0) #18
  tail call void @print_generic_expr(ptr noundef %7, ptr noundef %13, i32 noundef 2) #17
  %14 = load ptr, ptr @stderr, align 8, !tbaa !285
  %15 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 6, i64 1, ptr %14) #21
  %16 = load ptr, ptr @stderr, align 8, !tbaa !285
  %17 = load ptr, ptr @cfun, align 8, !tbaa !285
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !287
  %20 = getelementptr inbounds %struct.gimple_df, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !289
  %22 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %21, i32 noundef %1) #18
  tail call void @print_generic_stmt(ptr noundef %16, ptr noundef %22, i32 noundef 2) #17
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.9) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc i32 @pop_best_coalesce(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !prof !693 !PGOFuncName !694 {
  %4 = getelementptr inbounds %struct.coalesce_list_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !301
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9, !prof !695

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @pop_cost_one_pair(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #18, !range !696
  br label %25

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.coalesce_list_d, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !302
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !697

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @pop_cost_one_pair(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #18, !range !696
  br label %25

15:                                               ; preds = %9
  %16 = add nsw i32 %11, -1
  store i32 %16, ptr %10, align 8, !tbaa !302
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %5, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !285
  %20 = load i32, ptr %19, align 4, !tbaa !399
  store i32 %20, ptr %1, align 4, !tbaa !280
  %21 = getelementptr inbounds %struct.coalesce_pair, ptr %19, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !400
  store i32 %22, ptr %2, align 4, !tbaa !280
  %23 = getelementptr inbounds %struct.coalesce_pair, ptr %19, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !368
  tail call void @free(ptr noundef %19) #18
  br label %25

25:                                               ; preds = %15, %13, %7
  %26 = phi i32 [ %8, %7 ], [ %14, %13 ], [ %24, %15 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @partition_to_var(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !698 !PGOFuncName !699 {
  %3 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !700
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !701

6:                                                ; preds = %2
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds i32, ptr %4, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !280
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ %1, %2 ]
  %12 = load ptr, ptr %0, align 8, !tbaa !656
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds %struct.partition_def, ptr %12, i64 0, i32 1, i64 %13
  %15 = load i32, ptr %14, align 8, !tbaa !657
  %16 = load ptr, ptr @cfun, align 8, !tbaa !285
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !287
  %19 = getelementptr inbounds %struct.gimple_df, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !289
  %21 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %20, i32 noundef %15) #18
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ssa_conflicts_test_p(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !702 !PGOFuncName !703 {
  %4 = getelementptr inbounds %struct.ssa_conflicts_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !391
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !285
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10, !prof !704

10:                                               ; preds = %3
  %11 = zext i32 %2 to i64
  %12 = getelementptr inbounds ptr, ptr %5, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !285
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15, !prof !705

15:                                               ; preds = %10
  %16 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %8, i32 noundef %2) #17
  %17 = trunc i32 %16 to i8
  br label %18

18:                                               ; preds = %3, %15, %10
  %19 = phi i8 [ %17, %15 ], [ 0, %10 ], [ 0, %3 ]
  ret i8 %19
}

; Function Attrs: optsize
declare i32 @var_union(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ssa_conflicts_merge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !702 !PGOFuncName !706 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %6 = icmp eq i32 %1, %2
  br i1 %6, label %7, label %8, !prof !690

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 603, ptr noundef nonnull @.str.2) #17
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.ssa_conflicts_d, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !391
  %11 = zext i32 %2 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !285
  %14 = icmp eq ptr %13, null
  br i1 %14, label %49, label %15, !prof !707

15:                                               ; preds = %8
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %13, ptr noundef nonnull %4) #18
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #18, !range !316
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %32, label %18, !prof !708

18:                                               ; preds = %15, %27
  %19 = load ptr, ptr %9, align 8, !tbaa !391
  %20 = load i32, ptr %4, align 4, !tbaa !280
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !285
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25, !prof !709

25:                                               ; preds = %18
  %26 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %23, i32 noundef %1) #17
  br label %27

27:                                               ; preds = %18, %25
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  %28 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #18, !range !316
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %18, !prof !710, !llvm.loop !711

30:                                               ; preds = %27
  %31 = load ptr, ptr %9, align 8, !tbaa !391
  br label %32

32:                                               ; preds = %30, %15
  %33 = phi ptr [ %31, %30 ], [ %10, %15 ]
  %34 = zext i32 %1 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !285
  %37 = icmp eq ptr %36, null
  %38 = getelementptr inbounds ptr, ptr %33, i64 %11
  %39 = load ptr, ptr %38, align 8, !tbaa !285
  br i1 %37, label %45, label %40, !prof !712

40:                                               ; preds = %32
  %41 = tail call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %36, ptr noundef %39) #17
  %42 = load ptr, ptr %9, align 8, !tbaa !391
  %43 = getelementptr inbounds ptr, ptr %42, i64 %11
  %44 = load ptr, ptr %43, align 8, !tbaa !285
  tail call void @bitmap_obstack_free(ptr noundef %44) #17
  br label %46

45:                                               ; preds = %32
  store ptr %39, ptr %35, align 8, !tbaa !285
  br label %46

46:                                               ; preds = %45, %40
  %47 = load ptr, ptr %9, align 8, !tbaa !391
  %48 = getelementptr inbounds ptr, ptr %47, i64 %11
  store ptr null, ptr %48, align 8, !tbaa !285
  br label %49

49:                                               ; preds = %46, %8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc noundef i32 @pop_cost_one_pair(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 !prof !713 !PGOFuncName !714 {
  %4 = getelementptr inbounds %struct.coalesce_list_d, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !303
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7, !prof !715

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 8, !tbaa !460
  store i32 %8, ptr %1, align 4, !tbaa !280
  %9 = getelementptr inbounds %struct.cost_one_pair_d, ptr %5, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !462
  store i32 %10, ptr %2, align 4, !tbaa !280
  %11 = getelementptr inbounds %struct.cost_one_pair_d, ptr %5, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !463
  store ptr %12, ptr %4, align 8, !tbaa !303
  tail call void @free(ptr noundef nonnull %5) #18
  br label %13

13:                                               ; preds = %3, %7
  %14 = phi i32 [ 1, %7 ], [ -1, %3 ]
  ret i32 %14
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind }
attributes #20 = { cold optsize }
attributes #21 = { cold }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!278}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277}
!35 = !{ptr @coalesce_ssa_name, ptr @bitmap_obstack_alloc_stat, i64 38}
!36 = !{ptr @coalesce_ssa_name, ptr @create_coalesce_list, i64 38}
!37 = !{ptr @coalesce_ssa_name, ptr @create_outofssa_var_map, i64 38}
!38 = !{ptr @coalesce_ssa_name, ptr @htab_create, i64 1}
!39 = !{ptr @coalesce_ssa_name, ptr @VEC_tree_base_length, i64 16}
!40 = !{ptr @coalesce_ssa_name, ptr @VEC_tree_base_index, i64 15}
!41 = !{ptr @coalesce_ssa_name, ptr @has_zero_uses, i64 3}
!42 = !{ptr @coalesce_ssa_name, ptr @htab_find_slot, i64 2}
!43 = !{ptr @coalesce_ssa_name, ptr @add_coalesce, i64 1}
!44 = !{ptr @coalesce_ssa_name, ptr @bitmap_set_bit, i64 2}
!45 = !{ptr @coalesce_ssa_name, ptr @htab_delete, i64 1}
!46 = !{ptr @coalesce_ssa_name, ptr @partition_view_bitmap, i64 38}
!47 = !{ptr @coalesce_ssa_name, ptr @bitmap_obstack_free, i64 38}
!48 = !{ptr @coalesce_ssa_name, ptr @num_var_partitions, i64 38}
!49 = !{ptr @coalesce_ssa_name, ptr @delete_coalesce_list, i64 38}
!50 = !{ptr @coalesce_ssa_name, ptr @calculate_live_ranges, i64 37}
!51 = !{ptr @coalesce_ssa_name, ptr @build_ssa_conflict_graph, i64 37}
!52 = !{ptr @coalesce_ssa_name, ptr @delete_tree_live_info, i64 37}
!53 = !{ptr @coalesce_ssa_name, ptr @sort_coalesce_list, i64 37}
!54 = !{ptr @coalesce_ssa_name, ptr @coalesce_partitions, i64 37}
!55 = !{ptr @coalesce_ssa_name, ptr @ssa_conflicts_delete, i64 37}
!56 = !{ptr @create_coalesce_list, ptr @VEC_tree_base_length, i64 38}
!57 = !{ptr @create_coalesce_list, ptr @xmalloc, i64 38}
!58 = !{ptr @create_coalesce_list, ptr @htab_create, i64 38}
!59 = !{ptr @create_outofssa_var_map, ptr @VEC_tree_base_length, i64 415581}
!60 = !{ptr @create_outofssa_var_map, ptr @init_var_map, i64 38}
!61 = !{ptr @create_outofssa_var_map, ptr @gsi_start_phis, i64 150111}
!62 = !{ptr @create_outofssa_var_map, ptr @gsi_end_p, i64 631892}
!63 = !{ptr @create_outofssa_var_map, ptr @gsi_stmt, i64 331670}
!64 = !{ptr @create_outofssa_var_map, ptr @gimple_phi_result, i64 2229}
!65 = !{ptr @create_outofssa_var_map, ptr @gimple_phi_num_args, i64 71201}
!66 = !{ptr @create_outofssa_var_map, ptr @gimple_phi_arg_edge, i64 68972}
!67 = !{ptr @create_outofssa_var_map, ptr @gimple_phi_arg_imm_use_ptr, i64 68972}
!68 = !{ptr @create_outofssa_var_map, ptr @get_use_from_ptr, i64 68972}
!69 = !{ptr @create_outofssa_var_map, ptr @bitmap_set_bit, i64 8123}
!70 = !{ptr @create_outofssa_var_map, ptr @coalesce_cost_edge, i64 5865}
!71 = !{ptr @create_outofssa_var_map, ptr @has_single_use, i64 1295}
!72 = !{ptr @create_outofssa_var_map, ptr @add_cost_one_coalesce, i64 1216}
!73 = !{ptr @create_outofssa_var_map, ptr @add_coalesce, i64 4650}
!74 = !{ptr @create_outofssa_var_map, ptr @abnormal_corrupt, i64 1}
!75 = !{ptr @create_outofssa_var_map, ptr @gsi_next, i64 331670}
!76 = !{ptr @create_outofssa_var_map, ptr @gsi_start_bb, i64 150111}
!77 = !{ptr @create_outofssa_var_map, ptr @is_gimple_debug, i64 329441}
!78 = !{ptr @create_outofssa_var_map, ptr @op_iter_init_tree, i64 329440}
!79 = !{ptr @create_outofssa_var_map, ptr @op_iter_done, i64 777998}
!80 = !{ptr @create_outofssa_var_map, ptr @op_iter_next_tree, i64 448558}
!81 = !{ptr @create_outofssa_var_map, ptr @gimple_code, i64 329440}
!82 = !{ptr @create_outofssa_var_map, ptr @gimple_assign_lhs, i64 122730}
!83 = !{ptr @create_outofssa_var_map, ptr @gimple_assign_rhs1, i64 122730}
!84 = !{ptr @create_outofssa_var_map, ptr @gimple_assign_copy_p, i64 122730}
!85 = !{ptr @create_outofssa_var_map, ptr @gimple_asm_noutputs, i64 1}
!86 = !{ptr @create_outofssa_var_map, ptr @gimple_asm_ninputs, i64 1}
!87 = !{ptr @create_outofssa_var_map, ptr @gimple_asm_output_op, i64 19}
!88 = !{ptr @create_outofssa_var_map, ptr @gimple_asm_input_op, i64 19}
!89 = !{ptr @create_outofssa_var_map, ptr @strtoul, i64 10}
!90 = !{ptr @create_outofssa_var_map, ptr @optimize_bb_for_size_p, i64 1}
!91 = !{ptr @create_outofssa_var_map, ptr @coalesce_cost, i64 1}
!92 = !{ptr @create_outofssa_var_map, ptr @VEC_tree_base_index, i64 415505}
!93 = !{ptr @create_outofssa_var_map, ptr @is_gimple_reg, i64 257265}
!94 = !{ptr @create_outofssa_var_map, ptr @coalesce_cost_bb, i64 1}
!95 = !{ptr @create_outofssa_var_map, ptr @gimple_default_def, i64 190021}
!96 = !{ptr @create_outofssa_var_map, ptr @has_zero_uses, i64 38}
!97 = !{ptr @has_zero_uses, ptr @has_zero_uses_1, i64 1}
!98 = !{ptr @add_coalesce, ptr @fancy_abort, i64 1}
!99 = !{ptr @add_coalesce, ptr @find_coalesce_pair, i64 4770}
!100 = !{ptr @delete_coalesce_list, ptr @fancy_abort, i64 2}
!101 = !{ptr @delete_coalesce_list, ptr @htab_delete, i64 38}
!102 = !{ptr @delete_coalesce_list, ptr @free, i64 75}
!103 = !{ptr @build_ssa_conflict_graph, ptr @live_var_map, i64 38}
!104 = !{ptr @build_ssa_conflict_graph, ptr @num_var_partitions, i64 38}
!105 = !{ptr @build_ssa_conflict_graph, ptr @ssa_conflicts_new, i64 38}
!106 = !{ptr @build_ssa_conflict_graph, ptr @new_live_track, i64 38}
!107 = !{ptr @build_ssa_conflict_graph, ptr @live_on_exit, i64 150111}
!108 = !{ptr @build_ssa_conflict_graph, ptr @live_track_init, i64 150111}
!109 = !{ptr @build_ssa_conflict_graph, ptr @gsi_last_bb, i64 150111}
!110 = !{ptr @build_ssa_conflict_graph, ptr @gsi_end_p, i64 631892}
!111 = !{ptr @build_ssa_conflict_graph, ptr @gsi_stmt, i64 331670}
!112 = !{ptr @build_ssa_conflict_graph, ptr @is_gimple_assign, i64 329441}
!113 = !{ptr @build_ssa_conflict_graph, ptr @gimple_assign_lhs, i64 122731}
!114 = !{ptr @build_ssa_conflict_graph, ptr @gimple_assign_rhs1, i64 122731}
!115 = !{ptr @build_ssa_conflict_graph, ptr @gimple_assign_copy_p, i64 122731}
!116 = !{ptr @build_ssa_conflict_graph, ptr @is_gimple_debug, i64 206710}
!117 = !{ptr @build_ssa_conflict_graph, ptr @op_iter_init_tree, i64 658880}
!118 = !{ptr @build_ssa_conflict_graph, ptr @op_iter_done, i64 1107439}
!119 = !{ptr @build_ssa_conflict_graph, ptr @live_track_process_def, i64 189882}
!120 = !{ptr @build_ssa_conflict_graph, ptr @op_iter_next_tree, i64 448559}
!121 = !{ptr @build_ssa_conflict_graph, ptr @live_track_process_use, i64 260893}
!122 = !{ptr @build_ssa_conflict_graph, ptr @gsi_prev, i64 329441}
!123 = !{ptr @build_ssa_conflict_graph, ptr @gsi_start_phis, i64 150111}
!124 = !{ptr @build_ssa_conflict_graph, ptr @gimple_phi_result_ptr, i64 2229}
!125 = !{ptr @build_ssa_conflict_graph, ptr @get_def_from_ptr, i64 2229}
!126 = !{ptr @build_ssa_conflict_graph, ptr @live_track_live_p, i64 2229}
!127 = !{ptr @build_ssa_conflict_graph, ptr @gsi_next, i64 2229}
!128 = !{ptr @build_ssa_conflict_graph, ptr @live_track_clear_base_vars, i64 150111}
!129 = !{ptr @build_ssa_conflict_graph, ptr @delete_live_track, i64 38}
!130 = !{ptr @sort_coalesce_list, ptr @fancy_abort, i64 2}
!131 = !{ptr @sort_coalesce_list, ptr @num_coalesce_pairs, i64 38}
!132 = !{ptr @sort_coalesce_list, ptr @xmalloc, i64 37}
!133 = !{ptr @sort_coalesce_list, ptr @first_coalesce_pair, i64 37}
!134 = !{ptr @sort_coalesce_list, ptr @end_coalesce_pair_p, i64 3863}
!135 = !{ptr @sort_coalesce_list, ptr @next_coalesce_pair, i64 3826}
!136 = !{ptr @sort_coalesce_list, ptr @spec_qsort, i64 27}
!137 = !{ptr @coalesce_partitions, ptr @pop_best_coalesce, i64 5179}
!138 = !{ptr @coalesce_partitions, ptr @ei_start_1, i64 150111}
!139 = !{ptr @coalesce_partitions, ptr @ei_cond, i64 439565}
!140 = !{ptr @coalesce_partitions, ptr @gsi_start_phis, i64 1}
!141 = !{ptr @coalesce_partitions, ptr @gsi_end_p, i64 13}
!142 = !{ptr @coalesce_partitions, ptr @gsi_stmt, i64 12}
!143 = !{ptr @coalesce_partitions, ptr @gimple_phi_result_ptr, i64 12}
!144 = !{ptr @coalesce_partitions, ptr @get_def_from_ptr, i64 12}
!145 = !{ptr @coalesce_partitions, ptr @gimple_phi_arg_imm_use_ptr, i64 12}
!146 = !{ptr @coalesce_partitions, ptr @get_use_from_ptr, i64 12}
!147 = !{ptr @coalesce_partitions, ptr @abnormal_corrupt, i64 7}
!148 = !{ptr @coalesce_partitions, ptr @fwrite, i64 8}
!149 = !{ptr @coalesce_partitions, ptr @attempt_coalesce, i64 5153}
!150 = !{ptr @coalesce_partitions, ptr @fail_abnormal_edge_coalesce, i64 4}
!151 = !{ptr @coalesce_partitions, ptr @gsi_next, i64 12}
!152 = !{ptr @coalesce_partitions, ptr @ei_next, i64 289454}
!153 = !{ptr @coalesce_partitions, ptr @VEC_tree_base_index, i64 10282}
!154 = !{ptr @coalesce_partitions, ptr @fancy_abort, i64 1}
!155 = !{ptr @ssa_conflicts_delete, ptr @bitmap_obstack_free, i64 5}
!156 = !{ptr @ssa_conflicts_delete, ptr @free, i64 76}
!157 = !{ptr @gimple_phi_arg_edge, ptr @gimple_bb, i64 70786}
!158 = !{ptr @gimple_phi_arg_edge, ptr @VEC_edge_base_index, i64 70786}
!159 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 70786}
!160 = !{ptr @coalesce_cost_edge, ptr @VEC_edge_base_length, i64 9934}
!161 = !{ptr @coalesce_cost_edge, ptr @ei_start_1, i64 1}
!162 = !{ptr @coalesce_cost_edge, ptr @ei_cond, i64 13}
!163 = !{ptr @coalesce_cost_edge, ptr @ei_next, i64 12}
!164 = !{ptr @coalesce_cost_edge, ptr @optimize_edge_for_size_p, i64 6019}
!165 = !{ptr @coalesce_cost_edge, ptr @coalesce_cost, i64 6019}
!166 = !{ptr @has_single_use, ptr @is_gimple_debug, i64 1247}
!167 = !{ptr @has_single_use, ptr @single_imm_use_1, i64 1}
!168 = !{ptr @add_cost_one_coalesce, ptr @xmalloc, i64 1249}
!169 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 154060}
!170 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 154060}
!171 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 551507}
!172 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 1014327}
!173 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 1014327}
!174 = !{ptr @op_iter_next_tree, ptr @get_use_from_ptr, i64 535516}
!175 = !{ptr @op_iter_next_tree, ptr @get_def_from_ptr, i64 385208}
!176 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 251920}
!177 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 251920}
!178 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!179 = !{ptr @ei_cond, ptr @ei_end_p, i64 451130}
!180 = !{ptr @ei_cond, ptr @ei_edge, i64 297070}
!181 = !{ptr @ei_next, ptr @ei_container, i64 594139}
!182 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 297070}
!183 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!184 = !{ptr @ei_end_p, ptr @ei_container, i64 902259}
!185 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 451130}
!186 = !{ptr @ei_edge, ptr @ei_container, i64 594139}
!187 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 297070}
!188 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!189 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 676218}
!190 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 389710}
!191 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 676218}
!192 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 670330}
!193 = !{ptr @gimple_def_ops, ptr @gimple_has_ops, i64 676218}
!194 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 389710}
!195 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 676218}
!196 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 670330}
!197 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 1856276}
!198 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 1060040}
!199 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 503840}
!200 = !{ptr @gimple_op, ptr @gimple_ops, i64 503839}
!201 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 503840}
!202 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!203 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 503840}
!204 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 503840}
!205 = !{ptr @find_coalesce_pair, ptr @coalesce_pair_map_hash, i64 4771}
!206 = !{ptr @find_coalesce_pair, ptr @htab_find_slot_with_hash, i64 4771}
!207 = !{ptr @find_coalesce_pair, ptr @xmalloc, i64 4024}
!208 = !{ptr @find_coalesce_pair, ptr @fancy_abort, i64 1}
!209 = !{ptr @ssa_conflicts_new, ptr @xmalloc, i64 38}
!210 = !{ptr @ssa_conflicts_new, ptr @xcalloc, i64 38}
!211 = !{ptr @new_live_track, ptr @fancy_abort, i64 1}
!212 = !{ptr @new_live_track, ptr @xmalloc, i64 76}
!213 = !{ptr @new_live_track, ptr @num_basevars, i64 38}
!214 = !{ptr @new_live_track, ptr @bitmap_obstack_alloc_stat, i64 299}
!215 = !{ptr @live_track_init, ptr @bmp_iter_set_init, i64 154060}
!216 = !{ptr @live_track_init, ptr @bmp_iter_set, i64 300776}
!217 = !{ptr @live_track_init, ptr @live_track_add_partition, i64 146716}
!218 = !{ptr @live_track_init, ptr @bmp_iter_next, i64 146716}
!219 = !{ptr @live_on_exit, ptr @fancy_abort, i64 3}
!220 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 154060}
!221 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 154060}
!222 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 338109}
!223 = !{ptr @live_track_process_def, ptr @var_to_partition, i64 194878}
!224 = !{ptr @live_track_process_def, ptr @live_track_remove_partition, i64 6705}
!225 = !{ptr @live_track_process_def, ptr @basevar_index, i64 6705}
!226 = !{ptr @live_track_process_def, ptr @bitmap_bit_p, i64 6705}
!227 = !{ptr @live_track_process_def, ptr @bmp_iter_set_init, i64 9}
!228 = !{ptr @live_track_process_def, ptr @bmp_iter_set, i64 18}
!229 = !{ptr @live_track_process_def, ptr @ssa_conflicts_add, i64 9}
!230 = !{ptr @live_track_process_def, ptr @bmp_iter_next, i64 9}
!231 = !{ptr @live_track_process_use, ptr @var_to_partition, i64 267758}
!232 = !{ptr @live_track_process_use, ptr @live_track_add_partition, i64 63254}
!233 = !{ptr @live_track_live_p, ptr @var_to_partition, i64 2287}
!234 = !{ptr @live_track_live_p, ptr @basevar_index, i64 2273}
!235 = !{ptr @live_track_live_p, ptr @bitmap_bit_p, i64 4545}
!236 = !{ptr @live_track_clear_base_vars, ptr @bitmap_clear, i64 154060}
!237 = !{ptr @delete_live_track, ptr @num_basevars, i64 38}
!238 = !{ptr @delete_live_track, ptr @bitmap_obstack_free, i64 299}
!239 = !{ptr @delete_live_track, ptr @free, i64 76}
!240 = !{ptr @live_track_add_partition, ptr @basevar_index, i64 209969}
!241 = !{ptr @live_track_add_partition, ptr @bitmap_bit_p, i64 209969}
!242 = !{ptr @live_track_add_partition, ptr @bitmap_set_bit, i64 361304}
!243 = !{ptr @live_track_add_partition, ptr @bitmap_clear, i64 151335}
!244 = !{ptr @basevar_index, ptr @num_var_partitions, i64 225650}
!245 = !{ptr @basevar_index, ptr @fancy_abort, i64 2}
!246 = !{ptr @var_to_partition, ptr @fancy_abort, i64 1}
!247 = !{ptr @live_track_remove_partition, ptr @basevar_index, i64 6704}
!248 = !{ptr @live_track_remove_partition, ptr @bitmap_clear_bit, i64 13399}
!249 = !{ptr @ssa_conflicts_add, ptr @ssa_conflicts_add_one, i64 16}
!250 = !{ptr @ssa_conflicts_add_one, ptr @bitmap_obstack_alloc_stat, i64 15}
!251 = !{ptr @ssa_conflicts_add_one, ptr @bitmap_set_bit, i64 16}
!252 = !{ptr @num_coalesce_pairs, ptr @htab_elements, i64 38}
!253 = !{ptr @first_coalesce_pair, ptr @first_htab_element, i64 38}
!254 = !{ptr @end_coalesce_pair_p, ptr @end_htab_p, i64 4064}
!255 = !{ptr @next_coalesce_pair, ptr @next_htab_element, i64 4026}
!256 = !{ptr @first_htab_element, ptr @htab_size, i64 38}
!257 = !{ptr @attempt_coalesce, ptr @VEC_tree_base_index, i64 10550}
!258 = !{ptr @attempt_coalesce, ptr @var_to_partition, i64 10550}
!259 = !{ptr @attempt_coalesce, ptr @fprintf, i64 4}
!260 = !{ptr @attempt_coalesce, ptr @partition_to_var, i64 9708}
!261 = !{ptr @attempt_coalesce, ptr @print_generic_expr, i64 2}
!262 = !{ptr @attempt_coalesce, ptr @ssa_conflicts_test_p, i64 4854}
!263 = !{ptr @attempt_coalesce, ptr @var_union, i64 4853}
!264 = !{ptr @attempt_coalesce, ptr @fwrite, i64 1}
!265 = !{ptr @attempt_coalesce, ptr @ssa_conflicts_merge, i64 4852}
!266 = !{ptr @pop_best_coalesce, ptr @pop_cost_one_pair, i64 1288}
!267 = !{ptr @pop_best_coalesce, ptr @free, i64 4025}
!268 = !{ptr @partition_to_var, ptr @VEC_tree_base_index, i64 9710}
!269 = !{ptr @ssa_conflicts_test_p, ptr @bitmap_bit_p, i64 13}
!270 = !{ptr @ssa_conflicts_merge, ptr @fancy_abort, i64 1}
!271 = !{ptr @ssa_conflicts_merge, ptr @bmp_iter_set_init, i64 15}
!272 = !{ptr @ssa_conflicts_merge, ptr @bmp_iter_set, i64 36}
!273 = !{ptr @ssa_conflicts_merge, ptr @bitmap_set_bit, i64 14}
!274 = !{ptr @ssa_conflicts_merge, ptr @bmp_iter_next, i64 21}
!275 = !{ptr @ssa_conflicts_merge, ptr @bitmap_ior_into, i64 12}
!276 = !{ptr @ssa_conflicts_merge, ptr @bitmap_obstack_free, i64 12}
!277 = !{ptr @pop_cost_one_pair, ptr @free, i64 1248}
!278 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!279 = !{!"function_entry_count", i64 38}
!280 = !{!281, !281, i64 0}
!281 = !{!"int", !282, i64 0}
!282 = !{!"omnipotent char", !283, i64 0}
!283 = !{!"Simple C/C++ TBAA"}
!284 = !{!"branch_weights", i32 1, i32 39}
!285 = !{!286, !286, i64 0}
!286 = !{!"any pointer", !282, i64 0}
!287 = !{!288, !286, i64 24}
!288 = !{!"function", !286, i64 0, !286, i64 8, !286, i64 16, !286, i64 24, !286, i64 32, !286, i64 40, !286, i64 48, !286, i64 56, !286, i64 64, !286, i64 72, !286, i64 80, !286, i64 88, !286, i64 96, !281, i64 104, !281, i64 108, !281, i64 112, !281, i64 116, !281, i64 120, !281, i64 124, !286, i64 128, !281, i64 136, !281, i64 137, !281, i64 138, !281, i64 138, !281, i64 138, !281, i64 138, !281, i64 138, !281, i64 138, !281, i64 138, !281, i64 139, !281, i64 139, !281, i64 139, !281, i64 139, !281, i64 139, !281, i64 139, !281, i64 139}
!289 = !{!290, !286, i64 16}
!290 = !{!"gimple_df", !286, i64 0, !286, i64 8, !286, i64 16, !286, i64 24, !291, i64 32, !291, i64 48, !286, i64 64, !286, i64 72, !286, i64 80, !286, i64 88, !281, i64 96, !292, i64 104}
!291 = !{!"pt_solution", !281, i64 0, !281, i64 0, !281, i64 0, !281, i64 0, !281, i64 0, !281, i64 0, !286, i64 8}
!292 = !{!"ssa_operands", !286, i64 0, !281, i64 8, !281, i64 12, !282, i64 16, !286, i64 24, !286, i64 32}
!293 = !{!282, !282, i64 0}
!294 = distinct !{!294, !295}
!295 = !{!"llvm.loop.mustprogress"}
!296 = !{!"branch_weights", i32 39, i32 1}
!297 = !{!"branch_weights", i32 0, i32 -2147483648}
!298 = !{!"tree-ssa-coalesce.c:create_coalesce_list"}
!299 = !{!300, !286, i64 0}
!300 = !{!"coalesce_list_d", !286, i64 0, !286, i64 8, !281, i64 16, !286, i64 24}
!301 = !{!300, !286, i64 8}
!302 = !{!300, !281, i64 16}
!303 = !{!300, !286, i64 24}
!304 = !{!"tree-ssa-coalesce.c:create_outofssa_var_map"}
!305 = !{!288, !286, i64 8}
!306 = !{!307, !286, i64 0}
!307 = !{!"control_flow_graph", !286, i64 0, !286, i64 8, !286, i64 16, !281, i64 24, !281, i64 28, !281, i64 32, !286, i64 40, !281, i64 48, !282, i64 52, !282, i64 60, !281, i64 68, !281, i64 72}
!308 = !{!309, !286, i64 56}
!309 = !{!"basic_block_def", !286, i64 0, !286, i64 8, !286, i64 16, !286, i64 24, !282, i64 32, !286, i64 48, !286, i64 56, !282, i64 64, !310, i64 72, !281, i64 80, !281, i64 84, !281, i64 88, !281, i64 92, !281, i64 96}
!310 = !{!"long", !282, i64 0}
!311 = !{!307, !286, i64 8}
!312 = !{!"branch_weights", i32 1, i32 155}
!313 = !{!"branch_weights", i32 155, i32 616089}
!314 = distinct !{!314, !295}
!315 = !{!"branch_weights", i32 155, i32 1}
!316 = !{i8 0, i8 2}
!317 = !{!"branch_weights", i32 2288, i32 151773}
!318 = !{!"branch_weights", i32 1, i32 2287}
!319 = !{!"branch_weights", i32 6021, i32 64767}
!320 = !{!"branch_weights", i32 6021, i32 1}
!321 = !{!322, !281, i64 48}
!322 = !{!"edge_def", !286, i64 0, !286, i64 8, !282, i64 16, !286, i64 24, !286, i64 32, !281, i64 40, !281, i64 44, !281, i64 48, !281, i64 52, !310, i64 56}
!323 = !{!"branch_weights", i32 1330, i32 4692}
!324 = !{!"branch_weights", i32 81, i32 1250}
!325 = !{!"branch_weights", i32 64767, i32 1}
!326 = !{!"branch_weights", i32 68500, i32 2287}
!327 = distinct !{!327, !295}
!328 = !{!"branch_weights", i32 12201203, i32 2135282445}
!329 = !{!"branch_weights", i32 0, i32 2288}
!330 = distinct !{!330, !295}
!331 = !{i64 0, i64 8, !285, i64 8, i64 8, !285, i64 16, i64 8, !285}
!332 = !{!"branch_weights", i32 154060, i32 1}
!333 = !{!"branch_weights", i32 338110, i32 1}
!334 = !{!"branch_weights", i32 338109, i32 1}
!335 = !{!"branch_weights", i32 122254, i32 338109}
!336 = distinct !{!336, !295}
!337 = !{i32 0, i32 256}
!338 = !{!"branch_weights", i32 212150, i32 125961, i32 1}
!339 = !{!"branch_weights", i32 125921, i32 41}
!340 = !{!"branch_weights", i32 1, i32 41}
!341 = distinct !{!341, !295}
!342 = distinct !{!342, !295}
!343 = !{!"branch_weights", i32 184050, i32 154060}
!344 = distinct !{!344, !295}
!345 = !{!"branch_weights", i32 162405, i32 264036}
!346 = !{!"branch_weights", i32 69014, i32 195023}
!347 = !{!"branch_weights", i32 1, i32 195023}
!348 = !{!"branch_weights", i32 39, i32 194985}
!349 = !{!"branch_weights", i32 1705605, i32 155}
!350 = distinct !{!350, !295}
!351 = !{!"function_entry_count", i64 0}
!352 = !{!"tree-ssa-coalesce.c:hash_ssa_name_by_var"}
!353 = !{!"tree-ssa-coalesce.c:eq_ssa_name_by_var"}
!354 = !{!"function_entry_count", i64 426553}
!355 = !{!"tree-ssa-coalesce.c:VEC_tree_base_length"}
!356 = !{!"branch_weights", i32 1, i32 426554}
!357 = !{!358, !281, i64 0}
!358 = !{!"VEC_tree_base", !281, i64 0, !281, i64 4, !282, i64 8}
!359 = !{!"function_entry_count", i64 457249}
!360 = !{!"tree-ssa-coalesce.c:VEC_tree_base_index"}
!361 = !{!"tree-ssa-coalesce.c:has_zero_uses"}
!362 = !{!363, !286, i64 8}
!363 = !{!"ssa_use_operand_d", !286, i64 0, !286, i64 8, !282, i64 16, !286, i64 24}
!364 = !{!"function_entry_count", i64 4771}
!365 = !{!"tree-ssa-coalesce.c:add_coalesce"}
!366 = !{!"branch_weights", i32 4772, i32 1}
!367 = !{!"branch_weights", i32 1, i32 4772}
!368 = !{!369, !281, i64 8}
!369 = !{!"coalesce_pair", !281, i64 0, !281, i64 4, !281, i64 8}
!370 = !{!"function_entry_count", i64 225727}
!371 = !{!"tree-ssa-coalesce.c:num_var_partitions"}
!372 = !{!373, !281, i64 24}
!373 = !{!"_var_map", !286, i64 0, !286, i64 8, !286, i64 16, !281, i64 24, !281, i64 28, !281, i64 32, !286, i64 40, !286, i64 48}
!374 = !{!"tree-ssa-coalesce.c:delete_coalesce_list"}
!375 = !{!"tree-ssa-coalesce.c:build_ssa_conflict_graph"}
!376 = !{!"branch_weights", i32 212150, i32 125961}
!377 = !{!"branch_weights", i32 212150, i32 1}
!378 = !{!"branch_weights", i32 192605, i32 145505}
!379 = !{!"branch_weights", i32 0, i32 192605}
!380 = distinct !{!380, !295}
!381 = !{!"branch_weights", i32 267759, i32 70351}
!382 = !{!"branch_weights", i32 0, i32 267759}
!383 = distinct !{!383, !295}
!384 = distinct !{!384, !295}
!385 = !{!"branch_weights", i32 14, i32 2275}
!386 = distinct !{!386, !295}
!387 = distinct !{!387, !295}
!388 = !{!"tree-ssa-coalesce.c:ssa_conflicts_dump"}
!389 = !{!390, !281, i64 0}
!390 = !{!"ssa_conflicts_d", !281, i64 0, !286, i64 8}
!391 = !{!390, !286, i64 8}
!392 = distinct !{!392, !295}
!393 = !{!"tree-ssa-coalesce.c:sort_coalesce_list"}
!394 = !{!"branch_weights", i32 15953, i32 155}
!395 = distinct !{!395, !295}
!396 = !{!"branch_weights", i32 1170, i32 40, i32 390}
!397 = !{!"branch_weights", i32 8, i32 3}
!398 = !{!"tree-ssa-coalesce.c:dump_coalesce_list"}
!399 = !{!369, !281, i64 0}
!400 = !{!369, !281, i64 4}
!401 = distinct !{!401, !295}
!402 = distinct !{!402, !295}
!403 = !{!"tree-ssa-coalesce.c:coalesce_partitions"}
!404 = distinct !{!404, !295}
!405 = !{i64 0, i64 4, !280, i64 8, i64 8, !285}
!406 = !{i64 0, i64 8, !285}
!407 = !{!"branch_weights", i32 1, i32 154060}
!408 = !{!"branch_weights", i32 297071, i32 1}
!409 = !{!322, !281, i64 44}
!410 = distinct !{!410, !295}
!411 = !{!"branch_weights", i32 154060, i32 143011}
!412 = distinct !{!412, !295}
!413 = !{!"branch_weights", i32 5276, i32 1}
!414 = !{!"branch_weights", i32 155, i32 20949}
!415 = distinct !{!415, !295}
!416 = !{!"tree-ssa-coalesce.c:ssa_conflicts_delete"}
!417 = !{!"branch_weights", i32 6739, i32 5}
!418 = !{!"branch_weights", i32 26817, i32 155}
!419 = distinct !{!419, !295}
!420 = !{!"tree-ssa-coalesce.c:coalesce_pair_map_hash"}
!421 = !{!"function_entry_count", i64 745}
!422 = !{!"tree-ssa-coalesce.c:coalesce_pair_map_eq"}
!423 = !{!"branch_weights", i32 746, i32 1}
!424 = !{!"function_entry_count", i64 1297032}
!425 = !{!"tree-ssa-coalesce.c:gsi_end_p"}
!426 = !{!427, !286, i64 0}
!427 = !{!"", !286, i64 0, !286, i64 8, !286, i64 16}
!428 = !{!"function_entry_count", i64 680792}
!429 = !{!"tree-ssa-coalesce.c:gsi_stmt"}
!430 = !{!431, !286, i64 0}
!431 = !{!"gimple_seq_node_d", !286, i64 0, !286, i64 8, !286, i64 16}
!432 = !{!"function_entry_count", i64 2287}
!433 = !{!"tree-ssa-coalesce.c:gimple_phi_result"}
!434 = !{!"function_entry_count", i64 73073}
!435 = !{!"tree-ssa-coalesce.c:gimple_phi_num_args"}
!436 = !{!"function_entry_count", i64 70786}
!437 = !{!"tree-ssa-coalesce.c:gimple_phi_arg_edge"}
!438 = !{!309, !286, i64 0}
!439 = !{!"function_entry_count", i64 606302}
!440 = !{!"tree-ssa-coalesce.c:get_use_from_ptr"}
!441 = !{!363, !286, i64 24}
!442 = !{!"tree-ssa-coalesce.c:gimple_phi_arg_imm_use_ptr"}
!443 = !{!"function_entry_count", i64 6020}
!444 = !{!"tree-ssa-coalesce.c:coalesce_cost_edge"}
!445 = !{!322, !286, i64 0}
!446 = !{!309, !286, i64 8}
!447 = !{!"branch_weights", i32 3915, i32 2107}
!448 = !{!322, !286, i64 8}
!449 = !{!"branch_weights", i32 3915, i32 1}
!450 = distinct !{!450, !295}
!451 = !{!309, !281, i64 88}
!452 = !{!322, !281, i64 52}
!453 = !{!"function_entry_count", i64 1329}
!454 = !{!"tree-ssa-coalesce.c:has_single_use"}
!455 = !{!"branch_weights", i32 1, i32 1330}
!456 = !{!"branch_weights", i32 1250, i32 81}
!457 = !{!"branch_weights", i32 81, i32 1}
!458 = !{!"function_entry_count", i64 1249}
!459 = !{!"tree-ssa-coalesce.c:add_cost_one_coalesce"}
!460 = !{!461, !281, i64 0}
!461 = !{!"cost_one_pair_d", !281, i64 0, !281, i64 4, !286, i64 8}
!462 = !{!461, !281, i64 4}
!463 = !{!461, !286, i64 8}
!464 = !{!"tree-ssa-coalesce.c:abnormal_corrupt"}
!465 = !{!309, !281, i64 80}
!466 = !{!"function_entry_count", i64 342683}
!467 = !{!"tree-ssa-coalesce.c:gsi_next"}
!468 = !{!431, !286, i64 16}
!469 = !{!"function_entry_count", i64 154060}
!470 = !{!"tree-ssa-coalesce.c:gsi_start_bb"}
!471 = !{!427, !286, i64 8}
!472 = !{!427, !286, i64 16}
!473 = !{!"function_entry_count", i64 551507}
!474 = !{!"tree-ssa-coalesce.c:is_gimple_debug"}
!475 = !{!"function_entry_count", i64 1014327}
!476 = !{!"tree-ssa-coalesce.c:op_iter_init_tree"}
!477 = !{!478, !281, i64 4}
!478 = !{!"ssa_operand_iterator_d", !282, i64 0, !281, i64 4, !286, i64 8, !286, i64 16, !281, i64 24, !281, i64 28, !286, i64 32}
!479 = !{!"function_entry_count", i64 1935051}
!480 = !{!"tree-ssa-coalesce.c:op_iter_done"}
!481 = !{!478, !282, i64 0}
!482 = !{!"tree-ssa-coalesce.c:op_iter_next_tree"}
!483 = !{!478, !286, i64 16}
!484 = !{!"branch_weights", i32 1399536, i32 535517}
!485 = !{!486, !286, i64 0}
!486 = !{!"use_optype_d", !286, i64 0, !363, i64 8}
!487 = !{!478, !286, i64 8}
!488 = !{!"branch_weights", i32 1014328, i32 385209}
!489 = !{!490, !286, i64 8}
!490 = !{!"def_optype_d", !286, i64 0, !286, i64 8}
!491 = !{!490, !286, i64 0}
!492 = !{!"function_entry_count", i64 7283777}
!493 = !{!"tree-ssa-coalesce.c:gimple_code"}
!494 = !{!"function_entry_count", i64 251920}
!495 = !{!"tree-ssa-coalesce.c:gimple_assign_lhs"}
!496 = !{!"tree-ssa-coalesce.c:gimple_assign_rhs1"}
!497 = !{!"tree-ssa-coalesce.c:coalesce_cost_bb"}
!498 = !{!"tree-ssa-coalesce.c:gimple_asm_noutputs"}
!499 = !{!"tree-ssa-coalesce.c:gimple_asm_ninputs"}
!500 = !{!"tree-ssa-coalesce.c:gimple_asm_output_op"}
!501 = !{!"tree-ssa-coalesce.c:gimple_asm_input_op"}
!502 = !{!"tree-ssa-coalesce.c:coalesce_cost"}
!503 = !{!"branch_weights", i32 1019, i32 5003}
!504 = !{!"function_entry_count", i64 367856}
!505 = !{!"tree-ssa-coalesce.c:VEC_edge_base_index"}
!506 = !{!"function_entry_count", i64 141572}
!507 = !{!"tree-ssa-coalesce.c:gimple_bb"}
!508 = !{!"tree-ssa-coalesce.c:gimple_phi_arg"}
!509 = !{!"branch_weights", i32 1, i32 70787}
!510 = !{!"function_entry_count", i64 758134}
!511 = !{!"tree-ssa-coalesce.c:VEC_edge_base_length"}
!512 = !{!"branch_weights", i32 1, i32 758135}
!513 = !{!514, !281, i64 0}
!514 = !{!"VEC_edge_base", !281, i64 0, !281, i64 4, !282, i64 8}
!515 = !{!"tree-ssa-coalesce.c:ei_start_1"}
!516 = !{!"function_entry_count", i64 451130}
!517 = !{!"tree-ssa-coalesce.c:ei_cond"}
!518 = !{!"branch_weights", i32 297071, i32 154061}
!519 = !{!"function_entry_count", i64 297070}
!520 = !{!"tree-ssa-coalesce.c:ei_next"}
!521 = !{!"branch_weights", i32 1, i32 297071}
!522 = !{!523, !281, i64 0}
!523 = !{!"", !281, i64 0, !286, i64 8}
!524 = !{!"tree-ssa-coalesce.c:ei_end_p"}
!525 = !{!"branch_weights", i32 1, i32 451131}
!526 = !{!"tree-ssa-coalesce.c:ei_edge"}
!527 = !{!"function_entry_count", i64 2090540}
!528 = !{!"tree-ssa-coalesce.c:ei_container"}
!529 = !{!"branch_weights", i32 1, i32 2090541}
!530 = !{!"tree-ssa-coalesce.c:gimple_phi_arg_def"}
!531 = !{!"function_entry_count", i64 308120}
!532 = !{!"tree-ssa-coalesce.c:bb_seq"}
!533 = !{!309, !281, i64 96}
!534 = !{!"branch_weights", i32 308121, i32 1}
!535 = !{!"branch_weights", i32 1, i32 308121}
!536 = !{!537, !286, i64 0}
!537 = !{!"gimple_bb_info", !286, i64 0, !286, i64 8}
!538 = !{!"tree-ssa-coalesce.c:gimple_seq_first"}
!539 = !{!"branch_weights", i32 1, i32 154061}
!540 = !{!541, !286, i64 0}
!541 = !{!"gimple_seq_d", !286, i64 0, !286, i64 8, !286, i64 16}
!542 = !{!"tree-ssa-coalesce.c:op_iter_init"}
!543 = !{!"branch_weights", i32 338110, i32 676219}
!544 = !{!"branch_weights", i32 909869799, i32 1237613849}
!545 = !{!"branch_weights", i32 251841, i32 137871}
!546 = !{!"branch_weights", i32 18698652, i32 2128784996}
!547 = !{!"branch_weights", i32 376711, i32 293621}
!548 = !{!"function_entry_count", i64 676218}
!549 = !{!"tree-ssa-coalesce.c:gimple_def_ops"}
!550 = !{!"branch_weights", i32 1, i32 676219}
!551 = !{!"function_entry_count", i64 389710}
!552 = !{!"tree-ssa-coalesce.c:gimple_vdef"}
!553 = !{!"branch_weights", i32 1, i32 389711}
!554 = !{!"tree-ssa-coalesce.c:gimple_use_ops"}
!555 = !{!"function_entry_count", i64 670330}
!556 = !{!"tree-ssa-coalesce.c:gimple_vuse"}
!557 = !{!"branch_weights", i32 280421, i32 389911}
!558 = !{!"function_entry_count", i64 1856276}
!559 = !{!"tree-ssa-coalesce.c:gimple_has_ops"}
!560 = !{!"function_entry_count", i64 1060040}
!561 = !{!"tree-ssa-coalesce.c:gimple_has_mem_ops"}
!562 = !{!"function_entry_count", i64 387495}
!563 = !{!"tree-ssa-coalesce.c:get_def_from_ptr"}
!564 = !{!"function_entry_count", i64 503840}
!565 = !{!"tree-ssa-coalesce.c:gimple_op"}
!566 = !{!"branch_weights", i32 1, i32 503841}
!567 = !{!"tree-ssa-coalesce.c:gimple_ops"}
!568 = !{!310, !310, i64 0}
!569 = !{!"tree-ssa-coalesce.c:gimple_statement_structure"}
!570 = !{!"tree-ssa-coalesce.c:gss_for_code"}
!571 = !{!"tree-ssa-coalesce.c:find_coalesce_pair"}
!572 = !{!"branch_weights", i32 4027, i32 746}
!573 = !{!"branch_weights", i32 4027, i32 1}
!574 = !{!"tree-ssa-coalesce.c:live_var_map"}
!575 = !{!576, !286, i64 0}
!576 = !{!"tree_live_info_d", !286, i64 0, !286, i64 8, !286, i64 16, !281, i64 24, !286, i64 32, !286, i64 40, !286, i64 48}
!577 = !{!"tree-ssa-coalesce.c:ssa_conflicts_new"}
!578 = !{!"tree-ssa-coalesce.c:new_live_track"}
!579 = !{!373, !286, i64 40}
!580 = !{!581, !286, i64 16}
!581 = !{!"live_track_d", !286, i64 0, !286, i64 8, !286, i64 16}
!582 = !{!581, !286, i64 8}
!583 = !{!581, !286, i64 0}
!584 = !{!"branch_weights", i32 155, i32 917}
!585 = distinct !{!585, !295}
!586 = !{!"tree-ssa-coalesce.c:live_track_init"}
!587 = !{!"branch_weights", i32 7344, i32 146717}
!588 = !{!"branch_weights", i32 146717, i32 0}
!589 = distinct !{!589, !295}
!590 = !{!"tree-ssa-coalesce.c:live_on_exit"}
!591 = !{!576, !286, i64 48}
!592 = !{!"tree-ssa-coalesce.c:gsi_last_bb"}
!593 = !{!"function_entry_count", i64 338109}
!594 = !{!"tree-ssa-coalesce.c:is_gimple_assign"}
!595 = !{!"tree-ssa-coalesce.c:live_track_clear_var"}
!596 = !{!"function_entry_count", i64 194878}
!597 = !{!"tree-ssa-coalesce.c:live_track_process_def"}
!598 = !{!"branch_weights", i32 188175, i32 6705}
!599 = !{!"branch_weights", i32 6697, i32 9}
!600 = !{!"branch_weights", i32 1, i32 143}
!601 = !{!"branch_weights", i32 143, i32 1}
!602 = distinct !{!602, !295}
!603 = !{!"function_entry_count", i64 267758}
!604 = !{!"tree-ssa-coalesce.c:live_track_process_use"}
!605 = !{!"branch_weights", i32 204506, i32 63254}
!606 = !{!"tree-ssa-coalesce.c:gsi_prev"}
!607 = !{!431, !286, i64 8}
!608 = !{!"tree-ssa-coalesce.c:gimple_phi_result_ptr"}
!609 = !{!"tree-ssa-coalesce.c:live_track_live_p"}
!610 = !{!"branch_weights", i32 1, i32 2275}
!611 = !{!"tree-ssa-coalesce.c:live_track_clear_base_vars"}
!612 = !{!"tree-ssa-coalesce.c:delete_live_track"}
!613 = distinct !{!613, !295}
!614 = !{!"function_entry_count", i64 76}
!615 = !{!"tree-ssa-coalesce.c:num_basevars"}
!616 = !{!373, !281, i64 32}
!617 = !{!"function_entry_count", i64 154082}
!618 = !{!"tree-ssa-coalesce.c:bmp_iter_set_init"}
!619 = !{!620, !286, i64 0}
!620 = !{!"bitmap_head_def", !286, i64 0, !286, i64 8, !281, i64 16, !286, i64 24}
!621 = !{!622, !286, i64 0}
!622 = !{!"", !286, i64 0, !286, i64 8, !281, i64 16, !310, i64 24}
!623 = !{!622, !286, i64 8}
!624 = !{!"branch_weights", i32 13580, i32 140504}
!625 = !{!626, !281, i64 16}
!626 = !{!"bitmap_element_def", !286, i64 0, !286, i64 8, !281, i64 16, !282, i64 24}
!627 = !{!"branch_weights", i32 153091, i32 993}
!628 = !{!622, !281, i64 16}
!629 = !{!622, !310, i64 24}
!630 = !{!"function_entry_count", i64 300826}
!631 = !{!"tree-ssa-coalesce.c:bmp_iter_set"}
!632 = !{!"branch_weights", i32 159950, i32 140878}
!633 = !{!"branch_weights", i32 146744, i32 1}
!634 = !{!"branch_weights", i32 872325, i32 146744}
!635 = distinct !{!635, !295}
!636 = !{!"branch_weights", i32 1, i32 158613}
!637 = !{!"branch_weights", i32 157278, i32 5868}
!638 = !{!"branch_weights", i32 158613, i32 4532}
!639 = distinct !{!639, !295}
!640 = !{!626, !286, i64 0}
!641 = !{!"branch_weights", i32 154083, i32 4532}
!642 = !{!"function_entry_count", i64 209969}
!643 = !{!"tree-ssa-coalesce.c:live_track_add_partition"}
!644 = !{!"branch_weights", i32 151336, i32 58635}
!645 = !{!"function_entry_count", i64 146744}
!646 = !{!"tree-ssa-coalesce.c:bmp_iter_next"}
!647 = !{!"function_entry_count", i64 225651}
!648 = !{!"tree-ssa-coalesce.c:basevar_index"}
!649 = !{!"branch_weights", i32 225652, i32 1}
!650 = !{!"branch_weights", i32 1, i32 225652}
!651 = !{!"tree-ssa-coalesce.c:gimple_seq_last"}
!652 = !{!541, !286, i64 8}
!653 = !{!"function_entry_count", i64 475473}
!654 = !{!"tree-ssa-coalesce.c:var_to_partition"}
!655 = !{!"branch_weights", i32 475474, i32 1}
!656 = !{!373, !286, i64 0}
!657 = !{!658, !281, i64 0}
!658 = !{!"partition_elem", !281, i64 0, !286, i64 8, !281, i64 16}
!659 = !{!373, !286, i64 8}
!660 = !{!"branch_weights", i32 1, i32 475474}
!661 = !{!"function_entry_count", i64 6704}
!662 = !{!"tree-ssa-coalesce.c:live_track_remove_partition"}
!663 = !{!"function_entry_count", i64 8}
!664 = !{!"tree-ssa-coalesce.c:ssa_conflicts_add"}
!665 = !{!"function_entry_count", i64 16}
!666 = !{!"tree-ssa-coalesce.c:ssa_conflicts_add_one"}
!667 = !{!"branch_weights", i32 17, i32 1}
!668 = !{!"tree-ssa-coalesce.c:num_coalesce_pairs"}
!669 = !{!"tree-ssa-coalesce.c:first_coalesce_pair"}
!670 = !{!"function_entry_count", i64 4064}
!671 = !{!"tree-ssa-coalesce.c:end_coalesce_pair_p"}
!672 = !{!"function_entry_count", i64 4026}
!673 = !{!"tree-ssa-coalesce.c:next_coalesce_pair"}
!674 = !{!"function_entry_count", i64 32340}
!675 = !{!"tree-ssa-coalesce.c:compare_pairs"}
!676 = !{!"branch_weights", i32 25555, i32 6787}
!677 = !{!"branch_weights", i32 1507, i32 24049}
!678 = !{!"tree-ssa-coalesce.c:first_htab_element"}
!679 = !{!680, !286, i64 24}
!680 = !{!"htab", !286, i64 0, !286, i64 8, !286, i64 16, !286, i64 24, !310, i64 32, !310, i64 40, !310, i64 48, !281, i64 56, !281, i64 60, !286, i64 64, !286, i64 72, !286, i64 80, !286, i64 88, !286, i64 96, !281, i64 104}
!681 = !{!"branch_weights", i32 8405, i32 1}
!682 = distinct !{!682, !295}
!683 = !{!"tree-ssa-coalesce.c:end_htab_p"}
!684 = !{!"tree-ssa-coalesce.c:next_htab_element"}
!685 = !{!"branch_weights", i32 1890173, i32 39}
!686 = !{!"function_entry_count", i64 5275}
!687 = !{!"tree-ssa-coalesce.c:attempt_coalesce"}
!688 = !{!"branch_weights", i32 421, i32 4856}
!689 = !{!"branch_weights", i32 4856, i32 1}
!690 = !{!"branch_weights", i32 1, i32 4856}
!691 = !{!"branch_weights", i32 4203, i32 654}
!692 = !{!"tree-ssa-coalesce.c:fail_abnormal_edge_coalesce"}
!693 = !{!"function_entry_count", i64 5313}
!694 = !{!"tree-ssa-coalesce.c:pop_best_coalesce"}
!695 = !{!"branch_weights", i32 1, i32 5314}
!696 = !{i32 -1, i32 2}
!697 = !{!"branch_weights", i32 1288, i32 4027}
!698 = !{!"function_entry_count", i64 9710}
!699 = !{!"tree-ssa-coalesce.c:partition_to_var"}
!700 = !{!373, !286, i64 16}
!701 = !{!"branch_weights", i32 1, i32 9711}
!702 = !{!"function_entry_count", i64 4855}
!703 = !{!"tree-ssa-coalesce.c:ssa_conflicts_test_p"}
!704 = !{!"branch_weights", i32 4828, i32 29}
!705 = !{!"branch_weights", i32 17, i32 13}
!706 = !{!"tree-ssa-coalesce.c:ssa_conflicts_merge"}
!707 = !{!"branch_weights", i32 4842, i32 15}
!708 = !{!"branch_weights", i32 1, i32 239}
!709 = !{!"branch_weights", i32 7, i32 15}
!710 = !{!"branch_weights", i32 239, i32 97}
!711 = distinct !{!711, !295}
!712 = !{!"branch_weights", i32 3, i32 13}
!713 = !{!"function_entry_count", i64 1287}
!714 = !{!"tree-ssa-coalesce.c:pop_cost_one_pair"}
!715 = !{!"branch_weights", i32 39, i32 1250}
