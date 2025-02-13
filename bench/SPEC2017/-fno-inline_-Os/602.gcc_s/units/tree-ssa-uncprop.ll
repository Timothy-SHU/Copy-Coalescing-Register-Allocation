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

@pass_uncprop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_uncprop, ptr @tree_ssa_uncprop, ptr null, ptr null, i32 0, i32 103, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8
@.str = private unnamed_addr constant [8 x i8] c"uncprop\00", align 1
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
define internal zeroext i8 @gate_uncprop() #0 !prof !154 !PGOFuncName !155 {
  %1 = load i32, ptr @flag_tree_dom, align 4, !tbaa !156
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_ssa_uncprop() #1 !prof !154 !PGOFuncName !160 {
  %1 = alloca %struct.dom_walk_data, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #13
  tail call fastcc void @associate_equivalences_with_edges() #14
  %4 = tail call ptr @htab_create(i64 noundef 1024, ptr noundef nonnull @equiv_hash, ptr noundef nonnull @equiv_eq, ptr noundef nonnull @equiv_free) #15
  store ptr %4, ptr @equiv, align 8, !tbaa !161
  %5 = tail call fastcc ptr @VEC_tree_heap_alloc() #14
  store ptr %5, ptr @equiv_stack, align 8, !tbaa !161
  tail call void @calculate_dominance_info(i32 noundef 1) #15
  store i8 1, ptr %1, align 8
  %6 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !163
  %7 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 2
  store ptr @uncprop_enter_block, ptr %7, align 8, !tbaa !166
  %8 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 3
  store ptr @uncprop_leave_block, ptr %8, align 8, !tbaa !167
  %9 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !168
  %10 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 6
  store i64 0, ptr %10, align 8, !tbaa !169
  call void @init_walk_dominator_tree(ptr noundef nonnull %1) #15
  %11 = load ptr, ptr @cfun, align 8, !tbaa !161
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !170
  %14 = load ptr, ptr %13, align 8, !tbaa !172
  call void @walk_dominator_tree(ptr noundef nonnull %1, ptr noundef %14) #15
  call void @fini_walk_dominator_tree(ptr noundef nonnull %1) #15
  %15 = load ptr, ptr @equiv, align 8, !tbaa !161
  call void @htab_delete(ptr noundef %15) #15
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull @equiv_stack) #14
  %16 = load ptr, ptr @cfun, align 8, !tbaa !161
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !170
  %19 = load ptr, ptr %18, align 8, !tbaa !172
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !174
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !176
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %53, label %25, !prof !177

25:                                               ; preds = %0
  %26 = getelementptr inbounds i8, ptr %3, i64 8
  br label %27

27:                                               ; preds = %25, %44
  %28 = phi ptr [ %21, %25 ], [ %46, %44 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 1
  %30 = call fastcc ptr @ei_start_1(ptr noundef nonnull %29) #14
  store i32 0, ptr %3, align 8, !tbaa.struct !178
  store ptr %30, ptr %26, align 8, !tbaa.struct !179
  %31 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %30, ptr noundef nonnull %2) #14, !range !180
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %44, label %33, !prof !181

33:                                               ; preds = %27, %39
  %34 = load ptr, ptr %2, align 8, !tbaa !161
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !182
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38, !prof !184

38:                                               ; preds = %33
  call void @free(ptr noundef nonnull %36) #14
  store ptr null, ptr %35, align 8, !tbaa !182
  br label %39

39:                                               ; preds = %33, %38
  call fastcc void @ei_next(ptr noundef nonnull %3) #14
  %40 = load i32, ptr %3, align 8
  %41 = load ptr, ptr %26, align 8
  %42 = call fastcc zeroext i8 @ei_cond(i32 %40, ptr %41, ptr noundef nonnull %2) #14, !range !180
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %33, !prof !185, !llvm.loop !186

44:                                               ; preds = %39, %27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !174
  %47 = load ptr, ptr @cfun, align 8, !tbaa !161
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !170
  %50 = getelementptr inbounds %struct.control_flow_graph, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !176
  %52 = icmp eq ptr %46, %51
  br i1 %52, label %53, label %27, !prof !188, !llvm.loop !189

53:                                               ; preds = %44, %0
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #13
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @associate_equivalences_with_edges() unnamed_addr #1 !prof !154 !PGOFuncName !190 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !161
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !170
  %7 = load ptr, ptr %6, align 8, !tbaa !172
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !174
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !176
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %501, label %13, !prof !177

13:                                               ; preds = %0, %492
  %14 = phi ptr [ %494, %492 ], [ %9, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #13
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %14) #14
  %15 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #14, !range !180
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %492, !prof !191

17:                                               ; preds = %13
  %18 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #14
  %19 = icmp eq ptr %18, null
  br i1 %19, label %492, label %20, !prof !192

20:                                               ; preds = %17
  %21 = call fastcc i32 @gimple_code(ptr noundef nonnull %18) #14, !range !193
  %22 = trunc i32 %21 to i8
  switch i8 %22, label %492 [
    i8 1, label %23
    i8 5, label %401
  ], !prof !194

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %24 = call fastcc i32 @gimple_cond_code(ptr noundef nonnull %18) #14, !range !195
  call void @extract_true_false_edges_from_block(ptr noundef %14, ptr noundef nonnull %2, ptr noundef nonnull %3) #15
  %25 = icmp eq i32 %24, 101
  %26 = add nsw i32 %24, -101
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %28, label %400, !prof !196

28:                                               ; preds = %23
  %29 = call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %18) #14
  %30 = call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %18) #14
  %31 = load i64, ptr %29, align 8
  %32 = and i64 %31, 4259839
  %33 = icmp eq i64 %32, 141
  br i1 %33, label %34, label %75, !prof !197

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !198
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 7
  br i1 %39, label %40, label %75, !prof !199

40:                                               ; preds = %34
  %41 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %30) #15
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %45, !prof !200

43:                                               ; preds = %40
  %44 = load i64, ptr %29, align 8
  br label %75

45:                                               ; preds = %40
  %46 = call ptr @xmalloc(i64 noundef 16) #15
  %47 = getelementptr inbounds %struct.edge_equivalency, ptr %46, i64 0, i32 1
  store ptr %29, ptr %47, align 8, !tbaa !201
  %48 = call i32 @integer_zerop(ptr noundef %30) #15
  %49 = icmp eq i32 %48, 0
  %50 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %51 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  br i1 %25, label %52, label %63, !prof !203

52:                                               ; preds = %45
  %53 = select i1 %49, ptr %51, ptr %50, !prof !204
  store ptr %53, ptr %46, align 8, !tbaa !205
  %54 = load ptr, ptr %2, align 8, !tbaa !161
  %55 = getelementptr inbounds %struct.edge_def, ptr %54, i64 0, i32 3
  store ptr %46, ptr %55, align 8, !tbaa !182
  %56 = call ptr @xmalloc(i64 noundef 16) #15
  %57 = getelementptr inbounds %struct.edge_equivalency, ptr %56, i64 0, i32 1
  store ptr %29, ptr %57, align 8, !tbaa !201
  %58 = call i32 @integer_zerop(ptr noundef %30) #15
  %59 = icmp eq i32 %58, 0
  %60 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %61 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %62 = select i1 %59, ptr %61, ptr %60, !prof !204
  store ptr %62, ptr %56, align 8, !tbaa !205
  br label %395

63:                                               ; preds = %45
  %64 = select i1 %49, ptr %50, ptr %51
  store ptr %64, ptr %46, align 8, !tbaa !205
  %65 = load ptr, ptr %2, align 8, !tbaa !161
  %66 = getelementptr inbounds %struct.edge_def, ptr %65, i64 0, i32 3
  store ptr %46, ptr %66, align 8, !tbaa !182
  %67 = call ptr @xmalloc(i64 noundef 16) #15
  %68 = getelementptr inbounds %struct.edge_equivalency, ptr %67, i64 0, i32 1
  store ptr %29, ptr %68, align 8, !tbaa !201
  %69 = call i32 @integer_zerop(ptr noundef %30) #15
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72, !prof !206

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %63, %71
  %73 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), %71 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), %63 ]
  %74 = load ptr, ptr %73, align 8, !tbaa !161
  store ptr %74, ptr %67, align 8, !tbaa !205
  br label %395

75:                                               ; preds = %43, %34, %28
  %76 = phi i64 [ %44, %43 ], [ %31, %34 ], [ %31, %28 ]
  %77 = and i64 %76, 4259839
  %78 = icmp eq i64 %77, 141
  br i1 %78, label %79, label %400, !prof !207

