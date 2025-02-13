; ModuleID = 'tree-ssa-phiopt.c'
source_filename = "tree-ssa-phiopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.dom_walk_data = type { i8, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.name_to_bb = type { ptr, ptr, i8 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_seq_d = type { ptr, ptr, ptr }

@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"tree-ssa-phiopt.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@pass_phiopt = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.3, ptr @gate_phiopt, ptr @tree_ssa_phiopt, ptr null, ptr null, i32 0, i32 73, i32 40, i32 0, i32 0, i32 0, i32 31 } }, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"phiopt\00", align 1
@condstoretemp = internal unnamed_addr global ptr null, align 8
@seen_ssa_names = internal unnamed_addr global ptr null, align 8
@nontrap_set = internal unnamed_addr global ptr null, align 8
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"cstore\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [75 x i8] c"COND_EXPR in block %d and PHI in block %d converted to straightline code.\0A\00", align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@pass_cselim = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.8, ptr @gate_cselim, ptr @tree_ssa_cs_elim, ptr null, ptr null, i32 0, i32 73, i32 40, i32 0, i32 0, i32 0, i32 31 } }, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"cselim\00", align 1
@flag_tree_cselim = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @blocks_in_phiopt_order() local_unnamed_addr #0 !prof !271 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !272
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !276
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !279
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call ptr @xmalloc(i64 noundef %7) #16
  %9 = load ptr, ptr @cfun, align 8, !tbaa !272
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !276
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !279
  %14 = add nsw i32 %13, -2
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !281
  %17 = tail call ptr @sbitmap_alloc(i32 noundef %16) #16
  tail call void @sbitmap_zero(ptr noundef %17) #16
  %18 = load ptr, ptr @cfun, align 8, !tbaa !272
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !276
  %21 = load ptr, ptr %20, align 8, !tbaa !282
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !283
  tail call fastcc void @SET_BIT(ptr noundef %17, i32 noundef %23) #17
  %24 = load ptr, ptr @cfun, align 8, !tbaa !272
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !276
  %27 = load ptr, ptr %26, align 8, !tbaa !282
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !286
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !287
  %32 = icmp eq ptr %29, %31
  br i1 %32, label %125, label %33, !prof !288

33:                                               ; preds = %0, %115
  %34 = phi ptr [ %118, %115 ], [ %29, %0 ]
  %35 = phi i32 [ %116, %115 ], [ %14, %0 ]
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 9
  %37 = load i32, ptr %36, align 8, !tbaa !283
  %38 = lshr i32 %37, 6
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !289
  %42 = and i32 %37, 63
  %43 = zext nneg i32 %42 to i64
  %44 = shl nuw i64 1, %43
  %45 = and i64 %44, %41
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %115, !prof !290

47:                                               ; preds = %33
  %48 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %34) #17, !range !291
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %73, label %50, !prof !292

50:                                               ; preds = %47, %68
  %51 = phi i32 [ %69, %68 ], [ 1, %47 ]
  %52 = phi ptr [ %70, %68 ], [ %34, %47 ]
  %53 = tail call fastcc ptr @single_pred(ptr noundef %52) #17
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 9
  %55 = load i32, ptr %54, align 8, !tbaa !283
  %56 = lshr i32 %55, 6
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %57
  %59 = load i64, ptr %58, align 8, !tbaa !289
  %60 = tail call fastcc ptr @single_pred(ptr noundef %52) #17
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 9
  %62 = load i32, ptr %61, align 8, !tbaa !283
  %63 = and i32 %62, 63
  %64 = zext nneg i32 %63 to i64
  %65 = shl nuw i64 1, %64
  %66 = and i64 %65, %59
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %73, !prof !293

68:                                               ; preds = %50
  %69 = add i32 %51, 1
  %70 = tail call fastcc ptr @single_pred(ptr noundef %52) #17
  %71 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %70) #17, !range !291
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %50, !prof !294, !llvm.loop !295

73:                                               ; preds = %50, %68, %47
  %74 = phi i32 [ 1, %47 ], [ %69, %68 ], [ %51, %50 ]
  %75 = sub i32 %35, %74
  %76 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %34) #17, !range !291
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %105, label %78, !prof !292

78:                                               ; preds = %73, %96
  %79 = phi i32 [ %102, %96 ], [ %75, %73 ]
  %80 = phi ptr [ %101, %96 ], [ %34, %73 ]
  %81 = tail call fastcc ptr @single_pred(ptr noundef %80) #17
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 9
  %83 = load i32, ptr %82, align 8, !tbaa !283
  %84 = lshr i32 %83, 6
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !289
  %88 = tail call fastcc ptr @single_pred(ptr noundef %80) #17
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %88, i64 0, i32 9
  %90 = load i32, ptr %89, align 8, !tbaa !283
  %91 = and i32 %90, 63
  %92 = zext nneg i32 %91 to i64
  %93 = shl nuw i64 1, %92
  %94 = and i64 %93, %87
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %105, !prof !293

96:                                               ; preds = %78
  %97 = zext i32 %79 to i64
  %98 = getelementptr inbounds ptr, ptr %8, i64 %97
  store ptr %80, ptr %98, align 8, !tbaa !272
  %99 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 9
  %100 = load i32, ptr %99, align 8, !tbaa !283
  tail call fastcc void @SET_BIT(ptr noundef nonnull %17, i32 noundef %100) #17
  %101 = tail call fastcc ptr @single_pred(ptr noundef %80) #17
  %102 = add i32 %79, 1
  %103 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %101) #17, !range !291
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %78, !prof !294, !llvm.loop !297

105:                                              ; preds = %78, %96, %73
  %106 = phi ptr [ %34, %73 ], [ %101, %96 ], [ %80, %78 ]
  %107 = phi i32 [ %75, %73 ], [ %102, %96 ], [ %79, %78 ]
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds ptr, ptr %8, i64 %108
  store ptr %106, ptr %109, align 8, !tbaa !272
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %106, i64 0, i32 9
  %111 = load i32, ptr %110, align 8, !tbaa !283
  tail call fastcc void @SET_BIT(ptr noundef nonnull %17, i32 noundef %111) #17
  %112 = add i32 %35, -1
  %113 = icmp eq i32 %107, %112
  br i1 %113, label %115, label %114, !prof !298

114:                                              ; preds = %105
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 367, ptr noundef nonnull @.str.1) #16
  br label %115

115:                                              ; preds = %114, %105, %33
  %116 = phi i32 [ %35, %33 ], [ %75, %105 ], [ %75, %114 ]
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 6
  %118 = load ptr, ptr %117, align 8, !tbaa !286
  %119 = load ptr, ptr @cfun, align 8, !tbaa !272
  %120 = getelementptr inbounds %struct.function, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !276
  %122 = getelementptr inbounds %struct.control_flow_graph, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !287
  %124 = icmp eq ptr %118, %123
  br i1 %124, label %125, label %33, !prof !299, !llvm.loop !300

125:                                              ; preds = %115, %0
  %126 = phi i32 [ %14, %0 ], [ %116, %115 ]
  %127 = load ptr, ptr %17, align 8, !tbaa !301
  tail call void @free(ptr noundef %127) #17
  tail call void @free(ptr noundef %17) #17
  %128 = icmp eq i32 %126, 0
  br i1 %128, label %130, label %129, !prof !303

129:                                              ; preds = %125
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 372, ptr noundef nonnull @.str.1) #16
  br label %130

130:                                              ; preds = %125, %129
  ret ptr %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 !prof !304 !PGOFuncName !305 {
  %3 = load ptr, ptr %0, align 8, !tbaa !301
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !306

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
  %15 = load i64, ptr %14, align 8, !tbaa !289
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !307
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !307
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !289
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !289
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !308 !PGOFuncName !309 {
  %2 = load ptr, ptr %0, align 8, !tbaa !310
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #17
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !311 !PGOFuncName !312 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #17
  %3 = load ptr, ptr %2, align 8, !tbaa !313
  ret ptr %3
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !315 !PGOFuncName !316 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !317

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !318
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !311 !PGOFuncName !320 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #17, !range !291
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !321

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 655, ptr noundef nonnull @.str.1) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !310
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #17
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !322 !PGOFuncName !323 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !272
  ret ptr %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @empty_block_p(ptr noundef %0) local_unnamed_addr #7 !prof !324 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #17
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !291
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12, !prof !325

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %7 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %6) #17, !range !291
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9, !prof !326

9:                                                ; preds = %5
  call fastcc void @gsi_next_nondebug(ptr noundef nonnull %2) #17
  br label %10

10:                                               ; preds = %9, %5
  %11 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !291
  br label %12

12:                                               ; preds = %1, %10
  %13 = phi i8 [ %11, %10 ], [ 1, %1 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  ret i8 %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 !prof !327 !PGOFuncName !328 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #17
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #17, !range !291
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12, !prof !329

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #17
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #17, !range !330
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12, !prof !331

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #17
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #17, !range !291
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !prof !332, !llvm.loop !333

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !334 !PGOFuncName !335 {
  %2 = load ptr, ptr %0, align 8, !tbaa !336
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !338 !PGOFuncName !339 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !330
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !340 !PGOFuncName !341 {
  %2 = load ptr, ptr %0, align 8, !tbaa !336
  %3 = load ptr, ptr %2, align 8, !tbaa !342
  ret ptr %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next_nondebug(ptr nocapture noundef %0) unnamed_addr #7 !prof !344 !PGOFuncName !345 {
  br label %2

2:                                                ; preds = %5, %1
  tail call fastcc void @gsi_next(ptr noundef %0) #17
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #17, !range !291
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #17
  %7 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %6) #17, !range !291
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %2, !llvm.loop !346

9:                                                ; preds = %2, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 !prof !347 !PGOFuncName !348 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !336
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !349
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !350
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !351 !PGOFuncName !352 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #8 !prof !353 !PGOFuncName !354 {
  %2 = load ptr, ptr %0, align 8, !tbaa !336
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !355
  store ptr %4, ptr %0, align 8, !tbaa !336
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !356 !PGOFuncName !357 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !358
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !359

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !307
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !360

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !361
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 !prof !363 !PGOFuncName !364 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !365

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !366
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_phiopt() #9 !prof !368 !PGOFuncName !369 {
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_ssa_phiopt() #0 !prof !368 !PGOFuncName !370 {
  %1 = tail call fastcc i32 @tree_ssa_phiopt_worker(i8 noundef zeroext 0) #17, !range !371
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @tree_ssa_phiopt_worker(i8 noundef zeroext %0) unnamed_addr #0 !prof !372 !PGOFuncName !373 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = icmp eq i8 %0, 0
  br i1 %3, label %6, label %4, !prof !374

4:                                                ; preds = %1
  store ptr null, ptr @condstoretemp, align 8, !tbaa !272
  %5 = tail call fastcc ptr @get_non_trapping() #17
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  %8 = tail call ptr @blocks_in_phiopt_order() #17
  %9 = load ptr, ptr @cfun, align 8, !tbaa !272
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !276
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !279
  %14 = add nsw i32 %13, -2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %133, label %16, !prof !375

16:                                               ; preds = %6
  %17 = zext i32 %14 to i64
  br label %18

18:                                               ; preds = %16, %127
  %19 = phi i64 [ 0, %16 ], [ %129, %127 ]
  %20 = phi i8 [ 0, %16 ], [ %128, %127 ]
  %21 = getelementptr inbounds ptr, ptr %8, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !272
  %23 = tail call ptr @last_stmt(ptr noundef %22) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %127, label %25, !prof !376

25:                                               ; preds = %18
  %26 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %23) #17, !range !330
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %127, !prof !377

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !378
  %31 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %30, i32 noundef 0) #17
  %32 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !379
  %34 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %30, i32 noundef 1) #17
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !379
  %37 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 7
  %38 = load i32, ptr %37, align 8, !tbaa !380
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %127, !prof !381

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !380
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %127, !prof !381

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !378
  %49 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %48) #17
  %50 = icmp eq i32 %49, 0
  %51 = icmp eq ptr %36, null
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %127, label %53, !prof !382

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !378
  %56 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %55) #17
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %127, label %58, !prof !383

58:                                               ; preds = %53
  %59 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %48, i32 noundef 0) #17
  %60 = getelementptr inbounds %struct.edge_def, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !379
  %62 = icmp eq ptr %61, %36
  br i1 %62, label %68, label %63, !prof !384

63:                                               ; preds = %58
  %64 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %55, i32 noundef 0) #17
  %65 = getelementptr inbounds %struct.edge_def, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !379
  %67 = icmp eq ptr %66, %33
  br i1 %67, label %68, label %127, !prof !385

68:                                               ; preds = %63, %58
  %69 = phi ptr [ %48, %58 ], [ %55, %63 ]
  %70 = phi ptr [ %36, %58 ], [ %33, %63 ]
  %71 = phi ptr [ %34, %58 ], [ %31, %63 ]
  %72 = phi ptr [ %33, %58 ], [ %36, %63 ]
  %73 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %69, i32 noundef 0) #17
  %74 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %72) #17, !range !291
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %127, label %76, !prof !386

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 7
  %78 = load i32, ptr %77, align 8, !tbaa !380
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %127, label %81, !prof !387

81:                                               ; preds = %76
  %82 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %72) #17, !range !291
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %127, label %84, !prof !388

84:                                               ; preds = %81
  %85 = tail call fastcc ptr @single_pred(ptr noundef nonnull %72) #17
  %86 = icmp eq ptr %85, %22
  br i1 %86, label %87, label %127, !prof !389

87:                                               ; preds = %84
  br i1 %3, label %96, label %88, !prof !390

88:                                               ; preds = %87
  %89 = load ptr, ptr %70, align 8, !tbaa !310
  %90 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %89) #17
  %91 = icmp ugt i32 %90, 2
  br i1 %91, label %127, label %92, !prof !391

92:                                               ; preds = %88
  %93 = tail call fastcc zeroext i8 @cond_store_replacement(ptr noundef nonnull %72, ptr noundef nonnull %70, ptr noundef nonnull %73, ptr noundef nonnull %71, ptr noundef %7) #17, !range !291
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %127, label %95, !prof !392

95:                                               ; preds = %92
  br label %127

96:                                               ; preds = %87
  %97 = tail call fastcc ptr @phi_nodes(ptr noundef nonnull %70) #17
  %98 = tail call fastcc zeroext i8 @gimple_seq_singleton_p(ptr noundef %97) #17, !range !291
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %127, label %100, !prof !393

100:                                              ; preds = %96
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %97) #17
  %101 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %102 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 6
  %103 = load i32, ptr %102, align 4, !tbaa !394
  %104 = zext i32 %103 to i64
  %105 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %101, i64 noundef %104) #17
  %106 = getelementptr inbounds %struct.edge_def, ptr %71, i64 0, i32 6
  %107 = load i32, ptr %106, align 4, !tbaa !394
  %108 = zext i32 %107 to i64
  %109 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %101, i64 noundef %108) #17
  %110 = icmp ne ptr %105, null
  %111 = icmp ne ptr %109, null
  %112 = select i1 %110, i1 %111, i1 false
  br i1 %112, label %114, label %113, !prof !395

113:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 295, ptr noundef nonnull @.str.1) #16
  br label %114

114:                                              ; preds = %100, %113
  %115 = tail call fastcc zeroext i8 @conditional_replacement(ptr noundef nonnull %22, ptr noundef nonnull %72, ptr noundef nonnull %73, ptr noundef nonnull %71, ptr noundef %101, ptr noundef %105, ptr noundef %109) #17, !range !291
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %127, !prof !396

117:                                              ; preds = %114
  %118 = tail call fastcc zeroext i8 @value_replacement(ptr noundef nonnull %22, ptr noundef nonnull %72, ptr noundef nonnull %73, ptr noundef nonnull %71, ptr noundef %101, ptr noundef %105, ptr noundef %109) #17, !range !291
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %127, !prof !397

120:                                              ; preds = %117
  %121 = tail call fastcc zeroext i8 @abs_replacement(ptr noundef nonnull %22, ptr noundef nonnull %72, ptr noundef nonnull %71, ptr noundef %101, ptr noundef %105, ptr noundef %109) #17
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %127, !prof !398

123:                                              ; preds = %120
  %124 = tail call fastcc zeroext i8 @minmax_replacement(ptr noundef nonnull %22, ptr noundef nonnull %72, ptr noundef nonnull %73, ptr noundef nonnull %71, ptr noundef %101, ptr noundef %105, ptr noundef %109) #17, !range !291
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %127, label %126, !prof !399

126:                                              ; preds = %123
  br label %127

127:                                              ; preds = %96, %120, %117, %114, %123, %126, %95, %92, %88, %81, %84, %68, %76, %63, %46, %53, %28, %41, %18, %25
  %128 = phi i8 [ %20, %25 ], [ %20, %18 ], [ %20, %41 ], [ %20, %28 ], [ %20, %53 ], [ %20, %46 ], [ %20, %63 ], [ %20, %76 ], [ %20, %68 ], [ %20, %84 ], [ %20, %81 ], [ %20, %88 ], [ 1, %95 ], [ %20, %92 ], [ %20, %96 ], [ 1, %126 ], [ %20, %123 ], [ 1, %114 ], [ 1, %117 ], [ 1, %120 ]
  %129 = add nuw nsw i64 %19, 1
  %130 = icmp eq i64 %129, %17
  br i1 %130, label %131, label %18, !prof !400, !llvm.loop !401

131:                                              ; preds = %127
  %132 = icmp eq i8 %128, 0
  br label %133

133:                                              ; preds = %131, %6
  %134 = phi i1 [ true, %6 ], [ %132, %131 ]
  tail call void @free(ptr noundef %8) #17
  br i1 %3, label %137, label %135, !prof !374

135:                                              ; preds = %133
  tail call void @pointer_set_destroy(ptr noundef %7) #16
  br i1 %134, label %137, label %136, !prof !402

136:                                              ; preds = %135
  tail call void @gsi_commit_edge_inserts() #16
  br label %139

137:                                              ; preds = %133, %135
  %138 = select i1 %134, i32 0, i32 32, !prof !403
  br label %139

