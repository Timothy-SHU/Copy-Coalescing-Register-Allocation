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
define internal zeroext i8 @gate_uncprop() #0 !prof !153 !PGOFuncName !154 {
  %1 = load i32, ptr @flag_tree_dom, align 4, !tbaa !155
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_ssa_uncprop() #1 !prof !153 !PGOFuncName !159 {
  %1 = alloca %struct.dom_walk_data, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #13
  tail call fastcc void @associate_equivalences_with_edges() #14
  %4 = tail call ptr @htab_create(i64 noundef 1024, ptr noundef nonnull @equiv_hash, ptr noundef nonnull @equiv_eq, ptr noundef nonnull @equiv_free) #15
  store ptr %4, ptr @equiv, align 8, !tbaa !160
  %5 = tail call fastcc ptr @VEC_tree_heap_alloc() #14
  store ptr %5, ptr @equiv_stack, align 8, !tbaa !160
  tail call void @calculate_dominance_info(i32 noundef 1) #15
  store i8 1, ptr %1, align 8
  %6 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !162
  %7 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 2
  store ptr @uncprop_enter_block, ptr %7, align 8, !tbaa !165
  %8 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 3
  store ptr @uncprop_leave_block, ptr %8, align 8, !tbaa !166
  %9 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !167
  %10 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 6
  store i64 0, ptr %10, align 8, !tbaa !168
  call void @init_walk_dominator_tree(ptr noundef nonnull %1) #15
  %11 = load ptr, ptr @cfun, align 8, !tbaa !160
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !169
  %14 = load ptr, ptr %13, align 8, !tbaa !171
  call void @walk_dominator_tree(ptr noundef nonnull %1, ptr noundef %14) #15
  call void @fini_walk_dominator_tree(ptr noundef nonnull %1) #15
  %15 = load ptr, ptr @equiv, align 8, !tbaa !160
  call void @htab_delete(ptr noundef %15) #15
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull @equiv_stack) #14
  %16 = load ptr, ptr @cfun, align 8, !tbaa !160
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !169
  %19 = load ptr, ptr %18, align 8, !tbaa !171
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !173
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !175
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %53, label %25, !prof !176

25:                                               ; preds = %0
  %26 = getelementptr inbounds i8, ptr %3, i64 8
  br label %27

27:                                               ; preds = %25, %44
  %28 = phi ptr [ %21, %25 ], [ %46, %44 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 1
  %30 = call fastcc ptr @ei_start_1(ptr noundef nonnull %29) #14
  store i32 0, ptr %3, align 8, !tbaa.struct !177
  store ptr %30, ptr %26, align 8, !tbaa.struct !178
  %31 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %30, ptr noundef nonnull %2) #14, !range !179
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %44, label %33, !prof !180

33:                                               ; preds = %27, %39
  %34 = load ptr, ptr %2, align 8, !tbaa !160
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !181
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38, !prof !183

38:                                               ; preds = %33
  call void @free(ptr noundef nonnull %36) #14
  store ptr null, ptr %35, align 8, !tbaa !181
  br label %39

39:                                               ; preds = %33, %38
  call fastcc void @ei_next(ptr noundef nonnull %3) #14
  %40 = load i32, ptr %3, align 8
  %41 = load ptr, ptr %26, align 8
  %42 = call fastcc zeroext i8 @ei_cond(i32 %40, ptr %41, ptr noundef nonnull %2) #14, !range !179
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %33, !prof !184, !llvm.loop !185

44:                                               ; preds = %39, %27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !173
  %47 = load ptr, ptr @cfun, align 8, !tbaa !160
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !169
  %50 = getelementptr inbounds %struct.control_flow_graph, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !175
  %52 = icmp eq ptr %46, %51
  br i1 %52, label %53, label %27, !prof !187, !llvm.loop !188

53:                                               ; preds = %44, %0
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #13
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @associate_equivalences_with_edges() unnamed_addr #1 !prof !153 !PGOFuncName !189 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !160
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !169
  %7 = load ptr, ptr %6, align 8, !tbaa !171
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !173
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !175
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %504, label %13, !prof !176

13:                                               ; preds = %0, %495
  %14 = phi ptr [ %497, %495 ], [ %9, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #13
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %14) #14
  %15 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #14, !range !179
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %495, !prof !190

17:                                               ; preds = %13
  %18 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #14
  %19 = icmp eq ptr %18, null
  br i1 %19, label %495, label %20, !prof !191

20:                                               ; preds = %17
  %21 = call fastcc i32 @gimple_code(ptr noundef nonnull %18) #14, !range !192
  %22 = trunc i32 %21 to i8
  switch i8 %22, label %495 [
    i8 1, label %23
    i8 5, label %401
  ], !prof !193

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %24 = call fastcc i32 @gimple_cond_code(ptr noundef nonnull %18) #14, !range !194
  call void @extract_true_false_edges_from_block(ptr noundef %14, ptr noundef nonnull %2, ptr noundef nonnull %3) #15
  %25 = icmp eq i32 %24, 101
  %26 = add nsw i32 %24, -101
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %28, label %400, !prof !195

28:                                               ; preds = %23
  %29 = call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %18) #14
  %30 = call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %18) #14
  %31 = load i64, ptr %29, align 8
  %32 = and i64 %31, 4259839
  %33 = icmp eq i64 %32, 141
  br i1 %33, label %34, label %75, !prof !196

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !197
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 7
  br i1 %39, label %40, label %75, !prof !198

40:                                               ; preds = %34
  %41 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %30) #15
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %45, !prof !199

43:                                               ; preds = %40
  %44 = load i64, ptr %29, align 8
  br label %75

45:                                               ; preds = %40
  %46 = call ptr @xmalloc(i64 noundef 16) #15
  %47 = getelementptr inbounds %struct.edge_equivalency, ptr %46, i64 0, i32 1
  store ptr %29, ptr %47, align 8, !tbaa !200
  %48 = call i32 @integer_zerop(ptr noundef %30) #15
  %49 = icmp eq i32 %48, 0
  %50 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %51 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  br i1 %25, label %52, label %63, !prof !199

52:                                               ; preds = %45
  %53 = select i1 %49, ptr %51, ptr %50
  store ptr %53, ptr %46, align 8, !tbaa !202
  %54 = load ptr, ptr %2, align 8, !tbaa !160
  %55 = getelementptr inbounds %struct.edge_def, ptr %54, i64 0, i32 3
  store ptr %46, ptr %55, align 8, !tbaa !181
  %56 = call ptr @xmalloc(i64 noundef 16) #15
  %57 = getelementptr inbounds %struct.edge_equivalency, ptr %56, i64 0, i32 1
  store ptr %29, ptr %57, align 8, !tbaa !200
  %58 = call i32 @integer_zerop(ptr noundef %30) #15
  %59 = icmp eq i32 %58, 0
  %60 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %61 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %62 = select i1 %59, ptr %61, ptr %60
  store ptr %62, ptr %56, align 8, !tbaa !202
  br label %395

63:                                               ; preds = %45
  %64 = select i1 %49, ptr %50, ptr %51
  store ptr %64, ptr %46, align 8, !tbaa !202
  %65 = load ptr, ptr %2, align 8, !tbaa !160
  %66 = getelementptr inbounds %struct.edge_def, ptr %65, i64 0, i32 3
  store ptr %46, ptr %66, align 8, !tbaa !181
  %67 = call ptr @xmalloc(i64 noundef 16) #15
  %68 = getelementptr inbounds %struct.edge_equivalency, ptr %67, i64 0, i32 1
  store ptr %29, ptr %68, align 8, !tbaa !200
  %69 = call i32 @integer_zerop(ptr noundef %30) #15
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72, !prof !199

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %63, %71
  %73 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), %71 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), %63 ]
  %74 = load ptr, ptr %73, align 8, !tbaa !160
  store ptr %74, ptr %67, align 8, !tbaa !202
  br label %395

75:                                               ; preds = %43, %34, %28
  %76 = phi i64 [ %44, %43 ], [ %31, %34 ], [ %31, %28 ]
  %77 = and i64 %76, 4259839
  %78 = icmp eq i64 %77, 141
  br i1 %78, label %79, label %400, !prof !203

79:                                               ; preds = %75
  %80 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %30) #15
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %86, !prof !204

82:                                               ; preds = %79
  %83 = load i64, ptr %30, align 8
  %84 = and i64 %83, 4259839
  %85 = icmp eq i64 %84, 141
  br i1 %85, label %86, label %400

86:                                               ; preds = %82, %79
  %87 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !197
  %89 = load i64, ptr %88, align 8
  %90 = and i64 %89, 65535
  %91 = icmp eq i64 %90, 14
  br i1 %91, label %92, label %95, !prof !204

92:                                               ; preds = %86
  %93 = call i32 @vector_type_mode(ptr noundef nonnull %88) #15
  %94 = load ptr, ptr %87, align 8, !tbaa !197
  br label %100

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.tree_type, ptr %88, i64 0, i32 6
  %97 = load i32, ptr %96, align 4
  %98 = lshr i32 %97, 16
  %99 = and i32 %98, 255
  br label %100

100:                                              ; preds = %95, %92
  %101 = phi ptr [ %94, %92 ], [ %88, %95 ]
  %102 = phi i32 [ %93, %92 ], [ %99, %95 ]
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !197
  %106 = icmp eq i8 %105, 8
  br i1 %106, label %164, label %107, !prof !204