79:                                               ; preds = %75
  %80 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %30) #15
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %86, !prof !208

82:                                               ; preds = %79
  %83 = load i64, ptr %30, align 8
  %84 = and i64 %83, 4259839
  %85 = icmp eq i64 %84, 141
  br i1 %85, label %86, label %400, !prof !209

86:                                               ; preds = %82, %79
  %87 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !198
  %89 = load i64, ptr %88, align 8
  %90 = and i64 %89, 65535
  %91 = icmp eq i64 %90, 14
  br i1 %91, label %92, label %95, !prof !210

92:                                               ; preds = %86
  %93 = call i32 @vector_type_mode(ptr noundef nonnull %88) #15
  %94 = load ptr, ptr %87, align 8, !tbaa !198
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
  %105 = load i8, ptr %104, align 1, !tbaa !198
  %106 = icmp eq i8 %105, 8
  br i1 %106, label %164, label %107, !prof !211

107:                                              ; preds = %100
  %108 = load i64, ptr %101, align 8
  %109 = and i64 %108, 65535
  %110 = icmp eq i64 %109, 14
  br i1 %110, label %111, label %114, !prof !212

111:                                              ; preds = %107
  %112 = call i32 @vector_type_mode(ptr noundef nonnull %101) #15
  %113 = load ptr, ptr %87, align 8, !tbaa !198
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
  %124 = load i8, ptr %123, align 1, !tbaa !198
  %125 = icmp eq i8 %124, 9
  br i1 %125, label %164, label %126, !prof !212

126:                                              ; preds = %119
  %127 = load i64, ptr %120, align 8
  %128 = and i64 %127, 65535
  %129 = icmp eq i64 %128, 14
  br i1 %129, label %130, label %133, !prof !212

130:                                              ; preds = %126
  %131 = call i32 @vector_type_mode(ptr noundef nonnull %120) #15
  %132 = load ptr, ptr %87, align 8, !tbaa !198
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
  %143 = load i8, ptr %142, align 1, !tbaa !198
  %144 = icmp eq i8 %143, 11
  br i1 %144, label %164, label %145, !prof !212

145:                                              ; preds = %138
  %146 = load i64, ptr %139, align 8
  %147 = and i64 %146, 65535
  %148 = icmp eq i64 %147, 14
  br i1 %148, label %149, label %151, !prof !212

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
  %160 = load i8, ptr %159, align 1, !tbaa !198
  %161 = icmp eq i8 %160, 17
  br i1 %161, label %162, label %391, !prof !212

162:                                              ; preds = %156
  %163 = load ptr, ptr %87, align 8, !tbaa !198
  br label %164

164:                                              ; preds = %162, %138, %119, %100
  %165 = phi ptr [ %163, %162 ], [ %139, %138 ], [ %120, %119 ], [ %101, %100 ]
  %166 = load i64, ptr %165, align 8
  %167 = and i64 %166, 65535
  %168 = icmp eq i64 %167, 14
  br i1 %168, label %169, label %172, !prof !213

169:                                              ; preds = %164
  %170 = call i32 @vector_type_mode(ptr noundef nonnull %165) #15
  %171 = load ptr, ptr %87, align 8, !tbaa !198
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
  %182 = load i8, ptr %181, align 1, !tbaa !198
  %183 = icmp eq i8 %182, 8
  br i1 %183, label %203, label %184, !prof !214

184:                                              ; preds = %177
  %185 = load i64, ptr %178, align 8
  %186 = and i64 %185, 65535
  %187 = icmp eq i64 %186, 14
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = call i32 @vector_type_mode(ptr noundef nonnull %178) #15
  %190 = load ptr, ptr %87, align 8, !tbaa !198
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
  %201 = load i8, ptr %200, align 1, !tbaa !198
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
  %230 = load i8, ptr %229, align 1, !tbaa !198
  %231 = zext i8 %230 to i32
  br label %232

232:                                              ; preds = %208, %210, %226
  %233 = phi i32 [ %231, %226 ], [ %209, %208 ], [ %214, %210 ]
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %234
  %236 = load i8, ptr %235, align 1, !tbaa !198
  %237 = icmp eq i8 %236, 9
  %238 = load ptr, ptr %87, align 8, !tbaa !198
  %239 = load i64, ptr %238, align 8
  %240 = and i64 %239, 65535
  %241 = icmp eq i64 %240, 14
  br i1 %237, label %242, label %306

242:                                              ; preds = %232
  br i1 %241, label %243, label %246

243:                                              ; preds = %242
  %244 = call i32 @vector_type_mode(ptr noundef nonnull %238) #15
  %245 = load ptr, ptr %87, align 8, !tbaa !198
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
  %256 = load i8, ptr %255, align 1, !tbaa !198
  %257 = icmp eq i8 %256, 8
  br i1 %257, label %277, label %258

258:                                              ; preds = %251
  %259 = load i64, ptr %252, align 8
  %260 = and i64 %259, 65535
  %261 = icmp eq i64 %260, 14
  br i1 %261, label %262, label %265

262:                                              ; preds = %258
  %263 = call i32 @vector_type_mode(ptr noundef nonnull %252) #15
  %264 = load ptr, ptr %87, align 8, !tbaa !198
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
  %275 = load i8, ptr %274, align 1, !tbaa !198
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
  %304 = load i8, ptr %303, align 1, !tbaa !198
  %305 = zext i8 %304 to i32
  br label %370

306:                                              ; preds = %232
  br i1 %241, label %307, label %310

307:                                              ; preds = %306
  %308 = call i32 @vector_type_mode(ptr noundef nonnull %238) #15
  %309 = load ptr, ptr %87, align 8, !tbaa !198
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
  %320 = load i8, ptr %319, align 1, !tbaa !198
  %321 = icmp eq i8 %320, 8
  br i1 %321, label %341, label %322

322:                                              ; preds = %315
  %323 = load i64, ptr %316, align 8
  %324 = and i64 %323, 65535
  %325 = icmp eq i64 %324, 14
  br i1 %325, label %326, label %329

326:                                              ; preds = %322
  %327 = call i32 @vector_type_mode(ptr noundef nonnull %316) #15
  %328 = load ptr, ptr %87, align 8, !tbaa !198
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
  %339 = load i8, ptr %338, align 1, !tbaa !198
  %340 = icmp eq i8 %339, 9
  br i1 %340, label %341, label %353, !prof !214

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
  %368 = load i8, ptr %367, align 1, !tbaa !198
  %369 = zext i8 %368 to i32
  br label %370

370:                                              ; preds = %364, %348, %346, %300, %284, %282
  %371 = phi i32 [ %305, %300 ], [ %283, %282 ], [ %288, %284 ], [ %369, %364 ], [ %347, %346 ], [ %352, %348 ]
  %372 = add i32 %371, -38
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %373
  %375 = load ptr, ptr %374, align 8, !tbaa !161
  %376 = getelementptr inbounds %struct.real_format, ptr %375, i64 0, i32 14
  %377 = load i8, ptr %376, align 1, !tbaa !215
  %378 = icmp ne i8 %377, 0
  %379 = load i32, ptr @flag_signed_zeros, align 4
  %380 = icmp ne i32 %379, 0
  %381 = select i1 %378, i1 %380, i1 false
  br i1 %381, label %382, label %391, !prof !217

382:                                              ; preds = %370
  %383 = load i64, ptr %30, align 8
  %384 = and i64 %383, 65535
  %385 = icmp eq i64 %384, 24
  br i1 %385, label %386, label %400, !prof !218

386:                                              ; preds = %382
  %387 = getelementptr inbounds %struct.tree_real_cst, ptr %30, i64 0, i32 1
  %388 = load ptr, ptr %387, align 8, !tbaa !198
  %389 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull @dconst0, ptr noundef %388) #15
  %390 = icmp eq i8 %389, 0
  br i1 %390, label %391, label %400, !prof !219

391:                                              ; preds = %386, %370, %156
  %392 = call ptr @xmalloc(i64 noundef 16) #15
  %393 = getelementptr inbounds %struct.edge_equivalency, ptr %392, i64 0, i32 1
  store ptr %29, ptr %393, align 8, !tbaa !201
  store ptr %30, ptr %392, align 8, !tbaa !205
  %394 = select i1 %25, ptr %2, ptr %3, !prof !220
  br label %395

395:                                              ; preds = %391, %52, %72
  %396 = phi ptr [ %3, %72 ], [ %3, %52 ], [ %394, %391 ]
  %397 = phi ptr [ %67, %72 ], [ %56, %52 ], [ %392, %391 ]
  %398 = load ptr, ptr %396, align 8, !tbaa !161
  %399 = getelementptr inbounds %struct.edge_def, ptr %398, i64 0, i32 3
  store ptr %397, ptr %399, align 8, !tbaa !182
  br label %400