139:                                              ; preds = %137, %136
  %140 = phi i32 [ 16416, %136 ], [ %138, %137 ]
  ret i32 %140
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_non_trapping() unnamed_addr #0 !prof !404 !PGOFuncName !405 {
  %1 = alloca %struct.dom_walk_data, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #18
  %2 = tail call ptr @pointer_set_create() #16
  %3 = tail call ptr @htab_create(i64 noundef 128, ptr noundef nonnull @name_to_bb_hash, ptr noundef nonnull @name_to_bb_eq, ptr noundef nonnull @free) #16
  store ptr %3, ptr @seen_ssa_names, align 8, !tbaa !272
  tail call void @calculate_dominance_info(i32 noundef 1) #16
  store ptr %2, ptr @nontrap_set, align 8, !tbaa !272
  store i8 1, ptr %1, align 8
  %4 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !406
  %5 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 2
  store ptr @nt_init_block, ptr %5, align 8, !tbaa !408
  %6 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 3
  store ptr @nt_fini_block, ptr %6, align 8, !tbaa !409
  %7 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 4
  store ptr null, ptr %7, align 8, !tbaa !410
  %8 = getelementptr inbounds %struct.dom_walk_data, ptr %1, i64 0, i32 6
  store i64 0, ptr %8, align 8, !tbaa !411
  call void @init_walk_dominator_tree(ptr noundef nonnull %1) #16
  %9 = load ptr, ptr @cfun, align 8, !tbaa !272
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !276
  %12 = load ptr, ptr %11, align 8, !tbaa !282
  call void @walk_dominator_tree(ptr noundef nonnull %1, ptr noundef %12) #16
  call void @fini_walk_dominator_tree(ptr noundef nonnull %1) #16
  %13 = load ptr, ptr @seen_ssa_names, align 8, !tbaa !272
  call void @htab_delete(ptr noundef %13) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #18
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !412 !PGOFuncName !413 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !378
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #17
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @cond_store_replacement(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !414 !PGOFuncName !415 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = tail call ptr @last_and_only_stmt(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  %10 = icmp eq ptr %9, null
  br i1 %10, label %76, label %11, !prof !416

11:                                               ; preds = %5
  %12 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %9) #17, !range !330
  %13 = icmp eq i32 %12, 6
  br i1 %13, label %14, label %76, !prof !417

14:                                               ; preds = %11
  %15 = tail call fastcc i32 @gimple_location(ptr noundef nonnull %9) #17
  %16 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef nonnull %9) #17
  %17 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %9) #17
  %18 = load i64, ptr %16, align 8
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 65535
  %21 = add nsw i32 %20, -47
  %22 = icmp ult i32 %21, 3
  br i1 %22, label %23, label %76, !prof !418

23:                                               ; preds = %14
  %24 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %9) #17, !range !419
  %25 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %24) #17, !range !330
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %76, !prof !420

27:                                               ; preds = %23
  %28 = icmp eq i32 %24, 141
  br i1 %28, label %32, label %29, !prof !421

29:                                               ; preds = %27
  %30 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %17) #16
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %76, label %32, !prof !422

32:                                               ; preds = %29, %27
  %33 = tail call i32 @pointer_set_contains(ptr noundef %4, ptr noundef nonnull %16) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %76, label %35, !prof !423

35:                                               ; preds = %32
  tail call void @mark_symbols_for_renaming(ptr noundef nonnull %9) #16
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef nonnull %9) #16
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 1) #16
  %36 = load ptr, ptr @condstoretemp, align 8, !tbaa !272
  %37 = icmp eq ptr %36, null
  %38 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !307
  br i1 %37, label %44, label %40, !prof !424

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !307
  %43 = icmp eq ptr %39, %42
  br i1 %43, label %58, label %44

44:                                               ; preds = %35, %40
  %45 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %46 = call ptr @create_tmp_var(ptr noundef %39, ptr noundef nonnull @.str.5) #16
  store ptr %46, ptr @condstoretemp, align 8, !tbaa !272
  call fastcc void @get_var_ann(ptr noundef %46) #17
  %47 = load ptr, ptr %45, align 8, !tbaa !307
  %48 = load i64, ptr %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 65535
  %51 = add nsw i32 %50, -13
  %52 = icmp ult i32 %51, 2
  %53 = load ptr, ptr @condstoretemp, align 8, !tbaa !272
  br i1 %52, label %54, label %58, !prof !425

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.tree_decl_common, ptr %53, i64 0, i32 2
  %56 = load i64, ptr %55, align 8
  %57 = or i64 %56, 134217728
  store i64 %57, ptr %55, align 8
  br label %58

58:                                               ; preds = %44, %54, %40
  %59 = phi ptr [ %53, %44 ], [ %53, %54 ], [ %36, %40 ]
  %60 = call zeroext i8 @add_referenced_var(ptr noundef %59) #16
  %61 = call ptr @unshare_expr(ptr noundef nonnull %16) #16
  %62 = load ptr, ptr @condstoretemp, align 8, !tbaa !272
  %63 = call ptr @gimple_build_assign_stat(ptr noundef %62, ptr noundef %61) #16
  %64 = load ptr, ptr @condstoretemp, align 8, !tbaa !272
  %65 = call fastcc ptr @make_ssa_name(ptr noundef %64, ptr noundef %63) #17
  call fastcc void @gimple_assign_set_lhs(ptr noundef %63, ptr noundef %65) #17
  call fastcc void @gimple_set_location(ptr noundef %63, i32 noundef %15) #17
  call void @mark_symbols_for_renaming(ptr noundef %63) #16
  call void @gsi_insert_on_edge(ptr noundef %3, ptr noundef %63) #16
  %66 = load ptr, ptr @condstoretemp, align 8, !tbaa !272
  %67 = call ptr @create_phi_node(ptr noundef %66, ptr noundef %1) #16
  call void @add_phi_arg(ptr noundef %67, ptr noundef %17, ptr noundef %2, i32 noundef %15) #16
  call void @add_phi_arg(ptr noundef %67, ptr noundef %65, ptr noundef %3, i32 noundef %15) #16
  %68 = call ptr @unshare_expr(ptr noundef %61) #16
  %69 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %67) #17
  %70 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %69) #17
  %71 = call ptr @gimple_build_assign_stat(ptr noundef %68, ptr noundef %70) #16
  call void @mark_symbols_for_renaming(ptr noundef %71) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %1) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !426
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18
  %72 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #17, !range !291
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %75, label %74, !prof !424

74:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #18
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %1) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !426
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #18
  call void @gsi_insert_after(ptr noundef nonnull %6, ptr noundef %71, i32 noundef 0) #16
  br label %76

75:                                               ; preds = %58
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %71, i32 noundef 0) #16
  br label %76

76:                                               ; preds = %14, %74, %75, %32, %23, %29, %5, %11
  %77 = phi i8 [ 0, %11 ], [ 0, %5 ], [ 0, %14 ], [ 0, %29 ], [ 0, %23 ], [ 0, %32 ], [ 1, %75 ], [ 1, %74 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  ret i8 %77
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !427 !PGOFuncName !428 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !358
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !429

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 510, ptr noundef nonnull @.str.1) #16
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !307
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !430

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !431
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_singleton_p(ptr noundef readonly %0) unnamed_addr #6 !prof !427 !PGOFuncName !432 {
  %2 = tail call fastcc ptr @gimple_seq_first(ptr noundef %0) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !433

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_seq_last(ptr noundef %0) #17
  %6 = icmp eq ptr %2, %5
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i8 [ 0, %1 ], [ %7, %4 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 !prof !434 !PGOFuncName !435 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #17
  store ptr %3, ptr %0, align 8, !tbaa !336
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !349
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6, !prof !436

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !342
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !436

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #17
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !350
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !437 !PGOFuncName !438 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #17
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #17
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @conditional_replacement(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 !prof !434 !PGOFuncName !439 {
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  %11 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !307
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 13
  br i1 %15, label %94, label %16, !prof !436

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !307
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 13
  br i1 %21, label %94, label %22, !prof !436

22:                                               ; preds = %16
  %23 = tail call i32 @integer_zerop(ptr noundef nonnull %5) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25, !prof !440

25:                                               ; preds = %22
  %26 = tail call i32 @integer_onep(ptr noundef nonnull %6) #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34, !prof !441

28:                                               ; preds = %25, %22
  %29 = tail call i32 @integer_zerop(ptr noundef nonnull %6) #16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %94, label %31, !prof !442

31:                                               ; preds = %28
  %32 = tail call i32 @integer_onep(ptr noundef nonnull %5) #16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %94, label %34, !prof !443

34:                                               ; preds = %25, %31
  %35 = tail call zeroext i8 @empty_block_p(ptr noundef %1) #17, !range !291
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %94, label %37, !prof !444

37:                                               ; preds = %34
  %38 = tail call ptr @last_stmt(ptr noundef %0) #16
  %39 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %4) #17
  %40 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %39) #17
  %41 = tail call fastcc i32 @gimple_cond_code(ptr noundef %38) #17, !range !419
  %42 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !272
  %43 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %38) #17
  %44 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %38) #17
  %45 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %41, ptr noundef %42, ptr noundef %43, ptr noundef %44) #16
  call void @extract_true_false_edges_from_block(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %10) #16
  %46 = load ptr, ptr %9, align 8, !tbaa !272
  %47 = icmp eq ptr %46, %2
  br i1 %47, label %48, label %51, !prof !445

48:                                               ; preds = %37
  %49 = call i32 @integer_zerop(ptr noundef nonnull %5) #16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %48, %37
  %52 = load ptr, ptr %10, align 8, !tbaa !272
  %53 = icmp eq ptr %52, %2
  br i1 %53, label %54, label %57, !prof !445

54:                                               ; preds = %51
  %55 = call i32 @integer_onep(ptr noundef nonnull %5) #16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %54, %51
  %58 = load ptr, ptr %9, align 8, !tbaa !272
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %60, label %63, !prof !446

60:                                               ; preds = %57
  %61 = call i32 @integer_zerop(ptr noundef nonnull %6) #16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69, !prof !447

63:                                               ; preds = %60, %57
  %64 = load ptr, ptr %10, align 8, !tbaa !272
  %65 = icmp eq ptr %64, %3
  br i1 %65, label %66, label %73, !prof !448

66:                                               ; preds = %63
  %67 = call i32 @integer_onep(ptr noundef nonnull %6) #16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69, !prof !449

69:                                               ; preds = %66, %60, %54, %48
  %70 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !307
  %72 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 96, ptr noundef %71, ptr noundef %45) #16
  br label %73

73:                                               ; preds = %69, %66, %63
  %74 = phi ptr [ %72, %69 ], [ %45, %66 ], [ %45, %63 ]
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %38) #16
  %75 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %8, ptr noundef %74, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #16
  %76 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !307
  %78 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !307
  %80 = call zeroext i8 @useless_type_conversion_p(ptr noundef %77, ptr noundef %79) #16
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %92, !prof !450

82:                                               ; preds = %73
  %83 = load ptr, ptr %76, align 8, !tbaa !307
  %84 = call ptr @create_tmp_var(ptr noundef %83, ptr noundef null) #16
  %85 = call zeroext i8 @add_referenced_var(ptr noundef %84) #16
  %86 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 113, ptr noundef %84, ptr noundef nonnull %75, ptr noundef null) #16
  %87 = call fastcc ptr @make_ssa_name(ptr noundef %84, ptr noundef %86) #17
  call fastcc void @gimple_assign_set_lhs(ptr noundef %86, ptr noundef %87) #17
  call void @gsi_insert_before(ptr noundef nonnull %8, ptr noundef %86, i32 noundef 1) #16
  %88 = call fastcc i32 @gimple_phi_arg_location(ptr noundef %4, i64 noundef 0) #17
  %89 = call fastcc i32 @gimple_phi_arg_location(ptr noundef %4, i64 noundef 1) #17
  %90 = icmp eq i32 %88, 0
  %91 = select i1 %90, i32 %89, i32 %88, !prof !451
  call fastcc void @gimple_set_location(ptr noundef %86, i32 noundef %91) #17
  br label %92

92:                                               ; preds = %82, %73
  %93 = phi ptr [ %75, %73 ], [ %87, %82 ]
  call fastcc void @replace_phi_edge_with_variable(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef %93) #17
  br label %94

