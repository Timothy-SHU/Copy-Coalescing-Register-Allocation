; ModuleID = 'tree-ssa-uncprop.c'
source_filename = "tree-ssa-uncprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.real_value = type { i32, [3 x i64] }
%struct.dom_walk_data = type { i8, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.edge_equivalency = type { ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.equiv_hash_elt = type { ptr, ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@.str = private unnamed_addr constant [8 x i8] c"uncprop\00", align 1
@pass_uncprop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_uncprop, ptr @tree_ssa_uncprop, ptr null, ptr null, i32 0, i32 103, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8
@flag_tree_dom = external local_unnamed_addr global i32, align 4
@equiv = internal unnamed_addr global ptr null, align 8
@equiv_stack = internal global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@dconst0 = external global %struct.real_value, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_uncprop() #0 {
  %1 = load i32, ptr @flag_tree_dom, align 4, !tbaa !5
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_ssa_uncprop() #1 {
  %1 = alloca %struct.dom_walk_data, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #13
  tail call fastcc void @associate_equivalences_with_edges() #14
  %4 = tail call ptr @htab_create(i64 noundef 1024, ptr noundef nonnull @equiv_hash, ptr noundef nonnull @equiv_eq, ptr noundef nonnull @equiv_free) #15
  store ptr %4, ptr @equiv, align 8, !tbaa !9
  %5 = tail call fastcc ptr @VEC_tree_heap_alloc() #14
  store ptr %5, ptr @equiv_stack, align 8, !tbaa !9
  tail call void @calculate_dominance_info(i32 noundef 1) #15
  store i8 1, ptr %1, align 8
  %6 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 2
  store ptr @uncprop_enter_block, ptr %7, align 8, !tbaa !14
  %8 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 3
  store ptr @uncprop_leave_block, ptr %8, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 6
  store i64 0, ptr %10, align 8, !tbaa !17
  call void @init_walk_dominator_tree(ptr noundef nonnull %1) #15
  %11 = load ptr, ptr @cfun, align 8, !tbaa !9
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = load ptr, ptr %13, align 8, !tbaa !20
  call void @walk_dominator_tree(ptr noundef nonnull %1, ptr noundef %14) #15
  call void @fini_walk_dominator_tree(ptr noundef nonnull %1) #15
  %15 = load ptr, ptr @equiv, align 8, !tbaa !9
  call void @htab_delete(ptr noundef %15) #15
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull @equiv_stack) #14
  %16 = load ptr, ptr @cfun, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !18
  %19 = load ptr, ptr %18, align 8, !tbaa !20
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !24
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %53, label %25

25:                                               ; preds = %0
  %26 = getelementptr inbounds i8, ptr %3, i64 8
  br label %27

27:                                               ; preds = %25, %44
  %28 = phi ptr [ %21, %25 ], [ %46, %44 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 1
  %30 = call fastcc ptr @ei_start_1(ptr noundef nonnull %29) #14
  store i32 0, ptr %3, align 8, !tbaa.struct !25
  store ptr %30, ptr %26, align 8, !tbaa.struct !26
  %31 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %30, ptr noundef nonnull %2) #14, !range !27
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %27, %39
  %34 = load ptr, ptr %2, align 8, !tbaa !9
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !28
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  call void @free(ptr noundef nonnull %36) #14
  store ptr null, ptr %35, align 8, !tbaa !28
  br label %39

39:                                               ; preds = %33, %38
  call fastcc void @ei_next(ptr noundef nonnull %3) #14
  %40 = load i32, ptr %3, align 8
  %41 = load ptr, ptr %26, align 8
  %42 = call fastcc zeroext i8 @ei_cond(i32 %40, ptr %41, ptr noundef nonnull %2) #14, !range !27
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %33, !llvm.loop !30

44:                                               ; preds = %39, %27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !22
  %47 = load ptr, ptr @cfun, align 8, !tbaa !9
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !18
  %50 = getelementptr inbounds %struct.control_flow_graph, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !24
  %52 = icmp eq ptr %46, %51
  br i1 %52, label %53, label %27, !llvm.loop !32

53:                                               ; preds = %44, %0
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #13
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @associate_equivalences_with_edges() unnamed_addr #1 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = load ptr, ptr %6, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %505, label %13

13:                                               ; preds = %0, %496
  %14 = phi ptr [ %498, %496 ], [ %9, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #13
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %14) #14
  %15 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #14, !range !27
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %496

17:                                               ; preds = %13
  %18 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #14
  %19 = icmp eq ptr %18, null
  br i1 %19, label %496, label %20

20:                                               ; preds = %17
  %21 = call fastcc i32 @gimple_code(ptr noundef nonnull %18) #14, !range !33
  %22 = trunc i32 %21 to i8
  switch i8 %22, label %496 [
    i8 1, label %23
    i8 5, label %402
  ]

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %24 = call fastcc i32 @gimple_cond_code(ptr noundef nonnull %18) #14, !range !34
  call void @extract_true_false_edges_from_block(ptr noundef %14, ptr noundef nonnull %2, ptr noundef nonnull %3) #15
  %25 = icmp eq i32 %24, 101
  %26 = add nsw i32 %24, -101
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %28, label %401

28:                                               ; preds = %23
  %29 = call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %18) #14
  %30 = call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %18) #14
  %31 = load i64, ptr %29, align 8
  %32 = and i64 %31, 4259839
  %33 = icmp eq i64 %32, 141
  br i1 %33, label %34, label %76

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !35
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 7
  br i1 %39, label %40, label %76

40:                                               ; preds = %34
  %41 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %30) #15
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i64, ptr %29, align 8
  br label %76