400:                                              ; preds = %395, %386, %382, %23, %82, %75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  br label %492

401:                                              ; preds = %20
  %402 = call fastcc ptr @gimple_switch_index(ptr noundef nonnull %18) #14
  %403 = load i64, ptr %402, align 8
  %404 = and i64 %403, 4259839
  %405 = icmp eq i64 %404, 141
  br i1 %405, label %406, label %492, !prof !221

406:                                              ; preds = %401
  %407 = call fastcc i32 @gimple_switch_num_labels(ptr noundef nonnull %18) #14
  %408 = load ptr, ptr @cfun, align 8, !tbaa !161
  %409 = getelementptr inbounds %struct.function, ptr %408, i64 0, i32 1
  %410 = load ptr, ptr %409, align 8, !tbaa !170
  %411 = getelementptr inbounds %struct.control_flow_graph, ptr %410, i64 0, i32 5
  %412 = load i32, ptr %411, align 8, !tbaa !222
  %413 = sext i32 %412 to i64
  %414 = call ptr @xcalloc(i64 noundef %413, i64 noundef 8) #15
  %415 = icmp sgt i32 %407, 0
  br i1 %415, label %425, label %416, !prof !223

416:                                              ; preds = %453, %406
  %417 = load ptr, ptr @cfun, align 8, !tbaa !161
  %418 = getelementptr inbounds %struct.function, ptr %417, i64 0, i32 1
  %419 = load ptr, ptr %418, align 8, !tbaa !170
  %420 = getelementptr inbounds %struct.control_flow_graph, ptr %419, i64 0, i32 3
  %421 = load i32, ptr %420, align 8, !tbaa !224
  %422 = icmp sgt i32 %421, 0
  br i1 %422, label %423, label %491, !prof !223

423:                                              ; preds = %416
  %424 = getelementptr inbounds %struct.tree_common, ptr %402, i64 0, i32 2
  br label %456

425:                                              ; preds = %406, %453
  %426 = phi i32 [ %454, %453 ], [ 0, %406 ]
  %427 = call fastcc ptr @gimple_switch_label(ptr noundef nonnull %18, i32 noundef %426) #14
  %428 = load ptr, ptr @cfun, align 8, !tbaa !161
  %429 = getelementptr inbounds %struct.tree_exp, ptr %427, i64 1, i32 0, i32 1
  %430 = load ptr, ptr %429, align 8, !tbaa !198
  %431 = call ptr @label_to_block_fn(ptr noundef %428, ptr noundef %430) #15
  %432 = getelementptr inbounds %struct.tree_exp, ptr %427, i64 1
  %433 = load ptr, ptr %432, align 8, !tbaa !198
  %434 = icmp eq ptr %433, null
  br i1 %434, label %435, label %446, !prof !225

435:                                              ; preds = %425
  %436 = getelementptr inbounds %struct.tree_exp, ptr %427, i64 0, i32 3
  %437 = load ptr, ptr %436, align 8, !tbaa !198
  %438 = icmp eq ptr %437, null
  br i1 %438, label %446, label %439, !prof !226

439:                                              ; preds = %435
  %440 = getelementptr inbounds %struct.basic_block_def, ptr %431, i64 0, i32 9
  %441 = load i32, ptr %440, align 8, !tbaa !227
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds ptr, ptr %414, i64 %442
  %444 = load ptr, ptr %443, align 8, !tbaa !161
  %445 = icmp eq ptr %444, null
  br i1 %445, label %452, label %446, !prof !228

446:                                              ; preds = %439, %435, %425
  %447 = load ptr, ptr @global_trees, align 16, !tbaa !161
  %448 = getelementptr inbounds %struct.basic_block_def, ptr %431, i64 0, i32 9
  %449 = load i32, ptr %448, align 8, !tbaa !227
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds ptr, ptr %414, i64 %450
  store ptr %447, ptr %451, align 8, !tbaa !161
  br label %453

452:                                              ; preds = %439
  store ptr %427, ptr %443, align 8, !tbaa !161
  br label %453

453:                                              ; preds = %452, %446
  %454 = add nuw nsw i32 %426, 1
  %455 = icmp eq i32 %454, %407
  br i1 %455, label %416, label %425, !prof !229, !llvm.loop !230

456:                                              ; preds = %423, %482
  %457 = phi ptr [ %417, %423 ], [ %483, %482 ]
  %458 = phi i64 [ 0, %423 ], [ %484, %482 ]
  %459 = getelementptr inbounds ptr, ptr %414, i64 %458
  %460 = load ptr, ptr %459, align 8, !tbaa !161
  %461 = icmp eq ptr %460, null
  br i1 %461, label %482, label %462, !prof !231

462:                                              ; preds = %456
  %463 = load ptr, ptr @global_trees, align 16, !tbaa !161
  %464 = icmp eq ptr %460, %463
  br i1 %464, label %482, label %465, !prof !232

465:                                              ; preds = %462
  %466 = load ptr, ptr %424, align 8, !tbaa !198
  %467 = getelementptr inbounds %struct.tree_exp, ptr %460, i64 0, i32 3
  %468 = load ptr, ptr %467, align 8, !tbaa !198
  %469 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %466, ptr noundef %468) #15
  %470 = call ptr @xmalloc(i64 noundef 16) #15
  store ptr %469, ptr %470, align 8, !tbaa !205
  %471 = getelementptr inbounds %struct.edge_equivalency, ptr %470, i64 0, i32 1
  store ptr %402, ptr %471, align 8, !tbaa !201
  %472 = load ptr, ptr @cfun, align 8, !tbaa !161
  %473 = getelementptr inbounds %struct.function, ptr %472, i64 0, i32 1
  %474 = load ptr, ptr %473, align 8, !tbaa !170
  %475 = getelementptr inbounds %struct.control_flow_graph, ptr %474, i64 0, i32 2
  %476 = load ptr, ptr %475, align 8, !tbaa !233
  %477 = trunc i64 %458 to i32
  %478 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %476, i32 noundef %477) #14
  %479 = call ptr @find_edge(ptr noundef %14, ptr noundef %478) #15
  %480 = getelementptr inbounds %struct.edge_def, ptr %479, i64 0, i32 3
  store ptr %470, ptr %480, align 8, !tbaa !182
  %481 = load ptr, ptr @cfun, align 8, !tbaa !161
  br label %482

482:                                              ; preds = %465, %462, %456
  %483 = phi ptr [ %481, %465 ], [ %457, %462 ], [ %457, %456 ]
  %484 = add nuw nsw i64 %458, 1
  %485 = getelementptr inbounds %struct.function, ptr %483, i64 0, i32 1
  %486 = load ptr, ptr %485, align 8, !tbaa !170
  %487 = getelementptr inbounds %struct.control_flow_graph, ptr %486, i64 0, i32 3
  %488 = load i32, ptr %487, align 8, !tbaa !224
  %489 = sext i32 %488 to i64
  %490 = icmp slt i64 %484, %489
  br i1 %490, label %456, label %491, !prof !234, !llvm.loop !235

491:                                              ; preds = %482, %416
  call void @free(ptr noundef %414) #14
  br label %492

492:                                              ; preds = %20, %400, %491, %401, %17, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #13
  %493 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %494 = load ptr, ptr %493, align 8, !tbaa !174
  %495 = load ptr, ptr @cfun, align 8, !tbaa !161
  %496 = getelementptr inbounds %struct.function, ptr %495, i64 0, i32 1
  %497 = load ptr, ptr %496, align 8, !tbaa !170
  %498 = getelementptr inbounds %struct.control_flow_graph, ptr %497, i64 0, i32 1
  %499 = load ptr, ptr %498, align 8, !tbaa !176
  %500 = icmp eq ptr %494, %499
  br i1 %500, label %501, label %13, !prof !188, !llvm.loop !236