94:                                               ; preds = %34, %28, %31, %7, %16, %92
  %95 = phi i8 [ 1, %92 ], [ 0, %16 ], [ 0, %7 ], [ 0, %31 ], [ 0, %28 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #18
  ret i8 %95
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @value_replacement(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 !prof !452 !PGOFuncName !453 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  %10 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !307
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 14
  br i1 %14, label %15, label %18, !prof !454

15:                                               ; preds = %7
  %16 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #16
  %17 = load ptr, ptr %10, align 8, !tbaa !307
  br label %23

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi ptr [ %17, %15 ], [ %11, %18 ]
  %25 = phi i32 [ %16, %15 ], [ %22, %18 ]
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !307
  %29 = icmp eq i8 %28, 8
  br i1 %29, label %87, label %30, !prof !455

30:                                               ; preds = %23
  %31 = load i64, ptr %24, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 14
  br i1 %33, label %34, label %37, !prof !456

34:                                               ; preds = %30
  %35 = tail call i32 @vector_type_mode(ptr noundef nonnull %24) #16
  %36 = load ptr, ptr %10, align 8, !tbaa !307
  br label %42

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.tree_type, ptr %24, i64 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  br label %42

42:                                               ; preds = %37, %34
  %43 = phi ptr [ %36, %34 ], [ %24, %37 ]
  %44 = phi i32 [ %35, %34 ], [ %41, %37 ]
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !307
  %48 = icmp eq i8 %47, 9
  br i1 %48, label %87, label %49, !prof !456

49:                                               ; preds = %42
  %50 = load i64, ptr %43, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 14
  br i1 %52, label %53, label %56, !prof !456

53:                                               ; preds = %49
  %54 = tail call i32 @vector_type_mode(ptr noundef nonnull %43) #16
  %55 = load ptr, ptr %10, align 8, !tbaa !307
  br label %61

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.tree_type, ptr %43, i64 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  br label %61

61:                                               ; preds = %56, %53
  %62 = phi ptr [ %55, %53 ], [ %43, %56 ]
  %63 = phi i32 [ %54, %53 ], [ %60, %56 ]
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !307
  %67 = icmp eq i8 %66, 11
  br i1 %67, label %87, label %68, !prof !456

68:                                               ; preds = %61
  %69 = load i64, ptr %62, align 8
  %70 = and i64 %69, 65535
  %71 = icmp eq i64 %70, 14
  br i1 %71, label %72, label %74, !prof !456

72:                                               ; preds = %68
  %73 = tail call i32 @vector_type_mode(ptr noundef nonnull %62) #16
  br label %79

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.tree_type, ptr %62, i64 0, i32 6
  %76 = load i32, ptr %75, align 4
  %77 = lshr i32 %76, 16
  %78 = and i32 %77, 255
  br label %79

79:                                               ; preds = %74, %72
  %80 = phi i32 [ %73, %72 ], [ %78, %74 ]
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !307
  %84 = icmp eq i8 %83, 17
  br i1 %84, label %85, label %305, !prof !456

85:                                               ; preds = %79
  %86 = load ptr, ptr %10, align 8, !tbaa !307
  br label %87

87:                                               ; preds = %85, %61, %42, %23
  %88 = phi ptr [ %86, %85 ], [ %62, %61 ], [ %43, %42 ], [ %24, %23 ]
  %89 = load i64, ptr %88, align 8
  %90 = and i64 %89, 65535
  %91 = icmp eq i64 %90, 14
  br i1 %91, label %92, label %95, !prof !457

92:                                               ; preds = %87
  %93 = tail call i32 @vector_type_mode(ptr noundef nonnull %88) #16
  %94 = load ptr, ptr %10, align 8, !tbaa !307
  br label %100

95:                                               ; preds = %87
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
  %105 = load i8, ptr %104, align 1, !tbaa !307
  %106 = icmp eq i8 %105, 8
  br i1 %106, label %126, label %107, !prof !458

107:                                              ; preds = %100
  %108 = load i64, ptr %101, align 8
  %109 = and i64 %108, 65535
  %110 = icmp eq i64 %109, 14
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = tail call i32 @vector_type_mode(ptr noundef nonnull %101) #16
  %113 = load ptr, ptr %10, align 8, !tbaa !307
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
  %124 = load i8, ptr %123, align 1, !tbaa !307
  %125 = icmp eq i8 %124, 9
  br i1 %125, label %126, label %138

126:                                              ; preds = %119, %100
  %127 = phi ptr [ %120, %119 ], [ %101, %100 ]
  %128 = load i64, ptr %127, align 8
  %129 = and i64 %128, 65535
  %130 = icmp eq i64 %129, 14
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = tail call i32 @vector_type_mode(ptr noundef nonnull %127) #16
  br label %155

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.tree_type, ptr %127, i64 0, i32 6
  %135 = load i32, ptr %134, align 4
  %136 = lshr i32 %135, 16
  %137 = and i32 %136, 255
  br label %155

138:                                              ; preds = %119
  %139 = load i64, ptr %120, align 8
  %140 = and i64 %139, 65535
  %141 = icmp eq i64 %140, 14
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = tail call i32 @vector_type_mode(ptr noundef nonnull %120) #16
  br label %149

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.tree_type, ptr %120, i64 0, i32 6
  %146 = load i32, ptr %145, align 4
  %147 = lshr i32 %146, 16
  %148 = and i32 %147, 255
  br label %149

149:                                              ; preds = %144, %142
  %150 = phi i32 [ %143, %142 ], [ %148, %144 ]
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !307
  %154 = zext i8 %153 to i32
  br label %155

155:                                              ; preds = %131, %133, %149
  %156 = phi i32 [ %154, %149 ], [ %132, %131 ], [ %137, %133 ]
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !307
  %160 = icmp eq i8 %159, 9
  %161 = load ptr, ptr %10, align 8, !tbaa !307
  %162 = load i64, ptr %161, align 8
  %163 = and i64 %162, 65535
  %164 = icmp eq i64 %163, 14
  br i1 %160, label %165, label %229

165:                                              ; preds = %155
  br i1 %164, label %166, label %169

166:                                              ; preds = %165
  %167 = tail call i32 @vector_type_mode(ptr noundef nonnull %161) #16
  %168 = load ptr, ptr %10, align 8, !tbaa !307
  br label %174

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.tree_type, ptr %161, i64 0, i32 6
  %171 = load i32, ptr %170, align 4
  %172 = lshr i32 %171, 16
  %173 = and i32 %172, 255
  br label %174

174:                                              ; preds = %169, %166
  %175 = phi ptr [ %168, %166 ], [ %161, %169 ]
  %176 = phi i32 [ %167, %166 ], [ %173, %169 ]
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !307
  %180 = icmp eq i8 %179, 8
  br i1 %180, label %200, label %181

181:                                              ; preds = %174
  %182 = load i64, ptr %175, align 8
  %183 = and i64 %182, 65535
  %184 = icmp eq i64 %183, 14
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = tail call i32 @vector_type_mode(ptr noundef nonnull %175) #16
  %187 = load ptr, ptr %10, align 8, !tbaa !307
  br label %193

188:                                              ; preds = %181
  %189 = getelementptr inbounds %struct.tree_type, ptr %175, i64 0, i32 6
  %190 = load i32, ptr %189, align 4
  %191 = lshr i32 %190, 16
  %192 = and i32 %191, 255
  br label %193

193:                                              ; preds = %188, %185
  %194 = phi ptr [ %187, %185 ], [ %175, %188 ]
  %195 = phi i32 [ %186, %185 ], [ %192, %188 ]
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !307
  %199 = icmp eq i8 %198, 9
  br i1 %199, label %200, label %212

200:                                              ; preds = %193, %174
  %201 = phi ptr [ %194, %193 ], [ %175, %174 ]
  %202 = load i64, ptr %201, align 8
  %203 = and i64 %202, 65535
  %204 = icmp eq i64 %203, 14
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = tail call i32 @vector_type_mode(ptr noundef nonnull %201) #16
  br label %293

207:                                              ; preds = %200
  %208 = getelementptr inbounds %struct.tree_type, ptr %201, i64 0, i32 6
  %209 = load i32, ptr %208, align 4
  %210 = lshr i32 %209, 16
  %211 = and i32 %210, 255
  br label %293

212:                                              ; preds = %193
  %213 = load i64, ptr %194, align 8
  %214 = and i64 %213, 65535
  %215 = icmp eq i64 %214, 14
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = tail call i32 @vector_type_mode(ptr noundef nonnull %194) #16
  br label %223

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct.tree_type, ptr %194, i64 0, i32 6
  %220 = load i32, ptr %219, align 4
  %221 = lshr i32 %220, 16
  %222 = and i32 %221, 255
  br label %223

223:                                              ; preds = %218, %216
  %224 = phi i32 [ %217, %216 ], [ %222, %218 ]
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %225
  %227 = load i8, ptr %226, align 1, !tbaa !307
  %228 = zext i8 %227 to i32
  br label %293

229:                                              ; preds = %155
  br i1 %164, label %230, label %233

230:                                              ; preds = %229
  %231 = tail call i32 @vector_type_mode(ptr noundef nonnull %161) #16
  %232 = load ptr, ptr %10, align 8, !tbaa !307
  br label %238

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.tree_type, ptr %161, i64 0, i32 6
  %235 = load i32, ptr %234, align 4
  %236 = lshr i32 %235, 16
  %237 = and i32 %236, 255
  br label %238

238:                                              ; preds = %233, %230
  %239 = phi ptr [ %232, %230 ], [ %161, %233 ]
  %240 = phi i32 [ %231, %230 ], [ %237, %233 ]
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %241
  %243 = load i8, ptr %242, align 1, !tbaa !307
  %244 = icmp eq i8 %243, 8
  br i1 %244, label %264, label %245

245:                                              ; preds = %238
  %246 = load i64, ptr %239, align 8
  %247 = and i64 %246, 65535
  %248 = icmp eq i64 %247, 14
  br i1 %248, label %249, label %252

249:                                              ; preds = %245
  %250 = tail call i32 @vector_type_mode(ptr noundef nonnull %239) #16
  %251 = load ptr, ptr %10, align 8, !tbaa !307
  br label %257

252:                                              ; preds = %245
  %253 = getelementptr inbounds %struct.tree_type, ptr %239, i64 0, i32 6
  %254 = load i32, ptr %253, align 4
  %255 = lshr i32 %254, 16
  %256 = and i32 %255, 255
  br label %257

257:                                              ; preds = %252, %249
  %258 = phi ptr [ %251, %249 ], [ %239, %252 ]
  %259 = phi i32 [ %250, %249 ], [ %256, %252 ]
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %260
  %262 = load i8, ptr %261, align 1, !tbaa !307
  %263 = icmp eq i8 %262, 9
  br i1 %263, label %264, label %276, !prof !458

264:                                              ; preds = %257, %238
  %265 = phi ptr [ %258, %257 ], [ %239, %238 ]
  %266 = load i64, ptr %265, align 8
  %267 = and i64 %266, 65535
  %268 = icmp eq i64 %267, 14
  br i1 %268, label %269, label %271

269:                                              ; preds = %264
  %270 = tail call i32 @vector_type_mode(ptr noundef nonnull %265) #16
  br label %293

271:                                              ; preds = %264
  %272 = getelementptr inbounds %struct.tree_type, ptr %265, i64 0, i32 6
  %273 = load i32, ptr %272, align 4
  %274 = lshr i32 %273, 16
  %275 = and i32 %274, 255
  br label %293

276:                                              ; preds = %257
  %277 = load i64, ptr %258, align 8
  %278 = and i64 %277, 65535
  %279 = icmp eq i64 %278, 14
  br i1 %279, label %280, label %282

280:                                              ; preds = %276
  %281 = tail call i32 @vector_type_mode(ptr noundef nonnull %258) #16
  br label %287

282:                                              ; preds = %276
  %283 = getelementptr inbounds %struct.tree_type, ptr %258, i64 0, i32 6
  %284 = load i32, ptr %283, align 4
  %285 = lshr i32 %284, 16
  %286 = and i32 %285, 255
  br label %287

287:                                              ; preds = %282, %280
  %288 = phi i32 [ %281, %280 ], [ %286, %282 ]
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %289
  %291 = load i8, ptr %290, align 1, !tbaa !307
  %292 = zext i8 %291 to i32
  br label %293

293:                                              ; preds = %287, %271, %269, %223, %207, %205
  %294 = phi i32 [ %228, %223 ], [ %206, %205 ], [ %211, %207 ], [ %292, %287 ], [ %270, %269 ], [ %275, %271 ]
  %295 = add i32 %294, -38
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %296
  %298 = load ptr, ptr %297, align 8, !tbaa !272
  %299 = getelementptr inbounds %struct.real_format, ptr %298, i64 0, i32 14
  %300 = load i8, ptr %299, align 1, !tbaa !459
  %301 = icmp ne i8 %300, 0
  %302 = load i32, ptr @flag_signed_zeros, align 4
  %303 = icmp ne i32 %302, 0
  %304 = select i1 %301, i1 %303, i1 false
  br i1 %304, label %343, label %305, !prof !461

305:                                              ; preds = %293, %79
  %306 = tail call zeroext i8 @empty_block_p(ptr noundef %1) #17, !range !291
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %343, label %308, !prof !462

308:                                              ; preds = %305
  %309 = tail call ptr @last_stmt(ptr noundef %0) #16
  %310 = tail call fastcc i32 @gimple_cond_code(ptr noundef %309) #17, !range !419
  %311 = add nsw i32 %310, -103
  %312 = icmp ult i32 %311, -2
  br i1 %312, label %343, label %313, !prof !463

313:                                              ; preds = %308
  call void @extract_true_false_edges_from_block(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9) #16
  %314 = call fastcc ptr @gimple_cond_lhs(ptr noundef %309) #17
  %315 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %5, ptr noundef %314) #16
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %321, label %317, !prof !464

317:                                              ; preds = %313
  %318 = call fastcc ptr @gimple_cond_rhs(ptr noundef %309) #17
  %319 = call i32 @operand_equal_for_phi_arg_p(ptr noundef nonnull %6, ptr noundef %318) #16
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %329, !prof !465

321:                                              ; preds = %317, %313
  %322 = call fastcc ptr @gimple_cond_lhs(ptr noundef %309) #17
  %323 = call i32 @operand_equal_for_phi_arg_p(ptr noundef nonnull %6, ptr noundef %322) #16
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %343, label %325, !prof !466

325:                                              ; preds = %321
  %326 = call fastcc ptr @gimple_cond_rhs(ptr noundef %309) #17
  %327 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %5, ptr noundef %326) #16
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %343, label %329, !prof !467

329:                                              ; preds = %325, %317
  %330 = icmp eq i32 %310, 102
  %331 = load ptr, ptr %8, align 8
  %332 = load ptr, ptr %9, align 8
  %333 = select i1 %330, ptr %331, ptr %332, !prof !468
  %334 = getelementptr inbounds %struct.edge_def, ptr %333, i64 0, i32 1
  %335 = load ptr, ptr %334, align 8, !tbaa !379
  %336 = icmp eq ptr %335, %1
  br i1 %336, label %337, label %339, !prof !469

337:                                              ; preds = %329
  %338 = call fastcc ptr @single_succ_edge(ptr noundef %1) #17
  br label %339

339:                                              ; preds = %337, %329
  %340 = phi ptr [ %338, %337 ], [ %333, %329 ]
  %341 = icmp eq ptr %340, %2
  %342 = select i1 %341, ptr %5, ptr %6, !prof !469
  call fastcc void @replace_phi_edge_with_variable(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef %342) #17
  br label %343

343:                                              ; preds = %321, %325, %308, %305, %293, %339
  %344 = phi i8 [ 1, %339 ], [ 0, %293 ], [ 0, %305 ], [ 0, %308 ], [ 0, %325 ], [ 0, %321 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  ret i8 %344
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @abs_replacement(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef readnone %4, ptr noundef readonly %5) unnamed_addr #0 !prof !470 !PGOFuncName !471 {
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  %10 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !307
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 14
  br i1 %14, label %15, label %18, !prof !472

15:                                               ; preds = %6
  %16 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #16
  %17 = load ptr, ptr %10, align 8, !tbaa !307
  br label %23

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi ptr [ %17, %15 ], [ %11, %18 ]
  %25 = phi i32 [ %16, %15 ], [ %22, %18 ]
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !307
  %29 = icmp eq i8 %28, 8
  br i1 %29, label %87, label %30, !prof !473

30:                                               ; preds = %23
  %31 = load i64, ptr %24, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 14
  br i1 %33, label %34, label %37, !prof !474

34:                                               ; preds = %30
  %35 = tail call i32 @vector_type_mode(ptr noundef nonnull %24) #16
  %36 = load ptr, ptr %10, align 8, !tbaa !307
  br label %42

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.tree_type, ptr %24, i64 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  br label %42

42:                                               ; preds = %37, %34
  %43 = phi ptr [ %36, %34 ], [ %24, %37 ]
  %44 = phi i32 [ %35, %34 ], [ %41, %37 ]
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !307
  %48 = icmp eq i8 %47, 9
  br i1 %48, label %87, label %49, !prof !474

49:                                               ; preds = %42
  %50 = load i64, ptr %43, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 14
  br i1 %52, label %53, label %56, !prof !474

53:                                               ; preds = %49
  %54 = tail call i32 @vector_type_mode(ptr noundef nonnull %43) #16
  %55 = load ptr, ptr %10, align 8, !tbaa !307
  br label %61

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.tree_type, ptr %43, i64 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  br label %61

61:                                               ; preds = %56, %53
  %62 = phi ptr [ %55, %53 ], [ %43, %56 ]
  %63 = phi i32 [ %54, %53 ], [ %60, %56 ]
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !307
  %67 = icmp eq i8 %66, 11
  br i1 %67, label %87, label %68, !prof !474

68:                                               ; preds = %61
  %69 = load i64, ptr %62, align 8
  %70 = and i64 %69, 65535
  %71 = icmp eq i64 %70, 14
  br i1 %71, label %72, label %74, !prof !474

72:                                               ; preds = %68
  %73 = tail call i32 @vector_type_mode(ptr noundef nonnull %62) #16
  br label %79

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.tree_type, ptr %62, i64 0, i32 6
  %76 = load i32, ptr %75, align 4
  %77 = lshr i32 %76, 16
  %78 = and i32 %77, 255
  br label %79

79:                                               ; preds = %74, %72
  %80 = phi i32 [ %73, %72 ], [ %78, %74 ]
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !307
  %84 = icmp eq i8 %83, 17
  br i1 %84, label %85, label %305, !prof !474

85:                                               ; preds = %79
  %86 = load ptr, ptr %10, align 8, !tbaa !307
  br label %87

87:                                               ; preds = %85, %61, %42, %23
  %88 = phi ptr [ %86, %85 ], [ %62, %61 ], [ %43, %42 ], [ %24, %23 ]
  %89 = load i64, ptr %88, align 8
  %90 = and i64 %89, 65535
  %91 = icmp eq i64 %90, 14
  br i1 %91, label %92, label %95, !prof !457

92:                                               ; preds = %87
  %93 = tail call i32 @vector_type_mode(ptr noundef nonnull %88) #16
  %94 = load ptr, ptr %10, align 8, !tbaa !307
  br label %100

95:                                               ; preds = %87
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
  %105 = load i8, ptr %104, align 1, !tbaa !307
  %106 = icmp eq i8 %105, 8
  br i1 %106, label %126, label %107, !prof !458

107:                                              ; preds = %100
  %108 = load i64, ptr %101, align 8
  %109 = and i64 %108, 65535
  %110 = icmp eq i64 %109, 14
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = tail call i32 @vector_type_mode(ptr noundef nonnull %101) #16
  %113 = load ptr, ptr %10, align 8, !tbaa !307
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
  %124 = load i8, ptr %123, align 1, !tbaa !307
  %125 = icmp eq i8 %124, 9
  br i1 %125, label %126, label %138

126:                                              ; preds = %119, %100
  %127 = phi ptr [ %120, %119 ], [ %101, %100 ]
  %128 = load i64, ptr %127, align 8
  %129 = and i64 %128, 65535
  %130 = icmp eq i64 %129, 14
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = tail call i32 @vector_type_mode(ptr noundef nonnull %127) #16
  br label %155

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.tree_type, ptr %127, i64 0, i32 6
  %135 = load i32, ptr %134, align 4
  %136 = lshr i32 %135, 16
  %137 = and i32 %136, 255
  br label %155

138:                                              ; preds = %119
  %139 = load i64, ptr %120, align 8
  %140 = and i64 %139, 65535
  %141 = icmp eq i64 %140, 14
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = tail call i32 @vector_type_mode(ptr noundef nonnull %120) #16
  br label %149

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.tree_type, ptr %120, i64 0, i32 6
  %146 = load i32, ptr %145, align 4
  %147 = lshr i32 %146, 16
  %148 = and i32 %147, 255
  br label %149

149:                                              ; preds = %144, %142
  %150 = phi i32 [ %143, %142 ], [ %148, %144 ]
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !307
  %154 = zext i8 %153 to i32
  br label %155

155:                                              ; preds = %131, %133, %149
  %156 = phi i32 [ %154, %149 ], [ %132, %131 ], [ %137, %133 ]
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !307
  %160 = icmp eq i8 %159, 9
  %161 = load ptr, ptr %10, align 8, !tbaa !307
  %162 = load i64, ptr %161, align 8
  %163 = and i64 %162, 65535
  %164 = icmp eq i64 %163, 14
  br i1 %160, label %165, label %229

165:                                              ; preds = %155
  br i1 %164, label %166, label %169

166:                                              ; preds = %165
  %167 = tail call i32 @vector_type_mode(ptr noundef nonnull %161) #16
  %168 = load ptr, ptr %10, align 8, !tbaa !307
  br label %174

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.tree_type, ptr %161, i64 0, i32 6
  %171 = load i32, ptr %170, align 4
  %172 = lshr i32 %171, 16
  %173 = and i32 %172, 255
  br label %174

174:                                              ; preds = %169, %166
  %175 = phi ptr [ %168, %166 ], [ %161, %169 ]
  %176 = phi i32 [ %167, %166 ], [ %173, %169 ]
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !307
  %180 = icmp eq i8 %179, 8
  br i1 %180, label %200, label %181

181:                                              ; preds = %174
  %182 = load i64, ptr %175, align 8
  %183 = and i64 %182, 65535
  %184 = icmp eq i64 %183, 14
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = tail call i32 @vector_type_mode(ptr noundef nonnull %175) #16
  %187 = load ptr, ptr %10, align 8, !tbaa !307
  br label %193

188:                                              ; preds = %181
  %189 = getelementptr inbounds %struct.tree_type, ptr %175, i64 0, i32 6
  %190 = load i32, ptr %189, align 4
  %191 = lshr i32 %190, 16
  %192 = and i32 %191, 255
  br label %193

193:                                              ; preds = %188, %185
  %194 = phi ptr [ %187, %185 ], [ %175, %188 ]
  %195 = phi i32 [ %186, %185 ], [ %192, %188 ]
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !307
  %199 = icmp eq i8 %198, 9
  br i1 %199, label %200, label %212

200:                                              ; preds = %193, %174
  %201 = phi ptr [ %194, %193 ], [ %175, %174 ]
  %202 = load i64, ptr %201, align 8
  %203 = and i64 %202, 65535
  %204 = icmp eq i64 %203, 14
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = tail call i32 @vector_type_mode(ptr noundef nonnull %201) #16
  br label %293

207:                                              ; preds = %200
  %208 = getelementptr inbounds %struct.tree_type, ptr %201, i64 0, i32 6
  %209 = load i32, ptr %208, align 4
  %210 = lshr i32 %209, 16
  %211 = and i32 %210, 255
  br label %293

212:                                              ; preds = %193
  %213 = load i64, ptr %194, align 8
  %214 = and i64 %213, 65535
  %215 = icmp eq i64 %214, 14
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = tail call i32 @vector_type_mode(ptr noundef nonnull %194) #16
  br label %223

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct.tree_type, ptr %194, i64 0, i32 6
  %220 = load i32, ptr %219, align 4
  %221 = lshr i32 %220, 16
  %222 = and i32 %221, 255
  br label %223

223:                                              ; preds = %218, %216
  %224 = phi i32 [ %217, %216 ], [ %222, %218 ]
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %225
  %227 = load i8, ptr %226, align 1, !tbaa !307
  %228 = zext i8 %227 to i32
  br label %293

229:                                              ; preds = %155
  br i1 %164, label %230, label %233

230:                                              ; preds = %229
  %231 = tail call i32 @vector_type_mode(ptr noundef nonnull %161) #16
  %232 = load ptr, ptr %10, align 8, !tbaa !307
  br label %238

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.tree_type, ptr %161, i64 0, i32 6
  %235 = load i32, ptr %234, align 4
  %236 = lshr i32 %235, 16
  %237 = and i32 %236, 255
  br label %238

238:                                              ; preds = %233, %230
  %239 = phi ptr [ %232, %230 ], [ %161, %233 ]
  %240 = phi i32 [ %231, %230 ], [ %237, %233 ]
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %241
  %243 = load i8, ptr %242, align 1, !tbaa !307
  %244 = icmp eq i8 %243, 8
  br i1 %244, label %264, label %245

245:                                              ; preds = %238
  %246 = load i64, ptr %239, align 8
  %247 = and i64 %246, 65535
  %248 = icmp eq i64 %247, 14
  br i1 %248, label %249, label %252

249:                                              ; preds = %245
  %250 = tail call i32 @vector_type_mode(ptr noundef nonnull %239) #16
  %251 = load ptr, ptr %10, align 8, !tbaa !307
  br label %257

252:                                              ; preds = %245
  %253 = getelementptr inbounds %struct.tree_type, ptr %239, i64 0, i32 6
  %254 = load i32, ptr %253, align 4
  %255 = lshr i32 %254, 16
  %256 = and i32 %255, 255
  br label %257

257:                                              ; preds = %252, %249
  %258 = phi ptr [ %251, %249 ], [ %239, %252 ]
  %259 = phi i32 [ %250, %249 ], [ %256, %252 ]
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %260
  %262 = load i8, ptr %261, align 1, !tbaa !307
  %263 = icmp eq i8 %262, 9
  br i1 %263, label %264, label %276, !prof !458

264:                                              ; preds = %257, %238
  %265 = phi ptr [ %258, %257 ], [ %239, %238 ]
  %266 = load i64, ptr %265, align 8
  %267 = and i64 %266, 65535
  %268 = icmp eq i64 %267, 14
  br i1 %268, label %269, label %271

269:                                              ; preds = %264
  %270 = tail call i32 @vector_type_mode(ptr noundef nonnull %265) #16
  br label %293

271:                                              ; preds = %264
  %272 = getelementptr inbounds %struct.tree_type, ptr %265, i64 0, i32 6
  %273 = load i32, ptr %272, align 4
  %274 = lshr i32 %273, 16
  %275 = and i32 %274, 255
  br label %293

276:                                              ; preds = %257
  %277 = load i64, ptr %258, align 8
  %278 = and i64 %277, 65535
  %279 = icmp eq i64 %278, 14
  br i1 %279, label %280, label %282

280:                                              ; preds = %276
  %281 = tail call i32 @vector_type_mode(ptr noundef nonnull %258) #16
  br label %287

282:                                              ; preds = %276
  %283 = getelementptr inbounds %struct.tree_type, ptr %258, i64 0, i32 6
  %284 = load i32, ptr %283, align 4
  %285 = lshr i32 %284, 16
  %286 = and i32 %285, 255
  br label %287

287:                                              ; preds = %282, %280
  %288 = phi i32 [ %281, %280 ], [ %286, %282 ]
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %289
  %291 = load i8, ptr %290, align 1, !tbaa !307
  %292 = zext i8 %291 to i32
  br label %293

293:                                              ; preds = %287, %271, %269, %223, %207, %205
  %294 = phi i32 [ %228, %223 ], [ %206, %205 ], [ %211, %207 ], [ %292, %287 ], [ %270, %269 ], [ %275, %271 ]
  %295 = add i32 %294, -38
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %296
  %298 = load ptr, ptr %297, align 8, !tbaa !272
  %299 = getelementptr inbounds %struct.real_format, ptr %298, i64 0, i32 14
  %300 = load i8, ptr %299, align 1, !tbaa !459
  %301 = icmp ne i8 %300, 0
  %302 = load i32, ptr @flag_signed_zeros, align 4
  %303 = icmp ne i32 %302, 0
  %304 = select i1 %301, i1 %303, i1 false
  br i1 %304, label %394, label %305, !prof !461

305:                                              ; preds = %293, %79
  %306 = tail call ptr @last_and_only_stmt(ptr noundef %1) #16
  %307 = icmp eq ptr %306, null
  br i1 %307, label %394, label %308, !prof !475

308:                                              ; preds = %305
  %309 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %306) #17, !range !330
  %310 = icmp eq i32 %309, 6
  br i1 %310, label %311, label %394, !prof !476