45:                                               ; preds = %40
  %46 = call ptr @xmalloc(i64 noundef 16) #15
  %47 = getelementptr inbounds %struct.edge_equivalency, ptr %46, i64 0, i32 1
  store ptr %29, ptr %47, align 8, !tbaa !36
  %48 = call i32 @integer_zerop(ptr noundef %30) #15
  %49 = icmp eq i32 %48, 0
  br i1 %25, label %50, label %63

50:                                               ; preds = %45
  %51 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %52 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %53 = select i1 %49, ptr %52, ptr %51
  store ptr %53, ptr %46, align 8, !tbaa !38
  %54 = load ptr, ptr %2, align 8, !tbaa !9
  %55 = getelementptr inbounds %struct.edge_def, ptr %54, i64 0, i32 3
  store ptr %46, ptr %55, align 8, !tbaa !28
  %56 = call ptr @xmalloc(i64 noundef 16) #15
  %57 = getelementptr inbounds %struct.edge_equivalency, ptr %56, i64 0, i32 1
  store ptr %29, ptr %57, align 8, !tbaa !36
  %58 = call i32 @integer_zerop(ptr noundef %30) #15
  %59 = icmp eq i32 %58, 0
  %60 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %61 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %62 = select i1 %59, ptr %61, ptr %60
  store ptr %62, ptr %56, align 8, !tbaa !38
  br label %396

63:                                               ; preds = %45
  %64 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %65 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %66 = select i1 %49, ptr %65, ptr %64
  store ptr %66, ptr %46, align 8, !tbaa !38
  %67 = load ptr, ptr %2, align 8, !tbaa !9
  %68 = getelementptr inbounds %struct.edge_def, ptr %67, i64 0, i32 3
  store ptr %46, ptr %68, align 8, !tbaa !28
  %69 = call ptr @xmalloc(i64 noundef 16) #15
  %70 = getelementptr inbounds %struct.edge_equivalency, ptr %69, i64 0, i32 1
  store ptr %29, ptr %70, align 8, !tbaa !36
  %71 = call i32 @integer_zerop(ptr noundef %30) #15
  %72 = icmp eq i32 %71, 0
  %73 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %74 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %75 = select i1 %72, ptr %74, ptr %73
  store ptr %75, ptr %69, align 8, !tbaa !38
  br label %396

76:                                               ; preds = %43, %34, %28
  %77 = phi i64 [ %44, %43 ], [ %31, %34 ], [ %31, %28 ]
  %78 = and i64 %77, 4259839
  %79 = icmp eq i64 %78, 141
  br i1 %79, label %80, label %401

80:                                               ; preds = %76
  %81 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %30) #15
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i64, ptr %30, align 8
  %85 = and i64 %84, 4259839
  %86 = icmp eq i64 %85, 141
  br i1 %86, label %87, label %401

87:                                               ; preds = %83, %80
  %88 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !35
  %90 = load i64, ptr %89, align 8
  %91 = and i64 %90, 65535
  %92 = icmp eq i64 %91, 14
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = call i32 @vector_type_mode(ptr noundef nonnull %89) #15
  %95 = load ptr, ptr %88, align 8, !tbaa !35
  br label %101

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.tree_type, ptr %89, i64 0, i32 6
  %98 = load i32, ptr %97, align 4
  %99 = lshr i32 %98, 16
  %100 = and i32 %99, 255
  br label %101

101:                                              ; preds = %96, %93
  %102 = phi ptr [ %95, %93 ], [ %89, %96 ]
  %103 = phi i32 [ %94, %93 ], [ %100, %96 ]
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !35
  %107 = icmp eq i8 %106, 8
  br i1 %107, label %165, label %108

108:                                              ; preds = %101
  %109 = load i64, ptr %102, align 8
  %110 = and i64 %109, 65535
  %111 = icmp eq i64 %110, 14
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = call i32 @vector_type_mode(ptr noundef nonnull %102) #15
  %114 = load ptr, ptr %88, align 8, !tbaa !35
  br label %120

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.tree_type, ptr %102, i64 0, i32 6
  %117 = load i32, ptr %116, align 4
  %118 = lshr i32 %117, 16
  %119 = and i32 %118, 255
  br label %120

120:                                              ; preds = %115, %112
  %121 = phi ptr [ %114, %112 ], [ %102, %115 ]
  %122 = phi i32 [ %113, %112 ], [ %119, %115 ]
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !35
  %126 = icmp eq i8 %125, 9
  br i1 %126, label %165, label %127

127:                                              ; preds = %120
  %128 = load i64, ptr %121, align 8
  %129 = and i64 %128, 65535
  %130 = icmp eq i64 %129, 14
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = call i32 @vector_type_mode(ptr noundef nonnull %121) #15
  %133 = load ptr, ptr %88, align 8, !tbaa !35
  br label %139

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.tree_type, ptr %121, i64 0, i32 6
  %136 = load i32, ptr %135, align 4
  %137 = lshr i32 %136, 16
  %138 = and i32 %137, 255
  br label %139

139:                                              ; preds = %134, %131
  %140 = phi ptr [ %133, %131 ], [ %121, %134 ]
  %141 = phi i32 [ %132, %131 ], [ %138, %134 ]
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !35
  %145 = icmp eq i8 %144, 11
  br i1 %145, label %165, label %146

146:                                              ; preds = %139
  %147 = load i64, ptr %140, align 8
  %148 = and i64 %147, 65535
  %149 = icmp eq i64 %148, 14
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = call i32 @vector_type_mode(ptr noundef nonnull %140) #15
  br label %157

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.tree_type, ptr %140, i64 0, i32 6
  %154 = load i32, ptr %153, align 4
  %155 = lshr i32 %154, 16
  %156 = and i32 %155, 255
  br label %157

157:                                              ; preds = %152, %150
  %158 = phi i32 [ %151, %150 ], [ %156, %152 ]
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !35
  %162 = icmp eq i8 %161, 17
  br i1 %162, label %163, label %392