501:                                              ; preds = %492, %0
  ret void
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @equiv_hash(ptr nocapture noundef readonly %0) #1 !prof !237 !PGOFuncName !238 {
  %2 = load ptr, ptr %0, align 8, !tbaa !239
  %3 = tail call i32 @iterative_hash_expr(ptr noundef %2, i32 noundef 0) #15
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @equiv_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 !prof !241 !PGOFuncName !242 {
  %3 = load ptr, ptr %0, align 8, !tbaa !239
  %4 = load ptr, ptr %1, align 8, !tbaa !239
  %5 = tail call i32 @operand_equal_p(ptr noundef %3, ptr noundef %4, i32 noundef 0) #15
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal void @equiv_free(ptr nocapture noundef %0) #4 !prof !243 !PGOFuncName !244 {
  %2 = getelementptr inbounds %struct.equiv_hash_elt, ptr %0, i64 0, i32 1
  tail call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %2) #14
  tail call void @free(ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc() unnamed_addr #1 !prof !154 !PGOFuncName !245 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 2) #15
  ret ptr %1
}

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @uncprop_enter_block(ptr nocapture readnone %0, ptr noundef %1) #1 !prof !246 !PGOFuncName !247 {
  %3 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %1) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5, !prof !248

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @single_incoming_edge_ignoring_loop_edges(ptr noundef %1) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8, !prof !249

8:                                                ; preds = %5
  %9 = load ptr, ptr %6, align 8, !tbaa !250
  %10 = icmp eq ptr %9, %3
  br i1 %10, label %11, label %20, !prof !251

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.edge_def, ptr %6, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !182
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15, !prof !252

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !205
  %17 = getelementptr inbounds %struct.edge_equivalency, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !201
  tail call fastcc void @record_equiv(ptr noundef %16, ptr noundef %18) #14
  %19 = load ptr, ptr %13, align 8, !tbaa !205
  br label %20

20:                                               ; preds = %5, %8, %11, %2, %15
  %21 = phi ptr [ %19, %15 ], [ null, %2 ], [ null, %11 ], [ null, %8 ], [ null, %5 ]
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull @equiv_stack, ptr noundef %21) #14
  tail call fastcc void @uncprop_into_successor_phis(ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @uncprop_leave_block(ptr nocapture readnone %0, ptr nocapture readnone %1) #1 !prof !246 !PGOFuncName !253 {
  %3 = load ptr, ptr @equiv_stack, align 8
  %4 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !254

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
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #4 !prof !255 !PGOFuncName !256 {
  %2 = load ptr, ptr %0, align 8, !tbaa !161
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !257

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #14
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !161
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #5 !prof !258 !PGOFuncName !259 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 !prof !260 !PGOFuncName !261 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #14, !range !180
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !262

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #14
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !161
  ret i8 %10
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #1 !prof !263 !PGOFuncName !264 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !265

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #14
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #14
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !266

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef nonnull @.str.2) #15
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !267
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !267
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 !prof !269 !PGOFuncName !270 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #14
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #14
  store ptr %4, ptr %0, align 8, !tbaa !271
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !273
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !274
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #8 !prof !275 !PGOFuncName !276 {
  %2 = load ptr, ptr %0, align 8, !tbaa !271
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #9 !prof !277 !PGOFuncName !278 {
  %2 = load ptr, ptr %0, align 8, !tbaa !271
  %3 = load ptr, ptr %2, align 8, !tbaa !279
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !281 !PGOFuncName !282 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !283 !PGOFuncName !284 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: optsize
declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #1 !prof !285 !PGOFuncName !286 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #14
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #1 !prof !285 !PGOFuncName !287 {
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
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #1 !prof !288 !PGOFuncName !289 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #14
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_switch_num_labels(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !288 !PGOFuncName !290 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #14
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %5, label %4, !prof !291

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
define internal fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !292 !PGOFuncName !293 {
  %3 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #14
  %4 = add i32 %1, 1
  %5 = icmp ugt i32 %3, %4
  br i1 %5, label %7, label %6, !prof !294

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
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !295 !PGOFuncName !296 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !161
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !269 !PGOFuncName !297 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !298
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !299

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !198
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !300

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !301
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #8 !prof !269 !PGOFuncName !303 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !300

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !304
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !306 !PGOFuncName !307 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #14, !range !180
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !308

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #14
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !161
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !306 !PGOFuncName !309 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !193
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !306 !PGOFuncName !310 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #14
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !311
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !308

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !306 !PGOFuncName !312 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !193
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #14
  ret i32 %3
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #5 !prof !306 !PGOFuncName !313 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !156
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !314 !PGOFuncName !315 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !198
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
define internal fastcc ptr @single_incoming_edge_ignoring_loop_edges(ptr noundef %0) unnamed_addr #1 !prof !269 !PGOFuncName !316 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #14
  store i32 0, ptr %3, align 8, !tbaa.struct !178
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !179
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #14, !range !180
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %24, label %8, !prof !317

8:                                                ; preds = %1, %18
  %9 = phi ptr [ %19, %18 ], [ null, %1 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !161
  %11 = load ptr, ptr %10, align 8, !tbaa !250
  %12 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !318
  %14 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %11, ptr noundef %13) #15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18, !prof !319

16:                                               ; preds = %8
  %17 = icmp eq ptr %9, null
  br i1 %17, label %18, label %24, !prof !320

18:                                               ; preds = %16, %8
  %19 = phi ptr [ %9, %8 ], [ %10, %16 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #14
  %20 = load i32, ptr %3, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = call fastcc zeroext i8 @ei_cond(i32 %20, ptr %21, ptr noundef nonnull %2) #14, !range !180
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %8, !prof !321, !llvm.loop !322

24:                                               ; preds = %16, %18, %1
  %25 = phi ptr [ null, %1 ], [ %19, %18 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_equiv(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !323 !PGOFuncName !324 {
  %3 = tail call ptr @xmalloc(i64 noundef 16) #15
  store ptr %0, ptr %3, align 8, !tbaa !239
  %4 = getelementptr inbounds %struct.equiv_hash_elt, ptr %3, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !325
  %5 = load ptr, ptr @equiv, align 8, !tbaa !161
  %6 = tail call ptr @htab_find_slot(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 1) #15
  %7 = load ptr, ptr %6, align 8, !tbaa !161
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !326

9:                                                ; preds = %2
  store ptr %3, ptr %6, align 8, !tbaa !161
  br label %12

10:                                               ; preds = %2
  tail call void @free(ptr noundef nonnull %3) #14
  %11 = load ptr, ptr %6, align 8, !tbaa !161
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi ptr [ %11, %10 ], [ %3, %9 ]
  %14 = getelementptr inbounds %struct.equiv_hash_elt, ptr %13, i64 0, i32 1
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %14, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 !prof !327 !PGOFuncName !328 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #14
  %3 = load ptr, ptr %0, align 8, !tbaa !161
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uncprop_into_successor_phis(ptr noundef %0) unnamed_addr #1 !prof !246 !PGOFuncName !329 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.equiv_hash_elt, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %6) #14
  store i32 0, ptr %3, align 8, !tbaa.struct !178
  %8 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %7, ptr %8, align 8, !tbaa.struct !179
  %9 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %7, ptr noundef nonnull %2) #14, !range !180
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %85, label %11, !prof !330

11:                                               ; preds = %1, %80
  %12 = load ptr, ptr %2, align 8, !tbaa !161
  %13 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !318
  %15 = call fastcc ptr @phi_nodes(ptr noundef %14) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %16 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %15) #14, !range !180
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %80, !prof !331

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !182
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22, !prof !332

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 8, !tbaa !205
  %24 = getelementptr inbounds %struct.edge_equivalency, ptr %20, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !201
  call fastcc void @record_equiv(ptr noundef %23, ptr noundef %25) #14
  br label %26

26:                                               ; preds = %22, %18
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %15) #14
  %27 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #14, !range !180
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %75, !prof !333

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.equiv_hash_elt, ptr %5, i64 0, i32 1
  %31 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 6
  br label %32

32:                                               ; preds = %29, %72
  %33 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #14
  %34 = load i32, ptr %31, align 4, !tbaa !334
  %35 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %33, i32 noundef %34) #14
  %36 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %35) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %37 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %36) #15
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %47, !prof !335

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.tree_ssa_name, ptr %36, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !198
  %42 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %33) #14
  %43 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %42) #14
  %44 = getelementptr inbounds %struct.tree_ssa_name, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !198
  %46 = icmp eq ptr %41, %45
  br i1 %46, label %47, label %72, !prof !336

47:                                               ; preds = %39, %32
  store ptr %36, ptr %5, align 8, !tbaa !239
  store ptr null, ptr %30, align 8, !tbaa !325
  %48 = load ptr, ptr @equiv, align 8, !tbaa !161
  %49 = call ptr @htab_find_slot(ptr noundef %48, ptr noundef nonnull %5, i32 noundef 0) #15
  %50 = icmp eq ptr %49, null
  br i1 %50, label %72, label %51, !prof !337

51:                                               ; preds = %47
  %52 = load ptr, ptr %49, align 8, !tbaa !161
  %53 = getelementptr inbounds %struct.equiv_hash_elt, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !325
  %55 = call fastcc i32 @VEC_tree_base_length(ptr noundef %54) #14
  br label %56