311:                                              ; preds = %308
  %312 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef nonnull %306) #17
  %313 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %306) #17, !range !419
  %314 = icmp eq i32 %313, 79
  br i1 %314, label %315, label %394, !prof !477

315:                                              ; preds = %311
  %316 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %306) #17
  %317 = icmp eq ptr %312, %4
  %318 = icmp eq ptr %316, %5
  %319 = select i1 %317, i1 %318, i1 false
  br i1 %319, label %324, label %320, !prof !478

320:                                              ; preds = %315
  %321 = icmp eq ptr %312, %5
  %322 = icmp eq ptr %316, %4
  %323 = select i1 %321, i1 %322, i1 false
  br i1 %323, label %324, label %394

324:                                              ; preds = %320, %315
  %325 = tail call ptr @last_stmt(ptr noundef %0) #16
  %326 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %3) #17
  %327 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %326) #17
  %328 = tail call fastcc i32 @gimple_cond_code(ptr noundef %325) #17, !range !419
  %329 = add nsw i32 %328, -101
  %330 = icmp ult i32 %329, -4
  br i1 %330, label %394, label %331, !prof !479

331:                                              ; preds = %324
  %332 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %325) #17
  %333 = icmp eq ptr %332, %316
  br i1 %333, label %334, label %394, !prof !424

334:                                              ; preds = %331
  %335 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %325) #17
  %336 = getelementptr inbounds %struct.tree_common, ptr %335, i64 0, i32 2
  %337 = load ptr, ptr %336, align 8, !tbaa !307
  %338 = load i64, ptr %337, align 8
  %339 = and i64 %338, 65535
  %340 = icmp eq i64 %339, 9
  br i1 %340, label %364, label %341, !prof !480

341:                                              ; preds = %334
  %342 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %325) #17
  %343 = getelementptr inbounds %struct.tree_common, ptr %342, i64 0, i32 2
  %344 = load ptr, ptr %343, align 8, !tbaa !307
  %345 = load i64, ptr %344, align 8
  %346 = and i64 %345, 65535
  %347 = icmp eq i64 %346, 13
  br i1 %347, label %355, label %348, !prof !480

348:                                              ; preds = %341
  %349 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %325) #17
  %350 = getelementptr inbounds %struct.tree_common, ptr %349, i64 0, i32 2
  %351 = load ptr, ptr %350, align 8, !tbaa !307
  %352 = load i64, ptr %351, align 8
  %353 = and i64 %352, 65535
  %354 = icmp eq i64 %353, 14
  br i1 %354, label %355, label %368, !prof !480

355:                                              ; preds = %348, %341
  %356 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %325) #17
  %357 = getelementptr inbounds %struct.tree_common, ptr %356, i64 0, i32 2
  %358 = load ptr, ptr %357, align 8, !tbaa !307
  %359 = getelementptr inbounds %struct.tree_common, ptr %358, i64 0, i32 2
  %360 = load ptr, ptr %359, align 8, !tbaa !307
  %361 = load i64, ptr %360, align 8
  %362 = and i64 %361, 65535
  %363 = icmp eq i64 %362, 9
  br i1 %363, label %364, label %368

364:                                              ; preds = %355, %334
  %365 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %325) #17
  %366 = tail call i32 @real_zerop(ptr noundef %365) #16
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %394, label %372, !prof !481

368:                                              ; preds = %355, %348
  %369 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %325) #17
  %370 = tail call i32 @integer_zerop(ptr noundef %369) #16
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %394, label %372, !prof !481

372:                                              ; preds = %364, %368
  call void @extract_true_false_edges_from_block(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9) #16
  %373 = add nsw i32 %328, -99
  %374 = icmp ult i32 %373, 2
  %375 = load ptr, ptr %8, align 8
  %376 = load ptr, ptr %9, align 8
  %377 = select i1 %374, ptr %375, ptr %376
  %378 = getelementptr inbounds %struct.edge_def, ptr %377, i64 0, i32 1
  %379 = load ptr, ptr %378, align 8, !tbaa !379
  %380 = icmp eq ptr %379, %1
  %381 = call ptr @duplicate_ssa_name(ptr noundef %327, ptr noundef null) #16
  br i1 %380, label %382, label %388, !prof !480

382:                                              ; preds = %372
  %383 = getelementptr inbounds %struct.tree_common, ptr %381, i64 0, i32 2
  %384 = load ptr, ptr %383, align 8, !tbaa !307
  %385 = call ptr @create_tmp_var(ptr noundef %384, ptr noundef null) #16
  %386 = call zeroext i8 @add_referenced_var(ptr noundef %385) #16
  %387 = call fastcc ptr @make_ssa_name(ptr noundef %385, ptr noundef null) #17
  br label %388

388:                                              ; preds = %372, %382
  %389 = phi ptr [ %387, %382 ], [ %381, %372 ]
  %390 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 82, ptr noundef %389, ptr noundef %316, ptr noundef null) #16
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %0) #17
  call void @gsi_insert_before(ptr noundef nonnull %7, ptr noundef %390, i32 noundef 0) #16
  br i1 %380, label %391, label %393, !prof !480

391:                                              ; preds = %388
  %392 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 79, ptr noundef %381, ptr noundef %389, ptr noundef null) #16
  call void @gsi_insert_after(ptr noundef nonnull %7, ptr noundef %392, i32 noundef 0) #16
  br label %393

393:                                              ; preds = %391, %388
  call fastcc void @replace_phi_edge_with_variable(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %381) #17
  br label %394

394:                                              ; preds = %364, %368, %331, %324, %320, %311, %308, %305, %293, %393
  %395 = phi i8 [ 1, %393 ], [ 0, %293 ], [ 0, %305 ], [ 0, %308 ], [ 0, %311 ], [ 0, %320 ], [ 0, %324 ], [ 0, %331 ], [ 0, %368 ], [ 0, %364 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18
  ret i8 %395
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @minmax_replacement(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 !prof !482 !PGOFuncName !483 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  %12 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #18
  %13 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %4) #17
  %14 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %13) #17
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !307
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 14
  br i1 %19, label %20, label %23, !prof !484

20:                                               ; preds = %7
  %21 = tail call i32 @vector_type_mode(ptr noundef nonnull %16) #16
  %22 = load i64, ptr %16, align 8
  br label %28

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = lshr i32 %25, 16
  %27 = and i32 %26, 255
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i64 [ %22, %20 ], [ %17, %23 ]
  %30 = phi i32 [ %21, %20 ], [ %27, %23 ]
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !307
  %34 = icmp eq i8 %33, 8
  br i1 %34, label %89, label %35, !prof !485

35:                                               ; preds = %28
  %36 = and i64 %29, 65535
  %37 = icmp eq i64 %36, 14
  br i1 %37, label %38, label %41, !prof !486

38:                                               ; preds = %35
  %39 = tail call i32 @vector_type_mode(ptr noundef nonnull %16) #16
  %40 = load i64, ptr %16, align 8
  br label %46

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  br label %46

46:                                               ; preds = %41, %38
  %47 = phi i64 [ %40, %38 ], [ %29, %41 ]
  %48 = phi i32 [ %39, %38 ], [ %45, %41 ]
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !307
  %52 = icmp eq i8 %51, 9
  br i1 %52, label %89, label %53, !prof !486

53:                                               ; preds = %46
  %54 = and i64 %47, 65535
  %55 = icmp eq i64 %54, 14
  br i1 %55, label %56, label %59, !prof !486

56:                                               ; preds = %53
  %57 = tail call i32 @vector_type_mode(ptr noundef nonnull %16) #16
  %58 = load i64, ptr %16, align 8
  br label %64

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = lshr i32 %61, 16
  %63 = and i32 %62, 255
  br label %64

64:                                               ; preds = %59, %56
  %65 = phi i64 [ %58, %56 ], [ %47, %59 ]
  %66 = phi i32 [ %57, %56 ], [ %63, %59 ]
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !307
  %70 = icmp eq i8 %69, 11
  br i1 %70, label %89, label %71, !prof !486

71:                                               ; preds = %64
  %72 = and i64 %65, 65535
  %73 = icmp eq i64 %72, 14
  br i1 %73, label %74, label %76, !prof !486

74:                                               ; preds = %71
  %75 = tail call i32 @vector_type_mode(ptr noundef nonnull %16) #16
  br label %81

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = lshr i32 %78, 16
  %80 = and i32 %79, 255
  br label %81

81:                                               ; preds = %76, %74
  %82 = phi i32 [ %75, %74 ], [ %80, %76 ]
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !307
  %86 = icmp eq i8 %85, 17
  br i1 %86, label %87, label %296, !prof !486

87:                                               ; preds = %81
  %88 = load i64, ptr %16, align 8
  br label %89

89:                                               ; preds = %87, %64, %46, %28
  %90 = phi i64 [ %88, %87 ], [ %65, %64 ], [ %47, %46 ], [ %29, %28 ]
  %91 = and i64 %90, 65535
  %92 = icmp eq i64 %91, 14
  br i1 %92, label %93, label %96, !prof !457

93:                                               ; preds = %89
  %94 = tail call i32 @vector_type_mode(ptr noundef nonnull %16) #16
  %95 = load i64, ptr %16, align 8
  br label %101

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 6
  %98 = load i32, ptr %97, align 4
  %99 = lshr i32 %98, 16
  %100 = and i32 %99, 255
  br label %101

101:                                              ; preds = %96, %93
  %102 = phi i64 [ %95, %93 ], [ %90, %96 ]
  %103 = phi i32 [ %94, %93 ], [ %100, %96 ]
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !307
  %107 = icmp eq i8 %106, 8
  br i1 %107, label %126, label %108, !prof !458

108:                                              ; preds = %101
  %109 = and i64 %102, 65535
  %110 = icmp eq i64 %109, 14
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = tail call i32 @vector_type_mode(ptr noundef nonnull %16) #16
  %113 = load i64, ptr %16, align 8
  br label %119

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 6
  %116 = load i32, ptr %115, align 4
  %117 = lshr i32 %116, 16
  %118 = and i32 %117, 255
  br label %119

119:                                              ; preds = %114, %111
  %120 = phi i64 [ %113, %111 ], [ %102, %114 ]
  %121 = phi i32 [ %112, %111 ], [ %118, %114 ]
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !307
  %125 = icmp eq i8 %124, 9
  br i1 %125, label %126, label %137

126:                                              ; preds = %119, %101
  %127 = phi i64 [ %120, %119 ], [ %102, %101 ]
  %128 = and i64 %127, 65535
  %129 = icmp eq i64 %128, 14
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = tail call i32 @vector_type_mode(ptr noundef nonnull %16) #16
  br label %153

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 6
  %134 = load i32, ptr %133, align 4
  %135 = lshr i32 %134, 16
  %136 = and i32 %135, 255
  br label %153

137:                                              ; preds = %119
  %138 = and i64 %120, 65535
  %139 = icmp eq i64 %138, 14
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = tail call i32 @vector_type_mode(ptr noundef nonnull %16) #16
  br label %147

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 6
  %144 = load i32, ptr %143, align 4
  %145 = lshr i32 %144, 16
  %146 = and i32 %145, 255
  br label %147

147:                                              ; preds = %142, %140
  %148 = phi i32 [ %141, %140 ], [ %146, %142 ]
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !307
  %152 = zext i8 %151 to i32
  br label %153

153:                                              ; preds = %130, %132, %147
  %154 = phi i32 [ %152, %147 ], [ %131, %130 ], [ %136, %132 ]
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !307
  %158 = icmp eq i8 %157, 9
  %159 = load i64, ptr %16, align 8
  %160 = and i64 %159, 65535
  %161 = icmp eq i64 %160, 14
  br i1 %158, label %162, label %223

162:                                              ; preds = %153
  br i1 %161, label %163, label %166

163:                                              ; preds = %162
  %164 = tail call i32 @vector_type_mode(ptr noundef nonnull %16) #16
  %165 = load i64, ptr %16, align 8
  br label %171

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 6
  %168 = load i32, ptr %167, align 4
  %169 = lshr i32 %168, 16
  %170 = and i32 %169, 255
  br label %171

171:                                              ; preds = %166, %163
  %172 = phi i64 [ %165, %163 ], [ %159, %166 ]
  %173 = phi i32 [ %164, %163 ], [ %170, %166 ]
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !307
  %177 = icmp eq i8 %176, 8
  br i1 %177, label %196, label %178

178:                                              ; preds = %171
  %179 = and i64 %172, 65535
  %180 = icmp eq i64 %179, 14
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = tail call i32 @vector_type_mode(ptr noundef nonnull %16) #16
  %183 = load i64, ptr %16, align 8
  br label %189

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 6
  %186 = load i32, ptr %185, align 4
  %187 = lshr i32 %186, 16
  %188 = and i32 %187, 255
  br label %189

189:                                              ; preds = %184, %181
  %190 = phi i64 [ %183, %181 ], [ %172, %184 ]
  %191 = phi i32 [ %182, %181 ], [ %188, %184 ]
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !307
  %195 = icmp eq i8 %194, 9
  br i1 %195, label %196, label %207