163:                                              ; preds = %157
  %164 = load ptr, ptr %88, align 8, !tbaa !35
  br label %165

165:                                              ; preds = %163, %139, %120, %101
  %166 = phi ptr [ %164, %163 ], [ %140, %139 ], [ %121, %120 ], [ %102, %101 ]
  %167 = load i64, ptr %166, align 8
  %168 = and i64 %167, 65535
  %169 = icmp eq i64 %168, 14
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = call i32 @vector_type_mode(ptr noundef nonnull %166) #15
  %172 = load ptr, ptr %88, align 8, !tbaa !35
  br label %178

173:                                              ; preds = %165
  %174 = getelementptr inbounds %struct.tree_type, ptr %166, i64 0, i32 6
  %175 = load i32, ptr %174, align 4
  %176 = lshr i32 %175, 16
  %177 = and i32 %176, 255
  br label %178

178:                                              ; preds = %173, %170
  %179 = phi ptr [ %172, %170 ], [ %166, %173 ]
  %180 = phi i32 [ %171, %170 ], [ %177, %173 ]
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %181
  %183 = load i8, ptr %182, align 1, !tbaa !35
  %184 = icmp eq i8 %183, 8
  br i1 %184, label %204, label %185

185:                                              ; preds = %178
  %186 = load i64, ptr %179, align 8
  %187 = and i64 %186, 65535
  %188 = icmp eq i64 %187, 14
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = call i32 @vector_type_mode(ptr noundef nonnull %179) #15
  %191 = load ptr, ptr %88, align 8, !tbaa !35
  br label %197

192:                                              ; preds = %185
  %193 = getelementptr inbounds %struct.tree_type, ptr %179, i64 0, i32 6
  %194 = load i32, ptr %193, align 4
  %195 = lshr i32 %194, 16
  %196 = and i32 %195, 255
  br label %197

197:                                              ; preds = %192, %189
  %198 = phi ptr [ %191, %189 ], [ %179, %192 ]
  %199 = phi i32 [ %190, %189 ], [ %196, %192 ]
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !35
  %203 = icmp eq i8 %202, 9
  br i1 %203, label %204, label %216

204:                                              ; preds = %197, %178
  %205 = phi ptr [ %198, %197 ], [ %179, %178 ]
  %206 = load i64, ptr %205, align 8
  %207 = and i64 %206, 65535
  %208 = icmp eq i64 %207, 14
  br i1 %208, label %209, label %211

209:                                              ; preds = %204
  %210 = call i32 @vector_type_mode(ptr noundef nonnull %205) #15
  br label %233

211:                                              ; preds = %204
  %212 = getelementptr inbounds %struct.tree_type, ptr %205, i64 0, i32 6
  %213 = load i32, ptr %212, align 4
  %214 = lshr i32 %213, 16
  %215 = and i32 %214, 255
  br label %233

216:                                              ; preds = %197
  %217 = load i64, ptr %198, align 8
  %218 = and i64 %217, 65535
  %219 = icmp eq i64 %218, 14
  br i1 %219, label %220, label %222

220:                                              ; preds = %216
  %221 = call i32 @vector_type_mode(ptr noundef nonnull %198) #15
  br label %227

222:                                              ; preds = %216
  %223 = getelementptr inbounds %struct.tree_type, ptr %198, i64 0, i32 6
  %224 = load i32, ptr %223, align 4
  %225 = lshr i32 %224, 16
  %226 = and i32 %225, 255
  br label %227

227:                                              ; preds = %222, %220
  %228 = phi i32 [ %221, %220 ], [ %226, %222 ]
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !35
  %232 = zext i8 %231 to i32
  br label %233

233:                                              ; preds = %209, %211, %227
  %234 = phi i32 [ %232, %227 ], [ %210, %209 ], [ %215, %211 ]
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %235
  %237 = load i8, ptr %236, align 1, !tbaa !35
  %238 = icmp eq i8 %237, 9
  %239 = load ptr, ptr %88, align 8, !tbaa !35
  %240 = load i64, ptr %239, align 8
  %241 = and i64 %240, 65535
  %242 = icmp eq i64 %241, 14
  br i1 %238, label %243, label %307

243:                                              ; preds = %233
  br i1 %242, label %244, label %247

244:                                              ; preds = %243
  %245 = call i32 @vector_type_mode(ptr noundef nonnull %239) #15
  %246 = load ptr, ptr %88, align 8, !tbaa !35
  br label %252

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.tree_type, ptr %239, i64 0, i32 6
  %249 = load i32, ptr %248, align 4
  %250 = lshr i32 %249, 16
  %251 = and i32 %250, 255
  br label %252

252:                                              ; preds = %247, %244
  %253 = phi ptr [ %246, %244 ], [ %239, %247 ]
  %254 = phi i32 [ %245, %244 ], [ %251, %247 ]
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %255
  %257 = load i8, ptr %256, align 1, !tbaa !35
  %258 = icmp eq i8 %257, 8
  br i1 %258, label %278, label %259

259:                                              ; preds = %252
  %260 = load i64, ptr %253, align 8
  %261 = and i64 %260, 65535
  %262 = icmp eq i64 %261, 14
  br i1 %262, label %263, label %266

263:                                              ; preds = %259
  %264 = call i32 @vector_type_mode(ptr noundef nonnull %253) #15
  %265 = load ptr, ptr %88, align 8, !tbaa !35
  br label %271

266:                                              ; preds = %259
  %267 = getelementptr inbounds %struct.tree_type, ptr %253, i64 0, i32 6
  %268 = load i32, ptr %267, align 4
  %269 = lshr i32 %268, 16
  %270 = and i32 %269, 255
  br label %271