107:                                              ; preds = %100
  %108 = load i64, ptr %101, align 8
  %109 = and i64 %108, 65535
  %110 = icmp eq i64 %109, 14
  br i1 %110, label %111, label %114, !prof !204

111:                                              ; preds = %107
  %112 = call i32 @vector_type_mode(ptr noundef nonnull %101) #15
  %113 = load ptr, ptr %87, align 8, !tbaa !197
  br label %119

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.tree_type, ptr %101, i64 0, i32 6
  %116 = load i32, ptr %115, align 4
  %117 = lshr i32 %116, 16
  %118 = and i32 %117, 255
  br label %119

119:                                              ; preds = %114, %111
  %120 = phi ptr [ %113, %111 ], [ %101, %114 ]
  %121 = phi i32 [ %112, %111 ], [ %118, %114 ]
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !197
  %125 = icmp eq i8 %124, 9
  br i1 %125, label %164, label %126, !prof !204

126:                                              ; preds = %119
  %127 = load i64, ptr %120, align 8
  %128 = and i64 %127, 65535
  %129 = icmp eq i64 %128, 14
  br i1 %129, label %130, label %133, !prof !204

130:                                              ; preds = %126
  %131 = call i32 @vector_type_mode(ptr noundef nonnull %120) #15
  %132 = load ptr, ptr %87, align 8, !tbaa !197
  br label %138

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.tree_type, ptr %120, i64 0, i32 6
  %135 = load i32, ptr %134, align 4
  %136 = lshr i32 %135, 16
  %137 = and i32 %136, 255
  br label %138

138:                                              ; preds = %133, %130
  %139 = phi ptr [ %132, %130 ], [ %120, %133 ]
  %140 = phi i32 [ %131, %130 ], [ %137, %133 ]
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !197
  %144 = icmp eq i8 %143, 11
  br i1 %144, label %164, label %145, !prof !204

145:                                              ; preds = %138
  %146 = load i64, ptr %139, align 8
  %147 = and i64 %146, 65535
  %148 = icmp eq i64 %147, 14
  br i1 %148, label %149, label %151, !prof !204

149:                                              ; preds = %145
  %150 = call i32 @vector_type_mode(ptr noundef nonnull %139) #15
  br label %156

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.tree_type, ptr %139, i64 0, i32 6
  %153 = load i32, ptr %152, align 4
  %154 = lshr i32 %153, 16
  %155 = and i32 %154, 255
  br label %156

156:                                              ; preds = %151, %149
  %157 = phi i32 [ %150, %149 ], [ %155, %151 ]
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !197
  %161 = icmp eq i8 %160, 17
  br i1 %161, label %162, label %391, !prof !204

162:                                              ; preds = %156
  %163 = load ptr, ptr %87, align 8, !tbaa !197
  br label %164

164:                                              ; preds = %162, %138, %119, %100
  %165 = phi ptr [ %163, %162 ], [ %139, %138 ], [ %120, %119 ], [ %101, %100 ]
  %166 = load i64, ptr %165, align 8
  %167 = and i64 %166, 65535
  %168 = icmp eq i64 %167, 14
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = call i32 @vector_type_mode(ptr noundef nonnull %165) #15
  %171 = load ptr, ptr %87, align 8, !tbaa !197
  br label %177

172:                                              ; preds = %164
  %173 = getelementptr inbounds %struct.tree_type, ptr %165, i64 0, i32 6
  %174 = load i32, ptr %173, align 4
  %175 = lshr i32 %174, 16
  %176 = and i32 %175, 255
  br label %177

177:                                              ; preds = %172, %169
  %178 = phi ptr [ %171, %169 ], [ %165, %172 ]
  %179 = phi i32 [ %170, %169 ], [ %176, %172 ]
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %180
  %182 = load i8, ptr %181, align 1, !tbaa !197
  %183 = icmp eq i8 %182, 8
  br i1 %183, label %203, label %184

184:                                              ; preds = %177
  %185 = load i64, ptr %178, align 8
  %186 = and i64 %185, 65535
  %187 = icmp eq i64 %186, 14
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = call i32 @vector_type_mode(ptr noundef nonnull %178) #15
  %190 = load ptr, ptr %87, align 8, !tbaa !197
  br label %196

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.tree_type, ptr %178, i64 0, i32 6
  %193 = load i32, ptr %192, align 4
  %194 = lshr i32 %193, 16
  %195 = and i32 %194, 255
  br label %196

196:                                              ; preds = %191, %188
  %197 = phi ptr [ %190, %188 ], [ %178, %191 ]
  %198 = phi i32 [ %189, %188 ], [ %195, %191 ]
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !197
  %202 = icmp eq i8 %201, 9
  br i1 %202, label %203, label %215

203:                                              ; preds = %196, %177
  %204 = phi ptr [ %197, %196 ], [ %178, %177 ]
  %205 = load i64, ptr %204, align 8
  %206 = and i64 %205, 65535
  %207 = icmp eq i64 %206, 14
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = call i32 @vector_type_mode(ptr noundef nonnull %204) #15
  br label %232

210:                                              ; preds = %203
  %211 = getelementptr inbounds %struct.tree_type, ptr %204, i64 0, i32 6
  %212 = load i32, ptr %211, align 4
  %213 = lshr i32 %212, 16
  %214 = and i32 %213, 255
  br label %232

215:                                              ; preds = %196
  %216 = load i64, ptr %197, align 8
  %217 = and i64 %216, 65535
  %218 = icmp eq i64 %217, 14
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = call i32 @vector_type_mode(ptr noundef nonnull %197) #15
  br label %226

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.tree_type, ptr %197, i64 0, i32 6
  %223 = load i32, ptr %222, align 4
  %224 = lshr i32 %223, 16
  %225 = and i32 %224, 255
  br label %226

226:                                              ; preds = %221, %219
  %227 = phi i32 [ %220, %219 ], [ %225, %221 ]
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %228
  %230 = load i8, ptr %229, align 1, !tbaa !197
  %231 = zext i8 %230 to i32
  br label %232

232:                                              ; preds = %208, %210, %226
  %233 = phi i32 [ %231, %226 ], [ %209, %208 ], [ %214, %210 ]
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %234
  %236 = load i8, ptr %235, align 1, !tbaa !197
  %237 = icmp eq i8 %236, 9
  %238 = load ptr, ptr %87, align 8, !tbaa !197
  %239 = load i64, ptr %238, align 8
  %240 = and i64 %239, 65535
  %241 = icmp eq i64 %240, 14
  br i1 %237, label %242, label %306

242:                                              ; preds = %232
  br i1 %241, label %243, label %246

243:                                              ; preds = %242
  %244 = call i32 @vector_type_mode(ptr noundef nonnull %238) #15
  %245 = load ptr, ptr %87, align 8, !tbaa !197
  br label %251

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.tree_type, ptr %238, i64 0, i32 6
  %248 = load i32, ptr %247, align 4
  %249 = lshr i32 %248, 16
  %250 = and i32 %249, 255
  br label %251

251:                                              ; preds = %246, %243
  %252 = phi ptr [ %245, %243 ], [ %238, %246 ]
  %253 = phi i32 [ %244, %243 ], [ %250, %246 ]
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !197
  %257 = icmp eq i8 %256, 8
  br i1 %257, label %277, label %258

258:                                              ; preds = %251
  %259 = load i64, ptr %252, align 8
  %260 = and i64 %259, 65535
  %261 = icmp eq i64 %260, 14
  br i1 %261, label %262, label %265

262:                                              ; preds = %258
  %263 = call i32 @vector_type_mode(ptr noundef nonnull %252) #15
  %264 = load ptr, ptr %87, align 8, !tbaa !197
  br label %270

265:                                              ; preds = %258
  %266 = getelementptr inbounds %struct.tree_type, ptr %252, i64 0, i32 6
  %267 = load i32, ptr %266, align 4
  %268 = lshr i32 %267, 16
  %269 = and i32 %268, 255
  br label %270

270:                                              ; preds = %265, %262
  %271 = phi ptr [ %264, %262 ], [ %252, %265 ]
  %272 = phi i32 [ %263, %262 ], [ %269, %265 ]
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !197
  %276 = icmp eq i8 %275, 9
  br i1 %276, label %277, label %289

277:                                              ; preds = %270, %251
  %278 = phi ptr [ %271, %270 ], [ %252, %251 ]
  %279 = load i64, ptr %278, align 8
  %280 = and i64 %279, 65535
  %281 = icmp eq i64 %280, 14
  br i1 %281, label %282, label %284

282:                                              ; preds = %277
  %283 = call i32 @vector_type_mode(ptr noundef nonnull %278) #15
  br label %370

284:                                              ; preds = %277
  %285 = getelementptr inbounds %struct.tree_type, ptr %278, i64 0, i32 6
  %286 = load i32, ptr %285, align 4
  %287 = lshr i32 %286, 16
  %288 = and i32 %287, 255
  br label %370

289:                                              ; preds = %270
  %290 = load i64, ptr %271, align 8
  %291 = and i64 %290, 65535
  %292 = icmp eq i64 %291, 14
  br i1 %292, label %293, label %295

293:                                              ; preds = %289
  %294 = call i32 @vector_type_mode(ptr noundef nonnull %271) #15
  br label %300

295:                                              ; preds = %289
  %296 = getelementptr inbounds %struct.tree_type, ptr %271, i64 0, i32 6
  %297 = load i32, ptr %296, align 4
  %298 = lshr i32 %297, 16
  %299 = and i32 %298, 255
  br label %300