196:                                              ; preds = %189, %171
  %197 = phi i64 [ %190, %189 ], [ %172, %171 ]
  %198 = and i64 %197, 65535
  %199 = icmp eq i64 %198, 14
  br i1 %199, label %200, label %202

200:                                              ; preds = %196
  %201 = tail call i32 @vector_type_mode(ptr noundef nonnull %16) #16
  br label %284

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 6
  %204 = load i32, ptr %203, align 4
  %205 = lshr i32 %204, 16
  %206 = and i32 %205, 255
  br label %284

207:                                              ; preds = %189
  %208 = and i64 %190, 65535
  %209 = icmp eq i64 %208, 14
  br i1 %209, label %210, label %212

210:                                              ; preds = %207
  %211 = tail call i32 @vector_type_mode(ptr noundef nonnull %16) #16
  br label %217

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 6
  %214 = load i32, ptr %213, align 4
  %215 = lshr i32 %214, 16
  %216 = and i32 %215, 255
  br label %217

217:                                              ; preds = %212, %210
  %218 = phi i32 [ %211, %210 ], [ %216, %212 ]
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %219
  %221 = load i8, ptr %220, align 1, !tbaa !307
  %222 = zext i8 %221 to i32
  br label %284

223:                                              ; preds = %153
  br i1 %161, label %224, label %227

224:                                              ; preds = %223
  %225 = tail call i32 @vector_type_mode(ptr noundef nonnull %16) #16
  %226 = load i64, ptr %16, align 8
  br label %232

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 6
  %229 = load i32, ptr %228, align 4
  %230 = lshr i32 %229, 16
  %231 = and i32 %230, 255
  br label %232

232:                                              ; preds = %227, %224
  %233 = phi i64 [ %226, %224 ], [ %159, %227 ]
  %234 = phi i32 [ %225, %224 ], [ %231, %227 ]
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %235
  %237 = load i8, ptr %236, align 1, !tbaa !307
  %238 = icmp eq i8 %237, 8
  br i1 %238, label %257, label %239

239:                                              ; preds = %232
  %240 = and i64 %233, 65535
  %241 = icmp eq i64 %240, 14
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = tail call i32 @vector_type_mode(ptr noundef nonnull %16) #16
  %244 = load i64, ptr %16, align 8
  br label %250

245:                                              ; preds = %239
  %246 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 6
  %247 = load i32, ptr %246, align 4
  %248 = lshr i32 %247, 16
  %249 = and i32 %248, 255
  br label %250

250:                                              ; preds = %245, %242
  %251 = phi i64 [ %244, %242 ], [ %233, %245 ]
  %252 = phi i32 [ %243, %242 ], [ %249, %245 ]
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %253
  %255 = load i8, ptr %254, align 1, !tbaa !307
  %256 = icmp eq i8 %255, 9
  br i1 %256, label %257, label %268, !prof !458

257:                                              ; preds = %250, %232
  %258 = phi i64 [ %251, %250 ], [ %233, %232 ]
  %259 = and i64 %258, 65535
  %260 = icmp eq i64 %259, 14
  br i1 %260, label %261, label %263

261:                                              ; preds = %257
  %262 = tail call i32 @vector_type_mode(ptr noundef nonnull %16) #16
  br label %284

263:                                              ; preds = %257
  %264 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 6
  %265 = load i32, ptr %264, align 4
  %266 = lshr i32 %265, 16
  %267 = and i32 %266, 255
  br label %284

268:                                              ; preds = %250
  %269 = and i64 %251, 65535
  %270 = icmp eq i64 %269, 14
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = tail call i32 @vector_type_mode(ptr noundef nonnull %16) #16
  br label %278

273:                                              ; preds = %268
  %274 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 6
  %275 = load i32, ptr %274, align 4
  %276 = lshr i32 %275, 16
  %277 = and i32 %276, 255
  br label %278

278:                                              ; preds = %273, %271
  %279 = phi i32 [ %272, %271 ], [ %277, %273 ]
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %280
  %282 = load i8, ptr %281, align 1, !tbaa !307
  %283 = zext i8 %282 to i32
  br label %284

284:                                              ; preds = %278, %263, %261, %217, %202, %200
  %285 = phi i32 [ %222, %217 ], [ %201, %200 ], [ %206, %202 ], [ %283, %278 ], [ %262, %261 ], [ %267, %263 ]
  %286 = add i32 %285, -38
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %287
  %289 = load ptr, ptr %288, align 8, !tbaa !272
  %290 = getelementptr inbounds %struct.real_format, ptr %289, i64 0, i32 11
  %291 = load i8, ptr %290, align 2, !tbaa !487
  %292 = icmp eq i8 %291, 0
  %293 = load i32, ptr @flag_finite_math_only, align 4
  %294 = icmp ne i32 %293, 0
  %295 = select i1 %292, i1 true, i1 %294
  br i1 %295, label %296, label %460, !prof !488

296:                                              ; preds = %284, %81
  %297 = tail call ptr @last_stmt(ptr noundef %0) #16
  %298 = tail call fastcc i32 @gimple_cond_code(ptr noundef %297) #17, !range !419
  %299 = add nsw i32 %298, -97
  %300 = icmp ult i32 %299, 2
  br i1 %300, label %301, label %304, !prof !489

301:                                              ; preds = %296
  %302 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %297) #17
  %303 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %297) #17
  br label %310

304:                                              ; preds = %296
  %305 = add nsw i32 %298, -99
  %306 = icmp ult i32 %305, 2
  br i1 %306, label %307, label %460, !prof !490

307:                                              ; preds = %304
  %308 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %297) #17
  %309 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %297) #17
  br label %310

310:                                              ; preds = %307, %301
  %311 = phi ptr [ %303, %301 ], [ %309, %307 ]
  %312 = phi ptr [ %302, %301 ], [ %308, %307 ]
  call void @extract_true_false_edges_from_block(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9) #16
  %313 = load ptr, ptr %8, align 8, !tbaa !272
  %314 = getelementptr inbounds %struct.edge_def, ptr %313, i64 0, i32 1
  %315 = load ptr, ptr %314, align 8, !tbaa !379
  %316 = icmp eq ptr %315, %1
  br i1 %316, label %317, label %321, !prof !491

317:                                              ; preds = %310
  %318 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !378
  %320 = call fastcc ptr @VEC_edge_base_index(ptr noundef %319, i32 noundef 0) #17
  store ptr %320, ptr %8, align 8, !tbaa !272
  br label %321

321:                                              ; preds = %317, %310
  %322 = phi ptr [ %320, %317 ], [ %313, %310 ]
  %323 = load ptr, ptr %9, align 8, !tbaa !272
  %324 = getelementptr inbounds %struct.edge_def, ptr %323, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !379
  %326 = icmp eq ptr %325, %1
  br i1 %326, label %327, label %331, !prof !492

327:                                              ; preds = %321
  %328 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %329 = load ptr, ptr %328, align 8, !tbaa !378
  %330 = call fastcc ptr @VEC_edge_base_index(ptr noundef %329, i32 noundef 0) #17
  store ptr %330, ptr %9, align 8, !tbaa !272
  br label %331

331:                                              ; preds = %327, %321
  %332 = phi ptr [ %330, %327 ], [ %323, %321 ]
  %333 = icmp eq ptr %322, %2
  br i1 %333, label %334, label %336, !prof !491

334:                                              ; preds = %331
  %335 = icmp eq ptr %332, %3
  br i1 %335, label %347, label %343, !prof !493

336:                                              ; preds = %331
  %337 = icmp eq ptr %332, %2
  br i1 %337, label %340, label %338, !prof !494

338:                                              ; preds = %336
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 687, ptr noundef nonnull @.str.1) #16
  %339 = load ptr, ptr %8, align 8, !tbaa !272
  br label %340

340:                                              ; preds = %336, %338
  %341 = phi ptr [ %322, %336 ], [ %339, %338 ]
  %342 = icmp eq ptr %341, %3
  br i1 %342, label %347, label %343, !prof !494

343:                                              ; preds = %340, %334
  %344 = phi i32 [ 681, %334 ], [ 688, %340 ]
  %345 = phi ptr [ %5, %334 ], [ %6, %340 ]
  %346 = phi ptr [ %6, %334 ], [ %5, %340 ]
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %344, ptr noundef nonnull @.str.1) #16
  br label %347

347:                                              ; preds = %343, %340, %334
  %348 = phi ptr [ %5, %334 ], [ %6, %340 ], [ %345, %343 ]
  %349 = phi ptr [ %6, %334 ], [ %5, %340 ], [ %346, %343 ]
  %350 = call zeroext i8 @empty_block_p(ptr noundef %1) #17, !range !291
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %364, label %352, !prof !495

352:                                              ; preds = %347
  %353 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %348, ptr noundef %312) #16
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %358, label %355, !prof !496

355:                                              ; preds = %352
  %356 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %349, ptr noundef %311) #16
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %455, !prof !497

358:                                              ; preds = %355, %352
  %359 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %349, ptr noundef %312) #16
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %460, label %361, !prof !498

361:                                              ; preds = %358
  %362 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %348, ptr noundef %311) #16
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %460, label %455, !prof !499

364:                                              ; preds = %347
  %365 = call ptr @last_and_only_stmt(ptr noundef %1) #16
  %366 = icmp eq ptr %365, null
  br i1 %366, label %460, label %367, !prof !500

367:                                              ; preds = %364
  %368 = call fastcc i32 @gimple_code(ptr noundef nonnull %365) #17, !range !330
  %369 = icmp eq i32 %368, 6
  br i1 %369, label %370, label %460, !prof !501

370:                                              ; preds = %367
  %371 = call fastcc ptr @gimple_assign_lhs(ptr noundef nonnull %365) #17
  %372 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %365) #17, !range !419
  %373 = icmp ne i32 %372, 81
  %374 = icmp ne i32 %372, 80
  %375 = add nsw i32 %372, -82
  %376 = icmp ult i32 %375, -2
  br i1 %376, label %460, label %377, !prof !502

377:                                              ; preds = %370
  %378 = call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %365) #17
  %379 = call fastcc ptr @gimple_assign_rhs2(ptr noundef nonnull %365) #17
  %380 = load ptr, ptr %8, align 8, !tbaa !272
  %381 = load ptr, ptr %380, align 8, !tbaa !313
  %382 = icmp eq ptr %381, %1
  br i1 %382, label %383, label %418

383:                                              ; preds = %377
  %384 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %371, ptr noundef %348) #16
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %460, label %386

386:                                              ; preds = %383
  %387 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %349, ptr noundef %311) #16
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %402, label %389

389:                                              ; preds = %386
  br i1 %373, label %460, label %390

390:                                              ; preds = %389
  %391 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %378, ptr noundef %312) #16
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %390
  %394 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %379, ptr noundef %312) #16
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %460, label %396

396:                                              ; preds = %393, %390
  %397 = phi ptr [ %379, %390 ], [ %378, %393 ]
  %398 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !272
  %399 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 98, ptr noundef %398, ptr noundef %397, ptr noundef %311) #16
  %400 = call i32 @integer_nonzerop(ptr noundef %399) #16
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %460, label %453

402:                                              ; preds = %386
  %403 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %349, ptr noundef %312) #16
  %404 = icmp eq i32 %403, 0
  %405 = or i1 %374, %404
  br i1 %405, label %460, label %406

406:                                              ; preds = %402
  %407 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %378, ptr noundef %311) #16
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %412

409:                                              ; preds = %406
  %410 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %379, ptr noundef %311) #16
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %460, label %412

412:                                              ; preds = %409, %406
  %413 = phi ptr [ %379, %406 ], [ %378, %409 ]
  %414 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !272
  %415 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 100, ptr noundef %414, ptr noundef %413, ptr noundef %312) #16
  %416 = call i32 @integer_nonzerop(ptr noundef %415) #16
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %460, label %453

418:                                              ; preds = %377
  %419 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %371, ptr noundef %349) #16
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %460, label %421

421:                                              ; preds = %418
  %422 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %348, ptr noundef %311) #16
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %437, label %424

424:                                              ; preds = %421
  br i1 %374, label %460, label %425

425:                                              ; preds = %424
  %426 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %378, ptr noundef %312) #16
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %425
  %429 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %379, ptr noundef %312) #16
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %460, label %431

431:                                              ; preds = %428, %425
  %432 = phi ptr [ %379, %425 ], [ %378, %428 ]
  %433 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !272
  %434 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 100, ptr noundef %433, ptr noundef %432, ptr noundef %311) #16
  %435 = call i32 @integer_nonzerop(ptr noundef %434) #16
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %460, label %453

437:                                              ; preds = %421
  %438 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %348, ptr noundef %312) #16
  %439 = icmp eq i32 %438, 0
  %440 = or i1 %373, %439
  br i1 %440, label %460, label %441

441:                                              ; preds = %437
  %442 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %378, ptr noundef %311) #16
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %447

444:                                              ; preds = %441
  %445 = call i32 @operand_equal_for_phi_arg_p(ptr noundef %379, ptr noundef %311) #16
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %460, label %447

447:                                              ; preds = %444, %441
  %448 = phi ptr [ %379, %441 ], [ %378, %444 ]
  %449 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !272
  %450 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 98, ptr noundef %449, ptr noundef %448, ptr noundef %312) #16
  %451 = call i32 @integer_nonzerop(ptr noundef %450) #16
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %460, label %453

453:                                              ; preds = %412, %396, %447, %431
  %454 = phi i32 [ 80, %396 ], [ 81, %412 ], [ 81, %431 ], [ 80, %447 ]
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %0) #17
  call fastcc void @gsi_last_nondebug_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef %1) #17
  call void @gsi_move_before(ptr noundef nonnull %11, ptr noundef nonnull %10) #16
  br label %455

455:                                              ; preds = %453, %361, %355
  %456 = phi i32 [ %454, %453 ], [ 80, %355 ], [ 81, %361 ]
  %457 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %13) #17
  %458 = call ptr @duplicate_ssa_name(ptr noundef %457, ptr noundef null) #16
  %459 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef %456, ptr noundef %458, ptr noundef %5, ptr noundef %6) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #18
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %12, ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !426
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #18
  call void @gsi_insert_before(ptr noundef nonnull %10, ptr noundef %459, i32 noundef 0) #16
  call fastcc void @replace_phi_edge_with_variable(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef %458) #17
  br label %460

460:                                              ; preds = %437, %447, %444, %431, %428, %424, %418, %402, %412, %409, %396, %393, %389, %383, %370, %364, %367, %358, %361, %304, %284, %455
  %461 = phi i8 [ 1, %455 ], [ 0, %284 ], [ 0, %304 ], [ 0, %361 ], [ 0, %358 ], [ 0, %367 ], [ 0, %364 ], [ 0, %370 ], [ 0, %383 ], [ 0, %389 ], [ 0, %393 ], [ 0, %396 ], [ 0, %409 ], [ 0, %412 ], [ 0, %402 ], [ 0, %418 ], [ 0, %424 ], [ 0, %428 ], [ 0, %431 ], [ 0, %444 ], [ 0, %447 ], [ 0, %437 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  ret i8 %461
}

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_commit_edge_inserts() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @name_to_bb_hash(ptr nocapture noundef readonly %0) #0 !prof !503 !PGOFuncName !504 {
  %2 = load ptr, ptr %0, align 8, !tbaa !505
  %3 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !272
  %4 = tail call i32 %3(ptr noundef %2) #16
  %5 = getelementptr inbounds %struct.name_to_bb, ptr %0, i64 0, i32 2
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 1
  %8 = zext nneg i8 %7 to i32
  %9 = xor i32 %4, %8
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @name_to_bb_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !prof !507 !PGOFuncName !508 {
  %3 = load ptr, ptr %0, align 8, !tbaa !505
  %4 = load ptr, ptr %1, align 8, !tbaa !505
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %15, !prof !509

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.name_to_bb, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 8
  %9 = getelementptr inbounds %struct.name_to_bb, ptr %1, i64 0, i32 2
  %10 = load i8, ptr %9, align 8
  %11 = xor i8 %10, %8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = zext nneg i8 %13 to i32
  br label %15

15:                                               ; preds = %6, %2
  %16 = phi i32 [ 0, %2 ], [ %14, %6 ]
  ret i32 %16
}

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @nt_init_block(ptr nocapture readnone %0, ptr noundef %1) #0 !prof !510 !PGOFuncName !511 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 2
  store ptr inttoptr (i64 1 to ptr), ptr %4, align 8, !tbaa !512
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #17
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17, !range !291
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %25, !prof !513

7:                                                ; preds = %2, %22
  %8 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17
  %9 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %8) #17, !range !291
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %22, label %11, !prof !514

11:                                               ; preds = %7
  %12 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %8) #17
  %13 = load ptr, ptr @nontrap_set, align 8, !tbaa !272
  tail call fastcc void @add_or_mark_expr(ptr noundef %1, ptr noundef %12, ptr noundef %13, i8 noundef zeroext 1) #17
  %14 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %8) #17
  %15 = load ptr, ptr @nontrap_set, align 8, !tbaa !272
  tail call fastcc void @add_or_mark_expr(ptr noundef %1, ptr noundef %14, ptr noundef %15, i8 noundef zeroext 0) #17
  %16 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %8) #17, !range !419
  %17 = tail call i32 @get_gimple_rhs_num_ops(i32 noundef %16) #16
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %19, label %22, !prof !515

19:                                               ; preds = %11
  %20 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %8) #17
  %21 = load ptr, ptr @nontrap_set, align 8, !tbaa !272
  tail call fastcc void @add_or_mark_expr(ptr noundef %1, ptr noundef %20, ptr noundef %21, i8 noundef zeroext 0) #17
  br label %22

22:                                               ; preds = %11, %19, %7
  call fastcc void @gsi_next(ptr noundef nonnull %3) #17
  %23 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17, !range !291
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %7, label %25, !prof !516, !llvm.loop !517

25:                                               ; preds = %22, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @nt_fini_block(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #10 !prof !510 !PGOFuncName !518 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !512
  ret void
}