271:                                              ; preds = %266, %263
  %272 = phi ptr [ %265, %263 ], [ %253, %266 ]
  %273 = phi i32 [ %264, %263 ], [ %270, %266 ]
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %274
  %276 = load i8, ptr %275, align 1, !tbaa !35
  %277 = icmp eq i8 %276, 9
  br i1 %277, label %278, label %290

278:                                              ; preds = %271, %252
  %279 = phi ptr [ %272, %271 ], [ %253, %252 ]
  %280 = load i64, ptr %279, align 8
  %281 = and i64 %280, 65535
  %282 = icmp eq i64 %281, 14
  br i1 %282, label %283, label %285

283:                                              ; preds = %278
  %284 = call i32 @vector_type_mode(ptr noundef nonnull %279) #15
  br label %371

285:                                              ; preds = %278
  %286 = getelementptr inbounds %struct.tree_type, ptr %279, i64 0, i32 6
  %287 = load i32, ptr %286, align 4
  %288 = lshr i32 %287, 16
  %289 = and i32 %288, 255
  br label %371

290:                                              ; preds = %271
  %291 = load i64, ptr %272, align 8
  %292 = and i64 %291, 65535
  %293 = icmp eq i64 %292, 14
  br i1 %293, label %294, label %296

294:                                              ; preds = %290
  %295 = call i32 @vector_type_mode(ptr noundef nonnull %272) #15
  br label %301

296:                                              ; preds = %290
  %297 = getelementptr inbounds %struct.tree_type, ptr %272, i64 0, i32 6
  %298 = load i32, ptr %297, align 4
  %299 = lshr i32 %298, 16
  %300 = and i32 %299, 255
  br label %301

301:                                              ; preds = %296, %294
  %302 = phi i32 [ %295, %294 ], [ %300, %296 ]
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %303
  %305 = load i8, ptr %304, align 1, !tbaa !35
  %306 = zext i8 %305 to i32
  br label %371

307:                                              ; preds = %233
  br i1 %242, label %308, label %311

308:                                              ; preds = %307
  %309 = call i32 @vector_type_mode(ptr noundef nonnull %239) #15
  %310 = load ptr, ptr %88, align 8, !tbaa !35
  br label %316

311:                                              ; preds = %307
  %312 = getelementptr inbounds %struct.tree_type, ptr %239, i64 0, i32 6
  %313 = load i32, ptr %312, align 4
  %314 = lshr i32 %313, 16
  %315 = and i32 %314, 255
  br label %316

316:                                              ; preds = %311, %308
  %317 = phi ptr [ %310, %308 ], [ %239, %311 ]
  %318 = phi i32 [ %309, %308 ], [ %315, %311 ]
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %319
  %321 = load i8, ptr %320, align 1, !tbaa !35
  %322 = icmp eq i8 %321, 8
  br i1 %322, label %342, label %323

323:                                              ; preds = %316
  %324 = load i64, ptr %317, align 8
  %325 = and i64 %324, 65535
  %326 = icmp eq i64 %325, 14
  br i1 %326, label %327, label %330

327:                                              ; preds = %323
  %328 = call i32 @vector_type_mode(ptr noundef nonnull %317) #15
  %329 = load ptr, ptr %88, align 8, !tbaa !35
  br label %335

330:                                              ; preds = %323
  %331 = getelementptr inbounds %struct.tree_type, ptr %317, i64 0, i32 6
  %332 = load i32, ptr %331, align 4
  %333 = lshr i32 %332, 16
  %334 = and i32 %333, 255
  br label %335

335:                                              ; preds = %330, %327
  %336 = phi ptr [ %329, %327 ], [ %317, %330 ]
  %337 = phi i32 [ %328, %327 ], [ %334, %330 ]
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %338
  %340 = load i8, ptr %339, align 1, !tbaa !35
  %341 = icmp eq i8 %340, 9
  br i1 %341, label %342, label %354

342:                                              ; preds = %335, %316
  %343 = phi ptr [ %336, %335 ], [ %317, %316 ]
  %344 = load i64, ptr %343, align 8
  %345 = and i64 %344, 65535
  %346 = icmp eq i64 %345, 14
  br i1 %346, label %347, label %349

347:                                              ; preds = %342
  %348 = call i32 @vector_type_mode(ptr noundef nonnull %343) #15
  br label %371

349:                                              ; preds = %342
  %350 = getelementptr inbounds %struct.tree_type, ptr %343, i64 0, i32 6
  %351 = load i32, ptr %350, align 4
  %352 = lshr i32 %351, 16
  %353 = and i32 %352, 255
  br label %371

354:                                              ; preds = %335
  %355 = load i64, ptr %336, align 8
  %356 = and i64 %355, 65535
  %357 = icmp eq i64 %356, 14
  br i1 %357, label %358, label %360

358:                                              ; preds = %354
  %359 = call i32 @vector_type_mode(ptr noundef nonnull %336) #15
  br label %365

360:                                              ; preds = %354
  %361 = getelementptr inbounds %struct.tree_type, ptr %336, i64 0, i32 6
  %362 = load i32, ptr %361, align 4
  %363 = lshr i32 %362, 16
  %364 = and i32 %363, 255
  br label %365

365:                                              ; preds = %360, %358
  %366 = phi i32 [ %359, %358 ], [ %364, %360 ]
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %367
  %369 = load i8, ptr %368, align 1, !tbaa !35
  %370 = zext i8 %369 to i32
  br label %371

371:                                              ; preds = %365, %349, %347, %301, %285, %283
  %372 = phi i32 [ %306, %301 ], [ %284, %283 ], [ %289, %285 ], [ %370, %365 ], [ %348, %347 ], [ %353, %349 ]
  %373 = add i32 %372, -38
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %374
  %376 = load ptr, ptr %375, align 8, !tbaa !9
  %377 = getelementptr inbounds %struct.real_format, ptr %376, i64 0, i32 14
  %378 = load i8, ptr %377, align 1, !tbaa !39
  %379 = icmp ne i8 %378, 0
  %380 = load i32, ptr @flag_signed_zeros, align 4
  %381 = icmp ne i32 %380, 0
  %382 = select i1 %379, i1 %381, i1 false
  br i1 %382, label %383, label %392