300:                                              ; preds = %295, %293
  %301 = phi i32 [ %294, %293 ], [ %299, %295 ]
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %302
  %304 = load i8, ptr %303, align 1, !tbaa !197
  %305 = zext i8 %304 to i32
  br label %370

306:                                              ; preds = %232
  br i1 %241, label %307, label %310

307:                                              ; preds = %306
  %308 = call i32 @vector_type_mode(ptr noundef nonnull %238) #15
  %309 = load ptr, ptr %87, align 8, !tbaa !197
  br label %315

310:                                              ; preds = %306
  %311 = getelementptr inbounds %struct.tree_type, ptr %238, i64 0, i32 6
  %312 = load i32, ptr %311, align 4
  %313 = lshr i32 %312, 16
  %314 = and i32 %313, 255
  br label %315

315:                                              ; preds = %310, %307
  %316 = phi ptr [ %309, %307 ], [ %238, %310 ]
  %317 = phi i32 [ %308, %307 ], [ %314, %310 ]
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %318
  %320 = load i8, ptr %319, align 1, !tbaa !197
  %321 = icmp eq i8 %320, 8
  br i1 %321, label %341, label %322

322:                                              ; preds = %315
  %323 = load i64, ptr %316, align 8
  %324 = and i64 %323, 65535
  %325 = icmp eq i64 %324, 14
  br i1 %325, label %326, label %329

326:                                              ; preds = %322
  %327 = call i32 @vector_type_mode(ptr noundef nonnull %316) #15
  %328 = load ptr, ptr %87, align 8, !tbaa !197
  br label %334

329:                                              ; preds = %322
  %330 = getelementptr inbounds %struct.tree_type, ptr %316, i64 0, i32 6
  %331 = load i32, ptr %330, align 4
  %332 = lshr i32 %331, 16
  %333 = and i32 %332, 255
  br label %334

334:                                              ; preds = %329, %326
  %335 = phi ptr [ %328, %326 ], [ %316, %329 ]
  %336 = phi i32 [ %327, %326 ], [ %333, %329 ]
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %337
  %339 = load i8, ptr %338, align 1, !tbaa !197
  %340 = icmp eq i8 %339, 9
  br i1 %340, label %341, label %353

341:                                              ; preds = %334, %315
  %342 = phi ptr [ %335, %334 ], [ %316, %315 ]
  %343 = load i64, ptr %342, align 8
  %344 = and i64 %343, 65535
  %345 = icmp eq i64 %344, 14
  br i1 %345, label %346, label %348

346:                                              ; preds = %341
  %347 = call i32 @vector_type_mode(ptr noundef nonnull %342) #15
  br label %370

348:                                              ; preds = %341
  %349 = getelementptr inbounds %struct.tree_type, ptr %342, i64 0, i32 6
  %350 = load i32, ptr %349, align 4
  %351 = lshr i32 %350, 16
  %352 = and i32 %351, 255
  br label %370

353:                                              ; preds = %334
  %354 = load i64, ptr %335, align 8
  %355 = and i64 %354, 65535
  %356 = icmp eq i64 %355, 14
  br i1 %356, label %357, label %359

357:                                              ; preds = %353
  %358 = call i32 @vector_type_mode(ptr noundef nonnull %335) #15
  br label %364

359:                                              ; preds = %353
  %360 = getelementptr inbounds %struct.tree_type, ptr %335, i64 0, i32 6
  %361 = load i32, ptr %360, align 4
  %362 = lshr i32 %361, 16
  %363 = and i32 %362, 255
  br label %364

364:                                              ; preds = %359, %357
  %365 = phi i32 [ %358, %357 ], [ %363, %359 ]
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %366
  %368 = load i8, ptr %367, align 1, !tbaa !197
  %369 = zext i8 %368 to i32
  br label %370

370:                                              ; preds = %364, %348, %346, %300, %284, %282
  %371 = phi i32 [ %305, %300 ], [ %283, %282 ], [ %288, %284 ], [ %369, %364 ], [ %347, %346 ], [ %352, %348 ]
  %372 = add i32 %371, -38
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %373
  %375 = load ptr, ptr %374, align 8, !tbaa !160
  %376 = getelementptr inbounds %struct.real_format, ptr %375, i64 0, i32 14
  %377 = load i8, ptr %376, align 1, !tbaa !205
  %378 = icmp ne i8 %377, 0
  %379 = load i32, ptr @flag_signed_zeros, align 4
  %380 = icmp ne i32 %379, 0
  %381 = select i1 %378, i1 %380, i1 false
  br i1 %381, label %382, label %391

382:                                              ; preds = %370
  %383 = load i64, ptr %30, align 8
  %384 = and i64 %383, 65535
  %385 = icmp eq i64 %384, 24
  br i1 %385, label %386, label %400

386:                                              ; preds = %382
  %387 = getelementptr inbounds %struct.tree_real_cst, ptr %30, i64 0, i32 1
  %388 = load ptr, ptr %387, align 8, !tbaa !197
  %389 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull @dconst0, ptr noundef %388) #15
  %390 = icmp eq i8 %389, 0
  br i1 %390, label %391, label %400

391:                                              ; preds = %386, %370, %156
  %392 = call ptr @xmalloc(i64 noundef 16) #15
  %393 = getelementptr inbounds %struct.edge_equivalency, ptr %392, i64 0, i32 1
  store ptr %29, ptr %393, align 8, !tbaa !200
  store ptr %30, ptr %392, align 8, !tbaa !202
  %394 = select i1 %25, ptr %2, ptr %3, !prof !207
  br label %395

395:                                              ; preds = %391, %52, %72
  %396 = phi ptr [ %3, %72 ], [ %3, %52 ], [ %394, %391 ]
  %397 = phi ptr [ %67, %72 ], [ %56, %52 ], [ %392, %391 ]
  %398 = load ptr, ptr %396, align 8, !tbaa !160
  %399 = getelementptr inbounds %struct.edge_def, ptr %398, i64 0, i32 3
  store ptr %397, ptr %399, align 8, !tbaa !181
  br label %400

400:                                              ; preds = %395, %386, %382, %23, %82, %75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  br label %495

401:                                              ; preds = %20
  %402 = call fastcc ptr @gimple_switch_index(ptr noundef nonnull %18) #14
  %403 = load i64, ptr %402, align 8
  %404 = and i64 %403, 4259839
  %405 = icmp eq i64 %404, 141
  br i1 %405, label %406, label %495, !prof !208

406:                                              ; preds = %401
  %407 = call fastcc i32 @gimple_switch_num_labels(ptr noundef nonnull %18) #14
  %408 = load ptr, ptr @cfun, align 8, !tbaa !160
  %409 = getelementptr inbounds %struct.function, ptr %408, i64 0, i32 1
  %410 = load ptr, ptr %409, align 8, !tbaa !169
  %411 = getelementptr inbounds %struct.control_flow_graph, ptr %410, i64 0, i32 5
  %412 = load i32, ptr %411, align 8, !tbaa !209
  %413 = sext i32 %412 to i64
  %414 = call ptr @xcalloc(i64 noundef %413, i64 noundef 8) #15
  %415 = icmp sgt i32 %407, 0
  br i1 %415, label %426, label %416, !prof !210

416:                                              ; preds = %454, %406
  %417 = load ptr, ptr @cfun, align 8, !tbaa !160
  %418 = getelementptr inbounds %struct.function, ptr %417, i64 0, i32 1
  %419 = load ptr, ptr %418, align 8, !tbaa !169
  %420 = getelementptr inbounds %struct.control_flow_graph, ptr %419, i64 0, i32 3
  %421 = load i32, ptr %420, align 8, !tbaa !211
  %422 = icmp sgt i32 %421, 0
  br i1 %422, label %423, label %494, !prof !210

423:                                              ; preds = %416
  %424 = getelementptr inbounds %struct.tree_common, ptr %402, i64 0, i32 2
  %425 = load ptr, ptr @global_trees, align 16
  br label %457

426:                                              ; preds = %406, %454
  %427 = phi i32 [ %455, %454 ], [ 0, %406 ]
  %428 = call fastcc ptr @gimple_switch_label(ptr noundef nonnull %18, i32 noundef %427) #14
  %429 = load ptr, ptr @cfun, align 8, !tbaa !160
  %430 = getelementptr inbounds %struct.tree_exp, ptr %428, i64 1, i32 0, i32 1
  %431 = load ptr, ptr %430, align 8, !tbaa !197
  %432 = call ptr @label_to_block_fn(ptr noundef %429, ptr noundef %431) #15
  %433 = getelementptr inbounds %struct.tree_exp, ptr %428, i64 1
  %434 = load ptr, ptr %433, align 8, !tbaa !197
  %435 = icmp eq ptr %434, null
  br i1 %435, label %436, label %447, !prof !212

436:                                              ; preds = %426
  %437 = getelementptr inbounds %struct.tree_exp, ptr %428, i64 0, i32 3
  %438 = load ptr, ptr %437, align 8, !tbaa !197
  %439 = icmp eq ptr %438, null
  br i1 %439, label %447, label %440, !prof !213

440:                                              ; preds = %436
  %441 = getelementptr inbounds %struct.basic_block_def, ptr %432, i64 0, i32 9
  %442 = load i32, ptr %441, align 8, !tbaa !214
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds ptr, ptr %414, i64 %443
  %445 = load ptr, ptr %444, align 8, !tbaa !160
  %446 = icmp eq ptr %445, null
  br i1 %446, label %453, label %447, !prof !215