; Function Attrs: optsize
declare void @init_walk_dominator_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @walk_dominator_tree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fini_walk_dominator_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !519 !PGOFuncName !520 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !330
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_or_mark_expr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !521 !PGOFuncName !522 {
  %5 = alloca %struct.name_to_bb, align 8
  %6 = load i64, ptr %1, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -47
  %10 = icmp ult i32 %9, 3
  br i1 %10, label %11, label %44, !prof !523

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !307
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %44, !prof !524

17:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  store ptr %13, ptr %5, align 8, !tbaa !505
  %18 = getelementptr inbounds %struct.name_to_bb, ptr %5, i64 0, i32 1
  store ptr null, ptr %18, align 8, !tbaa !525
  %19 = getelementptr inbounds %struct.name_to_bb, ptr %5, i64 0, i32 2
  %20 = and i8 %3, 1
  store i8 %20, ptr %19, align 8
  %21 = load ptr, ptr @seen_ssa_names, align 8, !tbaa !272
  %22 = call ptr @htab_find_slot(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 1) #16
  %23 = load ptr, ptr %22, align 8, !tbaa !272
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25, !prof !526

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.name_to_bb, ptr %23, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !525
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29, !prof !527

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !512
  %32 = icmp eq ptr %31, inttoptr (i64 1 to ptr)
  br i1 %32, label %33, label %35, !prof !528

33:                                               ; preds = %29
  %34 = call i32 @pointer_set_insert(ptr noundef %2, ptr noundef nonnull %1) #16
  br label %43

35:                                               ; preds = %29, %25
  store ptr %0, ptr %26, align 8, !tbaa !525
  br label %43

36:                                               ; preds = %17
  %37 = call ptr @xmalloc(i64 noundef 24) #16
  store ptr %13, ptr %37, align 8, !tbaa !505
  %38 = getelementptr inbounds %struct.name_to_bb, ptr %37, i64 0, i32 1
  store ptr %0, ptr %38, align 8, !tbaa !525
  %39 = getelementptr inbounds %struct.name_to_bb, ptr %37, i64 0, i32 2
  %40 = load i8, ptr %39, align 8
  %41 = and i8 %40, -2
  %42 = or disjoint i8 %41, %20
  store i8 %42, ptr %39, align 8
  store ptr %37, ptr %22, align 8, !tbaa !272
  br label %43

43:                                               ; preds = %35, %36, %33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  br label %44

44:                                               ; preds = %4, %43, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !529 !PGOFuncName !530 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !531 !PGOFuncName !532 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #17
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @get_gimple_rhs_num_ops(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !533 !PGOFuncName !534 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #17, !range !419
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #17, !range !330
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !535

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #17
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !536 !PGOFuncName !537 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #17
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !538

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #17
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !539 !PGOFuncName !540 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !291
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !541

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #17
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !272
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !542 !PGOFuncName !543 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !330
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !542 !PGOFuncName !544 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #17
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !289
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !545

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !542 !PGOFuncName !546 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !330
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #17
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #9 !prof !542 !PGOFuncName !547 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !548
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !533 !PGOFuncName !549 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !330
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !550

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1446, ptr noundef nonnull @.str.1) #16
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #9 !prof !551 !PGOFuncName !552 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !307
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !553 !PGOFuncName !554 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !307
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @last_and_only_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !555 !PGOFuncName !556 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !307
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @pointer_set_contains(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mark_symbols_for_renaming(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_var_ann(ptr noundef %0) unnamed_addr #0 !prof !557 !PGOFuncName !558 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 32, label %4
    i16 34, label %6
  ], !prof !559

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
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 144, ptr noundef nonnull @.str.1) #16
  unreachable

13:                                               ; preds = %8, %6, %4
  %14 = phi ptr [ %7, %6 ], [ %5, %4 ], [ %11, %8 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !272
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19, !prof !424

17:                                               ; preds = %13
  %18 = tail call ptr @create_var_ann(ptr noundef nonnull %0) #16
  br label %19

19:                                               ; preds = %13, %17
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !560 !PGOFuncName !561 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !272
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #16
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !560 !PGOFuncName !562 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) #17
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4, !prof !563

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10, !prof !564

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !307
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #10 !prof !560 !PGOFuncName !565 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !307
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !566 !PGOFuncName !567 {
  %2 = load ptr, ptr %0, align 8, !tbaa !272
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #9 !prof !566 !PGOFuncName !568 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 !prof !569 !PGOFuncName !570 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !336
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !349
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !350
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_var_ann(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !560 !PGOFuncName !571 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !291
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5, !prof !563

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !563

8:                                                ; preds = %5, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1665, ptr noundef nonnull @.str.1) #16
  br label %9

9:                                                ; preds = %5, %8
  %10 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #17
  store ptr %1, ptr %10, align 8, !tbaa !272
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #6 !prof !572 !PGOFuncName !573 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !574

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !575
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !576 !PGOFuncName !577 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !307
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !578 !PGOFuncName !579 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !307
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !580

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.1) #16
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !437 !PGOFuncName !581 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !582
  %4 = load ptr, ptr %3, align 8, !tbaa !272
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !584 !PGOFuncName !585 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 !prof !586 !PGOFuncName !587 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 !prof !588 !PGOFuncName !589 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #17
  ret ptr %2
}

; Function Attrs: optsize
declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !590 !PGOFuncName !591 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #17
  %5 = getelementptr inbounds %struct.phi_arg_d, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !592
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_phi_edge_with_variable(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !594 !PGOFuncName !595 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = tail call fastcc ptr @gimple_bb(ptr noundef %2) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  %7 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !394
  %9 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %2, i32 noundef %8) #17
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %9, ptr noundef %3) #17
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !378
  %12 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %11, i32 noundef 0) #17
  %13 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !379
  %15 = icmp eq ptr %14, %6
  br i1 %15, label %18, label %16, !prof !596

16:                                               ; preds = %4
  %17 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %11, i32 noundef 1) #17
  br label %18

18:                                               ; preds = %4, %16
  %19 = phi ptr [ %17, %16 ], [ %12, %4 ]
  %20 = phi i32 [ 1, %16 ], [ 0, %4 ]
  %21 = phi i32 [ 0, %16 ], [ 1, %4 ]
  %22 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !380
  %24 = or i32 %23, 1
  store i32 %24, ptr %22, align 8, !tbaa !380
  %25 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %11, i32 noundef %20) #17
  %26 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !380
  %28 = and i32 %27, -3073
  store i32 %28, ptr %26, align 8, !tbaa !380
  %29 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %11, i32 noundef %20) #17
  %30 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 8
  store i32 10000, ptr %30, align 4, !tbaa !597
  %31 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %11, i32 noundef %21) #17
  %32 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 9
  %33 = load i64, ptr %32, align 8, !tbaa !598
  %34 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %11, i32 noundef %20) #17
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 9
  %36 = load i64, ptr %35, align 8, !tbaa !598
  %37 = add nsw i64 %36, %33
  store i64 %37, ptr %35, align 8, !tbaa !598
  %38 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %11, i32 noundef %21) #17
  %39 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !379
  tail call void @delete_basic_block(ptr noundef %40) #16
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef nonnull %0) #17
  call void @gsi_remove(ptr noundef nonnull %5, i8 noundef zeroext 1) #16
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !272
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43, !prof !599

43:                                               ; preds = %18
  %44 = load i32, ptr @dump_flags, align 4, !tbaa !548
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %49 = load i32, ptr %48, align 8, !tbaa !283
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !283
  %52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %41, ptr noundef nonnull @.str.7, i32 noundef %49, i32 noundef %51) #17
  br label %53

53:                                               ; preds = %47, %43, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !594 !PGOFuncName !600 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !582
  store ptr %1, ptr %4, align 8, !tbaa !272
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !594 !PGOFuncName !601 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #17
  ret ptr %3
}

; Function Attrs: optsize
declare void @delete_basic_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #12 !prof !594 !PGOFuncName !602 {
  %2 = load ptr, ptr %0, align 8, !tbaa !603
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !604

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !605
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !605
  store ptr %2, ptr %6, align 8, !tbaa !603
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !594 !PGOFuncName !606 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4, !prof !607

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8, !prof !599

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !603
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #17
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !594 !PGOFuncName !608 {
  store ptr %1, ptr %0, align 8, !tbaa !603
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !605
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !605
  store ptr %0, ptr %4, align 8, !tbaa !603
  store ptr %0, ptr %3, align 8, !tbaa !605
  ret void
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @operand_equal_for_phi_arg_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !609 !PGOFuncName !610 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #17, !range !291
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !611

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !378
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #17
  ret ptr %8
}

; Function Attrs: optsize
declare i32 @real_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @duplicate_ssa_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_nonzerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_nondebug_bb(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 !prof !344 !PGOFuncName !612 {
  tail call fastcc void @gsi_last_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #17
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #17, !range !291
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #17
  %7 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %6) #17, !range !291
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @gsi_prev_nondebug(ptr noundef %0) #17
  br label %10

10:                                               ; preds = %9, %5, %2
  ret void
}

; Function Attrs: optsize
declare void @gsi_move_before(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev_nondebug(ptr nocapture noundef %0) unnamed_addr #7 !prof !344 !PGOFuncName !613 {
  br label %2

2:                                                ; preds = %5, %1
  tail call fastcc void @gsi_prev(ptr noundef %0) #17
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #17, !range !291
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #17
  %7 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %6) #17, !range !291
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %2, !llvm.loop !614