383:                                              ; preds = %371
  %384 = load i64, ptr %30, align 8
  %385 = and i64 %384, 65535
  %386 = icmp eq i64 %385, 24
  br i1 %386, label %387, label %401

387:                                              ; preds = %383
  %388 = getelementptr inbounds %struct.tree_real_cst, ptr %30, i64 0, i32 1
  %389 = load ptr, ptr %388, align 8, !tbaa !35
  %390 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull @dconst0, ptr noundef %389) #15
  %391 = icmp eq i8 %390, 0
  br i1 %391, label %392, label %401

392:                                              ; preds = %387, %371, %157
  %393 = call ptr @xmalloc(i64 noundef 16) #15
  %394 = getelementptr inbounds %struct.edge_equivalency, ptr %393, i64 0, i32 1
  store ptr %29, ptr %394, align 8, !tbaa !36
  store ptr %30, ptr %393, align 8, !tbaa !38
  %395 = select i1 %25, ptr %2, ptr %3
  br label %396

396:                                              ; preds = %392, %50, %63
  %397 = phi ptr [ %3, %63 ], [ %3, %50 ], [ %395, %392 ]
  %398 = phi ptr [ %69, %63 ], [ %56, %50 ], [ %393, %392 ]
  %399 = load ptr, ptr %397, align 8, !tbaa !9
  %400 = getelementptr inbounds %struct.edge_def, ptr %399, i64 0, i32 3
  store ptr %398, ptr %400, align 8, !tbaa !28
  br label %401

401:                                              ; preds = %396, %387, %383, %23, %83, %76
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  br label %496

402:                                              ; preds = %20
  %403 = call fastcc ptr @gimple_switch_index(ptr noundef nonnull %18) #14
  %404 = load i64, ptr %403, align 8
  %405 = and i64 %404, 4259839
  %406 = icmp eq i64 %405, 141
  br i1 %406, label %407, label %496

407:                                              ; preds = %402
  %408 = call fastcc i32 @gimple_switch_num_labels(ptr noundef nonnull %18) #14
  %409 = load ptr, ptr @cfun, align 8, !tbaa !9
  %410 = getelementptr inbounds %struct.function, ptr %409, i64 0, i32 1
  %411 = load ptr, ptr %410, align 8, !tbaa !18
  %412 = getelementptr inbounds %struct.control_flow_graph, ptr %411, i64 0, i32 5
  %413 = load i32, ptr %412, align 8, !tbaa !41
  %414 = sext i32 %413 to i64
  %415 = call ptr @xcalloc(i64 noundef %414, i64 noundef 8) #15
  %416 = icmp sgt i32 %408, 0
  br i1 %416, label %427, label %417

417:                                              ; preds = %455, %407
  %418 = load ptr, ptr @cfun, align 8, !tbaa !9
  %419 = getelementptr inbounds %struct.function, ptr %418, i64 0, i32 1
  %420 = load ptr, ptr %419, align 8, !tbaa !18
  %421 = getelementptr inbounds %struct.control_flow_graph, ptr %420, i64 0, i32 3
  %422 = load i32, ptr %421, align 8, !tbaa !42
  %423 = icmp sgt i32 %422, 0
  br i1 %423, label %424, label %495

424:                                              ; preds = %417
  %425 = getelementptr inbounds %struct.tree_common, ptr %403, i64 0, i32 2
  %426 = load ptr, ptr @global_trees, align 16
  br label %458

427:                                              ; preds = %407, %455
  %428 = phi i32 [ %456, %455 ], [ 0, %407 ]
  %429 = call fastcc ptr @gimple_switch_label(ptr noundef nonnull %18, i32 noundef %428) #14
  %430 = load ptr, ptr @cfun, align 8, !tbaa !9
  %431 = getelementptr inbounds %struct.tree_exp, ptr %429, i64 1, i32 0, i32 1
  %432 = load ptr, ptr %431, align 8, !tbaa !35
  %433 = call ptr @label_to_block_fn(ptr noundef %430, ptr noundef %432) #15
  %434 = getelementptr inbounds %struct.tree_exp, ptr %429, i64 1
  %435 = load ptr, ptr %434, align 8, !tbaa !35
  %436 = icmp eq ptr %435, null
  br i1 %436, label %437, label %448

437:                                              ; preds = %427
  %438 = getelementptr inbounds %struct.tree_exp, ptr %429, i64 0, i32 3
  %439 = load ptr, ptr %438, align 8, !tbaa !35
  %440 = icmp eq ptr %439, null
  br i1 %440, label %448, label %441

441:                                              ; preds = %437
  %442 = getelementptr inbounds %struct.basic_block_def, ptr %433, i64 0, i32 9
  %443 = load i32, ptr %442, align 8, !tbaa !43
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds ptr, ptr %415, i64 %444
  %446 = load ptr, ptr %445, align 8, !tbaa !9
  %447 = icmp eq ptr %446, null
  br i1 %447, label %454, label %448

448:                                              ; preds = %441, %437, %427
  %449 = load ptr, ptr @global_trees, align 16
  %450 = getelementptr inbounds %struct.basic_block_def, ptr %433, i64 0, i32 9
  %451 = load i32, ptr %450, align 8, !tbaa !43
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds ptr, ptr %415, i64 %452
  store ptr %449, ptr %453, align 8, !tbaa !9
  br label %455

454:                                              ; preds = %441
  store ptr %429, ptr %445, align 8, !tbaa !9
  br label %455

455:                                              ; preds = %454, %448
  %456 = add nuw nsw i32 %428, 1
  %457 = icmp eq i32 %456, %408
  br i1 %457, label %417, label %427, !llvm.loop !44