56:                                               ; preds = %60, %51
  %57 = phi i32 [ %55, %51 ], [ %58, %60 ]
  %58 = add i32 %57, -1
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %72, !prof !338

60:                                               ; preds = %56
  %61 = call fastcc ptr @VEC_tree_base_index(ptr noundef %54, i32 noundef %58) #14
  %62 = getelementptr inbounds %struct.tree_ssa_name, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !198
  %64 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %33) #14
  %65 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %64) #14
  %66 = getelementptr inbounds %struct.tree_ssa_name, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !198
  %68 = icmp eq ptr %63, %67
  br i1 %68, label %69, label %56, !prof !339, !llvm.loop !340

69:                                               ; preds = %60
  %70 = load i32, ptr %31, align 4, !tbaa !334
  %71 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %33, i32 noundef %70) #14
  call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %71, ptr noundef nonnull %61) #14
  br label %72

72:                                               ; preds = %56, %69, %47, %39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call fastcc void @gsi_next(ptr noundef nonnull %4) #14
  %73 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #14, !range !180
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %32, label %75, !prof !341, !llvm.loop !342

75:                                               ; preds = %72, %26
  %76 = load ptr, ptr %19, align 8, !tbaa !182
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78, !prof !332

78:                                               ; preds = %75
  %79 = load ptr, ptr %76, align 8, !tbaa !205
  call fastcc void @remove_equivalence(ptr noundef %79) #14
  br label %80

80:                                               ; preds = %75, %78, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  call fastcc void @ei_next(ptr noundef nonnull %3) #14
  %81 = load i32, ptr %3, align 8
  %82 = load ptr, ptr %8, align 8
  %83 = call fastcc zeroext i8 @ei_cond(i32 %81, ptr %82, ptr noundef nonnull %2) #14, !range !180
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %11, !prof !343, !llvm.loop !344