9:                                                ; preds = %2, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #8 !prof !344 !PGOFuncName !615 {
  %2 = load ptr, ptr %0, align 8, !tbaa !336
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !616
  store ptr %4, ptr %0, align 8, !tbaa !336
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_cselim() #14 !prof !404 !PGOFuncName !617 {
  %1 = load i32, ptr @flag_tree_cselim, align 4, !tbaa !548
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_ssa_cs_elim() #0 !prof !404 !PGOFuncName !618 {
  %1 = tail call fastcc i32 @tree_ssa_phiopt_worker(i8 noundef zeroext 1) #17, !range !371
  ret i32 %1
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!270}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269}
!36 = !{ptr @blocks_in_phiopt_order, ptr @xmalloc, i64 33260}
!37 = !{ptr @blocks_in_phiopt_order, ptr @sbitmap_alloc, i64 33260}
!38 = !{ptr @blocks_in_phiopt_order, ptr @sbitmap_zero, i64 33260}
!39 = !{ptr @blocks_in_phiopt_order, ptr @SET_BIT, i64 1206553}
!40 = !{ptr @blocks_in_phiopt_order, ptr @single_pred_p, i64 2346586}
!41 = !{ptr @blocks_in_phiopt_order, ptr @single_pred, i64 4699962}
!42 = !{ptr @blocks_in_phiopt_order, ptr @fancy_abort, i64 2}
!43 = !{ptr @blocks_in_phiopt_order, ptr @free, i64 66520}
!44 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 5844698}
!45 = !{ptr @single_pred, ptr @single_pred_edge, i64 3395284}
!46 = !{ptr @single_pred_edge, ptr @single_pred_p, i64 3395284}
!47 = !{ptr @single_pred_edge, ptr @fancy_abort, i64 1}
!48 = !{ptr @single_pred_edge, ptr @VEC_edge_base_index, i64 3395284}
!49 = !{ptr @empty_block_p, ptr @gsi_after_labels, i64 151008}
!50 = !{ptr @empty_block_p, ptr @gsi_end_p, i64 221572}
!51 = !{ptr @empty_block_p, ptr @gsi_stmt, i64 70564}
!52 = !{ptr @empty_block_p, ptr @is_gimple_debug, i64 70564}
!53 = !{ptr @empty_block_p, ptr @gsi_next_nondebug, i64 1}
!54 = !{ptr @gsi_after_labels, ptr @gsi_start_bb, i64 151009}
!55 = !{ptr @gsi_after_labels, ptr @gsi_end_p, i64 153137}
!56 = !{ptr @gsi_after_labels, ptr @gsi_stmt, i64 136938}
!57 = !{ptr @gsi_after_labels, ptr @gimple_code, i64 136938}
!58 = !{ptr @gsi_after_labels, ptr @gsi_next, i64 2128}
!59 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 70564}
!60 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 393599}
!61 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 393599}
!62 = !{ptr @tree_ssa_phiopt, ptr @tree_ssa_phiopt_worker, i64 19956}
!63 = !{ptr @tree_ssa_phiopt_worker, ptr @get_non_trapping, i64 6652}
!64 = !{ptr @tree_ssa_phiopt_worker, ptr @blocks_in_phiopt_order, i64 26608}
!65 = !{ptr @tree_ssa_phiopt_worker, ptr @last_stmt, i64 938174}
!66 = !{ptr @tree_ssa_phiopt_worker, ptr @gimple_code, i64 888287}
!67 = !{ptr @tree_ssa_phiopt_worker, ptr @VEC_edge_base_index, i64 2283050}
!68 = !{ptr @tree_ssa_phiopt_worker, ptr @VEC_edge_base_length, i64 1134166}
!69 = !{ptr @tree_ssa_phiopt_worker, ptr @single_succ_p, i64 155342}
!70 = !{ptr @tree_ssa_phiopt_worker, ptr @single_pred_p, i64 101117}
!71 = !{ptr @tree_ssa_phiopt_worker, ptr @single_pred, i64 91754}
!72 = !{ptr @tree_ssa_phiopt_worker, ptr @cond_store_replacement, i64 14877}
!73 = !{ptr @tree_ssa_phiopt_worker, ptr @phi_nodes, i64 67636}
!74 = !{ptr @tree_ssa_phiopt_worker, ptr @gimple_seq_singleton_p, i64 67636}
!75 = !{ptr @tree_ssa_phiopt_worker, ptr @gsi_start, i64 51205}
!76 = !{ptr @tree_ssa_phiopt_worker, ptr @gsi_stmt, i64 51205}
!77 = !{ptr @tree_ssa_phiopt_worker, ptr @gimple_phi_arg_def, i64 102410}
!78 = !{ptr @tree_ssa_phiopt_worker, ptr @fancy_abort, i64 2}
!79 = !{ptr @tree_ssa_phiopt_worker, ptr @conditional_replacement, i64 51205}
!80 = !{ptr @tree_ssa_phiopt_worker, ptr @value_replacement, i64 49979}
!81 = !{ptr @tree_ssa_phiopt_worker, ptr @abs_replacement, i64 49911}
!82 = !{ptr @tree_ssa_phiopt_worker, ptr @minmax_replacement, i64 49909}
!83 = !{ptr @tree_ssa_phiopt_worker, ptr @free, i64 26608}
!84 = !{ptr @tree_ssa_phiopt_worker, ptr @pointer_set_destroy, i64 6652}
!85 = !{ptr @tree_ssa_phiopt_worker, ptr @gsi_commit_edge_inserts, i64 2}
!86 = !{ptr @get_non_trapping, ptr @pointer_set_create, i64 6652}
!87 = !{ptr @get_non_trapping, ptr @htab_create, i64 6652}
!88 = !{ptr @get_non_trapping, ptr @calculate_dominance_info, i64 6652}
!89 = !{ptr @get_non_trapping, ptr @init_walk_dominator_tree, i64 6652}
!90 = !{ptr @get_non_trapping, ptr @walk_dominator_tree, i64 6652}
!91 = !{ptr @get_non_trapping, ptr @fini_walk_dominator_tree, i64 6652}
!92 = !{ptr @get_non_trapping, ptr @htab_delete, i64 6652}
!93 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 155350}
!94 = !{ptr @cond_store_replacement, ptr @last_and_only_stmt, i64 14878}
!95 = !{ptr @cond_store_replacement, ptr @gimple_code, i64 6853}
!96 = !{ptr @cond_store_replacement, ptr @gimple_location, i64 2974}
!97 = !{ptr @cond_store_replacement, ptr @gimple_assign_lhs, i64 2974}
!98 = !{ptr @cond_store_replacement, ptr @gimple_assign_rhs1, i64 2974}
!99 = !{ptr @cond_store_replacement, ptr @gimple_assign_rhs_code, i64 73}
!100 = !{ptr @cond_store_replacement, ptr @get_gimple_rhs_class, i64 73}
!101 = !{ptr @cond_store_replacement, ptr @is_gimple_min_invariant, i64 12}
!102 = !{ptr @cond_store_replacement, ptr @pointer_set_contains, i64 71}
!103 = !{ptr @cond_store_replacement, ptr @mark_symbols_for_renaming, i64 6}
!104 = !{ptr @cond_store_replacement, ptr @gsi_for_stmt, i64 2}
!105 = !{ptr @cond_store_replacement, ptr @gsi_remove, i64 2}
!106 = !{ptr @cond_store_replacement, ptr @create_tmp_var, i64 2}
!107 = !{ptr @cond_store_replacement, ptr @get_var_ann, i64 2}
!108 = !{ptr @cond_store_replacement, ptr @add_referenced_var, i64 2}
!109 = !{ptr @cond_store_replacement, ptr @unshare_expr, i64 4}
!110 = !{ptr @cond_store_replacement, ptr @gimple_build_assign_stat, i64 4}
!111 = !{ptr @cond_store_replacement, ptr @make_ssa_name, i64 2}
!112 = !{ptr @cond_store_replacement, ptr @gimple_assign_set_lhs, i64 2}
!113 = !{ptr @cond_store_replacement, ptr @gimple_set_location, i64 2}
!114 = !{ptr @cond_store_replacement, ptr @gsi_insert_on_edge, i64 2}
!115 = !{ptr @cond_store_replacement, ptr @create_phi_node, i64 2}
!116 = !{ptr @cond_store_replacement, ptr @add_phi_arg, i64 4}
!117 = !{ptr @cond_store_replacement, ptr @gimple_phi_result_ptr, i64 2}
!118 = !{ptr @cond_store_replacement, ptr @get_def_from_ptr, i64 2}
!119 = !{ptr @cond_store_replacement, ptr @gsi_after_labels, i64 2}
!120 = !{ptr @cond_store_replacement, ptr @gsi_end_p, i64 2}
!121 = !{ptr @cond_store_replacement, ptr @gsi_last_bb, i64 1}
!122 = !{ptr @cond_store_replacement, ptr @gsi_insert_after, i64 1}
!123 = !{ptr @cond_store_replacement, ptr @gsi_insert_before, i64 1}
!124 = !{ptr @phi_nodes, ptr @fancy_abort, i64 1}
!125 = !{ptr @gimple_seq_singleton_p, ptr @gimple_seq_first, i64 67641}
!126 = !{ptr @gimple_seq_singleton_p, ptr @gimple_seq_last, i64 64555}
!127 = !{ptr @gsi_start, ptr @gimple_seq_first, i64 51210}
!128 = !{ptr @gsi_start, ptr @gimple_bb, i64 51208}
!129 = !{ptr @gimple_phi_arg_def, ptr @gimple_phi_arg, i64 102420}
!130 = !{ptr @gimple_phi_arg_def, ptr @get_use_from_ptr, i64 102420}
!131 = !{ptr @conditional_replacement, ptr @integer_zerop, i64 102497}
!132 = !{ptr @conditional_replacement, ptr @integer_onep, i64 7455}
!133 = !{ptr @conditional_replacement, ptr @empty_block_p, i64 1335}
!134 = !{ptr @conditional_replacement, ptr @last_stmt, i64 1226}
!135 = !{ptr @conditional_replacement, ptr @gimple_phi_result_ptr, i64 1226}
!136 = !{ptr @conditional_replacement, ptr @get_def_from_ptr, i64 1226}
!137 = !{ptr @conditional_replacement, ptr @gimple_cond_code, i64 1226}
!138 = !{ptr @conditional_replacement, ptr @gimple_cond_lhs, i64 1226}
!139 = !{ptr @conditional_replacement, ptr @gimple_cond_rhs, i64 1226}
!140 = !{ptr @conditional_replacement, ptr @fold_build2_stat_loc, i64 1226}
!141 = !{ptr @conditional_replacement, ptr @extract_true_false_edges_from_block, i64 1226}
!142 = !{ptr @conditional_replacement, ptr @fold_build1_stat_loc, i64 131}
!143 = !{ptr @conditional_replacement, ptr @gsi_for_stmt, i64 1226}
!144 = !{ptr @conditional_replacement, ptr @force_gimple_operand_gsi, i64 1226}
!145 = !{ptr @conditional_replacement, ptr @useless_type_conversion_p, i64 1226}
!146 = !{ptr @conditional_replacement, ptr @create_tmp_var, i64 1191}
!147 = !{ptr @conditional_replacement, ptr @add_referenced_var, i64 1191}
!148 = !{ptr @conditional_replacement, ptr @gimple_build_assign_with_ops_stat, i64 1191}
!149 = !{ptr @conditional_replacement, ptr @make_ssa_name, i64 1191}
!150 = !{ptr @conditional_replacement, ptr @gimple_assign_set_lhs, i64 1191}
!151 = !{ptr @conditional_replacement, ptr @gsi_insert_before, i64 1191}
!152 = !{ptr @conditional_replacement, ptr @gimple_phi_arg_location, i64 2382}
!153 = !{ptr @conditional_replacement, ptr @gimple_set_location, i64 1191}
!154 = !{ptr @conditional_replacement, ptr @replace_phi_edge_with_variable, i64 1226}
!155 = !{ptr @value_replacement, ptr @vector_type_mode, i64 215}
!156 = !{ptr @value_replacement, ptr @empty_block_p, i64 49866}
!157 = !{ptr @value_replacement, ptr @last_stmt, i64 7949}
!158 = !{ptr @value_replacement, ptr @gimple_cond_code, i64 7949}
!159 = !{ptr @value_replacement, ptr @extract_true_false_edges_from_block, i64 6989}
!160 = !{ptr @value_replacement, ptr @gimple_cond_lhs, i64 13975}
!161 = !{ptr @value_replacement, ptr @operand_equal_for_phi_arg_p, i64 14879}
!162 = !{ptr @value_replacement, ptr @gimple_cond_rhs, i64 904}
!163 = !{ptr @value_replacement, ptr @single_succ_edge, i64 3}
!164 = !{ptr @value_replacement, ptr @replace_phi_edge_with_variable, i64 69}
!165 = !{ptr @abs_replacement, ptr @vector_type_mode, i64 215}
!166 = !{ptr @abs_replacement, ptr @last_and_only_stmt, i64 49799}
!167 = !{ptr @abs_replacement, ptr @gimple_code, i64 22515}
!168 = !{ptr @abs_replacement, ptr @gimple_assign_lhs, i64 9415}
!169 = !{ptr @abs_replacement, ptr @gimple_assign_rhs_code, i64 9415}
!170 = !{ptr @abs_replacement, ptr @gimple_assign_rhs1, i64 41}
!171 = !{ptr @abs_replacement, ptr @last_stmt, i64 40}
!172 = !{ptr @abs_replacement, ptr @gimple_phi_result_ptr, i64 40}
!173 = !{ptr @abs_replacement, ptr @get_def_from_ptr, i64 40}
!174 = !{ptr @abs_replacement, ptr @gimple_cond_code, i64 40}
!175 = !{ptr @abs_replacement, ptr @gimple_cond_lhs, i64 5}
!176 = !{ptr @abs_replacement, ptr @gimple_cond_rhs, i64 10}
!177 = !{ptr @abs_replacement, ptr @real_zerop, i64 2}
!178 = !{ptr @abs_replacement, ptr @integer_zerop, i64 1}
!179 = !{ptr @abs_replacement, ptr @extract_true_false_edges_from_block, i64 3}
!180 = !{ptr @abs_replacement, ptr @duplicate_ssa_name, i64 3}
!181 = !{ptr @abs_replacement, ptr @create_tmp_var, i64 1}
!182 = !{ptr @abs_replacement, ptr @add_referenced_var, i64 1}
!183 = !{ptr @abs_replacement, ptr @make_ssa_name, i64 1}
!184 = !{ptr @abs_replacement, ptr @gimple_build_assign_with_ops_stat, i64 4}
!185 = !{ptr @abs_replacement, ptr @gsi_last_bb, i64 3}
!186 = !{ptr @abs_replacement, ptr @gsi_insert_before, i64 3}
!187 = !{ptr @abs_replacement, ptr @gsi_insert_after, i64 1}
!188 = !{ptr @abs_replacement, ptr @replace_phi_edge_with_variable, i64 3}
!189 = !{ptr @minmax_replacement, ptr @gimple_phi_result_ptr, i64 49916}
!190 = !{ptr @minmax_replacement, ptr @get_def_from_ptr, i64 50080}
!191 = !{ptr @minmax_replacement, ptr @vector_type_mode, i64 215}
!192 = !{ptr @minmax_replacement, ptr @last_stmt, i64 49798}
!193 = !{ptr @minmax_replacement, ptr @gimple_cond_code, i64 49798}
!194 = !{ptr @minmax_replacement, ptr @gimple_cond_lhs, i64 5308}
!195 = !{ptr @minmax_replacement, ptr @gimple_cond_rhs, i64 5308}
!196 = !{ptr @minmax_replacement, ptr @extract_true_false_edges_from_block, i64 5307}
!197 = !{ptr @minmax_replacement, ptr @VEC_edge_base_index, i64 5307}
!198 = !{ptr @minmax_replacement, ptr @fancy_abort, i64 3}
!199 = !{ptr @minmax_replacement, ptr @empty_block_p, i64 5307}
!200 = !{ptr @minmax_replacement, ptr @operand_equal_for_phi_arg_p, i64 2322}
!201 = !{ptr @minmax_replacement, ptr @last_and_only_stmt, i64 4346}
!202 = !{ptr @minmax_replacement, ptr @gimple_code, i64 2108}
!203 = !{ptr @minmax_replacement, ptr @gimple_assign_lhs, i64 1190}
!204 = !{ptr @minmax_replacement, ptr @gimple_assign_rhs_code, i64 1190}
!205 = !{ptr @minmax_replacement, ptr @gimple_assign_rhs1, i64 2}
!206 = !{ptr @minmax_replacement, ptr @gimple_assign_rhs2, i64 2}
!207 = !{ptr @minmax_replacement, ptr @duplicate_ssa_name, i64 164}
!208 = !{ptr @minmax_replacement, ptr @gimple_build_assign_with_ops_stat, i64 164}
!209 = !{ptr @minmax_replacement, ptr @gsi_last_bb, i64 164}
!210 = !{ptr @minmax_replacement, ptr @gsi_insert_before, i64 164}
!211 = !{ptr @minmax_replacement, ptr @replace_phi_edge_with_variable, i64 164}
!212 = !{ptr @nt_init_block, ptr @gsi_start_bb, i64 242590}
!213 = !{ptr @nt_init_block, ptr @gsi_end_p, i64 907372}
!214 = !{ptr @nt_init_block, ptr @gsi_stmt, i64 664782}
!215 = !{ptr @nt_init_block, ptr @is_gimple_assign, i64 664782}
!216 = !{ptr @nt_init_block, ptr @gimple_assign_lhs, i64 403340}
!217 = !{ptr @nt_init_block, ptr @add_or_mark_expr, i64 891015}
!218 = !{ptr @nt_init_block, ptr @gimple_assign_rhs1, i64 403340}
!219 = !{ptr @nt_init_block, ptr @gimple_assign_rhs_code, i64 403340}
!220 = !{ptr @nt_init_block, ptr @get_gimple_rhs_num_ops, i64 403340}
!221 = !{ptr @nt_init_block, ptr @gimple_assign_rhs2, i64 84335}
!222 = !{ptr @nt_init_block, ptr @gsi_next, i64 664782}
!223 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 664784}
!224 = !{ptr @add_or_mark_expr, ptr @htab_find_slot, i64 15681}
!225 = !{ptr @add_or_mark_expr, ptr @pointer_set_insert, i64 1696}
!226 = !{ptr @add_or_mark_expr, ptr @xmalloc, i64 12691}
!227 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 416920}
!228 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 693290}
!229 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 414016}
!230 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 414016}
!231 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 286935}
!232 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 84335}
!233 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 84334}
!234 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 1222488}
!235 = !{ptr @gimple_op, ptr @gimple_ops, i64 1222487}
!236 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 1223681}
!237 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 1223681}
!238 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!239 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 1223681}
!240 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 1223681}
!241 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 414016}
!242 = !{ptr @get_var_ann, ptr @create_var_ann, i64 1}
!243 = !{ptr @make_ssa_name, ptr @make_ssa_name_fn, i64 1193}
!244 = !{ptr @gimple_assign_set_lhs, ptr @gimple_set_op, i64 1193}
!245 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 1621}
!246 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 1621}
!247 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 1193}
!248 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 1192}
!249 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!250 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 1193}
!251 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!252 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 20507}
!253 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 7436}
!254 = !{ptr @gimple_phi_arg_location, ptr @gimple_phi_arg, i64 2384}
!255 = !{ptr @replace_phi_edge_with_variable, ptr @gimple_bb, i64 1457}
!256 = !{ptr @replace_phi_edge_with_variable, ptr @gimple_phi_arg_imm_use_ptr, i64 1457}
!257 = !{ptr @replace_phi_edge_with_variable, ptr @set_ssa_use_from_ptr, i64 1457}
!258 = !{ptr @replace_phi_edge_with_variable, ptr @VEC_edge_base_index, i64 8843}
!259 = !{ptr @replace_phi_edge_with_variable, ptr @delete_basic_block, i64 1457}
!260 = !{ptr @replace_phi_edge_with_variable, ptr @gsi_last_bb, i64 1457}
!261 = !{ptr @replace_phi_edge_with_variable, ptr @gsi_remove, i64 1457}
!262 = !{ptr @set_ssa_use_from_ptr, ptr @delink_imm_use, i64 1457}
!263 = !{ptr @set_ssa_use_from_ptr, ptr @link_imm_use, i64 1457}
!264 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 1457}
!265 = !{ptr @link_imm_use, ptr @link_imm_use_to_list, i64 1455}
!266 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 2}
!267 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!268 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 2}
!269 = !{ptr @tree_ssa_cs_elim, ptr @tree_ssa_phiopt_worker, i64 6652}
!270 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!271 = !{!"function_entry_count", i64 33260}
!272 = !{!273, !273, i64 0}
!273 = !{!"any pointer", !274, i64 0}
!274 = !{!"omnipotent char", !275, i64 0}
!275 = !{!"Simple C/C++ TBAA"}
!276 = !{!277, !273, i64 8}
!277 = !{!"function", !273, i64 0, !273, i64 8, !273, i64 16, !273, i64 24, !273, i64 32, !273, i64 40, !273, i64 48, !273, i64 56, !273, i64 64, !273, i64 72, !273, i64 80, !273, i64 88, !273, i64 96, !278, i64 104, !278, i64 108, !278, i64 112, !278, i64 116, !278, i64 120, !278, i64 124, !273, i64 128, !278, i64 136, !278, i64 137, !278, i64 138, !278, i64 138, !278, i64 138, !278, i64 138, !278, i64 138, !278, i64 138, !278, i64 138, !278, i64 139, !278, i64 139, !278, i64 139, !278, i64 139, !278, i64 139, !278, i64 139, !278, i64 139}
!278 = !{!"int", !274, i64 0}
!279 = !{!280, !278, i64 24}
!280 = !{!"control_flow_graph", !273, i64 0, !273, i64 8, !273, i64 16, !278, i64 24, !278, i64 28, !278, i64 32, !273, i64 40, !278, i64 48, !274, i64 52, !274, i64 60, !278, i64 68, !278, i64 72}
!281 = !{!280, !278, i64 32}
!282 = !{!280, !273, i64 0}
!283 = !{!284, !278, i64 80}
!284 = !{!"basic_block_def", !273, i64 0, !273, i64 8, !273, i64 16, !273, i64 24, !274, i64 32, !273, i64 48, !273, i64 56, !274, i64 64, !285, i64 72, !278, i64 80, !278, i64 84, !278, i64 88, !278, i64 92, !278, i64 96}
!285 = !{!"long", !274, i64 0}
!286 = !{!284, !273, i64 56}
!287 = !{!280, !273, i64 8}
!288 = !{!"branch_weights", i32 1, i32 33260}
!289 = !{!285, !285, i64 0}
!290 = !{!"branch_weights", i32 1129001, i32 45147}
!291 = !{i8 0, i8 2}
!292 = !{!"branch_weights", i32 1, i32 370838}
!293 = !{!"branch_weights", i32 45147, i32 1129001}
!294 = !{!"branch_weights", i32 370838, i32 432471}
!295 = distinct !{!295, !296}
!296 = !{!"llvm.loop.mustprogress"}
!297 = distinct !{!297, !296}
!298 = !{!"branch_weights", i32 1129001, i32 1}
!299 = !{!"branch_weights", i32 33260, i32 1140887}
!300 = distinct !{!300, !296}
!301 = !{!302, !273, i64 0}
!302 = !{!"simple_bitmap_def", !273, i64 0, !278, i64 8, !278, i64 12, !274, i64 16}
!303 = !{!"branch_weights", i32 33261, i32 1}
!304 = !{!"function_entry_count", i64 1207406}
!305 = !{!"tree-ssa-phiopt.c:SET_BIT"}
!306 = !{!"branch_weights", i32 1207407, i32 1}
!307 = !{!274, !274, i64 0}
!308 = !{!"function_entry_count", i64 5844698}
!309 = !{!"tree-ssa-phiopt.c:single_pred_p"}
!310 = !{!284, !273, i64 0}
!311 = !{!"function_entry_count", i64 3395284}
!312 = !{!"tree-ssa-phiopt.c:single_pred"}
!313 = !{!314, !273, i64 0}
!314 = !{!"edge_def", !273, i64 0, !273, i64 8, !274, i64 16, !273, i64 24, !273, i64 32, !278, i64 40, !278, i64 44, !278, i64 48, !278, i64 52, !285, i64 56}
!315 = !{!"function_entry_count", i64 7134263}
!316 = !{!"tree-ssa-phiopt.c:VEC_edge_base_length"}
!317 = !{!"branch_weights", i32 1, i32 7134264}
!318 = !{!319, !278, i64 0}
!319 = !{!"VEC_edge_base", !278, i64 0, !278, i64 4, !274, i64 8}
!320 = !{!"tree-ssa-phiopt.c:single_pred_edge"}
!321 = !{!"branch_weights", i32 1, i32 3395285}
!322 = !{!"function_entry_count", i64 5693935}
!323 = !{!"tree-ssa-phiopt.c:VEC_edge_base_index"}
!324 = !{!"function_entry_count", i64 151008}
!325 = !{!"branch_weights", i32 70565, i32 80445}
!326 = !{!"branch_weights", i32 70565, i32 1}
!327 = !{!"function_entry_count", i64 151009}
!328 = !{!"tree-ssa-phiopt.c:gsi_after_labels"}
!329 = !{!"branch_weights", i32 72949, i32 7496}
!330 = !{i32 0, i32 256}
!331 = !{!"branch_weights", i32 2384, i32 151010}
!332 = !{!"branch_weights", i32 0, i32 72949}
!333 = distinct !{!333, !296}
!334 = !{!"function_entry_count", i64 1282339}
!335 = !{!"tree-ssa-phiopt.c:gsi_end_p"}
!336 = !{!337, !273, i64 0}
!337 = !{!"", !273, i64 0, !273, i64 8, !273, i64 16}
!338 = !{!"function_entry_count", i64 70564}
!339 = !{!"tree-ssa-phiopt.c:is_gimple_debug"}
!340 = !{!"function_entry_count", i64 859506}
!341 = !{!"tree-ssa-phiopt.c:gsi_stmt"}
!342 = !{!343, !273, i64 0}
!343 = !{!"gimple_seq_node_d", !273, i64 0, !273, i64 8, !273, i64 16}
!344 = !{!"function_entry_count", i64 0}
!345 = !{!"tree-ssa-phiopt.c:gsi_next_nondebug"}
!346 = distinct !{!346, !296}
!347 = !{!"function_entry_count", i64 393599}
!348 = !{!"tree-ssa-phiopt.c:gsi_start_bb"}
!349 = !{!337, !273, i64 8}
!350 = !{!337, !273, i64 16}
!351 = !{!"function_entry_count", i64 5813151}
!352 = !{!"tree-ssa-phiopt.c:gimple_code"}
!353 = !{!"function_entry_count", i64 667167}
!354 = !{!"tree-ssa-phiopt.c:gsi_next"}
!355 = !{!343, !273, i64 16}
!356 = !{!"function_entry_count", i64 395220}
!357 = !{!"tree-ssa-phiopt.c:bb_seq"}
!358 = !{!284, !278, i64 96}
!359 = !{!"branch_weights", i32 395221, i32 1}
!360 = !{!"branch_weights", i32 6653, i32 388569}
!361 = !{!362, !273, i64 0}
!362 = !{!"gimple_bb_info", !273, i64 0, !273, i64 8}
!363 = !{!"function_entry_count", i64 577006}
!364 = !{!"tree-ssa-phiopt.c:gimple_seq_first"}
!365 = !{!"branch_weights", i32 9666, i32 567342}
!366 = !{!367, !273, i64 0}
!367 = !{!"gimple_seq_d", !273, i64 0, !273, i64 8, !273, i64 16}
!368 = !{!"function_entry_count", i64 19956}
!369 = !{!"tree-ssa-phiopt.c:gate_phiopt"}
!370 = !{!"tree-ssa-phiopt.c:tree_ssa_phiopt"}
!371 = !{i32 0, i32 16417}
!372 = !{!"function_entry_count", i64 26608}
!373 = !{!"tree-ssa-phiopt.c:tree_ssa_phiopt_worker"}
!374 = !{!"branch_weights", i32 19957, i32 6653}
!375 = !{!"branch_weights", i32 1, i32 26608}
!376 = !{!"branch_weights", i32 49889, i32 888321}
!377 = !{!"branch_weights", i32 560984, i32 327338}
!378 = !{!284, !273, i64 8}
!379 = !{!314, !273, i64 8}
!380 = !{!314, !278, i64 48}
!381 = !{!"branch_weights", i32 560984, i32 1}
!382 = !{!"branch_weights", i32 50930416, i32 -1939293976}
!383 = !{!"branch_weights", i32 2429, i32 546686}
!384 = !{!"branch_weights", i32 87539, i32 459148}
!385 = !{!"branch_weights", i32 67811, i32 391338}
!386 = !{!"branch_weights", i32 54227, i32 101123}
!387 = !{!"branch_weights", i32 1, i32 101123}
!388 = !{!"branch_weights", i32 9363, i32 91761}
!389 = !{!"branch_weights", i32 91761, i32 1}
!390 = !{!"branch_weights", i32 67642, i32 24120}
!391 = !{!"branch_weights", i32 9242, i32 14879}
!392 = !{!"branch_weights", i32 14878, i32 2}
!393 = !{!"branch_weights", i32 16432, i32 51211}
!394 = !{!314, !278, i64 44}
!395 = !{!"branch_weights", i32 -1672400775, i32 102423}
!396 = !{!"branch_weights", i32 49985, i32 1227}
!397 = !{!"branch_weights", i32 49918, i32 68}
!398 = !{!"branch_weights", i32 49917, i32 2}
!399 = !{!"branch_weights", i32 49754, i32 164}
!400 = !{!"branch_weights", i32 26608, i32 911601}
!401 = distinct !{!401, !296}
!402 = !{!"branch_weights", i32 2146838973, i32 644675}
!403 = !{!"branch_weights", i32 25889, i32 720}
!404 = !{!"function_entry_count", i64 6652}
!405 = !{!"tree-ssa-phiopt.c:get_non_trapping"}
!406 = !{!407, !273, i64 8}
!407 = !{!"dom_walk_data", !278, i64 0, !273, i64 8, !273, i64 16, !273, i64 24, !273, i64 32, !273, i64 40, !285, i64 48, !273, i64 56}
!408 = !{!407, !273, i64 16}
!409 = !{!407, !273, i64 24}
!410 = !{!407, !273, i64 32}
!411 = !{!407, !285, i64 48}
!412 = !{!"function_entry_count", i64 155350}
!413 = !{!"tree-ssa-phiopt.c:single_succ_p"}
!414 = !{!"function_entry_count", i64 14878}
!415 = !{!"tree-ssa-phiopt.c:cond_store_replacement"}
!416 = !{!"branch_weights", i32 8026, i32 6854}
!417 = !{!"branch_weights", i32 2975, i32 3880}
!418 = !{!"branch_weights", i32 77058038, i32 -1230546343}
!419 = !{i32 0, i32 65536}
!420 = !{!"branch_weights", i32 71, i32 1}
!421 = !{!"branch_weights", i32 60, i32 12}
!422 = !{!"branch_weights", i32 1, i32 12}
!423 = !{!"branch_weights", i32 70, i32 2}
!424 = !{!"branch_weights", i32 2, i32 1}
!425 = !{!"branch_weights", i32 5, i32 4}
!426 = !{i64 0, i64 8, !272, i64 8, i64 8, !272, i64 16, i64 8, !272}
!427 = !{!"function_entry_count", i64 67641}
!428 = !{!"tree-ssa-phiopt.c:phi_nodes"}
!429 = !{!"branch_weights", i32 67642, i32 1}
!430 = !{!"branch_weights", i32 1, i32 67642}
!431 = !{!362, !273, i64 8}
!432 = !{!"tree-ssa-phiopt.c:gimple_seq_singleton_p"}
!433 = !{!"branch_weights", i32 3086, i32 64557}
!434 = !{!"function_entry_count", i64 51210}
!435 = !{!"tree-ssa-phiopt.c:gsi_start"}
!436 = !{!"branch_weights", i32 1, i32 51211}
!437 = !{!"function_entry_count", i64 102420}
!438 = !{!"tree-ssa-phiopt.c:gimple_phi_arg_def"}
!439 = !{!"tree-ssa-phiopt.c:conditional_replacement"}
!440 = !{!"branch_weights", i32 49013, i32 2199}
!441 = !{!"branch_weights", i32 1157, i32 1043}
!442 = !{!"branch_weights", i32 45018, i32 5152}
!443 = !{!"branch_weights", i32 4860, i32 293}
!444 = !{!"branch_weights", i32 109, i32 1227}
!445 = !{!"branch_weights", i32 1, i32 1227}
!446 = !{!"branch_weights", i32 1125, i32 103}
!447 = !{!"branch_weights", i32 1011, i32 115}
!448 = !{!"branch_weights", i32 103, i32 1011}
!449 = !{!"branch_weights", i32 89, i32 15}
!450 = !{!"branch_weights", i32 1193, i32 35}
!451 = !{!"branch_weights", i32 137, i32 1057}
!452 = !{!"function_entry_count", i64 49984}
!453 = !{!"tree-ssa-phiopt.c:value_replacement"}
!454 = !{!"branch_weights", i32 1, i32 49985}
!455 = !{!"branch_weights", i32 117, i32 49869}
!456 = !{!"branch_weights", i32 1, i32 49869}
!457 = !{!"branch_weights", i32 1, i32 117}
!458 = !{!"branch_weights", i32 117, i32 1}
!459 = !{!460, !274, i64 49}
!460 = !{!"real_format", !273, i64 0, !273, i64 8, !278, i64 16, !278, i64 20, !278, i64 24, !278, i64 28, !278, i64 32, !278, i64 36, !278, i64 40, !274, i64 44, !274, i64 45, !274, i64 46, !274, i64 47, !274, i64 48, !274, i64 49, !274, i64 50, !274, i64 51}
!461 = !{!"branch_weights", i32 13689, i32 235}
!462 = !{!"branch_weights", i32 41920, i32 7950}
!463 = !{!"branch_weights", i32 3962203, i32 28827721}
!464 = !{!"branch_weights", i32 6382, i32 609}
!465 = !{!"branch_weights", i32 607, i32 3}
!466 = !{!"branch_weights", i32 6694, i32 295}
!467 = !{!"branch_weights", i32 230, i32 66}
!468 = !{!"branch_weights", i32 66, i32 3}
!469 = !{!"branch_weights", i32 3, i32 66}
!470 = !{!"function_entry_count", i64 49917}
!471 = !{!"tree-ssa-phiopt.c:abs_replacement"}
!472 = !{!"branch_weights", i32 1, i32 49918}
!473 = !{!"branch_weights", i32 117, i32 49802}
!474 = !{!"branch_weights", i32 1, i32 49802}
!475 = !{!"branch_weights", i32 27286, i32 22517}
!476 = !{!"branch_weights", i32 9416, i32 13102}
!477 = !{!"branch_weights", i32 41, i32 9376}
!478 = !{!"branch_weights", i32 1681, i32 83}
!479 = !{!"branch_weights", i32 2689600, i32 348008}
!480 = !{!"branch_weights", i32 1, i32 2}
!481 = !{!"branch_weights", i32 1, i32 -1}
!482 = !{!"function_entry_count", i64 49916}
!483 = !{!"tree-ssa-phiopt.c:minmax_replacement"}
!484 = !{!"branch_weights", i32 1, i32 49917}
!485 = !{!"branch_weights", i32 117, i32 49801}
!486 = !{!"branch_weights", i32 1, i32 49801}
!487 = !{!460, !274, i64 46}
!488 = !{!"branch_weights", i32 235, i32 13689}
!489 = !{!"branch_weights", i32 129048155, i32 -1998757655}
!490 = !{!"branch_weights", i32 120403940, i32 2015625106}
!491 = !{!"branch_weights", i32 4179, i32 1127}
!492 = !{!"branch_weights", i32 1127, i32 4179}
!493 = !{!"branch_weights", i32 4179, i32 1}
!494 = !{!"branch_weights", i32 1127, i32 1}
!495 = !{!"branch_weights", i32 4345, i32 961}
!496 = !{!"branch_weights", i32 878, i32 84}
!497 = !{!"branch_weights", i32 21, i32 64}
!498 = !{!"branch_weights", i32 523, i32 376}
!499 = !{!"branch_weights", i32 276, i32 101}
!500 = !{!"branch_weights", i32 2238, i32 2108}
!501 = !{!"branch_weights", i32 1191, i32 918}
!502 = !{!"branch_weights", i32 1418481, i32 2383}
!503 = !{!"function_entry_count", i64 16250}
!504 = !{!"tree-ssa-phiopt.c:name_to_bb_hash"}
!505 = !{!506, !273, i64 0}
!506 = !{!"name_to_bb", !273, i64 0, !273, i64 8, !278, i64 16}
!507 = !{!"function_entry_count", i64 4453}
!508 = !{!"tree-ssa-phiopt.c:name_to_bb_eq"}
!509 = !{!"branch_weights", i32 2990, i32 1465}
!510 = !{!"function_entry_count", i64 242590}
!511 = !{!"tree-ssa-phiopt.c:nt_init_block"}
!512 = !{!284, !273, i64 16}
!513 = !{!"branch_weights", i32 242590, i32 1}
!514 = !{!"branch_weights", i32 261444, i32 403342}
!515 = !{!"branch_weights", i32 84336, i32 319007}
!516 = !{!"branch_weights", i32 422195, i32 242590}
!517 = distinct !{!517, !296}
!518 = !{!"tree-ssa-phiopt.c:nt_fini_block"}
!519 = !{!"function_entry_count", i64 664784}
!520 = !{!"tree-ssa-phiopt.c:is_gimple_assign"}
!521 = !{!"function_entry_count", i64 891017}
!522 = !{!"tree-ssa-phiopt.c:add_or_mark_expr"}
!523 = !{!"branch_weights", i32 44762580, i32 -1796412049}
!524 = !{!"branch_weights", i32 15680, i32 1}
!525 = !{!506, !273, i64 8}
!526 = !{!"branch_weights", i32 12691, i32 2990}
!527 = !{!"branch_weights", i32 0, i32 -2147483648}
!528 = !{!"branch_weights", i32 1697, i32 1294}
!529 = !{!"function_entry_count", i64 416920}
!530 = !{!"tree-ssa-phiopt.c:gimple_assign_lhs"}
!531 = !{!"function_entry_count", i64 693290}
!532 = !{!"tree-ssa-phiopt.c:gimple_assign_rhs1"}
!533 = !{!"function_entry_count", i64 414016}
!534 = !{!"tree-ssa-phiopt.c:gimple_assign_rhs_code"}
!535 = !{!"branch_weights", i32 286936, i32 127082}
!536 = !{!"function_entry_count", i64 84335}
!537 = !{!"tree-ssa-phiopt.c:gimple_assign_rhs2"}
!538 = !{!"branch_weights", i32 84336, i32 1}
!539 = !{!"function_entry_count", i64 1222488}
!540 = !{!"tree-ssa-phiopt.c:gimple_op"}
!541 = !{!"branch_weights", i32 1, i32 1222489}
!542 = !{!"function_entry_count", i64 1223681}
!543 = !{!"tree-ssa-phiopt.c:gimple_has_ops"}
!544 = !{!"tree-ssa-phiopt.c:gimple_ops"}
!545 = !{!"branch_weights", i32 1, i32 1223682}
!546 = !{!"tree-ssa-phiopt.c:gimple_statement_structure"}
!547 = !{!"tree-ssa-phiopt.c:gss_for_code"}
!548 = !{!278, !278, i64 0}
!549 = !{!"tree-ssa-phiopt.c:gimple_expr_code"}
!550 = !{!"branch_weights", i32 1, i32 1656068, i32 2, i32 1}
!551 = !{!"function_entry_count", i64 414086}
!552 = !{!"tree-ssa-phiopt.c:get_gimple_rhs_class"}
!553 = !{!"function_entry_count", i64 85528}
!554 = !{!"tree-ssa-phiopt.c:gimple_num_ops"}
!555 = !{!"function_entry_count", i64 2974}
!556 = !{!"tree-ssa-phiopt.c:gimple_location"}
!557 = !{!"function_entry_count", i64 1}
!558 = !{!"tree-ssa-phiopt.c:get_var_ann"}
!559 = !{!"branch_weights", i32 2, i32 6, i32 1}
!560 = !{!"function_entry_count", i64 1193}
!561 = !{!"tree-ssa-phiopt.c:make_ssa_name"}
!562 = !{!"tree-ssa-phiopt.c:gimple_assign_set_lhs"}
!563 = !{!"branch_weights", i32 1, i32 1194}
!564 = !{!"branch_weights", i32 1194, i32 1}
!565 = !{!"tree-ssa-phiopt.c:gimple_set_location"}
!566 = !{!"function_entry_count", i64 101146}
!567 = !{!"tree-ssa-phiopt.c:get_def_from_ptr"}
!568 = !{!"tree-ssa-phiopt.c:gimple_phi_result_ptr"}
!569 = !{!"function_entry_count", i64 1621}
!570 = !{!"tree-ssa-phiopt.c:gsi_last_bb"}
!571 = !{!"tree-ssa-phiopt.c:gimple_set_op"}
!572 = !{!"function_entry_count", i64 66177}
!573 = !{!"tree-ssa-phiopt.c:gimple_seq_last"}
!574 = !{!"branch_weights", i32 1, i32 66178}
!575 = !{!367, !273, i64 8}
!576 = !{!"function_entry_count", i64 52667}
!577 = !{!"tree-ssa-phiopt.c:gimple_bb"}
!578 = !{!"function_entry_count", i64 106261}
!579 = !{!"tree-ssa-phiopt.c:gimple_phi_arg"}
!580 = !{!"branch_weights", i32 1, i32 106262}
!581 = !{!"tree-ssa-phiopt.c:get_use_from_ptr"}
!582 = !{!583, !273, i64 24}
!583 = !{!"ssa_use_operand_d", !273, i64 0, !273, i64 8, !274, i64 16, !273, i64 24}
!584 = !{!"function_entry_count", i64 59015}
!585 = !{!"tree-ssa-phiopt.c:gimple_cond_code"}
!586 = !{!"function_entry_count", i64 20507}
!587 = !{!"tree-ssa-phiopt.c:gimple_cond_lhs"}
!588 = !{!"function_entry_count", i64 7436}
!589 = !{!"tree-ssa-phiopt.c:gimple_cond_rhs"}
!590 = !{!"function_entry_count", i64 2384}
!591 = !{!"tree-ssa-phiopt.c:gimple_phi_arg_location"}
!592 = !{!593, !278, i64 40}
!593 = !{!"phi_arg_d", !583, i64 0, !273, i64 32, !278, i64 40}
!594 = !{!"function_entry_count", i64 1457}
!595 = !{!"tree-ssa-phiopt.c:replace_phi_edge_with_variable"}
!596 = !{!"branch_weights", i32 1358, i32 101}
!597 = !{!314, !278, i64 52}
!598 = !{!314, !285, i64 56}
!599 = !{!"branch_weights", i32 1458, i32 1}
!600 = !{!"tree-ssa-phiopt.c:set_ssa_use_from_ptr"}
!601 = !{!"tree-ssa-phiopt.c:gimple_phi_arg_imm_use_ptr"}
!602 = !{!"tree-ssa-phiopt.c:delink_imm_use"}
!603 = !{!583, !273, i64 0}
!604 = !{!"branch_weights", i32 1257, i32 202}
!605 = !{!583, !273, i64 8}
!606 = !{!"tree-ssa-phiopt.c:link_imm_use"}
!607 = !{!"branch_weights", i32 1, i32 1458}
!608 = !{!"tree-ssa-phiopt.c:link_imm_use_to_list"}
!609 = !{!"function_entry_count", i64 2}
!610 = !{!"tree-ssa-phiopt.c:single_succ_edge"}
!611 = !{!"branch_weights", i32 1, i32 3}
!612 = !{!"tree-ssa-phiopt.c:gsi_last_nondebug_bb"}
!613 = !{!"tree-ssa-phiopt.c:gsi_prev_nondebug"}
!614 = distinct !{!614, !296}
!615 = !{!"tree-ssa-phiopt.c:gsi_prev"}
!616 = !{!343, !273, i64 8}
!617 = !{!"tree-ssa-phiopt.c:gate_cselim"}
!618 = !{!"tree-ssa-phiopt.c:tree_ssa_cs_elim"}