458:                                              ; preds = %424, %485
  %459 = phi ptr [ %418, %424 ], [ %486, %485 ]
  %460 = phi ptr [ %426, %424 ], [ %487, %485 ]
  %461 = phi i64 [ 0, %424 ], [ %488, %485 ]
  %462 = getelementptr inbounds ptr, ptr %415, i64 %461
  %463 = load ptr, ptr %462, align 8, !tbaa !9
  %464 = icmp eq ptr %463, null
  %465 = icmp eq ptr %463, %460
  %466 = select i1 %464, i1 true, i1 %465
  br i1 %466, label %485, label %467

467:                                              ; preds = %458
  %468 = load ptr, ptr %425, align 8, !tbaa !35
  %469 = getelementptr inbounds %struct.tree_exp, ptr %463, i64 0, i32 3
  %470 = load ptr, ptr %469, align 8, !tbaa !35
  %471 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %468, ptr noundef %470) #15
  %472 = call ptr @xmalloc(i64 noundef 16) #15
  store ptr %471, ptr %472, align 8, !tbaa !38
  %473 = getelementptr inbounds %struct.edge_equivalency, ptr %472, i64 0, i32 1
  store ptr %403, ptr %473, align 8, !tbaa !36
  %474 = load ptr, ptr @cfun, align 8, !tbaa !9
  %475 = getelementptr inbounds %struct.function, ptr %474, i64 0, i32 1
  %476 = load ptr, ptr %475, align 8, !tbaa !18
  %477 = getelementptr inbounds %struct.control_flow_graph, ptr %476, i64 0, i32 2
  %478 = load ptr, ptr %477, align 8, !tbaa !45
  %479 = trunc i64 %461 to i32
  %480 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %478, i32 noundef %479) #14
  %481 = call ptr @find_edge(ptr noundef %14, ptr noundef %480) #15
  %482 = getelementptr inbounds %struct.edge_def, ptr %481, i64 0, i32 3
  store ptr %472, ptr %482, align 8, !tbaa !28
  %483 = load ptr, ptr @global_trees, align 16
  %484 = load ptr, ptr @cfun, align 8, !tbaa !9
  br label %485

485:                                              ; preds = %467, %458
  %486 = phi ptr [ %484, %467 ], [ %459, %458 ]
  %487 = phi ptr [ %483, %467 ], [ %460, %458 ]
  %488 = add nuw nsw i64 %461, 1
  %489 = getelementptr inbounds %struct.function, ptr %486, i64 0, i32 1
  %490 = load ptr, ptr %489, align 8, !tbaa !18
  %491 = getelementptr inbounds %struct.control_flow_graph, ptr %490, i64 0, i32 3
  %492 = load i32, ptr %491, align 8, !tbaa !42
  %493 = sext i32 %492 to i64
  %494 = icmp slt i64 %488, %493
  br i1 %494, label %458, label %495, !llvm.loop !46

495:                                              ; preds = %485, %417
  call void @free(ptr noundef %415) #14
  br label %496

496:                                              ; preds = %20, %401, %495, %402, %17, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #13
  %497 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %498 = load ptr, ptr %497, align 8, !tbaa !22
  %499 = load ptr, ptr @cfun, align 8, !tbaa !9
  %500 = getelementptr inbounds %struct.function, ptr %499, i64 0, i32 1
  %501 = load ptr, ptr %500, align 8, !tbaa !18
  %502 = getelementptr inbounds %struct.control_flow_graph, ptr %501, i64 0, i32 1
  %503 = load ptr, ptr %502, align 8, !tbaa !24
  %504 = icmp eq ptr %498, %503
  br i1 %504, label %505, label %13, !llvm.loop !47

505:                                              ; preds = %496, %0
  ret void
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @equiv_hash(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = tail call i32 @iterative_hash_expr(ptr noundef %2, i32 noundef 0) #15
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @equiv_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !48
  %4 = load ptr, ptr %1, align 8, !tbaa !48
  %5 = tail call i32 @operand_equal_p(ptr noundef %3, ptr noundef %4, i32 noundef 0) #15
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal void @equiv_free(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.equiv_hash_elt, ptr %0, i64 0, i32 1
  tail call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %2) #14
  tail call void @free(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc() unnamed_addr #1 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 2) #15
  ret ptr %1
}

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @uncprop_enter_block(ptr nocapture readnone %0, ptr noundef %1) #1 {
  %3 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %1) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @single_incoming_edge_ignoring_loop_edges(ptr noundef %1) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %6, align 8, !tbaa !50
  %10 = icmp eq ptr %9, %3
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.edge_def, ptr %6, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !28
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !38
  %17 = getelementptr inbounds %struct.edge_equivalency, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !36
  tail call fastcc void @record_equiv(ptr noundef %16, ptr noundef %18) #14
  %19 = load ptr, ptr %13, align 8, !tbaa !38
  br label %20