85:                                               ; preds = %80, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #1 !prof !327 !PGOFuncName !345 {
  %2 = load ptr, ptr %0, align 8, !tbaa !161
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !346

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #15
  store ptr %6, ptr %0, align 8, !tbaa !161
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !327 !PGOFuncName !347 {
  %3 = load i32, ptr %0, align 8, !tbaa !348
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !348
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !161
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #8 !prof !327 !PGOFuncName !350 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !351

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !352
  %6 = load i32, ptr %0, align 8, !tbaa !348
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
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !353 !PGOFuncName !354 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !298
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !355

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 510, ptr noundef nonnull @.str.2) #15
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !198
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !356

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !357
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #8 !prof !353 !PGOFuncName !358 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !359

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !360
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 !prof !361 !PGOFuncName !362 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !271
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !273
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6, !prof !363

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !279
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !363

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #14
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !274
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !364 !PGOFuncName !365 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !366
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !368 !PGOFuncName !369 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #14
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !370 !PGOFuncName !371 {
  %2 = load ptr, ptr %0, align 8, !tbaa !161
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #5 !prof !370 !PGOFuncName !372 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #8 !prof !373 !PGOFuncName !374 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !375

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !348
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !376 !PGOFuncName !377 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !161
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !378 !PGOFuncName !379 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !366
  store ptr %1, ptr %4, align 8, !tbaa !161
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #7 !prof !364 !PGOFuncName !380 {
  %2 = load ptr, ptr %0, align 8, !tbaa !271
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !381
  store ptr %4, ptr %0, align 8, !tbaa !271
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_equivalence(ptr noundef %0) unnamed_addr #1 !prof !323 !PGOFuncName !382 {
  %2 = alloca %struct.equiv_hash_elt, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  store ptr %0, ptr %2, align 8, !tbaa !239
  %3 = getelementptr inbounds %struct.equiv_hash_elt, ptr %2, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !325
  %4 = load ptr, ptr @equiv, align 8, !tbaa !161
  %5 = call ptr @htab_find_slot(ptr noundef %4, ptr noundef nonnull %2, i32 noundef 0) #15
  %6 = load ptr, ptr %5, align 8, !tbaa !161
  %7 = getelementptr inbounds %struct.equiv_hash_elt, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !325
  %9 = call fastcc ptr @VEC_tree_base_pop(ptr noundef %8) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #8 !prof !361 !PGOFuncName !383 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !363

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !360
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !361 !PGOFuncName !384 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !198
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !368 !PGOFuncName !385 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !198
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !386

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3103, ptr noundef nonnull @.str.2) #15
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #11 !prof !378 !PGOFuncName !387 {
  %2 = load ptr, ptr %0, align 8, !tbaa !388
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !389

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !390
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !390
  store ptr %2, ptr %6, align 8, !tbaa !388
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !378 !PGOFuncName !391 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4, !prof !392

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8, !prof !393

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !388
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #14
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #11 !prof !378 !PGOFuncName !394 {
  store ptr %1, ptr %0, align 8, !tbaa !388
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !390
  store ptr %0, ptr %4, align 8, !tbaa !388
  store ptr %0, ptr %3, align 8, !tbaa !390
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #10 !prof !327 !PGOFuncName !395 {
  %2 = load i32, ptr %0, align 8, !tbaa !348
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !348
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !161
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #1 !prof !260 !PGOFuncName !396 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !397

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #1 !prof !398 !PGOFuncName !399 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !400

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #14
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #14
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #8 !prof !401 !PGOFuncName !402 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !403

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !404
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #1 !prof !406 !PGOFuncName !407 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !408

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 687, ptr noundef nonnull @.str.2) #15
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !161
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !398 !PGOFuncName !409 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !161
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!153}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152}
!36 = !{ptr @tree_ssa_uncprop, ptr @associate_equivalences_with_edges, i64 6652}
!37 = !{ptr @tree_ssa_uncprop, ptr @htab_create, i64 6652}
!38 = !{ptr @tree_ssa_uncprop, ptr @VEC_tree_heap_alloc, i64 6652}
!39 = !{ptr @tree_ssa_uncprop, ptr @calculate_dominance_info, i64 6652}
!40 = !{ptr @tree_ssa_uncprop, ptr @init_walk_dominator_tree, i64 6652}
!41 = !{ptr @tree_ssa_uncprop, ptr @walk_dominator_tree, i64 6652}
!42 = !{ptr @tree_ssa_uncprop, ptr @fini_walk_dominator_tree, i64 6652}
!43 = !{ptr @tree_ssa_uncprop, ptr @htab_delete, i64 6652}
!44 = !{ptr @tree_ssa_uncprop, ptr @VEC_tree_heap_free, i64 6652}
!45 = !{ptr @tree_ssa_uncprop, ptr @ei_start_1, i64 240597}
!46 = !{ptr @tree_ssa_uncprop, ptr @ei_cond, i64 633376}
!47 = !{ptr @tree_ssa_uncprop, ptr @free, i64 141409}
!48 = !{ptr @tree_ssa_uncprop, ptr @ei_next, i64 392779}
!49 = !{ptr @associate_equivalences_with_edges, ptr @gsi_last_bb, i64 240597}
!50 = !{ptr @associate_equivalences_with_edges, ptr @gsi_end_p, i64 240597}
!51 = !{ptr @associate_equivalences_with_edges, ptr @gsi_stmt, i64 222951}
!52 = !{ptr @associate_equivalences_with_edges, ptr @gimple_code, i64 222950}
!53 = !{ptr @associate_equivalences_with_edges, ptr @gimple_cond_code, i64 142564}
!54 = !{ptr @associate_equivalences_with_edges, ptr @extract_true_false_edges_from_block, i64 142564}
!55 = !{ptr @associate_equivalences_with_edges, ptr @gimple_cond_lhs, i64 126331}
!56 = !{ptr @associate_equivalences_with_edges, ptr @gimple_cond_rhs, i64 126331}
!57 = !{ptr @associate_equivalences_with_edges, ptr @is_gimple_min_invariant, i64 126321}
!58 = !{ptr @associate_equivalences_with_edges, ptr @xmalloc, i64 141396}
!59 = !{ptr @associate_equivalences_with_edges, ptr @integer_zerop, i64 11006}
!60 = !{ptr @associate_equivalences_with_edges, ptr @vector_type_mode, i64 25}
!61 = !{ptr @associate_equivalences_with_edges, ptr @real_compare, i64 6}
!62 = !{ptr @associate_equivalences_with_edges, ptr @gimple_switch_index, i64 2829}
!63 = !{ptr @associate_equivalences_with_edges, ptr @gimple_switch_num_labels, i64 2827}
!64 = !{ptr @associate_equivalences_with_edges, ptr @xcalloc, i64 2827}
!65 = !{ptr @associate_equivalences_with_edges, ptr @gimple_switch_label, i64 22330}
!66 = !{ptr @associate_equivalences_with_edges, ptr @label_to_block_fn, i64 22330}
!67 = !{ptr @associate_equivalences_with_edges, ptr @fold_convert_loc, i64 9583}
!68 = !{ptr @associate_equivalences_with_edges, ptr @VEC_basic_block_base_index, i64 9583}
!69 = !{ptr @associate_equivalences_with_edges, ptr @find_edge, i64 9583}
!70 = !{ptr @associate_equivalences_with_edges, ptr @free, i64 2827}
!71 = !{ptr @equiv_hash, ptr @iterative_hash_expr, i64 582329}
!72 = !{ptr @equiv_eq, ptr @operand_equal_p, i64 272756}
!73 = !{ptr @equiv_free, ptr @VEC_tree_heap_free, i64 31040}
!74 = !{ptr @equiv_free, ptr @free, i64 31040}
!75 = !{ptr @VEC_tree_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 6652}
!76 = !{ptr @uncprop_enter_block, ptr @get_immediate_dominator, i64 247284}
!77 = !{ptr @uncprop_enter_block, ptr @single_incoming_edge_ignoring_loop_edges, i64 240631}
!78 = !{ptr @uncprop_enter_block, ptr @record_equiv, i64 69651}
!79 = !{ptr @uncprop_enter_block, ptr @VEC_tree_heap_safe_push, i64 247284}
!80 = !{ptr @uncprop_enter_block, ptr @uncprop_into_successor_phis, i64 247284}
!81 = !{ptr @uncprop_leave_block, ptr @VEC_tree_base_pop, i64 247284}
!82 = !{ptr @uncprop_leave_block, ptr @remove_equivalence, i64 69652}
!83 = !{ptr @VEC_tree_heap_free, ptr @free, i64 37691}
!84 = !{ptr @ei_cond, ptr @ei_end_p, i64 1775547}
!85 = !{ptr @ei_cond, ptr @ei_edge, i64 1108111}
!86 = !{ptr @ei_next, ptr @ei_container, i64 2093997}
!87 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 1046999}
!88 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!89 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 240632}
!90 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 240632}
!91 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 126351}
!92 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 126351}
!93 = !{ptr @gimple_switch_index, ptr @gimple_op, i64 2828}
!94 = !{ptr @gimple_switch_num_labels, ptr @gimple_num_ops, i64 2828}
!95 = !{ptr @gimple_switch_num_labels, ptr @fancy_abort, i64 1}
!96 = !{ptr @gimple_switch_label, ptr @gimple_num_ops, i64 22349}
!97 = !{ptr @gimple_switch_label, ptr @fancy_abort, i64 1}
!98 = !{ptr @gimple_switch_label, ptr @gimple_op, i64 22349}
!99 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 277879}
!100 = !{ptr @gimple_op, ptr @gimple_ops, i64 277878}
!101 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 277879}
!102 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 277879}
!103 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!104 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 277879}
!105 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 277879}
!106 = !{ptr @single_incoming_edge_ignoring_loop_edges, ptr @ei_start_1, i64 240632}
!107 = !{ptr @single_incoming_edge_ignoring_loop_edges, ptr @ei_cond, i64 538276}
!108 = !{ptr @single_incoming_edge_ignoring_loop_edges, ptr @dominated_by_p, i64 369068}
!109 = !{ptr @single_incoming_edge_ignoring_loop_edges, ptr @ei_next, i64 297644}
!110 = !{ptr @record_equiv, ptr @xmalloc, i64 130189}
!111 = !{ptr @record_equiv, ptr @htab_find_slot, i64 130189}
!112 = !{ptr @record_equiv, ptr @free, i64 99148}
!113 = !{ptr @record_equiv, ptr @VEC_tree_heap_safe_push, i64 130189}
!114 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_heap_reserve, i64 377473}
!115 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_base_quick_push, i64 377473}
!116 = !{ptr @uncprop_into_successor_phis, ptr @ei_start_1, i64 247284}
!117 = !{ptr @uncprop_into_successor_phis, ptr @ei_cond, i64 646772}
!118 = !{ptr @uncprop_into_successor_phis, ptr @phi_nodes, i64 399488}
!119 = !{ptr @uncprop_into_successor_phis, ptr @gimple_seq_empty_p, i64 399488}
!120 = !{ptr @uncprop_into_successor_phis, ptr @record_equiv, i64 60537}
!121 = !{ptr @uncprop_into_successor_phis, ptr @gsi_start, i64 204902}
!122 = !{ptr @uncprop_into_successor_phis, ptr @gsi_end_p, i64 530568}
!123 = !{ptr @uncprop_into_successor_phis, ptr @gsi_stmt, i64 325666}
!124 = !{ptr @uncprop_into_successor_phis, ptr @gimple_phi_arg_imm_use_ptr, i64 327823}
!125 = !{ptr @uncprop_into_successor_phis, ptr @get_use_from_ptr, i64 325666}
!126 = !{ptr @uncprop_into_successor_phis, ptr @is_gimple_min_invariant, i64 325666}
!127 = !{ptr @uncprop_into_successor_phis, ptr @gimple_phi_result_ptr, i64 305874}
!128 = !{ptr @uncprop_into_successor_phis, ptr @get_def_from_ptr, i64 305874}
!129 = !{ptr @uncprop_into_successor_phis, ptr @htab_find_slot, i64 321949}
!130 = !{ptr @uncprop_into_successor_phis, ptr @VEC_tree_base_length, i64 29261}
!131 = !{ptr @uncprop_into_successor_phis, ptr @VEC_tree_base_index, i64 28209}
!132 = !{ptr @uncprop_into_successor_phis, ptr @set_ssa_use_from_ptr, i64 2157}
!133 = !{ptr @uncprop_into_successor_phis, ptr @gsi_next, i64 325666}
!134 = !{ptr @uncprop_into_successor_phis, ptr @remove_equivalence, i64 60537}
!135 = !{ptr @uncprop_into_successor_phis, ptr @ei_next, i64 399488}
!136 = !{ptr @VEC_tree_heap_reserve, ptr @VEC_tree_base_space, i64 377473}
!137 = !{ptr @VEC_tree_heap_reserve, ptr @vec_heap_p_reserve, i64 43839}
!138 = !{ptr @phi_nodes, ptr @fancy_abort, i64 1}
!139 = !{ptr @gsi_start, ptr @gimple_seq_first, i64 204902}
!140 = !{ptr @gsi_start, ptr @gimple_bb, i64 204900}
!141 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 327823}
!142 = !{ptr @set_ssa_use_from_ptr, ptr @delink_imm_use, i64 2156}
!143 = !{ptr @set_ssa_use_from_ptr, ptr @link_imm_use, i64 2156}
!144 = !{ptr @remove_equivalence, ptr @htab_find_slot, i64 130189}
!145 = !{ptr @remove_equivalence, ptr @VEC_tree_base_pop, i64 130189}
!146 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!147 = !{ptr @link_imm_use, ptr @link_imm_use_to_list, i64 2154}
!148 = !{ptr @ei_end_p, ptr @ei_container, i64 3551093}
!149 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 1775547}
!150 = !{ptr @ei_edge, ptr @ei_container, i64 2216221}
!151 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 1108111}
!152 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!153 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!154 = !{!"function_entry_count", i64 6652}
!155 = !{!"tree-ssa-uncprop.c:gate_uncprop"}
!156 = !{!157, !157, i64 0}
!157 = !{!"int", !158, i64 0}
!158 = !{!"omnipotent char", !159, i64 0}
!159 = !{!"Simple C/C++ TBAA"}
!160 = !{!"tree-ssa-uncprop.c:tree_ssa_uncprop"}
!161 = !{!162, !162, i64 0}
!162 = !{!"any pointer", !158, i64 0}
!163 = !{!164, !162, i64 8}
!164 = !{!"dom_walk_data", !157, i64 0, !162, i64 8, !162, i64 16, !162, i64 24, !162, i64 32, !162, i64 40, !165, i64 48, !162, i64 56}
!165 = !{!"long", !158, i64 0}
!166 = !{!164, !162, i64 16}
!167 = !{!164, !162, i64 24}
!168 = !{!164, !162, i64 32}
!169 = !{!164, !165, i64 48}
!170 = !{!171, !162, i64 8}
!171 = !{!"function", !162, i64 0, !162, i64 8, !162, i64 16, !162, i64 24, !162, i64 32, !162, i64 40, !162, i64 48, !162, i64 56, !162, i64 64, !162, i64 72, !162, i64 80, !162, i64 88, !162, i64 96, !157, i64 104, !157, i64 108, !157, i64 112, !157, i64 116, !157, i64 120, !157, i64 124, !162, i64 128, !157, i64 136, !157, i64 137, !157, i64 138, !157, i64 138, !157, i64 138, !157, i64 138, !157, i64 138, !157, i64 138, !157, i64 138, !157, i64 139, !157, i64 139, !157, i64 139, !157, i64 139, !157, i64 139, !157, i64 139, !157, i64 139}
!172 = !{!173, !162, i64 0}
!173 = !{!"control_flow_graph", !162, i64 0, !162, i64 8, !162, i64 16, !157, i64 24, !157, i64 28, !157, i64 32, !162, i64 40, !157, i64 48, !158, i64 52, !158, i64 60, !157, i64 68, !157, i64 72}
!174 = !{!175, !162, i64 56}
!175 = !{!"basic_block_def", !162, i64 0, !162, i64 8, !162, i64 16, !162, i64 24, !158, i64 32, !162, i64 48, !162, i64 56, !158, i64 64, !165, i64 72, !157, i64 80, !157, i64 84, !157, i64 88, !157, i64 92, !157, i64 96}
!176 = !{!173, !162, i64 8}
!177 = !{!"branch_weights", i32 1, i32 6652}
!178 = !{i64 0, i64 4, !156, i64 8, i64 8, !161}
!179 = !{i64 0, i64 8, !161}
!180 = !{i8 0, i8 2}
!181 = !{!"branch_weights", i32 1, i32 240632}
!182 = !{!183, !162, i64 24}
!183 = !{!"edge_def", !162, i64 0, !162, i64 8, !158, i64 16, !162, i64 24, !162, i64 32, !157, i64 40, !157, i64 44, !157, i64 48, !157, i64 52, !165, i64 56}
!184 = !{!"branch_weights", i32 251408, i32 141431}
!185 = !{!"branch_weights", i32 240632, i32 152206}
!186 = distinct !{!186, !187}
!187 = !{!"llvm.loop.mustprogress"}
!188 = !{!"branch_weights", i32 6652, i32 233981}
!189 = distinct !{!189, !187}
!190 = !{!"tree-ssa-uncprop.c:associate_equivalences_with_edges"}
!191 = !{!"branch_weights", i32 222985, i32 17649}
!192 = !{!"branch_weights", i32 1, i32 222985}
!193 = !{i32 0, i32 256}
!194 = !{!"branch_weights", i32 1559157707, i32 -1428968596, i32 56862192}
!195 = !{i32 0, i32 65536}
!196 = !{!"branch_weights", i32 -1704842001, i32 332821764}
!197 = !{!"branch_weights", i32 -304328884, i32 347445}
!198 = !{!158, !158, i64 0}
!199 = !{!"branch_weights", i32 5505, i32 120839}
!200 = !{!"branch_weights", i32 1, i32 5505}
!201 = !{!202, !162, i64 8}
!202 = !{!"edge_equivalency", !162, i64 0, !162, i64 8}
!203 = !{!"branch_weights", i32 2, i32 5504}
!204 = !{!"branch_weights", i32 1, i32 2}
!205 = !{!202, !162, i64 0}
!206 = !{!"branch_weights", i32 1, i32 5504}
!207 = !{!"branch_weights", i32 -644451316, i32 332309}
!208 = !{!"branch_weights", i32 12718, i32 108122}
!209 = !{!"branch_weights", i32 161747524, i32 25437}
!210 = !{!"branch_weights", i32 1, i32 120839}
!211 = !{!"branch_weights", i32 8, i32 120832}
!212 = !{!"branch_weights", i32 1, i32 120832}
!213 = !{!"branch_weights", i32 1, i32 8}
!214 = !{!"branch_weights", i32 8, i32 1}
!215 = !{!216, !158, i64 49}
!216 = !{!"real_format", !162, i64 0, !162, i64 8, !157, i64 16, !157, i64 20, !157, i64 24, !157, i64 28, !157, i64 32, !157, i64 36, !157, i64 40, !158, i64 44, !158, i64 45, !158, i64 46, !158, i64 47, !158, i64 48, !158, i64 49, !158, i64 50, !158, i64 51}
!217 = !{!"branch_weights", i32 64, i32 17}
!218 = !{!"branch_weights", i32 6, i32 3}
!219 = !{!"branch_weights", i32 1, i32 6}
!220 = !{!"branch_weights", i32 60581, i32 60252}
!221 = !{!"branch_weights", i32 8003241, i32 5659}
!222 = !{!173, !157, i64 32}
!223 = !{!"branch_weights", i32 2828, i32 1}
!224 = !{!173, !157, i64 24}
!225 = !{!"branch_weights", i32 17426, i32 4925}
!226 = !{!"branch_weights", i32 2829, i32 14598}
!227 = !{!175, !157, i64 80}
!228 = !{!"branch_weights", i32 10710, i32 3889}
!229 = !{!"branch_weights", i32 2828, i32 19522}
!230 = distinct !{!230, !187}
!231 = !{!"branch_weights", i32 4665890, i32 15883}
!232 = !{!"branch_weights", i32 6292, i32 9592}
!233 = !{!173, !162, i64 16}
!234 = !{!"branch_weights", i32 4678944, i32 2828}
!235 = distinct !{!235, !187}
!236 = distinct !{!236, !187}
!237 = !{!"function_entry_count", i64 582329}
!238 = !{!"tree-ssa-uncprop.c:equiv_hash"}
!239 = !{!240, !162, i64 0}
!240 = !{!"equiv_hash_elt", !162, i64 0, !162, i64 8}
!241 = !{!"function_entry_count", i64 272756}
!242 = !{!"tree-ssa-uncprop.c:equiv_eq"}
!243 = !{!"function_entry_count", i64 31040}
!244 = !{!"tree-ssa-uncprop.c:equiv_free"}
!245 = !{!"tree-ssa-uncprop.c:VEC_tree_heap_alloc"}
!246 = !{!"function_entry_count", i64 247284}
!247 = !{!"tree-ssa-uncprop.c:uncprop_enter_block"}
!248 = !{!"branch_weights", i32 6653, i32 240633}
!249 = !{!"branch_weights", i32 61113, i32 179521}
!250 = !{!183, !162, i64 0}
!251 = !{!"branch_weights", i32 179521, i32 1}
!252 = !{!"branch_weights", i32 109869, i32 69653}
!253 = !{!"tree-ssa-uncprop.c:uncprop_leave_block"}
!254 = !{!"branch_weights", i32 177633, i32 69653}
!255 = !{!"function_entry_count", i64 37692}
!256 = !{!"tree-ssa-uncprop.c:VEC_tree_heap_free"}
!257 = !{!"branch_weights", i32 1, i32 37693}
!258 = !{!"function_entry_count", i64 728548}
!259 = !{!"tree-ssa-uncprop.c:ei_start_1"}
!260 = !{!"function_entry_count", i64 1775547}
!261 = !{!"tree-ssa-uncprop.c:ei_cond"}
!262 = !{!"branch_weights", i32 1108112, i32 667437}
!263 = !{!"function_entry_count", i64 1046999}
!264 = !{!"tree-ssa-uncprop.c:ei_next"}
!265 = !{!"branch_weights", i32 1, i32 1047000}
!266 = !{!"branch_weights", i32 1047000, i32 1}
!267 = !{!268, !157, i64 0}
!268 = !{!"", !157, i64 0, !162, i64 8}
!269 = !{!"function_entry_count", i64 240632}
!270 = !{!"tree-ssa-uncprop.c:gsi_last_bb"}
!271 = !{!272, !162, i64 0}
!272 = !{!"", !162, i64 0, !162, i64 8, !162, i64 16}
!273 = !{!272, !162, i64 8}
!274 = !{!272, !162, i64 16}
!275 = !{!"function_entry_count", i64 771201}
!276 = !{!"tree-ssa-uncprop.c:gsi_end_p"}
!277 = !{!"function_entry_count", i64 548651}
!278 = !{!"tree-ssa-uncprop.c:gsi_stmt"}
!279 = !{!280, !162, i64 0}
!280 = !{!"gimple_seq_node_d", !162, i64 0, !162, i64 8, !162, i64 16}
!281 = !{!"function_entry_count", i64 1137019}
!282 = !{!"tree-ssa-uncprop.c:gimple_code"}
!283 = !{!"function_entry_count", i64 142586}
!284 = !{!"tree-ssa-uncprop.c:gimple_cond_code"}
!285 = !{!"function_entry_count", i64 126351}
!286 = !{!"tree-ssa-uncprop.c:gimple_cond_lhs"}
!287 = !{!"tree-ssa-uncprop.c:gimple_cond_rhs"}
!288 = !{!"function_entry_count", i64 2828}
!289 = !{!"tree-ssa-uncprop.c:gimple_switch_index"}
!290 = !{!"tree-ssa-uncprop.c:gimple_switch_num_labels"}
!291 = !{!"branch_weights", i32 2829, i32 1}
!292 = !{!"function_entry_count", i64 22349}
!293 = !{!"tree-ssa-uncprop.c:gimple_switch_label"}
!294 = !{!"branch_weights", i32 22350, i32 1}
!295 = !{!"function_entry_count", i64 9591}
!296 = !{!"tree-ssa-uncprop.c:VEC_basic_block_base_index"}
!297 = !{!"tree-ssa-uncprop.c:bb_seq"}
!298 = !{!175, !157, i64 96}
!299 = !{!"branch_weights", i32 240633, i32 1}
!300 = !{!"branch_weights", i32 1, i32 240633}
!301 = !{!302, !162, i64 0}
!302 = !{!"gimple_bb_info", !162, i64 0, !162, i64 8}
!303 = !{!"tree-ssa-uncprop.c:gimple_seq_last"}
!304 = !{!305, !162, i64 8}
!305 = !{!"gimple_seq_d", !162, i64 0, !162, i64 8, !162, i64 16}
!306 = !{!"function_entry_count", i64 277879}
!307 = !{!"tree-ssa-uncprop.c:gimple_op"}
!308 = !{!"branch_weights", i32 1, i32 277880}
!309 = !{!"tree-ssa-uncprop.c:gimple_has_ops"}
!310 = !{!"tree-ssa-uncprop.c:gimple_ops"}
!311 = !{!165, !165, i64 0}
!312 = !{!"tree-ssa-uncprop.c:gimple_statement_structure"}
!313 = !{!"tree-ssa-uncprop.c:gss_for_code"}
!314 = !{!"function_entry_count", i64 25177}
!315 = !{!"tree-ssa-uncprop.c:gimple_num_ops"}
!316 = !{!"tree-ssa-uncprop.c:single_incoming_edge_ignoring_loop_edges"}
!317 = !{!"branch_weights", i32 1, i32 179520}
!318 = !{!183, !162, i64 8}
!319 = !{!"branch_weights", i32 301745, i32 14042}
!320 = !{!"branch_weights", i32 240633, i32 61113}
!321 = !{!"branch_weights", i32 179520, i32 136266}
!322 = distinct !{!322, !187}
!323 = !{!"function_entry_count", i64 130189}
!324 = !{!"tree-ssa-uncprop.c:record_equiv"}
!325 = !{!240, !162, i64 8}
!326 = !{!"branch_weights", i32 31041, i32 99150}
!327 = !{!"function_entry_count", i64 377473}
!328 = !{!"tree-ssa-uncprop.c:VEC_tree_heap_safe_push"}
!329 = !{!"tree-ssa-uncprop.c:uncprop_into_successor_phis"}
!330 = !{!"branch_weights", i32 1, i32 247284}
!331 = !{!"branch_weights", i32 204903, i32 194588}
!332 = !{!"branch_weights", i32 144366, i32 60538}
!333 = !{!"branch_weights", i32 204902, i32 1}
!334 = !{!183, !157, i64 44}
!335 = !{!"branch_weights", i32 277668, i32 48001}
!336 = !{!"branch_weights", i32 273952, i32 3717}
!337 = !{!"branch_weights", i32 292692, i32 29261}
!338 = !{!"branch_weights", i32 28210, i32 27105}
!339 = !{!"branch_weights", i32 2157, i32 26054}
!340 = distinct !{!340, !187}
!341 = !{!"branch_weights", i32 120766, i32 204902}
!342 = distinct !{!342, !187}
!343 = !{!"branch_weights", i32 247284, i32 152206}
!344 = distinct !{!344, !187}
!345 = !{!"tree-ssa-uncprop.c:VEC_tree_heap_reserve"}
!346 = !{!"branch_weights", i32 43839, i32 333636}
!347 = !{!"tree-ssa-uncprop.c:VEC_tree_base_quick_push"}
!348 = !{!349, !157, i64 0}
!349 = !{!"VEC_tree_base", !157, i64 0, !157, i64 4, !158, i64 8}
!350 = !{!"tree-ssa-uncprop.c:VEC_tree_base_space"}
!351 = !{!"branch_weights", i32 31041, i32 346434}
!352 = !{!349, !157, i64 4}
!353 = !{!"function_entry_count", i64 399489}
!354 = !{!"tree-ssa-uncprop.c:phi_nodes"}
!355 = !{!"branch_weights", i32 399490, i32 1}
!356 = !{!"branch_weights", i32 6629, i32 392862}
!357 = !{!302, !162, i64 8}
!358 = !{!"tree-ssa-uncprop.c:gimple_seq_empty_p"}
!359 = !{!"branch_weights", i32 183357, i32 216134}
!360 = !{!305, !162, i64 0}
!361 = !{!"function_entry_count", i64 204902}
!362 = !{!"tree-ssa-uncprop.c:gsi_start"}
!363 = !{!"branch_weights", i32 1, i32 204903}
!364 = !{!"function_entry_count", i64 325667}
!365 = !{!"tree-ssa-uncprop.c:get_use_from_ptr"}
!366 = !{!367, !162, i64 24}
!367 = !{!"ssa_use_operand_d", !162, i64 0, !162, i64 8, !158, i64 16, !162, i64 24}
!368 = !{!"function_entry_count", i64 327823}
!369 = !{!"tree-ssa-uncprop.c:gimple_phi_arg_imm_use_ptr"}
!370 = !{!"function_entry_count", i64 305876}
!371 = !{!"tree-ssa-uncprop.c:get_def_from_ptr"}
!372 = !{!"tree-ssa-uncprop.c:gimple_phi_result_ptr"}
!373 = !{!"function_entry_count", i64 29260}
!374 = !{!"tree-ssa-uncprop.c:VEC_tree_base_length"}
!375 = !{!"branch_weights", i32 1, i32 29261}
!376 = !{!"function_entry_count", i64 28209}
!377 = !{!"tree-ssa-uncprop.c:VEC_tree_base_index"}
!378 = !{!"function_entry_count", i64 2156}
!379 = !{!"tree-ssa-uncprop.c:set_ssa_use_from_ptr"}
!380 = !{!"tree-ssa-uncprop.c:gsi_next"}
!381 = !{!280, !162, i64 16}
!382 = !{!"tree-ssa-uncprop.c:remove_equivalence"}
!383 = !{!"tree-ssa-uncprop.c:gimple_seq_first"}
!384 = !{!"tree-ssa-uncprop.c:gimple_bb"}
!385 = !{!"tree-ssa-uncprop.c:gimple_phi_arg"}
!386 = !{!"branch_weights", i32 1, i32 327824}
!387 = !{!"tree-ssa-uncprop.c:delink_imm_use"}
!388 = !{!367, !162, i64 0}
!389 = !{!"branch_weights", i32 2050, i32 108}
!390 = !{!367, !162, i64 8}
!391 = !{!"tree-ssa-uncprop.c:link_imm_use"}
!392 = !{!"branch_weights", i32 1, i32 2157}
!393 = !{!"branch_weights", i32 2157, i32 1}
!394 = !{!"tree-ssa-uncprop.c:link_imm_use_to_list"}
!395 = !{!"tree-ssa-uncprop.c:VEC_tree_base_pop"}
!396 = !{!"tree-ssa-uncprop.c:ei_end_p"}
!397 = !{!"branch_weights", i32 1, i32 1775548}
!398 = !{!"function_entry_count", i64 1108111}
!399 = !{!"tree-ssa-uncprop.c:ei_edge"}
!400 = !{!"branch_weights", i32 1, i32 1108112}
!401 = !{!"function_entry_count", i64 2822546}
!402 = !{!"tree-ssa-uncprop.c:VEC_edge_base_length"}
!403 = !{!"branch_weights", i32 1, i32 2822547}
!404 = !{!405, !157, i64 0}
!405 = !{!"VEC_edge_base", !157, i64 0, !157, i64 4, !158, i64 8}
!406 = !{!"function_entry_count", i64 7861314}
!407 = !{!"tree-ssa-uncprop.c:ei_container"}
!408 = !{!"branch_weights", i32 1, i32 7861315}
!409 = !{!"tree-ssa-uncprop.c:VEC_edge_base_index"}