447:                                              ; preds = %440, %436, %426
  %448 = load ptr, ptr @global_trees, align 16
  %449 = getelementptr inbounds %struct.basic_block_def, ptr %432, i64 0, i32 9
  %450 = load i32, ptr %449, align 8, !tbaa !214
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds ptr, ptr %414, i64 %451
  store ptr %448, ptr %452, align 8, !tbaa !160
  br label %454

453:                                              ; preds = %440
  store ptr %428, ptr %444, align 8, !tbaa !160
  br label %454

454:                                              ; preds = %453, %447
  %455 = add nuw nsw i32 %427, 1
  %456 = icmp eq i32 %455, %407
  br i1 %456, label %416, label %426, !prof !216, !llvm.loop !217

457:                                              ; preds = %423, %484
  %458 = phi ptr [ %417, %423 ], [ %485, %484 ]
  %459 = phi ptr [ %425, %423 ], [ %486, %484 ]
  %460 = phi i64 [ 0, %423 ], [ %487, %484 ]
  %461 = getelementptr inbounds ptr, ptr %414, i64 %460
  %462 = load ptr, ptr %461, align 8, !tbaa !160
  %463 = icmp eq ptr %462, null
  %464 = icmp eq ptr %462, %459
  %465 = select i1 %463, i1 true, i1 %464
  br i1 %465, label %484, label %466, !prof !218

466:                                              ; preds = %457
  %467 = load ptr, ptr %424, align 8, !tbaa !197
  %468 = getelementptr inbounds %struct.tree_exp, ptr %462, i64 0, i32 3
  %469 = load ptr, ptr %468, align 8, !tbaa !197
  %470 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %467, ptr noundef %469) #15
  %471 = call ptr @xmalloc(i64 noundef 16) #15
  store ptr %470, ptr %471, align 8, !tbaa !202
  %472 = getelementptr inbounds %struct.edge_equivalency, ptr %471, i64 0, i32 1
  store ptr %402, ptr %472, align 8, !tbaa !200
  %473 = load ptr, ptr @cfun, align 8, !tbaa !160
  %474 = getelementptr inbounds %struct.function, ptr %473, i64 0, i32 1
  %475 = load ptr, ptr %474, align 8, !tbaa !169
  %476 = getelementptr inbounds %struct.control_flow_graph, ptr %475, i64 0, i32 2
  %477 = load ptr, ptr %476, align 8, !tbaa !219
  %478 = trunc i64 %460 to i32
  %479 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %477, i32 noundef %478) #14
  %480 = call ptr @find_edge(ptr noundef %14, ptr noundef %479) #15
  %481 = getelementptr inbounds %struct.edge_def, ptr %480, i64 0, i32 3
  store ptr %471, ptr %481, align 8, !tbaa !181
  %482 = load ptr, ptr @global_trees, align 16
  %483 = load ptr, ptr @cfun, align 8, !tbaa !160
  br label %484

484:                                              ; preds = %466, %457
  %485 = phi ptr [ %483, %466 ], [ %458, %457 ]
  %486 = phi ptr [ %482, %466 ], [ %459, %457 ]
  %487 = add nuw nsw i64 %460, 1
  %488 = getelementptr inbounds %struct.function, ptr %485, i64 0, i32 1
  %489 = load ptr, ptr %488, align 8, !tbaa !169
  %490 = getelementptr inbounds %struct.control_flow_graph, ptr %489, i64 0, i32 3
  %491 = load i32, ptr %490, align 8, !tbaa !211
  %492 = sext i32 %491 to i64
  %493 = icmp slt i64 %487, %492
  br i1 %493, label %457, label %494, !prof !220, !llvm.loop !221

494:                                              ; preds = %484, %416
  call void @free(ptr noundef %414) #14
  br label %495

495:                                              ; preds = %20, %400, %494, %401, %17, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #13
  %496 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %497 = load ptr, ptr %496, align 8, !tbaa !173
  %498 = load ptr, ptr @cfun, align 8, !tbaa !160
  %499 = getelementptr inbounds %struct.function, ptr %498, i64 0, i32 1
  %500 = load ptr, ptr %499, align 8, !tbaa !169
  %501 = getelementptr inbounds %struct.control_flow_graph, ptr %500, i64 0, i32 1
  %502 = load ptr, ptr %501, align 8, !tbaa !175
  %503 = icmp eq ptr %497, %502
  br i1 %503, label %504, label %13, !prof !187, !llvm.loop !222

504:                                              ; preds = %495, %0
  ret void
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @equiv_hash(ptr nocapture noundef readonly %0) #1 !prof !223 !PGOFuncName !224 {
  %2 = load ptr, ptr %0, align 8, !tbaa !225
  %3 = tail call i32 @iterative_hash_expr(ptr noundef %2, i32 noundef 0) #15
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @equiv_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 !prof !227 !PGOFuncName !228 {
  %3 = load ptr, ptr %0, align 8, !tbaa !225
  %4 = load ptr, ptr %1, align 8, !tbaa !225
  %5 = tail call i32 @operand_equal_p(ptr noundef %3, ptr noundef %4, i32 noundef 0) #15
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal void @equiv_free(ptr nocapture noundef %0) #4 !prof !229 !PGOFuncName !230 {
  %2 = getelementptr inbounds %struct.equiv_hash_elt, ptr %0, i64 0, i32 1
  tail call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %2) #14
  tail call void @free(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc() unnamed_addr #1 !prof !153 !PGOFuncName !231 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 2) #15
  ret ptr %1
}

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @uncprop_enter_block(ptr nocapture readnone %0, ptr noundef %1) #1 !prof !232 !PGOFuncName !233 {
  %3 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %1) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5, !prof !234

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @single_incoming_edge_ignoring_loop_edges(ptr noundef %1) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8, !prof !235

8:                                                ; preds = %5
  %9 = load ptr, ptr %6, align 8, !tbaa !236
  %10 = icmp eq ptr %9, %3
  br i1 %10, label %11, label %20, !prof !237

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.edge_def, ptr %6, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !181
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15, !prof !238

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !202
  %17 = getelementptr inbounds %struct.edge_equivalency, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !200
  tail call fastcc void @record_equiv(ptr noundef %16, ptr noundef %18) #14
  %19 = load ptr, ptr %13, align 8, !tbaa !202
  br label %20