20:                                               ; preds = %5, %8, %11, %2, %15
  %21 = phi ptr [ %19, %15 ], [ null, %2 ], [ null, %11 ], [ null, %8 ], [ null, %5 ]
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull @equiv_stack, ptr noundef %21) #14
  tail call fastcc void @uncprop_into_successor_phis(ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @uncprop_leave_block(ptr nocapture readnone %0, ptr nocapture readnone %1) #1 {
  %3 = load ptr, ptr @equiv_stack, align 8
  %4 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call fastcc void @remove_equivalence(ptr noundef nonnull %4) #14
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare void @init_walk_dominator_tree(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @walk_dominator_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fini_walk_dominator_tree(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #14
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #5 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #14, !range !27
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #14
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !9
  ret i8 %10
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #14
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #14
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef nonnull @.str.2) #15
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !51
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #14
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #14
  store ptr %4, ptr %0, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !53
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !53
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: optsize
declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #14
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #14
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #14
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_switch_num_labels(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #14
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3162, ptr noundef nonnull @.str.2) #15
  br label %5

5:                                                ; preds = %1, %4
  %6 = add i32 %2, -1
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #14
  %4 = add i32 %1, 1
  %5 = icmp ugt i32 %3, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3215, ptr noundef nonnull @.str.2) #15
  br label %7

7:                                                ; preds = %2, %6
  %8 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %4) #14
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @label_to_block_fn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !60
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #14, !range !27
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #14
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !33
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #14
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !64
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !33
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #14
  ret i32 %3
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #5 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !5
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !35
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @iterative_hash_expr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_incoming_edge_ignoring_loop_edges(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #14
  store i32 0, ptr %3, align 8, !tbaa.struct !25
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !26
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #14, !range !27
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1, %18
  %9 = phi ptr [ %19, %18 ], [ null, %1 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !9
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %11, ptr noundef %13) #15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = icmp eq ptr %9, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %16, %8
  %19 = phi ptr [ %9, %8 ], [ %10, %16 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #14
  %20 = load i32, ptr %3, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = call fastcc zeroext i8 @ei_cond(i32 %20, ptr %21, ptr noundef nonnull %2) #14, !range !27
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %8, !llvm.loop !66

24:                                               ; preds = %16, %18, %1
  %25 = phi ptr [ null, %1 ], [ %19, %18 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_equiv(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call ptr @xmalloc(i64 noundef 16) #15
  store ptr %0, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.equiv_hash_elt, ptr %3, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !67
  %5 = load ptr, ptr @equiv, align 8, !tbaa !9
  %6 = tail call ptr @htab_find_slot(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 1) #15
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store ptr %3, ptr %6, align 8, !tbaa !9
  br label %12

10:                                               ; preds = %2
  tail call void @free(ptr noundef nonnull %3) #14
  %11 = load ptr, ptr %6, align 8, !tbaa !9
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi ptr [ %11, %10 ], [ %3, %9 ]
  %14 = getelementptr inbounds %struct.equiv_hash_elt, ptr %13, i64 0, i32 1
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %14, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #14
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uncprop_into_successor_phis(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.equiv_hash_elt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %6) #14
  store i32 0, ptr %3, align 8, !tbaa.struct !25
  %8 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %7, ptr %8, align 8, !tbaa.struct !26
  %9 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %7, ptr noundef nonnull %2) #14, !range !27
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %86, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.equiv_hash_elt, ptr %5, i64 0, i32 1
  br label %13

13:                                               ; preds = %11, %81
  %14 = load ptr, ptr %2, align 8, !tbaa !9
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = call fastcc ptr @phi_nodes(ptr noundef %16) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %18 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %17) #14, !range !27
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %81

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !28
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %22, align 8, !tbaa !38
  %26 = getelementptr inbounds %struct.edge_equivalency, ptr %22, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !36
  call fastcc void @record_equiv(ptr noundef %25, ptr noundef %27) #14
  br label %28

28:                                               ; preds = %24, %20
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %17) #14
  %29 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #14, !range !27
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %76

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 6
  br label %33

33:                                               ; preds = %31, %73
  %34 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #14
  %35 = load i32, ptr %32, align 4, !tbaa !68
  %36 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %34, i32 noundef %35) #14
  %37 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %36) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %38 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %37) #15
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.tree_ssa_name, ptr %37, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !35
  %43 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %34) #14
  %44 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %43) #14
  %45 = getelementptr inbounds %struct.tree_ssa_name, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !35
  %47 = icmp eq ptr %42, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %40, %33
  store ptr %37, ptr %5, align 8, !tbaa !48
  store ptr null, ptr %12, align 8, !tbaa !67
  %49 = load ptr, ptr @equiv, align 8, !tbaa !9
  %50 = call ptr @htab_find_slot(ptr noundef %49, ptr noundef nonnull %5, i32 noundef 0) #15
  %51 = icmp eq ptr %50, null
  br i1 %51, label %73, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %50, align 8, !tbaa !9
  %54 = getelementptr inbounds %struct.equiv_hash_elt, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !67
  %56 = call fastcc i32 @VEC_tree_base_length(ptr noundef %55) #14
  br label %57

57:                                               ; preds = %61, %52
  %58 = phi i32 [ %56, %52 ], [ %59, %61 ]
  %59 = add i32 %58, -1
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = call fastcc ptr @VEC_tree_base_index(ptr noundef %55, i32 noundef %59) #14
  %63 = getelementptr inbounds %struct.tree_ssa_name, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !35
  %65 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %34) #14
  %66 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %65) #14
  %67 = getelementptr inbounds %struct.tree_ssa_name, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !35
  %69 = icmp eq ptr %64, %68
  br i1 %69, label %70, label %57, !llvm.loop !69

70:                                               ; preds = %61
  %71 = load i32, ptr %32, align 4, !tbaa !68
  %72 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %34, i32 noundef %71) #14
  call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %72, ptr noundef nonnull %62) #14
  br label %73

73:                                               ; preds = %57, %70, %48, %40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call fastcc void @gsi_next(ptr noundef nonnull %4) #14
  %74 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #14, !range !27
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %33, label %76, !llvm.loop !70

76:                                               ; preds = %73, %28
  %77 = load ptr, ptr %21, align 8, !tbaa !28
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %77, align 8, !tbaa !38
  call fastcc void @remove_equivalence(ptr noundef %80) #14
  br label %81

81:                                               ; preds = %76, %79, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  call fastcc void @ei_next(ptr noundef nonnull %3) #14
  %82 = load i32, ptr %3, align 8
  %83 = load ptr, ptr %8, align 8
  %84 = call fastcc zeroext i8 @ei_cond(i32 %82, ptr %83, ptr noundef nonnull %2) #14, !range !27
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %13, !llvm.loop !71