20:                                               ; preds = %5, %8, %11, %2, %15
  %21 = phi ptr [ %19, %15 ], [ null, %2 ], [ null, %11 ], [ null, %8 ], [ null, %5 ]
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull @equiv_stack, ptr noundef %21) #14
  tail call fastcc void @uncprop_into_successor_phis(ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @uncprop_leave_block(ptr nocapture readnone %0, ptr nocapture readnone %1) #1 !prof !232 !PGOFuncName !239 {
  %3 = load ptr, ptr @equiv_stack, align 8
  %4 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !240

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
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #4 !prof !241 !PGOFuncName !242 {
  %2 = load ptr, ptr %0, align 8, !tbaa !160
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !243

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #14
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !160
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #5 !prof !244 !PGOFuncName !245 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 !prof !246 !PGOFuncName !247 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #14, !range !179
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !248

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #14
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !160
  ret i8 %10
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #1 !prof !249 !PGOFuncName !250 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !251

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #14
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #14
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !252

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef nonnull @.str.2) #15
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !253
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !253
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 !prof !255 !PGOFuncName !256 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #14
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #14
  store ptr %4, ptr %0, align 8, !tbaa !257
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !259
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !260
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #8 !prof !261 !PGOFuncName !262 {
  %2 = load ptr, ptr %0, align 8, !tbaa !257
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #9 !prof !263 !PGOFuncName !264 {
  %2 = load ptr, ptr %0, align 8, !tbaa !257
  %3 = load ptr, ptr %2, align 8, !tbaa !265
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !267 !PGOFuncName !268 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !269 !PGOFuncName !270 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: optsize
declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #1 !prof !271 !PGOFuncName !272 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #14
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #1 !prof !271 !PGOFuncName !273 {
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
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #1 !prof !274 !PGOFuncName !275 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #14
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_switch_num_labels(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !274 !PGOFuncName !276 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #14
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %5, label %4, !prof !277

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
define internal fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !278 !PGOFuncName !279 {
  %3 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #14
  %4 = add i32 %1, 1
  %5 = icmp ugt i32 %3, %4
  br i1 %5, label %7, label %6, !prof !280

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
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !281 !PGOFuncName !282 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !160
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !255 !PGOFuncName !283 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !284
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !285

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !197
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !286

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !287
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #8 !prof !255 !PGOFuncName !289 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !286

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !290
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !292 !PGOFuncName !293 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #14, !range !179
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !294

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #14
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !160
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !292 !PGOFuncName !295 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !192
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !292 !PGOFuncName !296 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #14
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !297
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !294

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !292 !PGOFuncName !298 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !192
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #14
  ret i32 %3
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #5 !prof !292 !PGOFuncName !299 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !155
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !300 !PGOFuncName !301 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !197
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
define internal fastcc ptr @single_incoming_edge_ignoring_loop_edges(ptr noundef %0) unnamed_addr #1 !prof !255 !PGOFuncName !302 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #14
  store i32 0, ptr %3, align 8, !tbaa.struct !177
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !178
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #14, !range !179
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %24, label %8, !prof !303

8:                                                ; preds = %1, %18
  %9 = phi ptr [ %19, %18 ], [ null, %1 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !160
  %11 = load ptr, ptr %10, align 8, !tbaa !236
  %12 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !304
  %14 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %11, ptr noundef %13) #15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18, !prof !305

16:                                               ; preds = %8
  %17 = icmp eq ptr %9, null
  br i1 %17, label %18, label %24, !prof !306

18:                                               ; preds = %16, %8
  %19 = phi ptr [ %9, %8 ], [ %10, %16 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #14
  %20 = load i32, ptr %3, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = call fastcc zeroext i8 @ei_cond(i32 %20, ptr %21, ptr noundef nonnull %2) #14, !range !179
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %8, !prof !307, !llvm.loop !308

24:                                               ; preds = %16, %18, %1
  %25 = phi ptr [ null, %1 ], [ %19, %18 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_equiv(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !309 !PGOFuncName !310 {
  %3 = tail call ptr @xmalloc(i64 noundef 16) #15
  store ptr %0, ptr %3, align 8, !tbaa !225
  %4 = getelementptr inbounds %struct.equiv_hash_elt, ptr %3, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !311
  %5 = load ptr, ptr @equiv, align 8, !tbaa !160
  %6 = tail call ptr @htab_find_slot(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 1) #15
  %7 = load ptr, ptr %6, align 8, !tbaa !160
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !312

9:                                                ; preds = %2
  store ptr %3, ptr %6, align 8, !tbaa !160
  br label %12

10:                                               ; preds = %2
  tail call void @free(ptr noundef nonnull %3) #14
  %11 = load ptr, ptr %6, align 8, !tbaa !160
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi ptr [ %11, %10 ], [ %3, %9 ]
  %14 = getelementptr inbounds %struct.equiv_hash_elt, ptr %13, i64 0, i32 1
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %14, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 !prof !313 !PGOFuncName !314 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #14
  %3 = load ptr, ptr %0, align 8, !tbaa !160
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uncprop_into_successor_phis(ptr noundef %0) unnamed_addr #1 !prof !232 !PGOFuncName !315 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.equiv_hash_elt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %6) #14
  store i32 0, ptr %3, align 8, !tbaa.struct !177
  %8 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %7, ptr %8, align 8, !tbaa.struct !178
  %9 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %7, ptr noundef nonnull %2) #14, !range !179
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %86, label %11, !prof !316

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.equiv_hash_elt, ptr %5, i64 0, i32 1
  br label %13

13:                                               ; preds = %11, %81
  %14 = load ptr, ptr %2, align 8, !tbaa !160
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !304
  %17 = call fastcc ptr @phi_nodes(ptr noundef %16) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %18 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %17) #14, !range !179
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %81, !prof !317

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !181
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24, !prof !318

24:                                               ; preds = %20
  %25 = load ptr, ptr %22, align 8, !tbaa !202
  %26 = getelementptr inbounds %struct.edge_equivalency, ptr %22, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !200
  call fastcc void @record_equiv(ptr noundef %25, ptr noundef %27) #14
  br label %28

28:                                               ; preds = %24, %20
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %17) #14
  %29 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #14, !range !179
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %76, !prof !319

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 6
  br label %33

33:                                               ; preds = %31, %73
  %34 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #14
  %35 = load i32, ptr %32, align 4, !tbaa !320
  %36 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %34, i32 noundef %35) #14
  %37 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %36) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %38 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %37) #15
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %48, !prof !321

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.tree_ssa_name, ptr %37, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !197
  %43 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %34) #14
  %44 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %43) #14
  %45 = getelementptr inbounds %struct.tree_ssa_name, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !197
  %47 = icmp eq ptr %42, %46
  br i1 %47, label %48, label %73, !prof !322

48:                                               ; preds = %40, %33
  store ptr %37, ptr %5, align 8, !tbaa !225
  store ptr null, ptr %12, align 8, !tbaa !311
  %49 = load ptr, ptr @equiv, align 8, !tbaa !160
  %50 = call ptr @htab_find_slot(ptr noundef %49, ptr noundef nonnull %5, i32 noundef 0) #15
  %51 = icmp eq ptr %50, null
  br i1 %51, label %73, label %52, !prof !323

52:                                               ; preds = %48
  %53 = load ptr, ptr %50, align 8, !tbaa !160
  %54 = getelementptr inbounds %struct.equiv_hash_elt, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !311
  %56 = call fastcc i32 @VEC_tree_base_length(ptr noundef %55) #14
  br label %57

57:                                               ; preds = %61, %52
  %58 = phi i32 [ %56, %52 ], [ %59, %61 ]
  %59 = add i32 %58, -1
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %73, !prof !324

61:                                               ; preds = %57
  %62 = call fastcc ptr @VEC_tree_base_index(ptr noundef %55, i32 noundef %59) #14
  %63 = getelementptr inbounds %struct.tree_ssa_name, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !197
  %65 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %34) #14
  %66 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %65) #14
  %67 = getelementptr inbounds %struct.tree_ssa_name, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !197
  %69 = icmp eq ptr %64, %68
  br i1 %69, label %70, label %57, !prof !325, !llvm.loop !326

70:                                               ; preds = %61
  %71 = load i32, ptr %32, align 4, !tbaa !320
  %72 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %34, i32 noundef %71) #14
  call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %72, ptr noundef nonnull %62) #14
  br label %73

73:                                               ; preds = %57, %70, %48, %40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call fastcc void @gsi_next(ptr noundef nonnull %4) #14
  %74 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #14, !range !179
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %33, label %76, !prof !327, !llvm.loop !328

76:                                               ; preds = %73, %28
  %77 = load ptr, ptr %21, align 8, !tbaa !181
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79, !prof !318

79:                                               ; preds = %76
  %80 = load ptr, ptr %77, align 8, !tbaa !202
  call fastcc void @remove_equivalence(ptr noundef %80) #14
  br label %81

81:                                               ; preds = %76, %79, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  call fastcc void @ei_next(ptr noundef nonnull %3) #14
  %82 = load i32, ptr %3, align 8
  %83 = load ptr, ptr %8, align 8
  %84 = call fastcc zeroext i8 @ei_cond(i32 %82, ptr %83, ptr noundef nonnull %2) #14, !range !179
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %13, !prof !329, !llvm.loop !330

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
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #1 !prof !313 !PGOFuncName !331 {
  %2 = load ptr, ptr %0, align 8, !tbaa !160
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !332

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #15
  store ptr %6, ptr %0, align 8, !tbaa !160
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !313 !PGOFuncName !333 {
  %3 = load i32, ptr %0, align 8, !tbaa !334
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !334
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !160
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #8 !prof !313 !PGOFuncName !336 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !337

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !338
  %6 = load i32, ptr %0, align 8, !tbaa !334
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
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !339 !PGOFuncName !340 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !284
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !341

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 510, ptr noundef nonnull @.str.2) #15
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !197
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !342

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !343
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #8 !prof !339 !PGOFuncName !344 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !345

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !346
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 !prof !347 !PGOFuncName !348 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !257
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !259
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6, !prof !349

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !265
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !349

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #14
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !260
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !350 !PGOFuncName !351 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !352
  %4 = load ptr, ptr %3, align 8, !tbaa !160
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !354 !PGOFuncName !355 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #14
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !356 !PGOFuncName !357 {
  %2 = load ptr, ptr %0, align 8, !tbaa !160
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #5 !prof !356 !PGOFuncName !358 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #8 !prof !359 !PGOFuncName !360 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !361

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !334
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !362 !PGOFuncName !363 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !160
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !364 !PGOFuncName !365 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !352
  store ptr %1, ptr %4, align 8, !tbaa !160
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #7 !prof !350 !PGOFuncName !366 {
  %2 = load ptr, ptr %0, align 8, !tbaa !257
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !367
  store ptr %4, ptr %0, align 8, !tbaa !257
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_equivalence(ptr noundef %0) unnamed_addr #1 !prof !309 !PGOFuncName !368 {
  %2 = alloca %struct.equiv_hash_elt, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  store ptr %0, ptr %2, align 8, !tbaa !225
  %3 = getelementptr inbounds %struct.equiv_hash_elt, ptr %2, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !311
  %4 = load ptr, ptr @equiv, align 8, !tbaa !160
  %5 = call ptr @htab_find_slot(ptr noundef %4, ptr noundef nonnull %2, i32 noundef 0) #15
  %6 = load ptr, ptr %5, align 8, !tbaa !160
  %7 = getelementptr inbounds %struct.equiv_hash_elt, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !311
  %9 = call fastcc ptr @VEC_tree_base_pop(ptr noundef %8) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #8 !prof !347 !PGOFuncName !369 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !349

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !346
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !347 !PGOFuncName !370 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !197
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !354 !PGOFuncName !371 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !197
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !372

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3103, ptr noundef nonnull @.str.2) #15
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #11 !prof !364 !PGOFuncName !373 {
  %2 = load ptr, ptr %0, align 8, !tbaa !374
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !375

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !376
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !376
  store ptr %2, ptr %6, align 8, !tbaa !374
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !364 !PGOFuncName !377 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4, !prof !378

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8, !prof !375

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !374
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #14
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !364 !PGOFuncName !379 {
  store ptr %1, ptr %0, align 8, !tbaa !374
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !376
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !376
  store ptr %0, ptr %4, align 8, !tbaa !374
  store ptr %0, ptr %3, align 8, !tbaa !376
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #10 !prof !313 !PGOFuncName !380 {
  %2 = load i32, ptr %0, align 8, !tbaa !334
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !334
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !160
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #1 !prof !246 !PGOFuncName !381 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !382

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #1 !prof !383 !PGOFuncName !384 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !385

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #14
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #14
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #8 !prof !386 !PGOFuncName !387 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !388

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !389
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #1 !prof !391 !PGOFuncName !392 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !393

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 687, ptr noundef nonnull @.str.2) #15
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !160
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !383 !PGOFuncName !394 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !160
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!152}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151}
!35 = !{ptr @tree_ssa_uncprop, ptr @associate_equivalences_with_edges, i64 38}
!36 = !{ptr @tree_ssa_uncprop, ptr @htab_create, i64 38}
!37 = !{ptr @tree_ssa_uncprop, ptr @VEC_tree_heap_alloc, i64 38}
!38 = !{ptr @tree_ssa_uncprop, ptr @calculate_dominance_info, i64 38}
!39 = !{ptr @tree_ssa_uncprop, ptr @init_walk_dominator_tree, i64 38}
!40 = !{ptr @tree_ssa_uncprop, ptr @walk_dominator_tree, i64 38}
!41 = !{ptr @tree_ssa_uncprop, ptr @fini_walk_dominator_tree, i64 38}
!42 = !{ptr @tree_ssa_uncprop, ptr @htab_delete, i64 38}
!43 = !{ptr @tree_ssa_uncprop, ptr @VEC_tree_heap_free, i64 38}
!44 = !{ptr @tree_ssa_uncprop, ptr @ei_start_1, i64 150111}
!45 = !{ptr @tree_ssa_uncprop, ptr @ei_cond, i64 439565}
!46 = !{ptr @tree_ssa_uncprop, ptr @free, i64 146817}
!47 = !{ptr @tree_ssa_uncprop, ptr @ei_next, i64 289454}
!48 = !{ptr @associate_equivalences_with_edges, ptr @gsi_last_bb, i64 150111}
!49 = !{ptr @associate_equivalences_with_edges, ptr @gsi_end_p, i64 150111}
!50 = !{ptr @associate_equivalences_with_edges, ptr @gsi_stmt, i64 138884}
!51 = !{ptr @associate_equivalences_with_edges, ptr @gimple_code, i64 138883}
!52 = !{ptr @associate_equivalences_with_edges, ptr @gimple_cond_code, i64 136574}
!53 = !{ptr @associate_equivalences_with_edges, ptr @extract_true_false_edges_from_block, i64 136574}
!54 = !{ptr @associate_equivalences_with_edges, ptr @gimple_cond_lhs, i64 136358}
!55 = !{ptr @associate_equivalences_with_edges, ptr @gimple_cond_rhs, i64 136358}
!56 = !{ptr @associate_equivalences_with_edges, ptr @is_gimple_min_invariant, i64 136357}
!57 = !{ptr @associate_equivalences_with_edges, ptr @xmalloc, i64 146754}
!58 = !{ptr @associate_equivalences_with_edges, ptr @integer_zerop, i64 18576}
!59 = !{ptr @associate_equivalences_with_edges, ptr @vector_type_mode, i64 12}
!60 = !{ptr @associate_equivalences_with_edges, ptr @real_compare, i64 1}
!61 = !{ptr @associate_equivalences_with_edges, ptr @gimple_switch_index, i64 40}
!62 = !{ptr @associate_equivalences_with_edges, ptr @gimple_switch_num_labels, i64 38}
!63 = !{ptr @associate_equivalences_with_edges, ptr @xcalloc, i64 38}
!64 = !{ptr @associate_equivalences_with_edges, ptr @gimple_switch_label, i64 8585}
!65 = !{ptr @associate_equivalences_with_edges, ptr @label_to_block_fn, i64 8585}
!66 = !{ptr @associate_equivalences_with_edges, ptr @fold_convert_loc, i64 1112}
!67 = !{ptr @associate_equivalences_with_edges, ptr @VEC_basic_block_base_index, i64 1112}
!68 = !{ptr @associate_equivalences_with_edges, ptr @find_edge, i64 1112}
!69 = !{ptr @associate_equivalences_with_edges, ptr @free, i64 38}
!70 = !{ptr @equiv_hash, ptr @iterative_hash_expr, i64 467041}
!71 = !{ptr @equiv_eq, ptr @operand_equal_p, i64 322331}
!72 = !{ptr @equiv_free, ptr @VEC_tree_heap_free, i64 1909}
!73 = !{ptr @equiv_free, ptr @free, i64 1909}
!74 = !{ptr @VEC_tree_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 38}
!75 = !{ptr @uncprop_enter_block, ptr @get_immediate_dominator, i64 154098}
!76 = !{ptr @uncprop_enter_block, ptr @single_incoming_edge_ignoring_loop_edges, i64 154059}
!77 = !{ptr @uncprop_enter_block, ptr @record_equiv, i64 60531}
!78 = !{ptr @uncprop_enter_block, ptr @VEC_tree_heap_safe_push, i64 154098}
!79 = !{ptr @uncprop_enter_block, ptr @uncprop_into_successor_phis, i64 154098}
!80 = !{ptr @uncprop_leave_block, ptr @VEC_tree_base_pop, i64 154098}
!81 = !{ptr @uncprop_leave_block, ptr @remove_equivalence, i64 60532}
!82 = !{ptr @VEC_tree_heap_free, ptr @free, i64 1946}
!83 = !{ptr @ei_cond, ptr @ei_end_p, i64 1210456}
!84 = !{ptr @ei_cond, ptr @ei_edge, i64 800395}
!85 = !{ptr @ei_next, ptr @ei_container, i64 1496475}
!86 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 748238}
!87 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!88 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 154060}
!89 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 154060}
!90 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 139949}
!91 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 139949}
!92 = !{ptr @gimple_switch_index, ptr @gimple_op, i64 40}
!93 = !{ptr @gimple_switch_num_labels, ptr @gimple_num_ops, i64 40}
!94 = !{ptr @gimple_switch_num_labels, ptr @fancy_abort, i64 1}
!95 = !{ptr @gimple_switch_label, ptr @gimple_num_ops, i64 9249}
!96 = !{ptr @gimple_switch_label, ptr @fancy_abort, i64 1}
!97 = !{ptr @gimple_switch_label, ptr @gimple_op, i64 9249}
!98 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 289187}
!99 = !{ptr @gimple_op, ptr @gimple_ops, i64 289186}
!100 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 289187}
!101 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 289187}
!102 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!103 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 289187}
!104 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 289187}
!105 = !{ptr @single_incoming_edge_ignoring_loop_edges, ptr @ei_start_1, i64 154060}
!106 = !{ptr @single_incoming_edge_ignoring_loop_edges, ptr @ei_cond, i64 339070}
!107 = !{ptr @single_incoming_edge_ignoring_loop_edges, ptr @dominated_by_p, i64 247645}
!108 = !{ptr @single_incoming_edge_ignoring_loop_edges, ptr @ei_next, i64 185010}
!109 = !{ptr @record_equiv, ptr @xmalloc, i64 141760}
!110 = !{ptr @record_equiv, ptr @htab_find_slot, i64 141760}
!111 = !{ptr @record_equiv, ptr @free, i64 139850}
!112 = !{ptr @record_equiv, ptr @VEC_tree_heap_safe_push, i64 141760}
!113 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_heap_reserve, i64 295858}
!114 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_base_quick_push, i64 295858}
!115 = !{ptr @uncprop_into_successor_phis, ptr @ei_start_1, i64 154098}
!116 = !{ptr @uncprop_into_successor_phis, ptr @ei_cond, i64 451205}
!117 = !{ptr @uncprop_into_successor_phis, ptr @phi_nodes, i64 297107}
!118 = !{ptr @uncprop_into_successor_phis, ptr @gimple_seq_empty_p, i64 297107}
!119 = !{ptr @uncprop_into_successor_phis, ptr @record_equiv, i64 81228}
!120 = !{ptr @uncprop_into_successor_phis, ptr @gsi_start, i64 179263}
!121 = !{ptr @uncprop_into_successor_phis, ptr @gsi_end_p, i64 362783}
!122 = !{ptr @uncprop_into_successor_phis, ptr @gsi_stmt, i64 183520}
!123 = !{ptr @uncprop_into_successor_phis, ptr @gimple_phi_arg_imm_use_ptr, i64 184272}
!124 = !{ptr @uncprop_into_successor_phis, ptr @get_use_from_ptr, i64 183520}
!125 = !{ptr @uncprop_into_successor_phis, ptr @is_gimple_min_invariant, i64 183520}
!126 = !{ptr @uncprop_into_successor_phis, ptr @gimple_phi_result_ptr, i64 133618}
!127 = !{ptr @uncprop_into_successor_phis, ptr @get_def_from_ptr, i64 133618}
!128 = !{ptr @uncprop_into_successor_phis, ptr @htab_find_slot, i64 183519}
!129 = !{ptr @uncprop_into_successor_phis, ptr @VEC_tree_base_length, i64 35762}
!130 = !{ptr @uncprop_into_successor_phis, ptr @VEC_tree_base_index, i64 15615}
!131 = !{ptr @uncprop_into_successor_phis, ptr @set_ssa_use_from_ptr, i64 752}
!132 = !{ptr @uncprop_into_successor_phis, ptr @gsi_next, i64 183520}
!133 = !{ptr @uncprop_into_successor_phis, ptr @remove_equivalence, i64 81228}
!134 = !{ptr @uncprop_into_successor_phis, ptr @ei_next, i64 297107}
!135 = !{ptr @VEC_tree_heap_reserve, ptr @VEC_tree_base_space, i64 295858}
!136 = !{ptr @VEC_tree_heap_reserve, ptr @vec_heap_p_reserve, i64 2256}
!137 = !{ptr @phi_nodes, ptr @fancy_abort, i64 1}
!138 = !{ptr @gsi_start, ptr @gimple_seq_first, i64 179264}
!139 = !{ptr @gsi_start, ptr @gimple_bb, i64 179262}
!140 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 184272}
!141 = !{ptr @set_ssa_use_from_ptr, ptr @delink_imm_use, i64 751}
!142 = !{ptr @set_ssa_use_from_ptr, ptr @link_imm_use, i64 751}
!143 = !{ptr @remove_equivalence, ptr @htab_find_slot, i64 141760}
!144 = !{ptr @remove_equivalence, ptr @VEC_tree_base_pop, i64 141760}
!145 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!146 = !{ptr @link_imm_use, ptr @link_imm_use_to_list, i64 749}
!147 = !{ptr @ei_end_p, ptr @ei_container, i64 2420911}
!148 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 1210456}
!149 = !{ptr @ei_edge, ptr @ei_container, i64 1600789}
!150 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 800395}
!151 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!152 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!153 = !{!"function_entry_count", i64 38}
!154 = !{!"tree-ssa-uncprop.c:gate_uncprop"}
!155 = !{!156, !156, i64 0}
!156 = !{!"int", !157, i64 0}
!157 = !{!"omnipotent char", !158, i64 0}
!158 = !{!"Simple C/C++ TBAA"}
!159 = !{!"tree-ssa-uncprop.c:tree_ssa_uncprop"}
!160 = !{!161, !161, i64 0}
!161 = !{!"any pointer", !157, i64 0}
!162 = !{!163, !161, i64 8}
!163 = !{!"dom_walk_data", !156, i64 0, !161, i64 8, !161, i64 16, !161, i64 24, !161, i64 32, !161, i64 40, !164, i64 48, !161, i64 56}
!164 = !{!"long", !157, i64 0}
!165 = !{!163, !161, i64 16}
!166 = !{!163, !161, i64 24}
!167 = !{!163, !161, i64 32}
!168 = !{!163, !164, i64 48}
!169 = !{!170, !161, i64 8}
!170 = !{!"function", !161, i64 0, !161, i64 8, !161, i64 16, !161, i64 24, !161, i64 32, !161, i64 40, !161, i64 48, !161, i64 56, !161, i64 64, !161, i64 72, !161, i64 80, !161, i64 88, !161, i64 96, !156, i64 104, !156, i64 108, !156, i64 112, !156, i64 116, !156, i64 120, !156, i64 124, !161, i64 128, !156, i64 136, !156, i64 137, !156, i64 138, !156, i64 138, !156, i64 138, !156, i64 138, !156, i64 138, !156, i64 138, !156, i64 138, !156, i64 139, !156, i64 139, !156, i64 139, !156, i64 139, !156, i64 139, !156, i64 139, !156, i64 139}
!171 = !{!172, !161, i64 0}
!172 = !{!"control_flow_graph", !161, i64 0, !161, i64 8, !161, i64 16, !156, i64 24, !156, i64 28, !156, i64 32, !161, i64 40, !156, i64 48, !157, i64 52, !157, i64 60, !156, i64 68, !156, i64 72}
!173 = !{!174, !161, i64 56}
!174 = !{!"basic_block_def", !161, i64 0, !161, i64 8, !161, i64 16, !161, i64 24, !157, i64 32, !161, i64 48, !161, i64 56, !157, i64 64, !164, i64 72, !156, i64 80, !156, i64 84, !156, i64 88, !156, i64 92, !156, i64 96}
!175 = !{!172, !161, i64 8}
!176 = !{!"branch_weights", i32 1, i32 155}
!177 = !{i64 0, i64 4, !155, i64 8, i64 8, !160}
!178 = !{i64 0, i64 8, !160}
!179 = !{i8 0, i8 2}
!180 = !{!"branch_weights", i32 1, i32 154060}
!181 = !{!182, !161, i64 24}
!182 = !{!"edge_def", !161, i64 0, !161, i64 8, !157, i64 16, !161, i64 24, !161, i64 32, !156, i64 40, !156, i64 44, !156, i64 48, !156, i64 52, !164, i64 56}
!183 = !{!"branch_weights", i32 146391, i32 150681}
!184 = !{!"branch_weights", i32 154060, i32 143011}
!185 = distinct !{!185, !186}
!186 = !{!"llvm.loop.mustprogress"}
!187 = !{!"branch_weights", i32 155, i32 616089}
!188 = distinct !{!188, !186}
!189 = !{!"tree-ssa-uncprop.c:associate_equivalences_with_edges"}
!190 = !{!"branch_weights", i32 142540, i32 11522}
!191 = !{!"branch_weights", i32 1, i32 142540}
!192 = !{i32 0, i32 256}
!193 = !{!"branch_weights", i32 5522100, i32 332345441, i32 97170}
!194 = !{i32 0, i32 65536}
!195 = !{!"branch_weights", i32 -1939958560, i32 3735594}
!196 = !{!"branch_weights", i32 -1846716984, i32 34987}
!197 = !{!157, !157, i64 0}
!198 = !{!"branch_weights", i32 9534, i32 130417}
!199 = !{!"branch_weights", i32 1, i32 9534}
!200 = !{!201, !161, i64 8}
!201 = !{!"edge_equivalency", !161, i64 0, !161, i64 8}
!202 = !{!201, !161, i64 0}
!203 = !{!"branch_weights", i32 -42818824, i32 65208}
!204 = !{!"branch_weights", i32 1, i32 130417}
!205 = !{!206, !157, i64 49}
!206 = !{!"real_format", !161, i64 0, !161, i64 8, !156, i64 16, !156, i64 20, !156, i64 24, !156, i64 28, !156, i64 32, !156, i64 36, !156, i64 40, !157, i64 44, !157, i64 45, !157, i64 46, !157, i64 47, !157, i64 48, !157, i64 49, !157, i64 50, !157, i64 51}
!207 = !{!"branch_weights", i32 106518, i32 23900}
!208 = !{!"branch_weights", i32 1681, i32 83}
!209 = !{!172, !156, i64 32}
!210 = !{!"branch_weights", i32 163, i32 1}
!211 = !{!172, !156, i64 24}
!212 = !{!"branch_weights", i32 5530, i32 3721}
!213 = !{!"branch_weights", i32 41, i32 5490}
!214 = !{!174, !156, i64 80}
!215 = !{!"branch_weights", i32 2000, i32 3491}
!216 = !{!"branch_weights", i32 163, i32 36837}
!217 = distinct !{!217, !186}
!218 = !{!"branch_weights", i32 451072124, i32 3529856}
!219 = !{!172, !161, i64 16}
!220 = !{!"branch_weights", i32 617289, i32 163}
!221 = distinct !{!221, !186}
!222 = distinct !{!222, !186}
!223 = !{!"function_entry_count", i64 467041}
!224 = !{!"tree-ssa-uncprop.c:equiv_hash"}
!225 = !{!226, !161, i64 0}
!226 = !{!"equiv_hash_elt", !161, i64 0, !161, i64 8}
!227 = !{!"function_entry_count", i64 322331}
!228 = !{!"tree-ssa-uncprop.c:equiv_eq"}
!229 = !{!"function_entry_count", i64 1909}
!230 = !{!"tree-ssa-uncprop.c:equiv_free"}
!231 = !{!"tree-ssa-uncprop.c:VEC_tree_heap_alloc"}
!232 = !{!"function_entry_count", i64 154098}
!233 = !{!"tree-ssa-uncprop.c:uncprop_enter_block"}
!234 = !{!"branch_weights", i32 39, i32 154061}
!235 = !{!"branch_weights", i32 52158, i32 101904}
!236 = !{!182, !161, i64 0}
!237 = !{!"branch_weights", i32 101904, i32 1}
!238 = !{!"branch_weights", i32 41372, i32 60533}
!239 = !{!"tree-ssa-uncprop.c:uncprop_leave_block"}
!240 = !{!"branch_weights", i32 93567, i32 60533}
!241 = !{!"function_entry_count", i64 1947}
!242 = !{!"tree-ssa-uncprop.c:VEC_tree_heap_free"}
!243 = !{!"branch_weights", i32 1, i32 1948}
!244 = !{!"function_entry_count", i64 462218}
!245 = !{!"tree-ssa-uncprop.c:ei_start_1"}
!246 = !{!"function_entry_count", i64 1210456}
!247 = !{!"tree-ssa-uncprop.c:ei_cond"}
!248 = !{!"branch_weights", i32 800396, i32 410062}
!249 = !{!"function_entry_count", i64 748238}
!250 = !{!"tree-ssa-uncprop.c:ei_next"}
!251 = !{!"branch_weights", i32 1, i32 748239}
!252 = !{!"branch_weights", i32 748239, i32 1}
!253 = !{!254, !156, i64 0}
!254 = !{!"", !156, i64 0, !161, i64 8}
!255 = !{!"function_entry_count", i64 154060}
!256 = !{!"tree-ssa-uncprop.c:gsi_last_bb"}
!257 = !{!258, !161, i64 0}
!258 = !{!"", !161, i64 0, !161, i64 8, !161, i64 16}
!259 = !{!258, !161, i64 8}
!260 = !{!258, !161, i64 16}
!261 = !{!"function_entry_count", i64 516845}
!262 = !{!"tree-ssa-uncprop.c:gsi_end_p"}
!263 = !{!"function_entry_count", i64 326060}
!264 = !{!"tree-ssa-uncprop.c:gsi_stmt"}
!265 = !{!266, !161, i64 0}
!266 = !{!"gimple_seq_node_d", !161, i64 0, !161, i64 8, !161, i64 16}
!267 = !{!"function_entry_count", i64 1012469}
!268 = !{!"tree-ssa-uncprop.c:gimple_code"}
!269 = !{!"function_entry_count", i64 140170}
!270 = !{!"tree-ssa-uncprop.c:gimple_cond_code"}
!271 = !{!"function_entry_count", i64 139949}
!272 = !{!"tree-ssa-uncprop.c:gimple_cond_lhs"}
!273 = !{!"tree-ssa-uncprop.c:gimple_cond_rhs"}
!274 = !{!"function_entry_count", i64 40}
!275 = !{!"tree-ssa-uncprop.c:gimple_switch_index"}
!276 = !{!"tree-ssa-uncprop.c:gimple_switch_num_labels"}
!277 = !{!"branch_weights", i32 41, i32 1}
!278 = !{!"function_entry_count", i64 9249}
!279 = !{!"tree-ssa-uncprop.c:gimple_switch_label"}
!280 = !{!"branch_weights", i32 9250, i32 1}
!281 = !{!"function_entry_count", i64 1198}
!282 = !{!"tree-ssa-uncprop.c:VEC_basic_block_base_index"}
!283 = !{!"tree-ssa-uncprop.c:bb_seq"}
!284 = !{!174, !156, i64 96}
!285 = !{!"branch_weights", i32 154061, i32 1}
!286 = !{!"branch_weights", i32 1, i32 154061}
!287 = !{!288, !161, i64 0}
!288 = !{!"gimple_bb_info", !161, i64 0, !161, i64 8}
!289 = !{!"tree-ssa-uncprop.c:gimple_seq_last"}
!290 = !{!291, !161, i64 8}
!291 = !{!"gimple_seq_d", !161, i64 0, !161, i64 8, !161, i64 16}
!292 = !{!"function_entry_count", i64 289187}
!293 = !{!"tree-ssa-uncprop.c:gimple_op"}
!294 = !{!"branch_weights", i32 1, i32 289188}
!295 = !{!"tree-ssa-uncprop.c:gimple_has_ops"}
!296 = !{!"tree-ssa-uncprop.c:gimple_ops"}
!297 = !{!164, !164, i64 0}
!298 = !{!"tree-ssa-uncprop.c:gimple_statement_structure"}
!299 = !{!"tree-ssa-uncprop.c:gss_for_code"}
!300 = !{!"function_entry_count", i64 9289}
!301 = !{!"tree-ssa-uncprop.c:gimple_num_ops"}
!302 = !{!"tree-ssa-uncprop.c:single_incoming_edge_ignoring_loop_edges"}
!303 = !{!"branch_weights", i32 1, i32 101903}
!304 = !{!182, !161, i64 8}
!305 = !{!"branch_weights", i32 206218, i32 1}
!306 = !{!"branch_weights", i32 154061, i32 52158}
!307 = !{!"branch_weights", i32 101903, i32 104315}
!308 = distinct !{!308, !186}
!309 = !{!"function_entry_count", i64 141760}
!310 = !{!"tree-ssa-uncprop.c:record_equiv"}
!311 = !{!226, !161, i64 8}
!312 = !{!"branch_weights", i32 1910, i32 139852}
!313 = !{!"function_entry_count", i64 295858}
!314 = !{!"tree-ssa-uncprop.c:VEC_tree_heap_safe_push"}
!315 = !{!"tree-ssa-uncprop.c:uncprop_into_successor_phis"}
!316 = !{!"branch_weights", i32 1, i32 154098}
!317 = !{!"branch_weights", i32 179265, i32 117845}
!318 = !{!"branch_weights", i32 98037, i32 81229}
!319 = !{!"branch_weights", i32 179264, i32 1}
!320 = !{!182, !156, i64 44}
!321 = !{!"branch_weights", i32 118005, i32 65518}
!322 = !{!"branch_weights", i32 118005, i32 1}
!323 = !{!"branch_weights", i32 147760, i32 35763}
!324 = !{!"branch_weights", i32 15616, i32 35012}
!325 = !{!"branch_weights", i32 752, i32 14865}
!326 = distinct !{!326, !186}
!327 = !{!"branch_weights", i32 4258, i32 179264}
!328 = distinct !{!328, !186}
!329 = !{!"branch_weights", i32 154098, i32 143011}
!330 = distinct !{!330, !186}
!331 = !{!"tree-ssa-uncprop.c:VEC_tree_heap_reserve"}
!332 = !{!"branch_weights", i32 2256, i32 293604}
!333 = !{!"tree-ssa-uncprop.c:VEC_tree_base_quick_push"}
!334 = !{!335, !156, i64 0}
!335 = !{!"VEC_tree_base", !156, i64 0, !156, i64 4, !157, i64 8}
!336 = !{!"tree-ssa-uncprop.c:VEC_tree_base_space"}
!337 = !{!"branch_weights", i32 1910, i32 293950}
!338 = !{!335, !156, i64 4}
!339 = !{!"function_entry_count", i64 297108}
!340 = !{!"tree-ssa-uncprop.c:phi_nodes"}
!341 = !{!"branch_weights", i32 297109, i32 1}
!342 = !{!"branch_weights", i32 39, i32 297071}
!343 = !{!288, !161, i64 8}
!344 = !{!"tree-ssa-uncprop.c:gimple_seq_empty_p"}
!345 = !{!"branch_weights", i32 96206, i32 200904}
!346 = !{!291, !161, i64 0}
!347 = !{!"function_entry_count", i64 179264}
!348 = !{!"tree-ssa-uncprop.c:gsi_start"}
!349 = !{!"branch_weights", i32 1, i32 179265}
!350 = !{!"function_entry_count", i64 183521}
!351 = !{!"tree-ssa-uncprop.c:get_use_from_ptr"}
!352 = !{!353, !161, i64 24}
!353 = !{!"ssa_use_operand_d", !161, i64 0, !161, i64 8, !157, i64 16, !161, i64 24}
!354 = !{!"function_entry_count", i64 184272}
!355 = !{!"tree-ssa-uncprop.c:gimple_phi_arg_imm_use_ptr"}
!356 = !{!"function_entry_count", i64 133619}
!357 = !{!"tree-ssa-uncprop.c:get_def_from_ptr"}
!358 = !{!"tree-ssa-uncprop.c:gimple_phi_result_ptr"}
!359 = !{!"function_entry_count", i64 35762}
!360 = !{!"tree-ssa-uncprop.c:VEC_tree_base_length"}
!361 = !{!"branch_weights", i32 1, i32 35763}
!362 = !{!"function_entry_count", i64 15615}
!363 = !{!"tree-ssa-uncprop.c:VEC_tree_base_index"}
!364 = !{!"function_entry_count", i64 751}
!365 = !{!"tree-ssa-uncprop.c:set_ssa_use_from_ptr"}
!366 = !{!"tree-ssa-uncprop.c:gsi_next"}
!367 = !{!266, !161, i64 16}
!368 = !{!"tree-ssa-uncprop.c:remove_equivalence"}
!369 = !{!"tree-ssa-uncprop.c:gimple_seq_first"}
!370 = !{!"tree-ssa-uncprop.c:gimple_bb"}
!371 = !{!"tree-ssa-uncprop.c:gimple_phi_arg"}
!372 = !{!"branch_weights", i32 1, i32 184273}
!373 = !{!"tree-ssa-uncprop.c:delink_imm_use"}
!374 = !{!353, !161, i64 0}
!375 = !{!"branch_weights", i32 752, i32 1}
!376 = !{!353, !161, i64 8}
!377 = !{!"tree-ssa-uncprop.c:link_imm_use"}
!378 = !{!"branch_weights", i32 1, i32 752}
!379 = !{!"tree-ssa-uncprop.c:link_imm_use_to_list"}
!380 = !{!"tree-ssa-uncprop.c:VEC_tree_base_pop"}
!381 = !{!"tree-ssa-uncprop.c:ei_end_p"}
!382 = !{!"branch_weights", i32 1, i32 1210457}
!383 = !{!"function_entry_count", i64 800395}
!384 = !{!"tree-ssa-uncprop.c:ei_edge"}
!385 = !{!"branch_weights", i32 1, i32 800396}
!386 = !{!"function_entry_count", i64 1958694}
!387 = !{!"tree-ssa-uncprop.c:VEC_edge_base_length"}
!388 = !{!"branch_weights", i32 1, i32 1958695}
!389 = !{!390, !156, i64 0}
!390 = !{!"VEC_edge_base", !156, i64 0, !156, i64 4, !157, i64 8}
!391 = !{!"function_entry_count", i64 5518178}
!392 = !{!"tree-ssa-uncprop.c:ei_container"}
!393 = !{!"branch_weights", i32 1, i32 5518179}
!394 = !{!"tree-ssa-uncprop.c:VEC_edge_base_index"}