86:                                               ; preds = %81, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #15
  store ptr %6, ptr %0, align 8, !tbaa !9
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 {
  %3 = load i32, ptr %0, align 8, !tbaa !72
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !72
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !74
  %6 = load i32, ptr %0, align 8, !tbaa !72
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 510, ptr noundef nonnull @.str.2) #15
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !76
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !55
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #14
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #14
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !72
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  store ptr %1, ptr %4, align 8, !tbaa !9
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  store ptr %4, ptr %0, align 8, !tbaa !53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_equivalence(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.equiv_hash_elt, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  store ptr %0, ptr %2, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct.equiv_hash_elt, ptr %2, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !67
  %4 = load ptr, ptr @equiv, align 8, !tbaa !9
  %5 = call ptr @htab_find_slot(ptr noundef %4, ptr noundef nonnull %2, i32 noundef 0) #15
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.equiv_hash_elt, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = call fastcc ptr @VEC_tree_base_pop(ptr noundef %8) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !76
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !35
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3103, ptr noundef nonnull @.str.2) #15
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !80
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !81
  store ptr %2, ptr %6, align 8, !tbaa !80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !80
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #14
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  store ptr %1, ptr %0, align 8, !tbaa !80
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !81
  store ptr %0, ptr %4, align 8, !tbaa !80
  store ptr %0, ptr %3, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load i32, ptr %0, align 8, !tbaa !72
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !72
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #14
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #14
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #14
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #14
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !82
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 687, ptr noundef nonnull @.str.2) #15
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !9
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  ret ptr %5
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !10, i64 8}
!12 = !{!"dom_walk_data", !6, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !13, i64 48, !10, i64 56}
!13 = !{!"long", !7, i64 0}
!14 = !{!12, !10, i64 16}
!15 = !{!12, !10, i64 24}
!16 = !{!12, !10, i64 32}
!17 = !{!12, !13, i64 48}
!18 = !{!19, !10, i64 8}
!19 = !{!"function", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !10, i64 128, !6, i64 136, !6, i64 137, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139}
!20 = !{!21, !10, i64 0}
!21 = !{!"control_flow_graph", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !10, i64 40, !6, i64 48, !7, i64 52, !7, i64 60, !6, i64 68, !6, i64 72}
!22 = !{!23, !10, i64 56}
!23 = !{!"basic_block_def", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !10, i64 48, !10, i64 56, !7, i64 64, !13, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96}
!24 = !{!21, !10, i64 8}
!25 = !{i64 0, i64 4, !5, i64 8, i64 8, !9}
!26 = !{i64 0, i64 8, !9}
!27 = !{i8 0, i8 2}
!28 = !{!29, !10, i64 24}
!29 = !{!"edge_def", !10, i64 0, !10, i64 8, !7, i64 16, !10, i64 24, !10, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !13, i64 56}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = distinct !{!32, !31}
!33 = !{i32 0, i32 256}
!34 = !{i32 0, i32 65536}
!35 = !{!7, !7, i64 0}
!36 = !{!37, !10, i64 8}
!37 = !{!"edge_equivalency", !10, i64 0, !10, i64 8}
!38 = !{!37, !10, i64 0}
!39 = !{!40, !7, i64 49}
!40 = !{!"real_format", !10, i64 0, !10, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !7, i64 44, !7, i64 45, !7, i64 46, !7, i64 47, !7, i64 48, !7, i64 49, !7, i64 50, !7, i64 51}
!41 = !{!21, !6, i64 32}
!42 = !{!21, !6, i64 24}
!43 = !{!23, !6, i64 80}
!44 = distinct !{!44, !31}
!45 = !{!21, !10, i64 16}
!46 = distinct !{!46, !31}
!47 = distinct !{!47, !31}
!48 = !{!49, !10, i64 0}
!49 = !{!"equiv_hash_elt", !10, i64 0, !10, i64 8}
!50 = !{!29, !10, i64 0}
!51 = !{!52, !6, i64 0}
!52 = !{!"", !6, i64 0, !10, i64 8}
!53 = !{!54, !10, i64 0}
!54 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!55 = !{!54, !10, i64 8}
!56 = !{!54, !10, i64 16}
!57 = !{!58, !10, i64 0}
!58 = !{!"gimple_seq_node_d", !10, i64 0, !10, i64 8, !10, i64 16}
!59 = !{!23, !6, i64 96}
!60 = !{!61, !10, i64 0}
!61 = !{!"gimple_bb_info", !10, i64 0, !10, i64 8}
!62 = !{!63, !10, i64 8}
!63 = !{!"gimple_seq_d", !10, i64 0, !10, i64 8, !10, i64 16}
!64 = !{!13, !13, i64 0}
!65 = !{!29, !10, i64 8}
!66 = distinct !{!66, !31}
!67 = !{!49, !10, i64 8}
!68 = !{!29, !6, i64 44}
!69 = distinct !{!69, !31}
!70 = distinct !{!70, !31}
!71 = distinct !{!71, !31}
!72 = !{!73, !6, i64 0}
!73 = !{!"VEC_tree_base", !6, i64 0, !6, i64 4, !7, i64 8}
!74 = !{!73, !6, i64 4}
!75 = !{!61, !10, i64 8}
!76 = !{!63, !10, i64 0}
!77 = !{!78, !10, i64 24}
!78 = !{!"ssa_use_operand_d", !10, i64 0, !10, i64 8, !7, i64 16, !10, i64 24}
!79 = !{!58, !10, i64 16}
!80 = !{!78, !10, i64 0}
!81 = !{!78, !10, i64 8}
!82 = !{!83, !6, i64 0}
!83 = !{!"VEC_edge_base", !6, i64 0, !6, i64 4, !7, i64 8}
