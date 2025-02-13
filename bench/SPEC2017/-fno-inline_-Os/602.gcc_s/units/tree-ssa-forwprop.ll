; ModuleID = 'tree-ssa-forwprop.c'
source_filename = "tree-ssa-forwprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }

@pass_forwprop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_forwprop, ptr @tree_ssa_forward_propagate_single_use_vars, ptr null, ptr null, i32 0, i32 74, i32 40, i32 0, i32 0, i32 0, i32 2055 } }, align 8
@.str = private unnamed_addr constant [9 x i8] c"forwprop\00", align 1
@flag_tree_forwprop = external local_unnamed_addr global i32, align 4
@cfg_changed = internal unnamed_addr global i1 false, align 1
@cfun = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"tree-ssa-forwprop.c\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"  Replaced '\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"' with '\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@dump_flags = external local_unnamed_addr global i32, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_forwprop() #0 !prof !318 !PGOFuncName !319 {
  %1 = load i32, ptr @flag_tree_forwprop, align 4, !tbaa !320
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_ssa_forward_propagate_single_use_vars() #1 !prof !318 !PGOFuncName !324 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  store i1 false, ptr @cfg_changed, align 1
  %3 = load ptr, ptr @cfun, align 8, !tbaa !325
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !327
  %6 = load ptr, ptr %5, align 8, !tbaa !329
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !331
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !334
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %140, label %12, !prof !335

12:                                               ; preds = %0, %126
  %13 = phi ptr [ %129, %126 ], [ %8, %0 ]
  %14 = phi i32 [ %127, %126 ], [ 0, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %13) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !336
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  %15 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !337
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %126, !prof !338

17:                                               ; preds = %12, %122
  %18 = phi i32 [ %123, %122 ], [ %14, %12 ]
  %19 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16
  %20 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %19) #16, !range !337
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %111, label %22, !prof !339

22:                                               ; preds = %17
  %23 = call fastcc ptr @gimple_assign_lhs(ptr noundef %19) #16
  %24 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %19) #16
  %25 = load i64, ptr %23, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 141
  br i1 %27, label %29, label %28, !prof !340

28:                                               ; preds = %22
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  br label %122, !llvm.loop !341

29:                                               ; preds = %22
  %30 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %19) #16, !range !343
  %31 = icmp eq i32 %30, 121
  br i1 %31, label %47, label %32, !prof !344

32:                                               ; preds = %29
  %33 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %19) #16, !range !343
  %34 = icmp eq i32 %33, 116
  br i1 %34, label %38, label %35, !prof !345

35:                                               ; preds = %32
  %36 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %19) #16, !range !343
  %37 = icmp eq i32 %36, 113
  br i1 %37, label %38, label %57, !prof !346

38:                                               ; preds = %35, %32
  %39 = load i64, ptr %24, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 121
  br i1 %41, label %42, label %57, !prof !347

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !348
  %45 = load i64, ptr %44, align 8
  %46 = trunc i64 %45 to i16
  switch i16 %46, label %57 [
    i16 10, label %47
    i16 12, label %47
  ], !prof !349

47:                                               ; preds = %42, %42, %29
  %48 = call ptr @tree_strip_nop_conversions(ptr noundef %24) #17
  %49 = call zeroext i8 @stmt_references_abnormal_ssa_name(ptr noundef %19) #17
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %56, !prof !350

51:                                               ; preds = %47
  %52 = call fastcc zeroext i8 @forward_propagate_addr_expr(ptr noundef nonnull %23, ptr noundef %48) #16, !range !337
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54, !prof !351

54:                                               ; preds = %51
  call void @release_defs(ptr noundef %19) #17
  %55 = or i32 %18, 32768
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #17
  br label %122

56:                                               ; preds = %51, %47
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  br label %122

57:                                               ; preds = %42, %38, %35
  %58 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %19) #16, !range !343
  %59 = icmp eq i32 %58, 66
  br i1 %59, label %60, label %68, !prof !352

60:                                               ; preds = %57
  %61 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %24) #17
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %68, label %63, !prof !353

63:                                               ; preds = %60
  %64 = call zeroext i8 @fold_stmt_inplace(ptr noundef %19) #17
  call fastcc void @update_stmt(ptr noundef %19) #16
  %65 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %19) #16, !range !343
  %66 = icmp eq i32 %65, 66
  br i1 %66, label %67, label %122, !prof !354

67:                                               ; preds = %63
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  br label %122

68:                                               ; preds = %60, %57
  %69 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %19) #16, !range !343
  %70 = icmp eq i32 %69, 90
  br i1 %70, label %74, label %71, !prof !355

71:                                               ; preds = %68
  %72 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %19) #16, !range !343
  %73 = icmp eq i32 %72, 79
  br i1 %73, label %74, label %79, !prof !356

74:                                               ; preds = %71, %68
  %75 = load i64, ptr %24, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 141
  br i1 %77, label %78, label %79, !prof !357

78:                                               ; preds = %74
  call fastcc void @simplify_not_neg_expr(ptr noundef nonnull %1) #16
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  br label %122

79:                                               ; preds = %74, %71
  %80 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %19) #16, !range !343
  %81 = icmp eq i32 %80, 56
  br i1 %81, label %82, label %94, !prof !358

82:                                               ; preds = %79
  call void @fold_defer_overflow_warnings() #17
  %83 = call fastcc i32 @forward_propagate_into_cond(ptr noundef nonnull %1) #16
  %84 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16
  %85 = icmp eq i32 %83, 2
  br i1 %85, label %86, label %87, !prof !359

86:                                               ; preds = %82
  store i1 true, ptr @cfg_changed, align 1
  br label %87

87:                                               ; preds = %86, %82
  %88 = load i64, ptr %24, align 8
  %89 = and i64 %88, 8388608
  %90 = icmp eq i64 %89, 0
  %91 = icmp ne i32 %83, 0
  %92 = and i1 %91, %90
  %93 = zext i1 %92 to i8
  call void @fold_undefer_overflow_warnings(i8 noundef zeroext %93, ptr noundef %84, i32 noundef 2) #17
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  br label %122

94:                                               ; preds = %79
  %95 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %19) #16, !range !343
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !320
  %99 = icmp eq i32 %98, 5
  br i1 %99, label %100, label %106, !prof !360

100:                                              ; preds = %94
  %101 = call fastcc zeroext i8 @forward_propagate_comparison(ptr noundef %19) #16, !range !337
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %105, label %103, !prof !361

103:                                              ; preds = %100
  call void @release_defs(ptr noundef %19) #17
  %104 = or i32 %18, 32768
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #17
  br label %122

105:                                              ; preds = %100
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  br label %122

106:                                              ; preds = %94
  %107 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %19) #16, !range !343
  %108 = icmp eq i32 %107, 89
  br i1 %108, label %109, label %110, !prof !362

109:                                              ; preds = %106
  call fastcc void @simplify_bitwise_and(ptr noundef nonnull %1, ptr noundef %19) #16
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  br label %122

110:                                              ; preds = %106
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  br label %122

111:                                              ; preds = %17
  %112 = call fastcc i32 @gimple_code(ptr noundef %19) #16, !range !363
  %113 = trunc i32 %112 to i8
  switch i8 %113, label %121 [
    i8 5, label %114
    i8 1, label %115
  ], !prof !364

114:                                              ; preds = %111
  call fastcc void @simplify_gimple_switch(ptr noundef %19) #16
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  br label %122

115:                                              ; preds = %111
  call void @fold_defer_overflow_warnings() #17
  %116 = call fastcc i32 @forward_propagate_into_gimple_cond(ptr noundef %19) #16
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %119, !prof !365

118:                                              ; preds = %115
  store i1 true, ptr @cfg_changed, align 1
  br label %119

119:                                              ; preds = %118, %115
  %120 = trunc i32 %116 to i8
  call void @fold_undefer_overflow_warnings(i8 noundef zeroext %120, ptr noundef %19, i32 noundef 2) #17
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  br label %122

121:                                              ; preds = %111
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  br label %122

122:                                              ; preds = %28, %67, %63, %87, %109, %110, %103, %105, %78, %54, %56, %119, %121, %114
  %123 = phi i32 [ %18, %114 ], [ %18, %119 ], [ %18, %121 ], [ %18, %28 ], [ %18, %56 ], [ %55, %54 ], [ %18, %67 ], [ %18, %63 ], [ %18, %78 ], [ %18, %87 ], [ %104, %103 ], [ %18, %105 ], [ %18, %109 ], [ %18, %110 ]
  %124 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !337
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %17, label %126, !prof !366

126:                                              ; preds = %122, %12
  %127 = phi i32 [ %14, %12 ], [ %123, %122 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #15
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %129 = load ptr, ptr %128, align 8, !tbaa !331
  %130 = load ptr, ptr @cfun, align 8, !tbaa !325
  %131 = getelementptr inbounds %struct.function, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !327
  %133 = getelementptr inbounds %struct.control_flow_graph, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !334
  %135 = icmp eq ptr %129, %134
  br i1 %135, label %136, label %12, !prof !367, !llvm.loop !368

136:                                              ; preds = %126
  %137 = load i1, ptr @cfg_changed, align 1
  br i1 %137, label %138, label %140, !prof !369

138:                                              ; preds = %136
  %139 = or i32 %127, 32
  br label %140

140:                                              ; preds = %0, %138, %136
  %141 = phi i32 [ %139, %138 ], [ %127, %136 ], [ 0, %0 ]
  ret i32 %141
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #3 !prof !370 !PGOFuncName !371 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #16
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #16
  store ptr %4, ptr %0, align 8, !tbaa !372
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !374
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !375
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !376 !PGOFuncName !377 {
  %2 = load ptr, ptr %0, align 8, !tbaa !372
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !378 !PGOFuncName !379 {
  %2 = load ptr, ptr %0, align 8, !tbaa !372
  %3 = load ptr, ptr %2, align 8, !tbaa !380
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !382 !PGOFuncName !383 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !363
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 !prof !384 !PGOFuncName !385 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 !prof !386 !PGOFuncName !387 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #3 !prof !388 !PGOFuncName !389 {
  %2 = load ptr, ptr %0, align 8, !tbaa !372
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !390
  store ptr %4, ptr %0, align 8, !tbaa !372
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #1 !prof !391 !PGOFuncName !392 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #16, !range !343
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #16, !range !363
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !393

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @stmt_references_abnormal_ssa_name(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @forward_propagate_addr_expr(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !394 !PGOFuncName !395 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !348
  %8 = tail call fastcc ptr @gimple_bb(ptr noundef %7) #16
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 10
  %10 = load i32, ptr %9, align 4, !tbaa !396
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  %11 = tail call fastcc zeroext i8 @has_single_use(ptr noundef %0) #16
  %12 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %3, ptr noundef %0) #16
  %13 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #16, !range !337
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %59, !prof !397

15:                                               ; preds = %2, %54
  %16 = phi ptr [ %56, %54 ], [ %12, %2 ]
  %17 = phi i8 [ %55, %54 ], [ 1, %2 ]
  %18 = call fastcc i32 @gimple_code(ptr noundef %16) #16, !range !363
  %19 = icmp eq i32 %18, 6
  br i1 %19, label %24, label %20, !prof !398

20:                                               ; preds = %15
  %21 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %16) #16, !range !337
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i8 0, i8 %17, !prof !399
  br label %54

24:                                               ; preds = %15
  %25 = call fastcc ptr @gimple_bb(ptr noundef %16) #16
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 10
  %27 = load i32, ptr %26, align 4, !tbaa !396
  %28 = icmp sgt i32 %27, %10
  br i1 %28, label %54, label %29, !prof !400

29:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %16) #17
  %30 = call fastcc zeroext i8 @forward_propagate_addr_expr_1(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i8 noundef zeroext %11) #16
  %31 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16
  %32 = icmp eq ptr %16, %31
  br i1 %32, label %35, label %33, !prof !401

33:                                               ; preds = %29
  call fastcc void @update_stmt(ptr noundef %16) #16
  %34 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi ptr [ %34, %33 ], [ %16, %29 ]
  call fastcc void @update_stmt(ptr noundef %36) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  %37 = and i8 %30, %17
  %38 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %36) #16
  %39 = icmp eq i8 %30, 0
  br i1 %39, label %54, label %40, !prof !402

40:                                               ; preds = %35
  %41 = call fastcc ptr @gimple_assign_lhs(ptr noundef %36) #16
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 141
  br i1 %44, label %45, label %54, !prof !403

45:                                               ; preds = %40
  %46 = load i64, ptr %38, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 141
  br i1 %48, label %49, label %54, !prof !404

49:                                               ; preds = %45
  %50 = call fastcc ptr @gimple_assign_lhs(ptr noundef %36) #16
  %51 = call fastcc zeroext i8 @has_zero_uses(ptr noundef %50) #16
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %36) #17
  call void @release_defs(ptr noundef %36) #17
  call void @gsi_remove(ptr noundef nonnull %5, i8 noundef zeroext 1) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  br label %54

54:                                               ; preds = %35, %40, %45, %49, %53, %24, %20
  %55 = phi i8 [ %23, %20 ], [ 0, %24 ], [ %37, %53 ], [ %37, %49 ], [ %37, %45 ], [ %37, %40 ], [ 0, %35 ]
  %56 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %3) #16
  %57 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #16, !range !337
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %15, label %59, !prof !405, !llvm.loop !406

59:                                               ; preds = %54, %2
  %60 = phi i8 [ 1, %2 ], [ %55, %54 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #15
  ret i8 %60
}

; Function Attrs: optsize
declare void @release_defs(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @fold_stmt_inplace(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #1 !prof !407 !PGOFuncName !408 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !337
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !409

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #17
  tail call void @update_stmt_operands(ptr noundef %0) #17
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @simplify_not_neg_expr(ptr noundef %0) unnamed_addr #1 !prof !410 !PGOFuncName !411 {
  %2 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %3 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !348
  %6 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %5) #16, !range !337
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8, !prof !412

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %5) #16, !range !343
  %10 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %2) #16, !range !343
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %19, !prof !413

12:                                               ; preds = %8
  %13 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %5) #16
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 4259839
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef %0, ptr noundef nonnull %13) #17
  %18 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  tail call fastcc void @update_stmt(ptr noundef %18) #16
  br label %19

19:                                               ; preds = %12, %17, %8, %1
  ret void
}

; Function Attrs: optsize
declare void @fold_defer_overflow_warnings() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @forward_propagate_into_cond(ptr noundef %0) unnamed_addr #1 !prof !414 !PGOFuncName !415 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %5 = tail call fastcc i32 @gimple_location(ptr noundef %4) #16
  br label %6

6:                                                ; preds = %121, %1
  %7 = phi i32 [ 0, %1 ], [ %127, %121 ]
  %8 = phi ptr [ %4, %1 ], [ %123, %121 ]
  %9 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %8) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #15
  store i8 0, ptr %2, align 1, !tbaa !348
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  store i8 0, ptr %3, align 1, !tbaa !348
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !320
  %14 = icmp eq i32 %13, 5
  br i1 %14, label %15, label %88, !prof !359

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !348
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  br i1 %20, label %21, label %88

21:                                               ; preds = %15
  %22 = call fastcc ptr @get_prop_source_stmt(ptr noundef nonnull %17, i8 noundef zeroext 0, ptr noundef nonnull %2) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %21
  %25 = call fastcc zeroext i8 @can_propagate_from(ptr noundef nonnull %22) #16, !range !337
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !348
  %30 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !348
  %32 = call fastcc ptr @rhs_to_tree(ptr noundef %31, ptr noundef nonnull %22) #16
  %33 = load i64, ptr %9, align 8
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 65535
  %36 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !325
  %37 = load i8, ptr %2, align 1, !tbaa !348
  %38 = icmp eq i8 %37, 0
  %39 = zext i1 %38 to i8
  %40 = call fastcc ptr @combine_cond_expr_cond(i32 noundef %5, i32 noundef %35, ptr noundef %36, ptr noundef %32, ptr noundef %29, i8 noundef zeroext %39) #16
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %107

42:                                               ; preds = %21, %24, %27
  %43 = phi ptr [ %32, %27 ], [ null, %24 ], [ null, %21 ]
  %44 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !348
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 141
  br i1 %48, label %49, label %128

49:                                               ; preds = %42
  %50 = load ptr, ptr %16, align 8, !tbaa !348
  %51 = call fastcc ptr @get_prop_source_stmt(ptr noundef nonnull %45, i8 noundef zeroext 0, ptr noundef nonnull %3) #16
  %52 = icmp eq ptr %51, null
  br i1 %52, label %120, label %53

53:                                               ; preds = %49
  %54 = call fastcc zeroext i8 @can_propagate_from(ptr noundef nonnull %51) #16, !range !337
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %120, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !348
  %59 = call fastcc ptr @rhs_to_tree(ptr noundef %58, ptr noundef nonnull %51) #16
  %60 = load i64, ptr %9, align 8
  %61 = trunc i64 %60 to i32
  %62 = and i32 %61, 65535
  %63 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !325
  %64 = load i8, ptr %3, align 1, !tbaa !348
  %65 = icmp eq i8 %64, 0
  %66 = zext i1 %65 to i8
  %67 = call fastcc ptr @combine_cond_expr_cond(i32 noundef %5, i32 noundef %62, ptr noundef %63, ptr noundef %50, ptr noundef %59, i8 noundef zeroext %66) #16
  %68 = icmp eq ptr %67, null
  %69 = icmp ne ptr %43, null
  %70 = and i1 %69, %68
  %71 = icmp ne ptr %59, null
  %72 = and i1 %71, %70
  br i1 %72, label %73, label %103

73:                                               ; preds = %56
  %74 = load i64, ptr %9, align 8
  %75 = trunc i64 %74 to i32
  %76 = and i32 %75, 65535
  %77 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !325
  %78 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !348
  %80 = call ptr @fold_convert_loc(i32 noundef %5, ptr noundef %79, ptr noundef nonnull %59) #17
  %81 = load i8, ptr %2, align 1, !tbaa !348
  %82 = icmp eq i8 %81, 0
  %83 = load i8, ptr %3, align 1
  %84 = icmp eq i8 %83, 0
  %85 = select i1 %82, i1 true, i1 %84
  %86 = zext i1 %85 to i8
  %87 = call fastcc ptr @combine_cond_expr_cond(i32 noundef %5, i32 noundef %76, ptr noundef %77, ptr noundef nonnull %43, ptr noundef %80, i8 noundef zeroext %86) #16
  br label %103

88:                                               ; preds = %15, %6
  %89 = icmp eq i64 %11, 141
  br i1 %89, label %90, label %128, !prof !359

90:                                               ; preds = %88
  %91 = call fastcc ptr @get_prop_source_stmt(ptr noundef nonnull %9, i8 noundef zeroext 1, ptr noundef null) #16
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %120

93:                                               ; preds = %90
  %94 = call fastcc zeroext i8 @can_propagate_from(ptr noundef null) #16, !range !337
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %120, label %96

96:                                               ; preds = %93
  %97 = call fastcc ptr @gimple_assign_rhs1(ptr noundef null) #16
  %98 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !325
  %99 = getelementptr inbounds %struct.tree_common, ptr %97, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !348
  %101 = call ptr @build_int_cst(ptr noundef %100, i64 noundef 0) #17
  %102 = call fastcc ptr @combine_cond_expr_cond(i32 noundef %5, i32 noundef 102, ptr noundef %98, ptr noundef %97, ptr noundef %101, i8 noundef zeroext 0) #16
  br label %103

103:                                              ; preds = %96, %56, %73
  %104 = phi ptr [ %87, %73 ], [ %67, %56 ], [ %102, %96 ]
  %105 = phi ptr [ %45, %73 ], [ %45, %56 ], [ %9, %96 ]
  %106 = icmp eq ptr %104, null
  br i1 %106, label %128, label %107, !prof !416

107:                                              ; preds = %27, %103
  %108 = phi ptr [ %105, %103 ], [ %17, %27 ]
  %109 = phi ptr [ %104, %103 ], [ %40, %27 ]
  %110 = load ptr, ptr @dump_file, align 8, !tbaa !325
  %111 = icmp eq ptr %110, null
  br i1 %111, label %121, label %112

112:                                              ; preds = %107
  %113 = call i64 @fwrite(ptr nonnull @.str.5, i64 12, i64 1, ptr nonnull %110)
  %114 = load ptr, ptr @dump_file, align 8, !tbaa !325
  call void @print_generic_expr(ptr noundef %114, ptr noundef nonnull %9, i32 noundef 0) #17
  %115 = load ptr, ptr @dump_file, align 8, !tbaa !325
  %116 = call i64 @fwrite(ptr nonnull @.str.6, i64 8, i64 1, ptr %115)
  %117 = load ptr, ptr @dump_file, align 8, !tbaa !325
  call void @print_generic_expr(ptr noundef %117, ptr noundef nonnull %109, i32 noundef 0) #17
  %118 = load ptr, ptr @dump_file, align 8, !tbaa !325
  %119 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %118)
  br label %121

120:                                              ; preds = %93, %90, %53, %49
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  br label %129

121:                                              ; preds = %107, %112
  %122 = call ptr @unshare_expr(ptr noundef nonnull %109) #17
  call void @gimple_assign_set_rhs_from_tree(ptr noundef %0, ptr noundef %122) #17
  %123 = call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  call fastcc void @update_stmt(ptr noundef %123) #16
  call fastcc void @remove_prop_source_from_use(ptr noundef nonnull %108, ptr noundef null) #16
  %124 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %109) #17
  %125 = icmp eq i8 %124, 0
  %126 = call i32 @llvm.umax.i32(i32 %7, i32 1)
  %127 = select i1 %125, i32 %126, i32 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  br label %6

128:                                              ; preds = %42, %88, %103
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  br label %129

129:                                              ; preds = %120, %128
  ret i32 %7
}

; Function Attrs: optsize
declare void @fold_undefer_overflow_warnings(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @forward_propagate_comparison(ptr noundef %0) unnamed_addr #1 !prof !417 !PGOFuncName !418 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %4 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #16
  store ptr %4, ptr %2, align 8, !tbaa !325
  %5 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %14, !prof !419

9:                                                ; preds = %1
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 4194304
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %430, !prof !419

14:                                               ; preds = %9, %1
  %15 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #16
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 141
  br i1 %18, label %19, label %24, !prof !420

19:                                               ; preds = %14
  %20 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #16
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 4194304
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %430, !prof !421

24:                                               ; preds = %19, %14
  %25 = call fastcc ptr @get_prop_dest_stmt(ptr noundef %4, ptr noundef nonnull %2) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %430, label %27, !prof !422

27:                                               ; preds = %24
  %28 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef nonnull %25) #16, !range !337
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %430, label %30, !prof !423

30:                                               ; preds = %27
  %31 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %25) #16, !range !343
  %32 = icmp eq i32 %31, 116
  br i1 %32, label %45, label %33, !prof !424

33:                                               ; preds = %30
  %34 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %25) #16, !range !343
  %35 = icmp eq i32 %34, 113
  br i1 %35, label %45, label %36, !prof !425

36:                                               ; preds = %33
  %37 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %25) #16, !range !343
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !320
  %41 = icmp eq i32 %40, 5
  br i1 %41, label %45, label %42, !prof !426

42:                                               ; preds = %36
  %43 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %25) #16, !range !343
  %44 = icmp eq i32 %43, 96
  br i1 %44, label %45, label %430, !prof !427

45:                                               ; preds = %42, %36, %33, %30
  %46 = call fastcc ptr @gimple_assign_lhs(ptr noundef nonnull %25) #16
  %47 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !348
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 6
  br i1 %51, label %66, label %52, !prof !428

52:                                               ; preds = %45
  %53 = call fastcc ptr @gimple_assign_lhs(ptr noundef nonnull %25) #16
  %54 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !348
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 7
  br i1 %58, label %66, label %59, !prof !429

59:                                               ; preds = %52
  %60 = call fastcc ptr @gimple_assign_lhs(ptr noundef nonnull %25) #16
  %61 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !348
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 8
  br i1 %65, label %66, label %430, !prof !430

66:                                               ; preds = %59, %52, %45
  %67 = call fastcc ptr @gimple_assign_lhs(ptr noundef nonnull %25) #16
  %68 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %25) #16, !range !343
  %69 = icmp eq i32 %68, 116
  br i1 %69, label %73, label %70, !prof !431

70:                                               ; preds = %66
  %71 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %25) #16, !range !343
  %72 = icmp eq i32 %71, 113
  br i1 %72, label %73, label %75, !prof !432

73:                                               ; preds = %70, %66
  %74 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !343
  br label %397

75:                                               ; preds = %70
  %76 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %25) #16, !range !343
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !320
  %80 = icmp eq i32 %79, 5
  br i1 %80, label %81, label %105, !prof !433

81:                                               ; preds = %75
  %82 = call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %25) #16
  %83 = load i64, ptr %82, align 8
  %84 = and i64 %83, 65535
  %85 = icmp eq i64 %84, 141
  br i1 %85, label %86, label %105, !prof !433

86:                                               ; preds = %81
  %87 = call fastcc ptr @gimple_assign_rhs2(ptr noundef nonnull %25) #16
  %88 = load i64, ptr %87, align 8
  %89 = and i64 %88, 65535
  %90 = icmp eq i64 %89, 23
  br i1 %90, label %91, label %105, !prof !434

91:                                               ; preds = %86
  %92 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %25) #16, !range !343
  %93 = call fastcc ptr @gimple_assign_rhs2(ptr noundef nonnull %25) #16
  %94 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !343
  %95 = getelementptr inbounds %struct.tree_common, ptr %93, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !348
  %97 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %98 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #16
  %99 = call ptr @build2_stat(i32 noundef %94, ptr noundef %96, ptr noundef %97, ptr noundef %98) #17
  %100 = call fastcc i32 @gimple_location(ptr noundef nonnull %25) #16
  %101 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !348
  %103 = call fastcc ptr @combine_cond_expr_cond(i32 noundef %100, i32 noundef %92, ptr noundef %102, ptr noundef %99, ptr noundef %93, i8 noundef zeroext 0) #16
  %104 = icmp eq ptr %103, null
  br i1 %104, label %430, label %404

105:                                              ; preds = %86, %81, %75
  %106 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %25) #16, !range !343
  %107 = icmp eq i32 %106, 96
  br i1 %107, label %108, label %430, !prof !435

108:                                              ; preds = %105
  %109 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %110 = getelementptr inbounds %struct.tree_common, ptr %109, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !348
  %112 = load i64, ptr %111, align 8
  %113 = and i64 %112, 65535
  %114 = icmp eq i64 %113, 14
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = call i32 @vector_type_mode(ptr noundef nonnull %111) #17
  %117 = load i64, ptr %111, align 8
  br label %123

118:                                              ; preds = %108
  %119 = getelementptr inbounds %struct.tree_type, ptr %111, i64 0, i32 6
  %120 = load i32, ptr %119, align 4
  %121 = lshr i32 %120, 16
  %122 = and i32 %121, 255
  br label %123

123:                                              ; preds = %118, %115
  %124 = phi i64 [ %117, %115 ], [ %112, %118 ]
  %125 = phi i32 [ %116, %115 ], [ %122, %118 ]
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !348
  %129 = icmp eq i8 %128, 8
  br i1 %129, label %184, label %130

130:                                              ; preds = %123
  %131 = and i64 %124, 65535
  %132 = icmp eq i64 %131, 14
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = call i32 @vector_type_mode(ptr noundef nonnull %111) #17
  %135 = load i64, ptr %111, align 8
  br label %141

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.tree_type, ptr %111, i64 0, i32 6
  %138 = load i32, ptr %137, align 4
  %139 = lshr i32 %138, 16
  %140 = and i32 %139, 255
  br label %141

141:                                              ; preds = %136, %133
  %142 = phi i64 [ %135, %133 ], [ %124, %136 ]
  %143 = phi i32 [ %134, %133 ], [ %140, %136 ]
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !348
  %147 = icmp eq i8 %146, 9
  br i1 %147, label %184, label %148

148:                                              ; preds = %141
  %149 = and i64 %142, 65535
  %150 = icmp eq i64 %149, 14
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = call i32 @vector_type_mode(ptr noundef nonnull %111) #17
  %153 = load i64, ptr %111, align 8
  br label %159

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.tree_type, ptr %111, i64 0, i32 6
  %156 = load i32, ptr %155, align 4
  %157 = lshr i32 %156, 16
  %158 = and i32 %157, 255
  br label %159

159:                                              ; preds = %154, %151
  %160 = phi i64 [ %153, %151 ], [ %142, %154 ]
  %161 = phi i32 [ %152, %151 ], [ %158, %154 ]
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !348
  %165 = icmp eq i8 %164, 11
  br i1 %165, label %184, label %166

166:                                              ; preds = %159
  %167 = and i64 %160, 65535
  %168 = icmp eq i64 %167, 14
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = call i32 @vector_type_mode(ptr noundef nonnull %111) #17
  br label %176

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.tree_type, ptr %111, i64 0, i32 6
  %173 = load i32, ptr %172, align 4
  %174 = lshr i32 %173, 16
  %175 = and i32 %174, 255
  br label %176

176:                                              ; preds = %171, %169
  %177 = phi i32 [ %170, %169 ], [ %175, %171 ]
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %178
  %180 = load i8, ptr %179, align 1, !tbaa !348
  %181 = icmp eq i8 %180, 17
  br i1 %181, label %182, label %392

182:                                              ; preds = %176
  %183 = load i64, ptr %111, align 8
  br label %184

184:                                              ; preds = %182, %159, %141, %123
  %185 = phi i64 [ %183, %182 ], [ %160, %159 ], [ %142, %141 ], [ %124, %123 ]
  %186 = and i64 %185, 65535
  %187 = icmp eq i64 %186, 14
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = call i32 @vector_type_mode(ptr noundef nonnull %111) #17
  %190 = load i64, ptr %111, align 8
  br label %196

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.tree_type, ptr %111, i64 0, i32 6
  %193 = load i32, ptr %192, align 4
  %194 = lshr i32 %193, 16
  %195 = and i32 %194, 255
  br label %196

196:                                              ; preds = %191, %188
  %197 = phi i64 [ %190, %188 ], [ %185, %191 ]
  %198 = phi i32 [ %189, %188 ], [ %195, %191 ]
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !348
  %202 = icmp eq i8 %201, 8
  br i1 %202, label %221, label %203

203:                                              ; preds = %196
  %204 = and i64 %197, 65535
  %205 = icmp eq i64 %204, 14
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = call i32 @vector_type_mode(ptr noundef nonnull %111) #17
  %208 = load i64, ptr %111, align 8
  br label %214

209:                                              ; preds = %203
  %210 = getelementptr inbounds %struct.tree_type, ptr %111, i64 0, i32 6
  %211 = load i32, ptr %210, align 4
  %212 = lshr i32 %211, 16
  %213 = and i32 %212, 255
  br label %214

214:                                              ; preds = %209, %206
  %215 = phi i64 [ %208, %206 ], [ %197, %209 ]
  %216 = phi i32 [ %207, %206 ], [ %213, %209 ]
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !348
  %220 = icmp eq i8 %219, 9
  br i1 %220, label %221, label %232

221:                                              ; preds = %214, %196
  %222 = phi i64 [ %215, %214 ], [ %197, %196 ]
  %223 = and i64 %222, 65535
  %224 = icmp eq i64 %223, 14
  br i1 %224, label %225, label %227

225:                                              ; preds = %221
  %226 = call i32 @vector_type_mode(ptr noundef nonnull %111) #17
  br label %248

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.tree_type, ptr %111, i64 0, i32 6
  %229 = load i32, ptr %228, align 4
  %230 = lshr i32 %229, 16
  %231 = and i32 %230, 255
  br label %248

232:                                              ; preds = %214
  %233 = and i64 %215, 65535
  %234 = icmp eq i64 %233, 14
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = call i32 @vector_type_mode(ptr noundef nonnull %111) #17
  br label %242

237:                                              ; preds = %232
  %238 = getelementptr inbounds %struct.tree_type, ptr %111, i64 0, i32 6
  %239 = load i32, ptr %238, align 4
  %240 = lshr i32 %239, 16
  %241 = and i32 %240, 255
  br label %242

242:                                              ; preds = %237, %235
  %243 = phi i32 [ %236, %235 ], [ %241, %237 ]
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %244
  %246 = load i8, ptr %245, align 1, !tbaa !348
  %247 = zext i8 %246 to i32
  br label %248

248:                                              ; preds = %225, %227, %242
  %249 = phi i32 [ %247, %242 ], [ %226, %225 ], [ %231, %227 ]
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %250
  %252 = load i8, ptr %251, align 1, !tbaa !348
  %253 = icmp eq i8 %252, 9
  %254 = load i64, ptr %111, align 8
  %255 = and i64 %254, 65535
  %256 = icmp eq i64 %255, 14
  br i1 %253, label %257, label %318

257:                                              ; preds = %248
  br i1 %256, label %258, label %261

258:                                              ; preds = %257
  %259 = call i32 @vector_type_mode(ptr noundef nonnull %111) #17
  %260 = load i64, ptr %111, align 8
  br label %266

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.tree_type, ptr %111, i64 0, i32 6
  %263 = load i32, ptr %262, align 4
  %264 = lshr i32 %263, 16
  %265 = and i32 %264, 255
  br label %266

266:                                              ; preds = %261, %258
  %267 = phi i64 [ %260, %258 ], [ %254, %261 ]
  %268 = phi i32 [ %259, %258 ], [ %265, %261 ]
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %269
  %271 = load i8, ptr %270, align 1, !tbaa !348
  %272 = icmp eq i8 %271, 8
  br i1 %272, label %291, label %273

273:                                              ; preds = %266
  %274 = and i64 %267, 65535
  %275 = icmp eq i64 %274, 14
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = call i32 @vector_type_mode(ptr noundef nonnull %111) #17
  %278 = load i64, ptr %111, align 8
  br label %284

279:                                              ; preds = %273
  %280 = getelementptr inbounds %struct.tree_type, ptr %111, i64 0, i32 6
  %281 = load i32, ptr %280, align 4
  %282 = lshr i32 %281, 16
  %283 = and i32 %282, 255
  br label %284

284:                                              ; preds = %279, %276
  %285 = phi i64 [ %278, %276 ], [ %267, %279 ]
  %286 = phi i32 [ %277, %276 ], [ %283, %279 ]
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %287
  %289 = load i8, ptr %288, align 1, !tbaa !348
  %290 = icmp eq i8 %289, 9
  br i1 %290, label %291, label %302

291:                                              ; preds = %284, %266
  %292 = phi i64 [ %285, %284 ], [ %267, %266 ]
  %293 = and i64 %292, 65535
  %294 = icmp eq i64 %293, 14
  br i1 %294, label %295, label %297

295:                                              ; preds = %291
  %296 = call i32 @vector_type_mode(ptr noundef nonnull %111) #17
  br label %379

297:                                              ; preds = %291
  %298 = getelementptr inbounds %struct.tree_type, ptr %111, i64 0, i32 6
  %299 = load i32, ptr %298, align 4
  %300 = lshr i32 %299, 16
  %301 = and i32 %300, 255
  br label %379

302:                                              ; preds = %284
  %303 = and i64 %285, 65535
  %304 = icmp eq i64 %303, 14
  br i1 %304, label %305, label %307

305:                                              ; preds = %302
  %306 = call i32 @vector_type_mode(ptr noundef nonnull %111) #17
  br label %312

307:                                              ; preds = %302
  %308 = getelementptr inbounds %struct.tree_type, ptr %111, i64 0, i32 6
  %309 = load i32, ptr %308, align 4
  %310 = lshr i32 %309, 16
  %311 = and i32 %310, 255
  br label %312

312:                                              ; preds = %307, %305
  %313 = phi i32 [ %306, %305 ], [ %311, %307 ]
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %314
  %316 = load i8, ptr %315, align 1, !tbaa !348
  %317 = zext i8 %316 to i32
  br label %379

318:                                              ; preds = %248
  br i1 %256, label %319, label %322

319:                                              ; preds = %318
  %320 = call i32 @vector_type_mode(ptr noundef nonnull %111) #17
  %321 = load i64, ptr %111, align 8
  br label %327

322:                                              ; preds = %318
  %323 = getelementptr inbounds %struct.tree_type, ptr %111, i64 0, i32 6
  %324 = load i32, ptr %323, align 4
  %325 = lshr i32 %324, 16
  %326 = and i32 %325, 255
  br label %327

327:                                              ; preds = %322, %319
  %328 = phi i64 [ %321, %319 ], [ %254, %322 ]
  %329 = phi i32 [ %320, %319 ], [ %326, %322 ]
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %330
  %332 = load i8, ptr %331, align 1, !tbaa !348
  %333 = icmp eq i8 %332, 8
  br i1 %333, label %352, label %334

334:                                              ; preds = %327
  %335 = and i64 %328, 65535
  %336 = icmp eq i64 %335, 14
  br i1 %336, label %337, label %340

337:                                              ; preds = %334
  %338 = call i32 @vector_type_mode(ptr noundef nonnull %111) #17
  %339 = load i64, ptr %111, align 8
  br label %345

340:                                              ; preds = %334
  %341 = getelementptr inbounds %struct.tree_type, ptr %111, i64 0, i32 6
  %342 = load i32, ptr %341, align 4
  %343 = lshr i32 %342, 16
  %344 = and i32 %343, 255
  br label %345

345:                                              ; preds = %340, %337
  %346 = phi i64 [ %339, %337 ], [ %328, %340 ]
  %347 = phi i32 [ %338, %337 ], [ %344, %340 ]
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %348
  %350 = load i8, ptr %349, align 1, !tbaa !348
  %351 = icmp eq i8 %350, 9
  br i1 %351, label %352, label %363

352:                                              ; preds = %345, %327
  %353 = phi i64 [ %346, %345 ], [ %328, %327 ]
  %354 = and i64 %353, 65535
  %355 = icmp eq i64 %354, 14
  br i1 %355, label %356, label %358

356:                                              ; preds = %352
  %357 = call i32 @vector_type_mode(ptr noundef nonnull %111) #17
  br label %379

358:                                              ; preds = %352
  %359 = getelementptr inbounds %struct.tree_type, ptr %111, i64 0, i32 6
  %360 = load i32, ptr %359, align 4
  %361 = lshr i32 %360, 16
  %362 = and i32 %361, 255
  br label %379

363:                                              ; preds = %345
  %364 = and i64 %346, 65535
  %365 = icmp eq i64 %364, 14
  br i1 %365, label %366, label %368

366:                                              ; preds = %363
  %367 = call i32 @vector_type_mode(ptr noundef nonnull %111) #17
  br label %373

368:                                              ; preds = %363
  %369 = getelementptr inbounds %struct.tree_type, ptr %111, i64 0, i32 6
  %370 = load i32, ptr %369, align 4
  %371 = lshr i32 %370, 16
  %372 = and i32 %371, 255
  br label %373

373:                                              ; preds = %368, %366
  %374 = phi i32 [ %367, %366 ], [ %372, %368 ]
  %375 = zext i32 %374 to i64
  %376 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %375
  %377 = load i8, ptr %376, align 1, !tbaa !348
  %378 = zext i8 %377 to i32
  br label %379

379:                                              ; preds = %373, %358, %356, %312, %297, %295
  %380 = phi i32 [ %317, %312 ], [ %296, %295 ], [ %301, %297 ], [ %378, %373 ], [ %357, %356 ], [ %362, %358 ]
  %381 = add i32 %380, -38
  %382 = zext i32 %381 to i64
  %383 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %382
  %384 = load ptr, ptr %383, align 8, !tbaa !325
  %385 = getelementptr inbounds %struct.real_format, ptr %384, i64 0, i32 11
  %386 = load i8, ptr %385, align 2, !tbaa !436
  %387 = icmp eq i8 %386, 0
  br i1 %387, label %392, label %388

388:                                              ; preds = %379
  %389 = load i32, ptr @flag_finite_math_only, align 4, !tbaa !320
  %390 = icmp eq i32 %389, 0
  %391 = zext i1 %390 to i8
  br label %392

392:                                              ; preds = %388, %379, %176
  %393 = phi i8 [ 0, %379 ], [ 0, %176 ], [ %391, %388 ]
  %394 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !343
  %395 = call i32 @invert_tree_comparison(i32 noundef %394, i8 noundef zeroext %393) #17
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %430, label %397

397:                                              ; preds = %392, %73
  %398 = phi i32 [ %74, %73 ], [ %395, %392 ]
  %399 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %400 = load ptr, ptr %399, align 8, !tbaa !348
  %401 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %402 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #16
  %403 = call ptr @build2_stat(i32 noundef %398, ptr noundef %400, ptr noundef %401, ptr noundef %402) #17
  br label %404

404:                                              ; preds = %397, %91
  %405 = phi ptr [ %103, %91 ], [ %403, %397 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %25) #17
  %406 = call ptr @unshare_expr(ptr noundef %405) #17
  call void @gimple_assign_set_rhs_from_tree(ptr noundef nonnull %3, ptr noundef %406) #17
  %407 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16
  call fastcc void @update_stmt(ptr noundef %407) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  %408 = load ptr, ptr %2, align 8, !tbaa !325
  call fastcc void @remove_prop_source_from_use(ptr noundef %408, ptr noundef %0) #16
  %409 = load ptr, ptr @dump_file, align 8, !tbaa !325
  %410 = icmp eq ptr %409, null
  br i1 %410, label %430, label %411, !prof !438

411:                                              ; preds = %404
  %412 = load i32, ptr @dump_flags, align 4, !tbaa !320
  %413 = and i32 %412, 8
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %430, label %415

415:                                              ; preds = %411
  %416 = call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #16
  %417 = getelementptr inbounds %struct.tree_common, ptr %416, i64 0, i32 2
  %418 = load ptr, ptr %417, align 8, !tbaa !348
  %419 = call fastcc ptr @rhs_to_tree(ptr noundef %418, ptr noundef %0) #16
  %420 = load ptr, ptr @dump_file, align 8, !tbaa !325
  %421 = call i64 @fwrite(ptr nonnull @.str.5, i64 12, i64 1, ptr %420)
  %422 = load ptr, ptr @dump_file, align 8, !tbaa !325
  %423 = load i32, ptr @dump_flags, align 4, !tbaa !320
  call void @print_generic_expr(ptr noundef %422, ptr noundef %419, i32 noundef %423) #17
  %424 = load ptr, ptr @dump_file, align 8, !tbaa !325
  %425 = call i64 @fwrite(ptr nonnull @.str.6, i64 8, i64 1, ptr %424)
  %426 = load ptr, ptr @dump_file, align 8, !tbaa !325
  %427 = load i32, ptr @dump_flags, align 4, !tbaa !320
  call void @print_generic_expr(ptr noundef %426, ptr noundef %405, i32 noundef %427) #17
  %428 = load ptr, ptr @dump_file, align 8, !tbaa !325
  %429 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %428)
  br label %430

430:                                              ; preds = %392, %27, %42, %59, %91, %105, %415, %411, %404, %24, %9, %19
  %431 = phi i8 [ 0, %19 ], [ 0, %9 ], [ 0, %24 ], [ 0, %91 ], [ 0, %105 ], [ 1, %415 ], [ 1, %411 ], [ 1, %404 ], [ 0, %59 ], [ 0, %42 ], [ 0, %27 ], [ 0, %392 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i8 %431
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @simplify_bitwise_and(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !439 !PGOFuncName !440 {
  %3 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #16
  %4 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %1) #16
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 23
  br i1 %7, label %8, label %50, !prof !441

8:                                                ; preds = %2
  %9 = load i64, ptr %3, align 8
  %10 = and i64 %9, 4295032831
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %12, label %38, !prof !442

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !348
  %15 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %14) #16, !range !337
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %38, label %17, !prof !443

17:                                               ; preds = %12
  %18 = tail call fastcc ptr @gimple_expr_type(ptr noundef %14) #16
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 6
  br i1 %21, label %32, label %22, !prof !444

22:                                               ; preds = %17
  %23 = tail call fastcc ptr @gimple_expr_type(ptr noundef %14) #16
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 7
  br i1 %26, label %32, label %27, !prof !445

27:                                               ; preds = %22
  %28 = tail call fastcc ptr @gimple_expr_type(ptr noundef %14) #16
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %32, label %38, !prof !446

32:                                               ; preds = %27, %22, %17
  %33 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %14) #16
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 121
  br i1 %36, label %37, label %38, !prof !444

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %12, %27, %37, %32, %8
  %39 = phi ptr [ %3, %8 ], [ %3, %27 ], [ %3, %12 ], [ %33, %37 ], [ %3, %32 ]
  %40 = tail call fastcc i32 @gimple_location(ptr noundef %1) #16
  %41 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %1) #16
  %42 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !348
  %44 = tail call ptr @fold_binary_loc(i32 noundef %40, i32 noundef 89, ptr noundef %43, ptr noundef nonnull %39, ptr noundef nonnull %4) #17
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46, !prof !447

46:                                               ; preds = %38
  %47 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %44) #17
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %50, label %49, !prof !448

49:                                               ; preds = %46
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef %0, ptr noundef nonnull %44) #17
  tail call fastcc void @update_stmt(ptr noundef %1) #16
  br label %50

50:                                               ; preds = %38, %46, %49, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !449 !PGOFuncName !450 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @simplify_gimple_switch(ptr noundef %0) unnamed_addr #1 !prof !451 !PGOFuncName !452 {
  %2 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #16
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %48, !prof !453

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !348
  %9 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %8) #16, !range !337
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %48, label %11, !prof !454

11:                                               ; preds = %6
  %12 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %8) #16, !range !343
  %13 = icmp eq i32 %12, 116
  br i1 %13, label %14, label %48, !prof !455

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %8) #16
  %16 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !348
  %18 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !348
  %20 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1023
  %23 = load i64, ptr %19, align 8
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 65535
  %26 = add nsw i32 %25, -6
  %27 = icmp ult i32 %26, 3
  br i1 %27, label %28, label %48, !prof !456

28:                                               ; preds = %14
  %29 = load i64, ptr %17, align 8
  %30 = and i64 %29, 2097152
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %35, label %32, !prof !457

32:                                               ; preds = %28
  %33 = and i64 %23, 2097152
  %34 = icmp ne i64 %33, 0
  br label %39

35:                                               ; preds = %28
  %36 = lshr i32 %24, 21
  %37 = and i32 %36, 1
  %38 = add nuw nsw i32 %37, %22
  br label %39

39:                                               ; preds = %32, %35
  %40 = phi i32 [ %38, %35 ], [ %22, %32 ]
  %41 = phi i1 [ true, %35 ], [ %34, %32 ]
  %42 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 1023
  %45 = icmp uge i32 %44, %40
  %46 = and i1 %41, %45
  br i1 %46, label %47, label %48, !prof !458

47:                                               ; preds = %39
  tail call fastcc void @gimple_switch_set_index(ptr noundef %0, ptr noundef nonnull %15) #16
  tail call fastcc void @update_stmt(ptr noundef %0) #16
  br label %48

48:                                               ; preds = %14, %39, %47, %6, %11, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @forward_propagate_into_gimple_cond(ptr noundef %0) unnamed_addr #1 !prof !459 !PGOFuncName !460 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = tail call fastcc i32 @gimple_location(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #15
  store i8 0, ptr %2, align 1, !tbaa !348
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  store i8 0, ptr %3, align 1, !tbaa !348
  %5 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #16, !range !343
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !320
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %109, !prof !461

10:                                               ; preds = %1, %98
  %11 = phi i32 [ %104, %98 ], [ %5, %1 ]
  %12 = phi i32 [ %103, %98 ], [ 0, %1 ]
  %13 = call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #16
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %109, !prof !462

17:                                               ; preds = %10
  %18 = call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #16
  %19 = call fastcc ptr @get_prop_source_stmt(ptr noundef %18, i8 noundef zeroext 0, ptr noundef nonnull %2) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %35, label %21, !prof !463

21:                                               ; preds = %17
  %22 = call fastcc zeroext i8 @can_propagate_from(ptr noundef nonnull %19) #16, !range !337
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %35, label %24, !prof !464

24:                                               ; preds = %21
  %25 = call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #16
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !348
  %28 = call fastcc ptr @rhs_to_tree(ptr noundef %27, ptr noundef nonnull %19) #16
  %29 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !325
  %30 = load i8, ptr %2, align 1, !tbaa !348
  %31 = icmp eq i8 %30, 0
  %32 = zext i1 %31 to i8
  %33 = call fastcc ptr @combine_cond_expr_cond(i32 noundef %4, i32 noundef %11, ptr noundef %29, ptr noundef %28, ptr noundef %25, i8 noundef zeroext %32) #16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %79, !prof !465

35:                                               ; preds = %17, %21, %24
  %36 = phi ptr [ %28, %24 ], [ null, %21 ], [ null, %17 ]
  %37 = call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #16
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 141
  br i1 %40, label %41, label %109, !prof !466

41:                                               ; preds = %35
  %42 = call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #16
  %43 = call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #16
  %44 = call fastcc ptr @get_prop_source_stmt(ptr noundef %43, i8 noundef zeroext 0, ptr noundef nonnull %3) #16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46, !prof !467

46:                                               ; preds = %41
  %47 = call fastcc zeroext i8 @can_propagate_from(ptr noundef nonnull %44) #16, !range !337
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %50, !prof !468

49:                                               ; preds = %41, %46
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  br label %111

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !348
  %53 = call fastcc ptr @rhs_to_tree(ptr noundef %52, ptr noundef nonnull %44) #16
  %54 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !325
  %55 = load i8, ptr %3, align 1, !tbaa !348
  %56 = icmp eq i8 %55, 0
  %57 = zext i1 %56 to i8
  %58 = call fastcc ptr @combine_cond_expr_cond(i32 noundef %4, i32 noundef %11, ptr noundef %54, ptr noundef %42, ptr noundef %53, i8 noundef zeroext %57) #16
  %59 = icmp eq ptr %58, null
  %60 = icmp ne ptr %36, null
  %61 = and i1 %60, %59
  %62 = icmp ne ptr %53, null
  %63 = and i1 %62, %61
  br i1 %63, label %64, label %76, !prof !469

64:                                               ; preds = %50
  %65 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !325
  %66 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !348
  %68 = call ptr @fold_convert_loc(i32 noundef %4, ptr noundef %67, ptr noundef nonnull %53) #17
  %69 = load i8, ptr %2, align 1, !tbaa !348
  %70 = icmp eq i8 %69, 0
  %71 = load i8, ptr %3, align 1
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %70, i1 true, i1 %72
  %74 = zext i1 %73 to i8
  %75 = call fastcc ptr @combine_cond_expr_cond(i32 noundef %4, i32 noundef %11, ptr noundef %65, ptr noundef nonnull %36, ptr noundef %68, i8 noundef zeroext %74) #16
  br label %76

76:                                               ; preds = %50, %64
  %77 = phi ptr [ %75, %64 ], [ %58, %50 ]
  %78 = icmp eq ptr %77, null
  br i1 %78, label %109, label %79, !prof !470

79:                                               ; preds = %24, %76
  %80 = phi ptr [ %77, %76 ], [ %33, %24 ]
  %81 = phi ptr [ %43, %76 ], [ %18, %24 ]
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !325
  %83 = icmp eq ptr %82, null
  br i1 %83, label %98, label %84, !prof !471

84:                                               ; preds = %79
  %85 = call fastcc i32 @gimple_cond_code(ptr noundef %0) #16, !range !343
  %86 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !325
  %87 = call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #16
  %88 = call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #16
  %89 = call ptr @build2_stat(i32 noundef %85, ptr noundef %86, ptr noundef %87, ptr noundef %88) #17
  %90 = load ptr, ptr @dump_file, align 8, !tbaa !325
  %91 = call i64 @fwrite(ptr nonnull @.str.5, i64 12, i64 1, ptr %90)
  %92 = load ptr, ptr @dump_file, align 8, !tbaa !325
  call void @print_generic_expr(ptr noundef %92, ptr noundef %89, i32 noundef 0) #17
  %93 = load ptr, ptr @dump_file, align 8, !tbaa !325
  %94 = call i64 @fwrite(ptr nonnull @.str.6, i64 8, i64 1, ptr %93)
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !325
  call void @print_generic_expr(ptr noundef %95, ptr noundef nonnull %80, i32 noundef 0) #17
  %96 = load ptr, ptr @dump_file, align 8, !tbaa !325
  %97 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %96)
  br label %98

98:                                               ; preds = %79, %84
  %99 = call ptr @unshare_expr(ptr noundef nonnull %80) #17
  call void @gimple_cond_set_condition_from_tree(ptr noundef %0, ptr noundef %99) #17
  call fastcc void @update_stmt(ptr noundef %0) #16
  call fastcc void @remove_prop_source_from_use(ptr noundef %81, ptr noundef null) #16
  %100 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %80) #17
  %101 = icmp eq i8 %100, 0
  %102 = call i32 @llvm.umax.i32(i32 %12, i32 1)
  %103 = select i1 %101, i32 %102, i32 2, !prof !472
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #15
  store i8 0, ptr %2, align 1, !tbaa !348
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  store i8 0, ptr %3, align 1, !tbaa !348
  %104 = call fastcc i32 @gimple_cond_code(ptr noundef %0) #16, !range !343
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !320
  %108 = icmp eq i32 %107, 5
  br i1 %108, label %10, label %109, !prof !473

109:                                              ; preds = %76, %10, %98, %35, %1
  %110 = phi i32 [ 0, %1 ], [ %12, %35 ], [ %103, %98 ], [ %12, %10 ], [ %12, %76 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  br label %111

111:                                              ; preds = %49, %109
  %112 = phi i32 [ %12, %49 ], [ %110, %109 ]
  ret i32 %112
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !370 !PGOFuncName !474 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !475
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !476

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !348
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !477

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !478
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 !prof !370 !PGOFuncName !480 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !477

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !481
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !483 !PGOFuncName !484 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !337
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !485

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #16
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !325
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !486 !PGOFuncName !487 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !363
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !488 !PGOFuncName !489 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #16
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !490
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !491

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #17
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !488 !PGOFuncName !492 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !363
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #16
  ret i32 %3
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #8 !prof !488 !PGOFuncName !493 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !320
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !391 !PGOFuncName !494 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !363
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !495

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1446, ptr noundef nonnull @.str.2) #17
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #8 !prof !496 !PGOFuncName !497 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !348
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !498 !PGOFuncName !499 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !348
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_single_use(ptr noundef %0) unnamed_addr #1 !prof !500 !PGOFuncName !501 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !502
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %20, label %6, !prof !504

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !502
  %9 = icmp eq ptr %2, %8
  br i1 %9, label %10, label %15, !prof !505

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !348
  %13 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %12) #16, !range !337
  %14 = xor i8 %13, 1
  br label %20

15:                                               ; preds = %6
  %16 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !320
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18, !prof !506

18:                                               ; preds = %15
  %19 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #17
  br label %20

20:                                               ; preds = %15, %1, %18, %10
  %21 = phi i8 [ %14, %10 ], [ %19, %18 ], [ 0, %1 ], [ 0, %15 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !394 !PGOFuncName !507 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !508
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !502
  store ptr %6, ptr %0, align 8, !tbaa !510
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #16, !range !337
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14, !prof !511

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #16
  %11 = load ptr, ptr %0, align 8, !tbaa !510
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !348
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !512 !PGOFuncName !513 {
  %2 = load ptr, ptr %0, align 8, !tbaa !510
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !508
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !514 !PGOFuncName !515 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !363
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @forward_propagate_addr_expr_1(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #1 !prof !516 !PGOFuncName !517 {
  %5 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %2) #16
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 121
  br i1 %8, label %10, label %9, !prof !518

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 735, ptr noundef nonnull @.str.2) #17
  br label %10

10:                                               ; preds = %4, %9
  %11 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %5) #16
  %12 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %5) #16, !range !343
  %13 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %5) #16
  %14 = load i64, ptr %11, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %67, !prof !519

17:                                               ; preds = %10
  %18 = icmp eq i32 %12, 141
  %19 = icmp eq ptr %13, %0
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %23, label %21, !prof !520

21:                                               ; preds = %17
  %22 = trunc i32 %12 to i16
  switch i16 %22, label %67 [
    i16 116, label %23
    i16 113, label %23
  ]

23:                                               ; preds = %21, %21, %17
  %24 = icmp eq i8 %3, 0
  br i1 %24, label %54, label %25, !prof !521

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !348
  %28 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !348
  %30 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %27, ptr noundef %29) #17
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %56, !prof !522

32:                                               ; preds = %25
  %33 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1) #17
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %54, label %35, !prof !523

35:                                               ; preds = %32
  %36 = load ptr, ptr %26, align 8, !tbaa !348
  %37 = load i64, ptr %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = and i32 %38, 65535
  %40 = add nsw i32 %39, -6
  %41 = icmp ult i32 %40, 3
  br i1 %41, label %42, label %56

42:                                               ; preds = %35
  %43 = load ptr, ptr %28, align 8, !tbaa !348
  %44 = load i64, ptr %43, align 8
  %45 = trunc i64 %44 to i16
  switch i16 %45, label %56 [
    i16 10, label %46
    i16 12, label %46
  ]

46:                                               ; preds = %42, %42
  %47 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 1023
  %50 = getelementptr inbounds %struct.tree_type, ptr %43, i64 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 1023
  %53 = icmp ugt i32 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46, %32, %23
  %55 = tail call fastcc zeroext i8 @forward_propagate_addr_expr(ptr noundef nonnull %11, ptr noundef nonnull %1) #16, !range !337
  br label %281

56:                                               ; preds = %35, %42, %46, %25
  %57 = tail call ptr @unshare_expr(ptr noundef nonnull %1) #17
  tail call fastcc void @gimple_assign_set_rhs1(ptr noundef %5, ptr noundef %57) #16
  %58 = load ptr, ptr %26, align 8, !tbaa !348
  %59 = load ptr, ptr %28, align 8, !tbaa !348
  %60 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %58, ptr noundef %59) #17
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %66, label %62, !prof !524

62:                                               ; preds = %56
  %63 = load i64, ptr %1, align 8
  %64 = trunc i64 %63 to i32
  %65 = and i32 %64, 65535
  tail call fastcc void @gimple_assign_set_rhs_code(ptr noundef %5, i32 noundef %65) #16
  br label %281

66:                                               ; preds = %56
  tail call fastcc void @gimple_assign_set_rhs_code(ptr noundef %5, i32 noundef 116) #16
  br label %281

67:                                               ; preds = %21, %10
  %68 = tail call fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %5) #16
  br label %69

69:                                               ; preds = %69, %67
  %70 = phi ptr [ %68, %67 ], [ %74, %69 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !325
  %72 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %71) #16, !range !337
  %73 = icmp eq i8 %72, 0
  %74 = getelementptr inbounds %struct.tree_exp, ptr %71, i64 0, i32 3
  br i1 %73, label %75, label %69, !prof !525, !llvm.loop !526

75:                                               ; preds = %69
  %76 = load i64, ptr %71, align 8
  %77 = and i64 %76, 65535
  %78 = icmp eq i64 %77, 47
  br i1 %78, label %79, label %103, !prof !527

79:                                               ; preds = %75
  %80 = load ptr, ptr %74, align 8, !tbaa !348
  %81 = icmp eq ptr %80, %0
  br i1 %81, label %82, label %103, !prof !528

82:                                               ; preds = %79
  %83 = tail call zeroext i8 @may_propagate_address_into_dereference(ptr noundef nonnull %1, ptr noundef nonnull %71) #17
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %103, label %85, !prof !529

85:                                               ; preds = %82
  %86 = tail call fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %5) #16
  %87 = icmp eq ptr %70, %86
  br i1 %87, label %88, label %97, !prof !530

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !348
  %91 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !348
  %93 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !348
  %95 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %92, ptr noundef %94) #17
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %103, label %97, !prof !531

97:                                               ; preds = %88, %85
  %98 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !348
  %100 = tail call ptr @unshare_expr(ptr noundef %99) #17
  store ptr %100, ptr %70, align 8, !tbaa !325
  %101 = tail call zeroext i8 @fold_stmt_inplace(ptr noundef %5) #17
  tail call fastcc void @tidy_after_forward_propagate_addr(ptr noundef %5) #16
  %102 = icmp eq i8 %3, 0
  br i1 %102, label %103, label %281, !prof !532

103:                                              ; preds = %82, %88, %97, %79, %75
  %104 = phi i8 [ 1, %97 ], [ 1, %79 ], [ 1, %75 ], [ 0, %88 ], [ 0, %82 ]
  %105 = tail call fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %5) #16
  br label %106

106:                                              ; preds = %114, %103
  %107 = phi ptr [ %105, %103 ], [ %115, %114 ]
  %108 = load ptr, ptr %107, align 8, !tbaa !325
  %109 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %108) #16, !range !337
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %114, !prof !533

111:                                              ; preds = %106
  %112 = load i64, ptr %108, align 8
  %113 = trunc i64 %112 to i16
  switch i16 %113, label %130 [
    i16 121, label %114
    i16 47, label %116
  ], !prof !534

114:                                              ; preds = %111, %106
  %115 = getelementptr inbounds %struct.tree_exp, ptr %108, i64 0, i32 3
  br label %106, !llvm.loop !535

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.tree_exp, ptr %108, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !348
  %119 = icmp eq ptr %118, %0
  br i1 %119, label %120, label %130, !prof !536

120:                                              ; preds = %116
  %121 = tail call zeroext i8 @may_propagate_address_into_dereference(ptr noundef nonnull %1, ptr noundef nonnull %108) #17
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %125, !prof !537

123:                                              ; preds = %120
  %124 = load i64, ptr %108, align 8
  br label %130

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !348
  %128 = tail call ptr @unshare_expr(ptr noundef %127) #17
  store ptr %128, ptr %107, align 8, !tbaa !325
  %129 = tail call zeroext i8 @fold_stmt_inplace(ptr noundef %5) #17
  tail call fastcc void @tidy_after_forward_propagate_addr(ptr noundef %5) #16
  br label %281

130:                                              ; preds = %111, %123, %116
  %131 = phi i64 [ %124, %123 ], [ %112, %116 ], [ %112, %111 ]
  %132 = and i64 %131, 65535
  %133 = icmp eq i64 %132, 47
  br i1 %133, label %134, label %199, !prof !538

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.tree_exp, ptr %108, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !348
  %137 = icmp eq ptr %136, %0
  br i1 %137, label %138, label %199, !prof !539

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.tree_common, ptr %108, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !348
  %141 = getelementptr inbounds %struct.tree_type, ptr %140, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !348
  %143 = icmp eq ptr %142, null
  br i1 %143, label %199, label %144, !prof !540

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !348
  %147 = getelementptr inbounds %struct.tree_common, ptr %146, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !348
  %149 = getelementptr inbounds %struct.tree_type, ptr %148, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !348
  %151 = icmp eq ptr %150, null
  br i1 %151, label %199, label %152, !prof !540

152:                                              ; preds = %144
  %153 = load i64, ptr %146, align 8
  %154 = and i64 %153, 65535
  %155 = icmp eq i64 %154, 29
  br i1 %155, label %199, label %156, !prof !540

156:                                              ; preds = %152
  %157 = load i64, ptr %140, align 8
  %158 = and i64 %157, 524288
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %199, !prof !541

160:                                              ; preds = %156
  %161 = load i64, ptr %148, align 8
  %162 = and i64 %161, 524288
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %199, !prof !541

164:                                              ; preds = %160
  %165 = tail call i32 @operand_equal_p(ptr noundef nonnull %142, ptr noundef nonnull %150, i32 noundef 0) #17
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %199, label %167, !prof !542

167:                                              ; preds = %164
  %168 = load ptr, ptr %145, align 8, !tbaa !348
  %169 = tail call i32 @get_alias_set(ptr noundef %168) #17
  %170 = tail call i32 @get_alias_set(ptr noundef nonnull %108) #17
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %199, !prof !543

172:                                              ; preds = %167
  %173 = load ptr, ptr %145, align 8, !tbaa !348
  %174 = tail call ptr @unshare_expr(ptr noundef %173) #17
  %175 = load ptr, ptr %139, align 8, !tbaa !348
  %176 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 118, ptr noundef %175, ptr noundef %174) #17
  %177 = load i64, ptr %176, align 8
  %178 = and i64 %177, 65535
  %179 = icmp eq i64 %178, 118
  br i1 %179, label %185, label %180, !prof !544

180:                                              ; preds = %172
  %181 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %5) #16
  %182 = icmp eq ptr %108, %181
  br i1 %182, label %183, label %281, !prof !545

183:                                              ; preds = %180
  %184 = tail call ptr @force_gimple_operand_gsi(ptr noundef %2, ptr noundef nonnull %176, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 0) #17
  tail call fastcc void @gimple_assign_set_rhs1(ptr noundef %5, ptr noundef %184) #16
  tail call fastcc void @tidy_after_forward_propagate_addr(ptr noundef %5) #16
  br label %281

185:                                              ; preds = %172, %185
  %186 = phi ptr [ %190, %185 ], [ %145, %172 ]
  %187 = load ptr, ptr %186, align 8, !tbaa !348
  %188 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %187) #16, !range !337
  %189 = icmp eq i8 %188, 0
  %190 = getelementptr inbounds %struct.tree_exp, ptr %187, i64 0, i32 3
  br i1 %189, label %191, label %185, !llvm.loop !546

191:                                              ; preds = %185
  %192 = load i64, ptr %187, align 8
  %193 = trunc i64 %192 to i32
  %194 = and i32 %193, 65535
  %195 = add nsw i32 %194, -47
  %196 = icmp ult i32 %195, 3
  br i1 %196, label %199, label %197

197:                                              ; preds = %191
  store ptr %176, ptr %107, align 8, !tbaa !325
  %198 = tail call zeroext i8 @fold_stmt_inplace(ptr noundef %5) #17
  tail call fastcc void @tidy_after_forward_propagate_addr(ptr noundef %5) #16
  br label %281

199:                                              ; preds = %191, %167, %164, %160, %156, %152, %144, %138, %134, %130
  %200 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %5) #16, !range !343
  %201 = icmp eq i32 %200, 66
  br i1 %201, label %202, label %281, !prof !547

202:                                              ; preds = %199
  %203 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %5) #16
  %204 = icmp eq ptr %203, %0
  br i1 %204, label %205, label %281, !prof !548

205:                                              ; preds = %202
  %206 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %207 = load ptr, ptr %206, align 8, !tbaa !348
  %208 = load i64, ptr %207, align 8
  %209 = and i64 %208, 65535
  %210 = icmp eq i64 %209, 45
  br i1 %210, label %211, label %281, !prof !549

211:                                              ; preds = %205
  %212 = getelementptr inbounds %struct.tree_exp, ptr %207, i64 0, i32 3
  %213 = load ptr, ptr %212, align 8, !tbaa !348
  %214 = getelementptr inbounds %struct.tree_common, ptr %213, i64 0, i32 2
  %215 = load ptr, ptr %214, align 8, !tbaa !348
  %216 = load i64, ptr %215, align 8
  %217 = and i64 %216, 65535
  %218 = icmp eq i64 %217, 15
  br i1 %218, label %219, label %281, !prof !550

219:                                              ; preds = %211
  %220 = getelementptr inbounds %struct.tree_exp, ptr %207, i64 1
  %221 = load ptr, ptr %220, align 8, !tbaa !348
  %222 = load i64, ptr %221, align 8
  %223 = and i64 %222, 65535
  %224 = icmp eq i64 %223, 23
  br i1 %224, label %225, label %281, !prof !551

225:                                              ; preds = %219
  %226 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %5) #16
  %227 = load i64, ptr %226, align 8
  %228 = and i64 %227, 65535
  %229 = icmp eq i64 %228, 23
  br i1 %229, label %230, label %258, !prof !552

230:                                              ; preds = %225
  %231 = tail call fastcc i32 @gimple_location(ptr noundef %5) #16
  %232 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %233 = load ptr, ptr %232, align 8, !tbaa !348
  %234 = tail call ptr @maybe_fold_stmt_addition(i32 noundef %231, ptr noundef %233, ptr noundef nonnull %1, ptr noundef nonnull %226) #17
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %238, !prof !553

236:                                              ; preds = %230
  %237 = load i64, ptr %226, align 8
  br label %258

238:                                              ; preds = %230
  %239 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %5) #16
  %240 = getelementptr inbounds %struct.tree_common, ptr %239, i64 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !348
  %242 = tail call ptr @unshare_expr(ptr noundef nonnull %234) #17
  %243 = getelementptr inbounds %struct.tree_common, ptr %242, i64 0, i32 2
  %244 = load ptr, ptr %243, align 8, !tbaa !348
  %245 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %241, ptr noundef %244) #17
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %247, label %255, !prof !554

247:                                              ; preds = %238
  %248 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %242) #17
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %250, label %252, !prof !555

250:                                              ; preds = %247
  %251 = tail call ptr @force_gimple_operand_gsi(ptr noundef %2, ptr noundef nonnull %242, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #17
  br label %252

252:                                              ; preds = %250, %247
  %253 = phi ptr [ %242, %247 ], [ %251, %250 ]
  %254 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %241, ptr noundef %253) #17
  br label %255

255:                                              ; preds = %238, %252
  %256 = phi ptr [ %242, %238 ], [ %254, %252 ]
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef %2, ptr noundef %256) #17
  %257 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %2) #16
  tail call fastcc void @update_stmt(ptr noundef %257) #16
  tail call fastcc void @tidy_after_forward_propagate_addr(ptr noundef %257) #16
  br label %281

258:                                              ; preds = %236, %225
  %259 = phi i64 [ %237, %236 ], [ %227, %225 ]
  %260 = and i64 %259, 65535
  %261 = icmp eq i64 %260, 141
  br i1 %261, label %262, label %281, !prof !556

262:                                              ; preds = %258
  %263 = load ptr, ptr %220, align 8, !tbaa !348
  %264 = tail call i32 @integer_zerop(ptr noundef %263) #17
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %281, label %266, !prof !557

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %268 = load ptr, ptr %267, align 8, !tbaa !348
  %269 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !348
  %271 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %268, ptr noundef %270) #17
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %281, label %273, !prof !557

273:                                              ; preds = %266
  %274 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %275 = load ptr, ptr %274, align 8, !tbaa !348
  %276 = load ptr, ptr %269, align 8, !tbaa !348
  %277 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %275, ptr noundef %276) #17
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %281, label %279, !prof !557

279:                                              ; preds = %273
  %280 = tail call fastcc zeroext i8 @forward_propagate_addr_into_variable_array_index(ptr noundef nonnull %226, ptr noundef nonnull %1, ptr noundef %2) #16, !range !337
  br label %281

281:                                              ; preds = %180, %197, %183, %255, %258, %262, %266, %273, %205, %211, %219, %199, %202, %97, %62, %66, %279, %125, %54
  %282 = phi i8 [ %55, %54 ], [ %104, %125 ], [ %280, %279 ], [ 1, %255 ], [ 1, %66 ], [ 1, %62 ], [ 1, %97 ], [ 0, %202 ], [ 0, %199 ], [ 0, %219 ], [ 0, %211 ], [ 0, %205 ], [ 0, %273 ], [ 0, %266 ], [ 0, %262 ], [ 0, %258 ], [ 0, %180 ], [ %104, %197 ], [ %104, %183 ]
  ret i8 %282
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_zero_uses(ptr noundef %0) unnamed_addr #1 !prof !558 !PGOFuncName !559 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !502
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6, !prof !560

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !320
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !561

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %2) #17
  br label %11

11:                                               ; preds = %6, %1, %9
  %12 = phi i8 [ %10, %9 ], [ 1, %1 ], [ 0, %6 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #1 !prof !562 !PGOFuncName !563 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !564
  store ptr %4, ptr %0, align 8, !tbaa !510
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #16, !range !337
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !565

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !566
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !567

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #16
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #16
  %12 = load ptr, ptr %0, align 8, !tbaa !510
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !348
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: optsize
declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !562 !PGOFuncName !568 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !348
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #15
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #17
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #16, !range !363
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28, !prof !569

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #16
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #16
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53, !prof !570

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #16
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23, !prof !571

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #16
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #16
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #16
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !prof !572, !llvm.loop !573

28:                                               ; preds = %2
  br i1 %8, label %45, label %29, !prof !574

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #16
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #16
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53, !prof !575

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #16
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40, !prof !576

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #16
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #16
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #16
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !prof !577, !llvm.loop !578

45:                                               ; preds = %28
  %46 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %5) #16
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #16
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @move_use_after_head(ptr noundef nonnull %46, ptr noundef nonnull %0, ptr noundef nonnull %0) #16
  br label %53

53:                                               ; preds = %40, %23, %29, %11, %48, %51, %45
  %54 = phi ptr [ %52, %51 ], [ %0, %48 ], [ %0, %45 ], [ %0, %11 ], [ %0, %29 ], [ %24, %23 ], [ %41, %40 ]
  %55 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !566
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58, !prof !579

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #16
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !580 !PGOFuncName !581 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !582
  %4 = load ptr, ptr %3, align 8, !tbaa !325
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 !prof !583 !PGOFuncName !584 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #16
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #16
  store i8 0, ptr %0, align 8, !tbaa !585
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !587

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 918, ptr noundef nonnull @.str.2) #17
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #17
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !587

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !585
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !588
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #16
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !589
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !590
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #16
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !591 !PGOFuncName !592 {
  %2 = load i8, ptr %0, align 8, !tbaa !585
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #9 !prof !593 !PGOFuncName !594 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5, !prof !595

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !502
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9, !prof !596

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #16
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #16
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #1 !prof !591 !PGOFuncName !597 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !598
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !599

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !600
  store ptr %7, ptr %2, align 8, !tbaa !598
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !602
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !589
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !603

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !588
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !602
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #16
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !585
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !prof !604 !PGOFuncName !605 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6, !prof !606

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 771, ptr noundef nonnull @.str.2) #17
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #16
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !590
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #16
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #6 !prof !607 !PGOFuncName !608 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !337
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !348
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !609
  %11 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  %13 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1
  %14 = select i1 %12, ptr %13, ptr null
  br label %15

15:                                               ; preds = %8, %4, %1
  %16 = phi ptr [ null, %1 ], [ null, %4 ], [ %14, %8 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #9 !prof !610 !PGOFuncName !611 {
  %2 = load ptr, ptr %0, align 8, !tbaa !612
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !613

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !502
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !502
  store ptr %2, ptr %6, align 8, !tbaa !612
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !610 !PGOFuncName !614 {
  store ptr %1, ptr %0, align 8, !tbaa !612
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !502
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !502
  store ptr %0, ptr %4, align 8, !tbaa !612
  store ptr %0, ptr %3, align 8, !tbaa !502
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !583 !PGOFuncName !615 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !348
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #10 !prof !583 !PGOFuncName !616 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !585
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !583 !PGOFuncName !617 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !348
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !618 !PGOFuncName !619 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #16
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !618 !PGOFuncName !620 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !348
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !621

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3103, ptr noundef nonnull @.str.2) #17
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !prof !604 !PGOFuncName !622 {
  %4 = and i32 %2, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !623

6:                                                ; preds = %3
  %7 = and i32 %2, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 747, ptr noundef nonnull @.str.2) #17
  br label %10

10:                                               ; preds = %3, %6, %9
  %11 = and i32 %2, 10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !623

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %14, align 8, !tbaa !624
  br label %24

15:                                               ; preds = %10
  %16 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #16
  %17 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !624
  %18 = icmp eq ptr %16, null
  br i1 %18, label %24, label %19, !prof !416

19:                                               ; preds = %15
  %20 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %16, align 8, !tbaa !625
  store ptr %23, ptr %17, align 8, !tbaa !624
  br label %24

24:                                               ; preds = %13, %22, %19, %15
  %25 = and i32 %2, 5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29, !prof !627

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %28, align 8, !tbaa !598
  br label %40

29:                                               ; preds = %24
  %30 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #16
  %31 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %30, ptr %31, align 8, !tbaa !598
  %32 = icmp ne i32 %4, 0
  %33 = icmp eq ptr %30, null
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %40, label %35, !prof !628

35:                                               ; preds = %29
  %36 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38, !prof !629

38:                                               ; preds = %35
  %39 = load ptr, ptr %30, align 8, !tbaa !600
  store ptr %39, ptr %31, align 8, !tbaa !598
  br label %40

40:                                               ; preds = %27, %38, %35, %29
  store i8 0, ptr %0, align 8, !tbaa !585
  %41 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !607 !PGOFuncName !630 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !337
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !348
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !607 !PGOFuncName !631 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !337
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !348
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !604 !PGOFuncName !632 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !337
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !627

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !348
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !633 !PGOFuncName !634 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !337
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !635

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !348
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !636 !PGOFuncName !637 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !363
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_rhs1(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !638 !PGOFuncName !639 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_assign_set_rhs_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #11 !prof !640 !PGOFuncName !641 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %0) unnamed_addr #1 !prof !642 !PGOFuncName !643 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !644 !PGOFuncName !645 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 42, label %5
    i16 41, label %5
    i16 45, label %5
    i16 46, label %5
    i16 118, label %5
    i16 43, label %5
    i16 44, label %5
  ], !prof !646

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @may_propagate_address_into_dereference(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tidy_after_forward_propagate_addr(ptr noundef %0) unnamed_addr #1 !prof !647 !PGOFuncName !648 {
  %2 = tail call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %0, ptr noundef %0) #17
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !649

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #16
  %6 = tail call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %5) #17
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  store i1 true, ptr @cfg_changed, align 1
  br label %9

9:                                                ; preds = %8, %4, %1
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 121
  br i1 %13, label %14, label %16, !prof !650

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  tail call void @recompute_tree_invariant_for_addr_expr(ptr noundef %15) #17
  br label %16

16:                                               ; preds = %14, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %0) unnamed_addr #1 !prof !651 !PGOFuncName !652 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #1 !prof !653 !PGOFuncName !654 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !655

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #16
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @maybe_fold_stmt_addition(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !656 !PGOFuncName !657 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !348
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @forward_propagate_addr_into_variable_array_index(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !658 !PGOFuncName !659 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !348
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !348
  %8 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !348
  %10 = tail call i32 @host_integerp(ptr noundef %9, i32 noundef 1) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %92, label %12, !prof !557

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !348
  %15 = tail call i32 @integer_onep(ptr noundef %9) #17
  %16 = icmp eq i32 %15, 0
  %17 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %14) #16, !range !337
  %18 = icmp eq i8 %17, 0
  br i1 %16, label %23, label %19, !prof !556

19:                                               ; preds = %12
  br i1 %18, label %82, label %20

20:                                               ; preds = %19
  %21 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %14) #16, !range !343
  %22 = icmp eq i32 %21, 65
  br i1 %22, label %92, label %82

23:                                               ; preds = %12
  br i1 %18, label %92, label %24, !prof !660

24:                                               ; preds = %23
  %25 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %14) #16, !range !343
  %26 = icmp eq i32 %25, 65
  br i1 %26, label %27, label %38, !prof !661

27:                                               ; preds = %24
  %28 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %14) #16
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 23
  br i1 %31, label %32, label %38, !prof !662

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %14) #16
  %34 = tail call i32 @tree_int_cst_equal(ptr noundef %33, ptr noundef %9) #17
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36, !prof !663

36:                                               ; preds = %32
  %37 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %14) #16
  br label %82

38:                                               ; preds = %32, %27, %24
  %39 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %14) #16, !range !343
  %40 = icmp eq i32 %39, 63
  br i1 %40, label %44, label %41, !prof !664

41:                                               ; preds = %38
  %42 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %14) #16, !range !343
  %43 = icmp eq i32 %42, 64
  br i1 %43, label %44, label %92, !prof !665

44:                                               ; preds = %41, %38
  %45 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %14) #16
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 141
  br i1 %48, label %49, label %92, !prof !666

49:                                               ; preds = %44
  %50 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %14) #16
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 23
  br i1 %53, label %54, label %92, !prof !666

54:                                               ; preds = %49
  %55 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %14) #16
  %56 = tail call ptr @div_if_zero_remainder(i32 noundef 76, ptr noundef %55, ptr noundef %9) #17
  %57 = icmp eq ptr %56, null
  br i1 %57, label %92, label %58, !prof !667

58:                                               ; preds = %54
  %59 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %14) #16
  %60 = getelementptr inbounds %struct.tree_ssa_name, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !348
  %62 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %61) #16, !range !337
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %92, label %64, !prof !668

64:                                               ; preds = %58
  %65 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %61) #16, !range !343
  %66 = icmp eq i32 %65, 65
  br i1 %66, label %67, label %92, !prof !669

67:                                               ; preds = %64
  %68 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %61) #16
  %69 = load i64, ptr %68, align 8
  %70 = and i64 %69, 65535
  %71 = icmp eq i64 %70, 23
  br i1 %71, label %72, label %92, !prof !669

72:                                               ; preds = %67
  %73 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %61) #16
  %74 = tail call i32 @tree_int_cst_equal(ptr noundef %73, ptr noundef %9) #17
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %92, label %76, !prof !669

76:                                               ; preds = %72
  %77 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %14) #16, !range !343
  %78 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !348
  %80 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %61) #16
  %81 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %77, ptr noundef %79, ptr noundef %80, ptr noundef nonnull %56) #17
  br label %82

82:                                               ; preds = %76, %19, %20, %36
  %83 = phi ptr [ %37, %36 ], [ %81, %76 ], [ %0, %20 ], [ %0, %19 ]
  %84 = tail call ptr @force_gimple_operand_gsi(ptr noundef %2, ptr noundef %83, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #17
  %85 = tail call ptr @unshare_expr(ptr noundef nonnull %1) #17
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef %2, ptr noundef %85) #17
  %86 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %2) #16
  %87 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %86) #16
  %88 = getelementptr inbounds %struct.tree_exp, ptr %87, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !348
  %90 = getelementptr inbounds %struct.tree_exp, ptr %89, i64 1
  store ptr %84, ptr %90, align 8, !tbaa !348
  %91 = tail call zeroext i8 @fold_stmt_inplace(ptr noundef %86) #17
  tail call fastcc void @tidy_after_forward_propagate_addr(ptr noundef %86) #16
  br label %92

92:                                               ; preds = %58, %64, %67, %72, %41, %44, %49, %54, %23, %20, %3, %82
  %93 = phi i8 [ 1, %82 ], [ 0, %3 ], [ 0, %20 ], [ 0, %23 ], [ 0, %54 ], [ 0, %49 ], [ 0, %44 ], [ 0, %41 ], [ 0, %72 ], [ 0, %67 ], [ 0, %64 ], [ 0, %58 ]
  ret i8 %93
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 !prof !670 !PGOFuncName !671 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !337
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !672

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9, !prof !673

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1665, ptr noundef nonnull @.str.2) #17
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #16
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !325
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !674 !PGOFuncName !675 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !348
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !676 !PGOFuncName !677 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !337
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5, !prof !678

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #16
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: optsize
declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @recompute_tree_invariant_for_addr_expr(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @div_if_zero_remainder(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_prop_source_stmt(ptr noundef %0, i8 noundef zeroext %1, ptr noundef writeonly %2) unnamed_addr #1 !prof !679 !PGOFuncName !680 {
  %4 = icmp eq i8 %1, 0
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !348
  %9 = tail call fastcc zeroext i8 @has_single_use(ptr noundef %0) #16
  %10 = icmp ne i8 %9, 0
  %11 = or i1 %10, %4
  br i1 %11, label %12, label %64, !prof !681

12:                                               ; preds = %3
  %13 = zext i1 %10 to i8
  br label %14

14:                                               ; preds = %12, %56
  %15 = phi i8 [ %13, %12 ], [ %63, %56 ]
  %16 = phi ptr [ %8, %12 ], [ %59, %56 ]
  %17 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %16) #16, !range !337
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %64, label %19, !prof !682

19:                                               ; preds = %14
  %20 = tail call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef %16) #17
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %54, !prof !683

22:                                               ; preds = %19
  br i1 %6, label %23, label %24, !prof !684

23:                                               ; preds = %22
  store i8 %15, ptr %2, align 1, !tbaa !348
  br label %24

24:                                               ; preds = %23, %22
  %25 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %16) #16
  %26 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %16) #16, !range !343
  %27 = icmp eq i32 %26, 116
  br i1 %27, label %31, label %28, !prof !685

28:                                               ; preds = %24
  %29 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %16) #16, !range !343
  %30 = icmp eq i32 %29, 113
  br i1 %30, label %31, label %64, !prof !686

31:                                               ; preds = %28, %24
  %32 = load i64, ptr %25, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 141
  br i1 %34, label %35, label %64, !prof !687

35:                                               ; preds = %31
  %36 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %16) #16
  %37 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !348
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 10
  br i1 %41, label %49, label %42, !prof !688

42:                                               ; preds = %35
  %43 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %16) #16
  %44 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !348
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 12
  br i1 %48, label %49, label %64, !prof !689

49:                                               ; preds = %42, %35
  %50 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !348
  %52 = load i64, ptr %51, align 8
  %53 = trunc i64 %52 to i16
  switch i16 %53, label %64 [
    i16 10, label %56
    i16 12, label %56
  ], !prof !690

54:                                               ; preds = %19
  %55 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %16) #16
  br label %56

56:                                               ; preds = %49, %49, %54
  %57 = phi ptr [ %55, %54 ], [ %25, %49 ], [ %25, %49 ]
  %58 = getelementptr inbounds %struct.tree_ssa_name, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !348
  %60 = tail call fastcc zeroext i8 @has_single_use(ptr noundef %57) #16
  %61 = icmp ne i8 %60, 0
  %62 = or i1 %61, %4
  %63 = select i1 %61, i8 %15, i8 0, !prof !691
  br i1 %62, label %14, label %64, !prof !692

64:                                               ; preds = %14, %49, %42, %31, %28, %56, %3
  %65 = phi ptr [ null, %3 ], [ null, %14 ], [ %16, %49 ], [ %16, %42 ], [ %16, %31 ], [ %16, %28 ], [ null, %56 ]
  ret ptr %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @can_propagate_from(ptr noundef %0) unnamed_addr #1 !prof !693 !PGOFuncName !694 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #15
  %3 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #16, !range !337
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !695

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 266, ptr noundef nonnull @.str.2) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #16, !range !337
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %61, !prof !696

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !343
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !320
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %61, label %15, !prof !697

15:                                               ; preds = %9
  %16 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !343
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !320
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %61, label %21, !prof !698

21:                                               ; preds = %15
  %22 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #17
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24, !prof !699

24:                                               ; preds = %21
  %25 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %26 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %25) #17
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %61, !prof !700

28:                                               ; preds = %24, %21
  %29 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 1) #16
  %30 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #16
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %42, !prof !701

32:                                               ; preds = %28, %38
  %33 = phi ptr [ %39, %38 ], [ %29, %28 ]
  %34 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %33) #16
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 4194304
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %61, !prof !702

38:                                               ; preds = %32
  %39 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %2) #16
  %40 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %32, label %42, !prof !703, !llvm.loop !704

42:                                               ; preds = %38, %28
  %43 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !343
  %44 = icmp eq i32 %43, 116
  br i1 %44, label %48, label %45, !prof !705

45:                                               ; preds = %42
  %46 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !343
  %47 = icmp eq i32 %46, 113
  br i1 %47, label %48, label %61, !prof !706

48:                                               ; preds = %45, %42
  %49 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %50 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !348
  %52 = load i64, ptr %51, align 8
  %53 = trunc i64 %52 to i16
  switch i16 %53, label %60 [
    i16 10, label %54
    i16 12, label %54
  ], !prof !707

54:                                               ; preds = %48, %48
  %55 = getelementptr inbounds %struct.tree_common, ptr %51, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !348
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 65535
  %59 = icmp eq i64 %58, 20
  br i1 %59, label %61, label %60, !prof !708

60:                                               ; preds = %48, %54
  br label %61

61:                                               ; preds = %32, %45, %60, %54, %24, %9, %15, %6
  %62 = phi i8 [ 0, %6 ], [ 0, %15 ], [ 0, %9 ], [ 1, %24 ], [ 0, %54 ], [ 1, %60 ], [ 1, %45 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #15
  ret i8 %62
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rhs_to_tree(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !709 !PGOFuncName !710 {
  %3 = tail call fastcc i32 @gimple_location(ptr noundef %1) #16
  %4 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #16, !range !343
  %5 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %4) #16, !range !363
  %6 = trunc i32 %5 to i8
  switch i8 %6, label %16 [
    i8 1, label %7
    i8 2, label %11
    i8 3, label %14
  ], !prof !711

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #16
  %9 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %1) #16
  %10 = tail call ptr @fold_build2_stat_loc(i32 noundef %3, i32 noundef %4, ptr noundef %0, ptr noundef %8, ptr noundef %9) #17
  br label %17

11:                                               ; preds = %2
  %12 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #16
  %13 = tail call ptr @build1_stat(i32 noundef %4, ptr noundef %0, ptr noundef %12) #17
  br label %17

14:                                               ; preds = %2
  %15 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #16
  br label %17

16:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 352, ptr noundef nonnull @.str.2) #17
  br label %17

17:                                               ; preds = %16, %14, %11, %7
  %18 = phi ptr [ %10, %7 ], [ %13, %11 ], [ %15, %14 ], [ null, %16 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @combine_cond_expr_cond(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #1 !prof !712 !PGOFuncName !713 {
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !320
  %10 = icmp eq i32 %9, 5
  br i1 %10, label %12, label %11, !prof !714

11:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 370, ptr noundef nonnull @.str.2) #17
  br label %12

12:                                               ; preds = %6, %11
  %13 = tail call ptr @fold_binary_loc(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15, !prof !715

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !348
  %18 = load i64, ptr %17, align 8
  %19 = load i64, ptr %2, align 8
  %20 = xor i64 %19, %18
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %24, label %23, !prof !716

23:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 377, ptr noundef nonnull @.str.2) #17
  br label %24

24:                                               ; preds = %15, %23
  %25 = tail call ptr @canonicalize_cond_expr_cond(ptr noundef nonnull %13) #17
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27, !prof !717

27:                                               ; preds = %24
  %28 = icmp eq i8 %5, 0
  br i1 %28, label %32, label %29, !prof !718

29:                                               ; preds = %27
  %30 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %25) #17
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32, !prof !719

32:                                               ; preds = %29, %27
  br label %33

33:                                               ; preds = %24, %29, %12, %32
  %34 = phi ptr [ %25, %32 ], [ null, %12 ], [ null, %29 ], [ null, %24 ]
  ret ptr %34
}

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_prop_source_from_use(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #1 !prof !720 !PGOFuncName !721 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  br label %5

5:                                                ; preds = %19, %2
  %6 = phi ptr [ %0, %2 ], [ %17, %19 ]
  %7 = call fastcc zeroext i8 @has_zero_uses(ptr noundef %6) #16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %23, label %9, !prof !722

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !348
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %23, label %13, !prof !723

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %11) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !336
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  call void @release_defs(ptr noundef %11) #17
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #17
  %14 = call zeroext i8 @gimple_assign_copy_p(ptr noundef %11) #17
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %23, label %16, !prof !724

16:                                               ; preds = %13
  %17 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %11) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19, !prof !416

19:                                               ; preds = %16
  %20 = load i64, ptr %17, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 141
  br i1 %22, label %5, label %23, !prof !725, !llvm.loop !726

23:                                               ; preds = %13, %19, %16, %9, %5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !693 !PGOFuncName !727 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !337
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !695

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 14
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i8 [ %8, %4 ], [ 0, %1 ]
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @canonicalize_cond_expr_cond(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_copy_p(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_prop_dest_stmt(ptr noundef %0, ptr noundef writeonly %1) unnamed_addr #1 !prof !417 !PGOFuncName !728 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %5 = call fastcc zeroext i8 @single_imm_use(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %26, label %7, !prof !729

7:                                                ; preds = %2, %16
  %8 = phi ptr [ %18, %16 ], [ %0, %2 ]
  %9 = load ptr, ptr %4, align 8, !tbaa !325
  %10 = call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef %9) #17
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %21, label %12, !prof !730

12:                                               ; preds = %7
  %13 = load ptr, ptr %4, align 8, !tbaa !325
  %14 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %13) #16
  %15 = icmp eq ptr %14, %8
  br i1 %15, label %16, label %21, !prof !731

16:                                               ; preds = %12
  %17 = load ptr, ptr %4, align 8, !tbaa !325
  %18 = call fastcc ptr @gimple_assign_lhs(ptr noundef %17) #16
  %19 = call fastcc zeroext i8 @single_imm_use(ptr noundef %18, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %26, label %7, !prof !732

21:                                               ; preds = %7, %12
  %22 = icmp eq ptr %1, null
  br i1 %22, label %24, label %23, !prof !733

23:                                               ; preds = %21
  store ptr %8, ptr %1, align 8, !tbaa !325
  br label %24

24:                                               ; preds = %23, %21
  %25 = load ptr, ptr %4, align 8, !tbaa !325
  br label %26

26:                                               ; preds = %16, %2, %24
  %27 = phi ptr [ %25, %24 ], [ null, %2 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret ptr %27
}

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @invert_tree_comparison(i32 noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @single_imm_use(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !734 !PGOFuncName !735 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !502
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %9, !prof !736

8:                                                ; preds = %22, %13, %3
  store ptr null, ptr %1, align 8, !tbaa !325
  store ptr null, ptr %2, align 8, !tbaa !325
  br label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !502
  %12 = icmp eq ptr %4, %11
  br i1 %12, label %13, label %22, !prof !737

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !348
  %16 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %15) #16, !range !337
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %8, !prof !738

18:                                               ; preds = %13
  store ptr %6, ptr %1, align 8, !tbaa !325
  %19 = load ptr, ptr %5, align 8, !tbaa !502
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !348
  store ptr %21, ptr %2, align 8, !tbaa !325
  br label %27

22:                                               ; preds = %9
  %23 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !320
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %8, label %25, !prof !739

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #17
  br label %27

27:                                               ; preds = %25, %18, %8
  %28 = phi i8 [ 0, %8 ], [ 1, %18 ], [ %26, %25 ]
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) unnamed_addr #1 !prof !740 !PGOFuncName !741 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #16, !range !337
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4, !prof !742

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !343
  %6 = icmp eq i32 %5, 113
  %7 = and i32 %5, 65533
  %8 = icmp eq i32 %7, 116
  %9 = or i1 %6, %8
  %10 = icmp eq i32 %5, 77
  %11 = or i1 %10, %9
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %1, %4
  %14 = phi i8 [ %12, %4 ], [ 0, %1 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #1 !prof !743 !PGOFuncName !744 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !363
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ], !prof !745

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #16
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !343
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13, !prof !746

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !348
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #17
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !348
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !325
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !325
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #1 !prof !607 !PGOFuncName !747 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !348
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !348
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !348
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 !prof !607 !PGOFuncName !748 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #1 !prof !451 !PGOFuncName !749 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_switch_set_index(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !750 !PGOFuncName !751 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %10 [
    i16 32, label %16
    i16 34, label %16
    i16 36, label %16
    i16 141, label %5
  ], !prof !752

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !348
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %10 [
    i16 32, label %16
    i16 34, label %16
    i16 36, label %16
  ], !prof !753

10:                                               ; preds = %5, %2
  %11 = and i64 %3, 65535
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !320
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3203, ptr noundef nonnull @.str.2) #17
  br label %16

16:                                               ; preds = %5, %5, %5, %2, %2, %2, %10, %15
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !754 !PGOFuncName !755 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #1 !prof !756 !PGOFuncName !757 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #1 !prof !758 !PGOFuncName !759 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: optsize
declare void @gimple_cond_set_condition_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!317}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316}
!36 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @gsi_start_bb, i64 976653}
!37 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @gsi_end_p, i64 3893932}
!38 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @gsi_stmt, i64 2917341}
!39 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @is_gimple_assign, i64 2917279}
!40 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @gimple_assign_lhs, i64 1843855}
!41 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @gimple_assign_rhs1, i64 1843855}
!42 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @gsi_next, i64 2912727}
!43 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @gimple_assign_rhs_code, i64 14124690}
!44 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @tree_strip_nop_conversions, i64 29784}
!45 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @stmt_references_abnormal_ssa_name, i64 29784}
!46 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @forward_propagate_addr_expr, i64 29783}
!47 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @release_defs, i64 4470}
!48 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @gsi_remove, i64 4470}
!49 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @is_gimple_min_invariant, i64 54645}
!50 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @fold_stmt_inplace, i64 144}
!51 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @update_stmt, i64 144}
!52 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @simplify_not_neg_expr, i64 4965}
!53 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @fold_defer_overflow_warnings, i64 566525}
!54 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @forward_propagate_into_cond, i64 62}
!55 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @fold_undefer_overflow_warnings, i64 566525}
!56 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @forward_propagate_comparison, i64 50453}
!57 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @simplify_bitwise_and, i64 66835}
!58 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @gimple_code, i64 1073425}
!59 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @simplify_gimple_switch, i64 10739}
!60 = !{ptr @tree_ssa_forward_propagate_single_use_vars, ptr @forward_propagate_into_gimple_cond, i64 566463}
!61 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 976686}
!62 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 976686}
!63 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 4162611}
!64 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 2034276}
!65 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 13255962}
!66 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 16331549}
!67 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 16331549}
!68 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 10549793}
!69 = !{ptr @forward_propagate_addr_expr, ptr @gimple_bb, i64 47356}
!70 = !{ptr @forward_propagate_addr_expr, ptr @has_single_use, i64 30983}
!71 = !{ptr @forward_propagate_addr_expr, ptr @first_imm_use_stmt, i64 30983}
!72 = !{ptr @forward_propagate_addr_expr, ptr @end_imm_use_stmt_p, i64 72552}
!73 = !{ptr @forward_propagate_addr_expr, ptr @gimple_code, i64 41569}
!74 = !{ptr @forward_propagate_addr_expr, ptr @is_gimple_debug, i64 25196}
!75 = !{ptr @forward_propagate_addr_expr, ptr @gsi_for_stmt, i64 15503}
!76 = !{ptr @forward_propagate_addr_expr, ptr @forward_propagate_addr_expr_1, i64 15502}
!77 = !{ptr @forward_propagate_addr_expr, ptr @gsi_stmt, i64 15596}
!78 = !{ptr @forward_propagate_addr_expr, ptr @update_stmt, i64 15596}
!79 = !{ptr @forward_propagate_addr_expr, ptr @gimple_assign_rhs1, i64 15502}
!80 = !{ptr @forward_propagate_addr_expr, ptr @gimple_assign_lhs, i64 8842}
!81 = !{ptr @forward_propagate_addr_expr, ptr @has_zero_uses, i64 1}
!82 = !{ptr @forward_propagate_addr_expr, ptr @release_defs, i64 1}
!83 = !{ptr @forward_propagate_addr_expr, ptr @gsi_remove, i64 1}
!84 = !{ptr @forward_propagate_addr_expr, ptr @next_imm_use_stmt, i64 41569}
!85 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 23489}
!86 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 23488}
!87 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 23488}
!88 = !{ptr @simplify_not_neg_expr, ptr @gsi_stmt, i64 4964}
!89 = !{ptr @simplify_not_neg_expr, ptr @gimple_assign_rhs1, i64 4965}
!90 = !{ptr @simplify_not_neg_expr, ptr @is_gimple_assign, i64 4964}
!91 = !{ptr @simplify_not_neg_expr, ptr @gimple_assign_rhs_code, i64 8784}
!92 = !{ptr @forward_propagate_into_cond, ptr @gsi_stmt, i64 62}
!93 = !{ptr @forward_propagate_into_cond, ptr @gimple_location, i64 61}
!94 = !{ptr @forward_propagate_into_cond, ptr @gimple_assign_rhs1, i64 63}
!95 = !{ptr @forward_propagate_into_cond, ptr @get_prop_source_stmt, i64 1}
!96 = !{ptr @forward_propagate_into_cond, ptr @can_propagate_from, i64 1}
!97 = !{ptr @forward_propagate_into_cond, ptr @build_int_cst, i64 1}
!98 = !{ptr @forward_propagate_into_cond, ptr @combine_cond_expr_cond, i64 1}
!99 = !{ptr @forward_propagate_into_cond, ptr @fwrite, i64 3}
!100 = !{ptr @forward_propagate_into_cond, ptr @print_generic_expr, i64 2}
!101 = !{ptr @forward_propagate_into_cond, ptr @unshare_expr, i64 1}
!102 = !{ptr @forward_propagate_into_cond, ptr @gimple_assign_set_rhs_from_tree, i64 1}
!103 = !{ptr @forward_propagate_into_cond, ptr @update_stmt, i64 1}
!104 = !{ptr @forward_propagate_into_cond, ptr @remove_prop_source_from_use, i64 1}
!105 = !{ptr @forward_propagate_into_cond, ptr @is_gimple_min_invariant, i64 1}
!106 = !{ptr @forward_propagate_comparison, ptr @gimple_assign_lhs, i64 53301}
!107 = !{ptr @forward_propagate_comparison, ptr @gimple_assign_rhs1, i64 101666}
!108 = !{ptr @forward_propagate_comparison, ptr @gimple_assign_rhs2, i64 55591}
!109 = !{ptr @forward_propagate_comparison, ptr @get_prop_dest_stmt, i64 50452}
!110 = !{ptr @forward_propagate_comparison, ptr @is_gimple_assign, i64 48823}
!111 = !{ptr @forward_propagate_comparison, ptr @gimple_assign_rhs_code, i64 163262}
!112 = !{ptr @forward_propagate_comparison, ptr @build2_stat, i64 740}
!113 = !{ptr @forward_propagate_comparison, ptr @gimple_location, i64 10}
!114 = !{ptr @forward_propagate_comparison, ptr @combine_cond_expr_cond, i64 10}
!115 = !{ptr @forward_propagate_comparison, ptr @invert_tree_comparison, i64 1}
!116 = !{ptr @forward_propagate_comparison, ptr @gsi_for_stmt, i64 737}
!117 = !{ptr @forward_propagate_comparison, ptr @unshare_expr, i64 737}
!118 = !{ptr @forward_propagate_comparison, ptr @gimple_assign_set_rhs_from_tree, i64 737}
!119 = !{ptr @forward_propagate_comparison, ptr @gsi_stmt, i64 737}
!120 = !{ptr @forward_propagate_comparison, ptr @update_stmt, i64 737}
!121 = !{ptr @forward_propagate_comparison, ptr @remove_prop_source_from_use, i64 737}
!122 = !{ptr @simplify_bitwise_and, ptr @gimple_assign_rhs1, i64 74657}
!123 = !{ptr @simplify_bitwise_and, ptr @gimple_assign_rhs2, i64 66837}
!124 = !{ptr @simplify_bitwise_and, ptr @gimple_assign_cast_p, i64 56208}
!125 = !{ptr @simplify_bitwise_and, ptr @gimple_expr_type, i64 23446}
!126 = !{ptr @simplify_bitwise_and, ptr @gimple_location, i64 57481}
!127 = !{ptr @simplify_bitwise_and, ptr @gimple_assign_lhs, i64 57481}
!128 = !{ptr @simplify_bitwise_and, ptr @fold_binary_loc, i64 57481}
!129 = !{ptr @simplify_bitwise_and, ptr @is_gimple_min_invariant, i64 12}
!130 = !{ptr @simplify_bitwise_and, ptr @gimple_assign_set_rhs_from_tree, i64 1}
!131 = !{ptr @simplify_bitwise_and, ptr @update_stmt, i64 1}
!132 = !{ptr @simplify_gimple_switch, ptr @gimple_switch_index, i64 10738}
!133 = !{ptr @simplify_gimple_switch, ptr @is_gimple_assign, i64 10737}
!134 = !{ptr @simplify_gimple_switch, ptr @gimple_assign_rhs_code, i64 9258}
!135 = !{ptr @simplify_gimple_switch, ptr @gimple_assign_rhs1, i64 1013}
!136 = !{ptr @simplify_gimple_switch, ptr @gimple_switch_set_index, i64 967}
!137 = !{ptr @simplify_gimple_switch, ptr @update_stmt, i64 967}
!138 = !{ptr @forward_propagate_into_gimple_cond, ptr @gimple_location, i64 566483}
!139 = !{ptr @forward_propagate_into_gimple_cond, ptr @gimple_cond_code, i64 572176}
!140 = !{ptr @forward_propagate_into_gimple_cond, ptr @gimple_cond_lhs, i64 1210294}
!141 = !{ptr @forward_propagate_into_gimple_cond, ptr @get_prop_source_stmt, i64 642544}
!142 = !{ptr @forward_propagate_into_gimple_cond, ptr @can_propagate_from, i64 452654}
!143 = !{ptr @forward_propagate_into_gimple_cond, ptr @gimple_cond_rhs, i64 756495}
!144 = !{ptr @forward_propagate_into_gimple_cond, ptr @rhs_to_tree, i64 130843}
!145 = !{ptr @forward_propagate_into_gimple_cond, ptr @combine_cond_expr_cond, i64 132581}
!146 = !{ptr @forward_propagate_into_gimple_cond, ptr @fold_convert_loc, i64 1738}
!147 = !{ptr @forward_propagate_into_gimple_cond, ptr @build2_stat, i64 1}
!148 = !{ptr @forward_propagate_into_gimple_cond, ptr @fwrite, i64 3}
!149 = !{ptr @forward_propagate_into_gimple_cond, ptr @print_generic_expr, i64 2}
!150 = !{ptr @forward_propagate_into_gimple_cond, ptr @unshare_expr, i64 5692}
!151 = !{ptr @forward_propagate_into_gimple_cond, ptr @gimple_cond_set_condition_from_tree, i64 5692}
!152 = !{ptr @forward_propagate_into_gimple_cond, ptr @update_stmt, i64 5692}
!153 = !{ptr @forward_propagate_into_gimple_cond, ptr @remove_prop_source_from_use, i64 5692}
!154 = !{ptr @forward_propagate_into_gimple_cond, ptr @is_gimple_min_invariant, i64 5692}
!155 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 17515064}
!156 = !{ptr @gimple_op, ptr @gimple_ops, i64 17515063}
!157 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 17738858}
!158 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 17545801}
!159 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!160 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 17545801}
!161 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 17545801}
!162 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 16331549}
!163 = !{ptr @has_single_use, ptr @is_gimple_debug, i64 464205}
!164 = !{ptr @has_single_use, ptr @single_imm_use_1, i64 1}
!165 = !{ptr @first_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 30983}
!166 = !{ptr @first_imm_use_stmt, ptr @link_use_stmts_after, i64 29131}
!167 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 540486}
!168 = !{ptr @forward_propagate_addr_expr_1, ptr @gsi_stmt, i64 15672}
!169 = !{ptr @forward_propagate_addr_expr_1, ptr @fancy_abort, i64 1}
!170 = !{ptr @forward_propagate_addr_expr_1, ptr @gimple_assign_lhs, i64 15672}
!171 = !{ptr @forward_propagate_addr_expr_1, ptr @gimple_assign_rhs_code, i64 18867}
!172 = !{ptr @forward_propagate_addr_expr_1, ptr @gimple_assign_rhs1, i64 16328}
!173 = !{ptr @forward_propagate_addr_expr_1, ptr @useless_type_conversion_p, i64 9132}
!174 = !{ptr @forward_propagate_addr_expr_1, ptr @is_gimple_min_invariant, i64 6549}
!175 = !{ptr @forward_propagate_addr_expr_1, ptr @forward_propagate_addr_expr, i64 6665}
!176 = !{ptr @forward_propagate_addr_expr_1, ptr @unshare_expr, i64 6328}
!177 = !{ptr @forward_propagate_addr_expr_1, ptr @gimple_assign_set_rhs1, i64 766}
!178 = !{ptr @forward_propagate_addr_expr_1, ptr @gimple_assign_set_rhs_code, i64 715}
!179 = !{ptr @forward_propagate_addr_expr_1, ptr @gimple_assign_lhs_ptr, i64 8910}
!180 = !{ptr @forward_propagate_addr_expr_1, ptr @handled_component_p, i64 20460}
!181 = !{ptr @forward_propagate_addr_expr_1, ptr @may_propagate_address_into_dereference, i64 5727}
!182 = !{ptr @forward_propagate_addr_expr_1, ptr @fold_stmt_inplace, i64 5392}
!183 = !{ptr @forward_propagate_addr_expr_1, ptr @tidy_after_forward_propagate_addr, i64 5612}
!184 = !{ptr @forward_propagate_addr_expr_1, ptr @gimple_assign_rhs1_ptr, i64 8024}
!185 = !{ptr @forward_propagate_addr_expr_1, ptr @operand_equal_p, i64 215}
!186 = !{ptr @forward_propagate_addr_expr_1, ptr @get_alias_set, i64 114}
!187 = !{ptr @forward_propagate_addr_expr_1, ptr @fold_build1_stat_loc, i64 52}
!188 = !{ptr @forward_propagate_addr_expr_1, ptr @force_gimple_operand_gsi, i64 52}
!189 = !{ptr @forward_propagate_addr_expr_1, ptr @gimple_assign_rhs2, i64 357}
!190 = !{ptr @forward_propagate_addr_expr_1, ptr @gimple_location, i64 169}
!191 = !{ptr @forward_propagate_addr_expr_1, ptr @maybe_fold_stmt_addition, i64 169}
!192 = !{ptr @forward_propagate_addr_expr_1, ptr @fold_convert_loc, i64 46}
!193 = !{ptr @forward_propagate_addr_expr_1, ptr @gimple_assign_set_rhs_from_tree, i64 169}
!194 = !{ptr @forward_propagate_addr_expr_1, ptr @update_stmt, i64 169}
!195 = !{ptr @forward_propagate_addr_expr_1, ptr @integer_zerop, i64 188}
!196 = !{ptr @forward_propagate_addr_expr_1, ptr @forward_propagate_addr_into_variable_array_index, i64 186}
!197 = !{ptr @has_zero_uses, ptr @has_zero_uses_1, i64 1}
!198 = !{ptr @next_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 41569}
!199 = !{ptr @next_imm_use_stmt, ptr @delink_imm_use, i64 29131}
!200 = !{ptr @next_imm_use_stmt, ptr @link_use_stmts_after, i64 12437}
!201 = !{ptr @link_use_stmts_after, ptr @get_use_from_ptr, i64 114913}
!202 = !{ptr @link_use_stmts_after, ptr @is_gimple_reg, i64 41569}
!203 = !{ptr @link_use_stmts_after, ptr @gimple_code, i64 41569}
!204 = !{ptr @link_use_stmts_after, ptr @op_iter_init_phiuse, i64 3877}
!205 = !{ptr @link_use_stmts_after, ptr @op_iter_done, i64 114911}
!206 = !{ptr @link_use_stmts_after, ptr @move_use_after_head, i64 41697}
!207 = !{ptr @link_use_stmts_after, ptr @op_iter_next_use, i64 73343}
!208 = !{ptr @link_use_stmts_after, ptr @op_iter_init_use, i64 37691}
!209 = !{ptr @link_use_stmts_after, ptr @gimple_vuse_op, i64 1}
!210 = !{ptr @link_use_stmts_after, ptr @delink_imm_use, i64 12437}
!211 = !{ptr @link_use_stmts_after, ptr @link_imm_use_to_list, i64 41569}
!212 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_result, i64 3876}
!213 = !{ptr @op_iter_init_phiuse, ptr @clear_and_done_ssa_iter, i64 3876}
!214 = !{ptr @op_iter_init_phiuse, ptr @fancy_abort, i64 1}
!215 = !{ptr @op_iter_init_phiuse, ptr @is_gimple_reg, i64 3876}
!216 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_num_args, i64 3875}
!217 = !{ptr @op_iter_init_phiuse, ptr @op_iter_next_use, i64 3875}
!218 = !{ptr @move_use_after_head, ptr @delink_imm_use, i64 22}
!219 = !{ptr @move_use_after_head, ptr @link_imm_use_to_list, i64 22}
!220 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 10353}
!221 = !{ptr @op_iter_init_use, ptr @fancy_abort, i64 2}
!222 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 169568}
!223 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 169568}
!224 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 10352}
!225 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!226 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 1}
!227 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 1}
!228 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 169567}
!229 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 169563}
!230 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 169568}
!231 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 169565}
!232 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 625793}
!233 = !{ptr @gimple_assign_set_rhs1, ptr @gimple_set_op, i64 220}
!234 = !{ptr @gimple_assign_lhs_ptr, ptr @gimple_op_ptr, i64 15548}
!235 = !{ptr @tidy_after_forward_propagate_addr, ptr @maybe_clean_or_replace_eh_stmt, i64 9913}
!236 = !{ptr @tidy_after_forward_propagate_addr, ptr @gimple_bb, i64 1}
!237 = !{ptr @tidy_after_forward_propagate_addr, ptr @gimple_purge_dead_eh_edges, i64 1}
!238 = !{ptr @tidy_after_forward_propagate_addr, ptr @gimple_assign_rhs1, i64 10404}
!239 = !{ptr @tidy_after_forward_propagate_addr, ptr @recompute_tree_invariant_for_addr_expr, i64 491}
!240 = !{ptr @gimple_assign_rhs1_ptr, ptr @gimple_op_ptr, i64 14002}
!241 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 231773}
!242 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 231772}
!243 = !{ptr @forward_propagate_addr_into_variable_array_index, ptr @host_integerp, i64 329}
!244 = !{ptr @forward_propagate_addr_into_variable_array_index, ptr @integer_onep, i64 328}
!245 = !{ptr @forward_propagate_addr_into_variable_array_index, ptr @is_gimple_assign, i64 417}
!246 = !{ptr @forward_propagate_addr_into_variable_array_index, ptr @gimple_assign_rhs_code, i64 708}
!247 = !{ptr @forward_propagate_addr_into_variable_array_index, ptr @gimple_assign_rhs2, i64 779}
!248 = !{ptr @forward_propagate_addr_into_variable_array_index, ptr @tree_int_cst_equal, i64 298}
!249 = !{ptr @forward_propagate_addr_into_variable_array_index, ptr @gimple_assign_rhs1, i64 400}
!250 = !{ptr @forward_propagate_addr_into_variable_array_index, ptr @div_if_zero_remainder, i64 90}
!251 = !{ptr @forward_propagate_addr_into_variable_array_index, ptr @fold_build2_stat_loc, i64 1}
!252 = !{ptr @forward_propagate_addr_into_variable_array_index, ptr @force_gimple_operand_gsi, i64 110}
!253 = !{ptr @forward_propagate_addr_into_variable_array_index, ptr @unshare_expr, i64 110}
!254 = !{ptr @forward_propagate_addr_into_variable_array_index, ptr @gimple_assign_set_rhs_from_tree, i64 110}
!255 = !{ptr @forward_propagate_addr_into_variable_array_index, ptr @gsi_stmt, i64 110}
!256 = !{ptr @forward_propagate_addr_into_variable_array_index, ptr @fold_stmt_inplace, i64 110}
!257 = !{ptr @forward_propagate_addr_into_variable_array_index, ptr @tidy_after_forward_propagate_addr, i64 110}
!258 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 1187}
!259 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 1186}
!260 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!261 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 1187}
!262 = !{ptr @gimple_op_ptr, ptr @gimple_has_ops, i64 29550}
!263 = !{ptr @gimple_op_ptr, ptr @gimple_ops, i64 29549}
!264 = !{ptr @get_prop_source_stmt, ptr @has_single_use, i64 667842}
!265 = !{ptr @get_prop_source_stmt, ptr @is_gimple_assign, i64 667661}
!266 = !{ptr @get_prop_source_stmt, ptr @gimple_assign_ssa_name_copy_p, i64 476324}
!267 = !{ptr @get_prop_source_stmt, ptr @gimple_assign_rhs1, i64 476324}
!268 = !{ptr @get_prop_source_stmt, ptr @gimple_assign_rhs_code, i64 896913}
!269 = !{ptr @get_prop_source_stmt, ptr @gimple_assign_lhs, i64 52675}
!270 = !{ptr @can_propagate_from, ptr @is_gimple_assign, i64 456228}
!271 = !{ptr @can_propagate_from, ptr @fancy_abort, i64 1}
!272 = !{ptr @can_propagate_from, ptr @gimple_has_volatile_ops, i64 456228}
!273 = !{ptr @can_propagate_from, ptr @gimple_assign_rhs_code, i64 896388}
!274 = !{ptr @can_propagate_from, ptr @gimple_assign_single_p, i64 131874}
!275 = !{ptr @can_propagate_from, ptr @gimple_assign_rhs1, i64 23777}
!276 = !{ptr @can_propagate_from, ptr @is_gimple_min_invariant, i64 425}
!277 = !{ptr @can_propagate_from, ptr @op_iter_init_use, i64 131873}
!278 = !{ptr @can_propagate_from, ptr @op_iter_done, i64 294597}
!279 = !{ptr @can_propagate_from, ptr @get_use_from_ptr, i64 162725}
!280 = !{ptr @can_propagate_from, ptr @op_iter_next_use, i64 162724}
!281 = !{ptr @rhs_to_tree, ptr @gimple_location, i64 131875}
!282 = !{ptr @rhs_to_tree, ptr @gimple_assign_rhs_code, i64 131875}
!283 = !{ptr @rhs_to_tree, ptr @get_gimple_rhs_class, i64 131875}
!284 = !{ptr @rhs_to_tree, ptr @gimple_assign_rhs1, i64 131874}
!285 = !{ptr @rhs_to_tree, ptr @gimple_assign_rhs2, i64 107924}
!286 = !{ptr @rhs_to_tree, ptr @fold_build2_stat_loc, i64 107924}
!287 = !{ptr @rhs_to_tree, ptr @build1_stat, i64 23526}
!288 = !{ptr @rhs_to_tree, ptr @fancy_abort, i64 1}
!289 = !{ptr @combine_cond_expr_cond, ptr @fancy_abort, i64 2}
!290 = !{ptr @combine_cond_expr_cond, ptr @fold_binary_loc, i64 137395}
!291 = !{ptr @combine_cond_expr_cond, ptr @canonicalize_cond_expr_cond, i64 62395}
!292 = !{ptr @combine_cond_expr_cond, ptr @is_gimple_min_invariant, i64 13722}
!293 = !{ptr @remove_prop_source_from_use, ptr @has_zero_uses, i64 7010}
!294 = !{ptr @remove_prop_source_from_use, ptr @gsi_for_stmt, i64 6335}
!295 = !{ptr @remove_prop_source_from_use, ptr @release_defs, i64 6335}
!296 = !{ptr @remove_prop_source_from_use, ptr @gsi_remove, i64 6335}
!297 = !{ptr @remove_prop_source_from_use, ptr @gimple_assign_copy_p, i64 6335}
!298 = !{ptr @remove_prop_source_from_use, ptr @gimple_assign_rhs1, i64 1820}
!299 = !{ptr @gimple_has_volatile_ops, ptr @gimple_has_mem_ops, i64 456228}
!300 = !{ptr @get_prop_dest_stmt, ptr @single_imm_use, i64 52782}
!301 = !{ptr @get_prop_dest_stmt, ptr @gimple_assign_ssa_name_copy_p, i64 52677}
!302 = !{ptr @get_prop_dest_stmt, ptr @gimple_assign_rhs1, i64 2329}
!303 = !{ptr @get_prop_dest_stmt, ptr @gimple_assign_lhs, i64 2328}
!304 = !{ptr @single_imm_use, ptr @is_gimple_debug, i64 51082}
!305 = !{ptr @single_imm_use, ptr @single_imm_use_1, i64 1}
!306 = !{ptr @gimple_assign_cast_p, ptr @is_gimple_assign, i64 56211}
!307 = !{ptr @gimple_assign_cast_p, ptr @gimple_assign_rhs_code, i64 54056}
!308 = !{ptr @gimple_expr_type, ptr @gimple_code, i64 23449}
!309 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs_code, i64 23448}
!310 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs1, i64 1}
!311 = !{ptr @gimple_expr_type, ptr @gimple_get_lhs, i64 23447}
!312 = !{ptr @gimple_switch_index, ptr @gimple_op, i64 10738}
!313 = !{ptr @gimple_switch_set_index, ptr @fancy_abort, i64 1}
!314 = !{ptr @gimple_switch_set_index, ptr @gimple_set_op, i64 967}
!315 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 1219848}
!316 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 762467}
!317 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!318 = !{!"function_entry_count", i64 28920}
!319 = !{!"tree-ssa-forwprop.c:gate_forwprop"}
!320 = !{!321, !321, i64 0}
!321 = !{!"int", !322, i64 0}
!322 = !{!"omnipotent char", !323, i64 0}
!323 = !{!"Simple C/C++ TBAA"}
!324 = !{!"tree-ssa-forwprop.c:tree_ssa_forward_propagate_single_use_vars"}
!325 = !{!326, !326, i64 0}
!326 = !{!"any pointer", !322, i64 0}
!327 = !{!328, !326, i64 8}
!328 = !{!"function", !326, i64 0, !326, i64 8, !326, i64 16, !326, i64 24, !326, i64 32, !326, i64 40, !326, i64 48, !326, i64 56, !326, i64 64, !326, i64 72, !326, i64 80, !326, i64 88, !326, i64 96, !321, i64 104, !321, i64 108, !321, i64 112, !321, i64 116, !321, i64 120, !321, i64 124, !326, i64 128, !321, i64 136, !321, i64 137, !321, i64 138, !321, i64 138, !321, i64 138, !321, i64 138, !321, i64 138, !321, i64 138, !321, i64 138, !321, i64 139, !321, i64 139, !321, i64 139, !321, i64 139, !321, i64 139, !321, i64 139, !321, i64 139}
!329 = !{!330, !326, i64 0}
!330 = !{!"control_flow_graph", !326, i64 0, !326, i64 8, !326, i64 16, !321, i64 24, !321, i64 28, !321, i64 32, !326, i64 40, !321, i64 48, !322, i64 52, !322, i64 60, !321, i64 68, !321, i64 72}
!331 = !{!332, !326, i64 56}
!332 = !{!"basic_block_def", !326, i64 0, !326, i64 8, !326, i64 16, !326, i64 24, !322, i64 32, !326, i64 48, !326, i64 56, !322, i64 64, !333, i64 72, !321, i64 80, !321, i64 84, !321, i64 88, !321, i64 92, !321, i64 96}
!333 = !{!"long", !322, i64 0}
!334 = !{!330, !326, i64 8}
!335 = !{!"branch_weights", i32 1, i32 28920}
!336 = !{i64 0, i64 8, !325, i64 8, i64 8, !325, i64 16, i64 8, !325}
!337 = !{i8 0, i8 2}
!338 = !{!"branch_weights", i32 976686, i32 1}
!339 = !{!"branch_weights", i32 1073462, i32 1843919}
!340 = !{!"branch_weights", i32 1621447, i32 222473}
!341 = distinct !{!341, !342}
!342 = !{!"llvm.loop.mustprogress"}
!343 = !{i32 0, i32 65536}
!344 = !{!"branch_weights", i32 28797, i32 1592651}
!345 = !{!"branch_weights", i32 161992, i32 1430660}
!346 = !{!"branch_weights", i32 14854, i32 1415807}
!347 = !{!"branch_weights", i32 1172, i32 175674}
!348 = !{!322, !322, i64 0}
!349 = !{!"branch_weights", i32 34225, i32 183768, i32 185}
!350 = !{!"branch_weights", i32 29784, i32 1}
!351 = !{!"branch_weights", i32 26055, i32 3730}
!352 = !{!"branch_weights", i32 54647, i32 1537018}
!353 = !{!"branch_weights", i32 54504, i32 144}
!354 = !{!"branch_weights", i32 62, i32 83}
!355 = !{!"branch_weights", i32 3486, i32 1588036}
!356 = !{!"branch_weights", i32 1480, i32 1586557}
!357 = !{!"branch_weights", i32 4965, i32 1}
!358 = !{!"branch_weights", i32 62, i32 1586496}
!359 = !{!"branch_weights", i32 1, i32 62}
!360 = !{!"branch_weights", i32 50455, i32 1536042}
!361 = !{!"branch_weights", i32 49716, i32 740}
!362 = !{!"branch_weights", i32 66838, i32 1469205}
!363 = !{i32 0, i32 256}
!364 = !{!"branch_weights", i32 2060028205, i32 44580483, i32 -1943341740}
!365 = !{!"branch_weights", i32 145, i32 566340}
!366 = !{!"branch_weights", i32 1940694, i32 976686}
!367 = !{!"branch_weights", i32 28920, i32 947767}
!368 = distinct !{!368, !342}
!369 = !{!"branch_weights", i32 2153349, i32 2145330299}
!370 = !{!"function_entry_count", i64 976686}
!371 = !{!"tree-ssa-forwprop.c:gsi_start_bb"}
!372 = !{!373, !326, i64 0}
!373 = !{!"", !326, i64 0, !326, i64 8, !326, i64 16}
!374 = !{!373, !326, i64 8}
!375 = !{!373, !326, i64 16}
!376 = !{!"function_entry_count", i64 3894065}
!377 = !{!"tree-ssa-forwprop.c:gsi_end_p"}
!378 = !{!"function_entry_count", i64 2955038}
!379 = !{!"tree-ssa-forwprop.c:gsi_stmt"}
!380 = !{!381, !326, i64 0}
!381 = !{!"gimple_seq_node_d", !326, i64 0, !326, i64 8, !326, i64 16}
!382 = !{!"function_entry_count", i64 4162611}
!383 = !{!"tree-ssa-forwprop.c:is_gimple_assign"}
!384 = !{!"function_entry_count", i64 2034276}
!385 = !{!"tree-ssa-forwprop.c:gimple_assign_lhs"}
!386 = !{!"function_entry_count", i64 13255962}
!387 = !{!"tree-ssa-forwprop.c:gimple_assign_rhs1"}
!388 = !{!"function_entry_count", i64 2912829}
!389 = !{!"tree-ssa-forwprop.c:gsi_next"}
!390 = !{!381, !326, i64 16}
!391 = !{!"function_entry_count", i64 16331549}
!392 = !{!"tree-ssa-forwprop.c:gimple_assign_rhs_code"}
!393 = !{!"branch_weights", i32 10549794, i32 5781757}
!394 = !{!"function_entry_count", i64 30983}
!395 = !{!"tree-ssa-forwprop.c:forward_propagate_addr_expr"}
!396 = !{!332, !321, i64 84}
!397 = !{!"branch_weights", i32 30983, i32 1}
!398 = !{!"branch_weights", i32 16374, i32 25197}
!399 = !{!"branch_weights", i32 25197, i32 1}
!400 = !{!"branch_weights", i32 871, i32 15504}
!401 = !{!"branch_weights", i32 15411, i32 94}
!402 = !{!"branch_weights", i32 6662, i32 8843}
!403 = !{!"branch_weights", i32 8665, i32 179}
!404 = !{!"branch_weights", i32 1, i32 8665}
!405 = !{!"branch_weights", i32 10587, i32 30983}
!406 = distinct !{!406, !342}
!407 = !{!"function_entry_count", i64 23489}
!408 = !{!"tree-ssa-forwprop.c:update_stmt"}
!409 = !{!"branch_weights", i32 1, i32 23490}
!410 = !{!"function_entry_count", i64 4964}
!411 = !{!"tree-ssa-forwprop.c:simplify_not_neg_expr"}
!412 = !{!"branch_weights", i32 572, i32 4394}
!413 = !{!"branch_weights", i32 1, i32 4394}
!414 = !{!"function_entry_count", i64 61}
!415 = !{!"tree-ssa-forwprop.c:forward_propagate_into_cond"}
!416 = !{!"branch_weights", i32 0, i32 -2147483648}
!417 = !{!"function_entry_count", i64 50454}
!418 = !{!"tree-ssa-forwprop.c:forward_propagate_comparison"}
!419 = !{!"branch_weights", i32 50455, i32 1}
!420 = !{!"branch_weights", i32 4371, i32 46085}
!421 = !{!"branch_weights", i32 4371, i32 1}
!422 = !{!"branch_weights", i32 1629, i32 48827}
!423 = !{!"branch_weights", i32 8187, i32 40641}
!424 = !{!"branch_weights", i32 42, i32 40600}
!425 = !{!"branch_weights", i32 688, i32 39913}
!426 = !{!"branch_weights", i32 19, i32 39895}
!427 = !{!"branch_weights", i32 1, i32 39895}
!428 = !{!"branch_weights", i32 66, i32 682}
!429 = !{!"branch_weights", i32 20, i32 663}
!430 = !{!"branch_weights", i32 663, i32 1}
!431 = !{!"branch_weights", i32 42, i32 706}
!432 = !{!"branch_weights", i32 688, i32 19}
!433 = !{!"branch_weights", i32 19, i32 1}
!434 = !{!"branch_weights", i32 12, i32 8}
!435 = !{!"branch_weights", i32 1, i32 8}
!436 = !{!437, !322, i64 46}
!437 = !{!"real_format", !326, i64 0, !326, i64 8, !321, i64 16, !321, i64 20, !321, i64 24, !321, i64 28, !321, i64 32, !321, i64 36, !321, i64 40, !322, i64 44, !322, i64 45, !322, i64 46, !322, i64 47, !322, i64 48, !322, i64 49, !322, i64 50, !322, i64 51}
!438 = !{!"branch_weights", i32 740, i32 1}
!439 = !{!"function_entry_count", i64 66837}
!440 = !{!"tree-ssa-forwprop.c:simplify_bitwise_and"}
!441 = !{!"branch_weights", i32 57483, i32 9356}
!442 = !{!"branch_weights", i32 -1063732900, i32 73175860}
!443 = !{!"branch_weights", i32 48391, i32 7822}
!444 = !{!"branch_weights", i32 1, i32 7822}
!445 = !{!"branch_weights", i32 15, i32 7808}
!446 = !{!"branch_weights", i32 7808, i32 1}
!447 = !{!"branch_weights", i32 57472, i32 12}
!448 = !{!"branch_weights", i32 12, i32 1}
!449 = !{!"function_entry_count", i64 77552098}
!450 = !{!"tree-ssa-forwprop.c:gimple_code"}
!451 = !{!"function_entry_count", i64 10738}
!452 = !{!"tree-ssa-forwprop.c:simplify_gimple_switch"}
!453 = !{!"branch_weights", i32 10739, i32 1}
!454 = !{!"branch_weights", i32 1479, i32 9261}
!455 = !{!"branch_weights", i32 1013, i32 8249}
!456 = !{!"branch_weights", i32 1041564575, i32 1026169}
!457 = !{!"branch_weights", i32 152, i32 862}
!458 = !{!"branch_weights", i32 2052083047, i32 95400601}
!459 = !{!"function_entry_count", i64 566483}
!460 = !{!"tree-ssa-forwprop.c:forward_propagate_into_gimple_cond"}
!461 = !{!"branch_weights", i32 127, i32 1}
!462 = !{!"branch_weights", i32 572027, i32 206}
!463 = !{!"branch_weights", i32 169599, i32 402429}
!464 = !{!"branch_weights", i32 281978, i32 120452}
!465 = !{!"branch_weights", i32 2047607901, i32 99875747}
!466 = !{!"branch_weights", i32 75592, i32 490835}
!467 = !{!"branch_weights", i32 21792, i32 53801}
!468 = !{!"branch_weights", i32 42377, i32 11425}
!469 = !{!"branch_weights", i32 329318805, i32 1818164843}
!470 = !{!"branch_weights", i32 2122175666, i32 25307982}
!471 = !{!"branch_weights", i32 5749, i32 1}
!472 = !{!"branch_weights", i32 5605, i32 145}
!473 = !{!"branch_weights", i32 73245569, i32 127}
!474 = !{!"tree-ssa-forwprop.c:bb_seq"}
!475 = !{!332, !321, i64 96}
!476 = !{!"branch_weights", i32 976687, i32 1}
!477 = !{!"branch_weights", i32 1, i32 976687}
!478 = !{!479, !326, i64 0}
!479 = !{!"gimple_bb_info", !326, i64 0, !326, i64 8}
!480 = !{!"tree-ssa-forwprop.c:gimple_seq_first"}
!481 = !{!482, !326, i64 0}
!482 = !{!"gimple_seq_d", !326, i64 0, !326, i64 8, !326, i64 16}
!483 = !{!"function_entry_count", i64 17515064}
!484 = !{!"tree-ssa-forwprop.c:gimple_op"}
!485 = !{!"branch_weights", i32 1, i32 17515065}
!486 = !{!"function_entry_count", i64 17738858}
!487 = !{!"tree-ssa-forwprop.c:gimple_has_ops"}
!488 = !{!"function_entry_count", i64 17545801}
!489 = !{!"tree-ssa-forwprop.c:gimple_ops"}
!490 = !{!333, !333, i64 0}
!491 = !{!"branch_weights", i32 1, i32 17545802}
!492 = !{!"tree-ssa-forwprop.c:gimple_statement_structure"}
!493 = !{!"tree-ssa-forwprop.c:gss_for_code"}
!494 = !{!"tree-ssa-forwprop.c:gimple_expr_code"}
!495 = !{!"branch_weights", i32 1, i32 65326200, i32 2, i32 1}
!496 = !{!"function_entry_count", i64 16487798}
!497 = !{!"tree-ssa-forwprop.c:get_gimple_rhs_class"}
!498 = !{!"function_entry_count", i64 47356}
!499 = !{!"tree-ssa-forwprop.c:gimple_bb"}
!500 = !{!"function_entry_count", i64 698828}
!501 = !{!"tree-ssa-forwprop.c:has_single_use"}
!502 = !{!503, !326, i64 8}
!503 = !{!"ssa_use_operand_d", !326, i64 0, !326, i64 8, !322, i64 16, !326, i64 24}
!504 = !{!"branch_weights", i32 1852, i32 696978}
!505 = !{!"branch_weights", i32 464207, i32 232772}
!506 = !{!"branch_weights", i32 232772, i32 1}
!507 = !{!"tree-ssa-forwprop.c:first_imm_use_stmt"}
!508 = !{!509, !326, i64 8}
!509 = !{!"immediate_use_iterator_d", !326, i64 0, !326, i64 8, !503, i64 16, !326, i64 48}
!510 = !{!509, !326, i64 0}
!511 = !{!"branch_weights", i32 29133, i32 1852}
!512 = !{!"function_entry_count", i64 145104}
!513 = !{!"tree-ssa-forwprop.c:end_imm_use_stmt_p"}
!514 = !{!"function_entry_count", i64 540486}
!515 = !{!"tree-ssa-forwprop.c:is_gimple_debug"}
!516 = !{!"function_entry_count", i64 15503}
!517 = !{!"tree-ssa-forwprop.c:forward_propagate_addr_expr_1"}
!518 = !{!"branch_weights", i32 15504, i32 1}
!519 = !{!"branch_weights", i32 11002, i32 4503}
!520 = !{!"branch_weights", i32 19044, i32 1510373}
!521 = !{!"branch_weights", i32 30, i32 1299}
!522 = !{!"branch_weights", i32 1172, i32 128}
!523 = !{!"branch_weights", i32 1172, i32 1}
!524 = !{!"branch_weights", i32 1, i32 128}
!525 = !{!"branch_weights", i32 14177, i32 5349}
!526 = distinct !{!526, !342}
!527 = !{!"branch_weights", i32 1868, i32 12310}
!528 = !{!"branch_weights", i32 1573, i32 296}
!529 = !{!"branch_weights", i32 201, i32 1373}
!530 = !{!"branch_weights", i32 1155, i32 219}
!531 = !{!"branch_weights", i32 1, i32 1155}
!532 = !{!"branch_weights", i32 1199, i32 175}
!533 = !{!"branch_weights", i32 14087, i32 996}
!534 = !{!"branch_weights", i32 78094731, i32 15124320, i32 118003281}
!535 = distinct !{!535, !342}
!536 = !{!"branch_weights", i32 8424, i32 4}
!537 = !{!"branch_weights", i32 382, i32 8043}
!538 = !{!"branch_weights", i32 385, i32 5577}
!539 = !{!"branch_weights", i32 382, i32 4}
!540 = !{!"branch_weights", i32 1, i32 382}
!541 = !{!"branch_weights", i32 382, i32 1}
!542 = !{!"branch_weights", i32 281, i32 102}
!543 = !{!"branch_weights", i32 94, i32 9}
!544 = !{!"branch_weights", i32 1, i32 94}
!545 = !{!"branch_weights", i32 94, i32 1}
!546 = distinct !{!546, !342}
!547 = !{!"branch_weights", i32 1349, i32 4520}
!548 = !{!"branch_weights", i32 1349, i32 1}
!549 = !{!"branch_weights", i32 629, i32 721}
!550 = !{!"branch_weights", i32 629, i32 1}
!551 = !{!"branch_weights", i32 626, i32 4}
!552 = !{!"branch_weights", i32 297, i32 330}
!553 = !{!"branch_weights", i32 1, i32 297}
!554 = !{!"branch_weights", i32 82, i32 216}
!555 = !{!"branch_weights", i32 1, i32 82}
!556 = !{!"branch_weights", i32 330, i32 1}
!557 = !{!"branch_weights", i32 1, i32 330}
!558 = !{!"function_entry_count", i64 8762}
!559 = !{!"tree-ssa-forwprop.c:has_zero_uses"}
!560 = !{!"branch_weights", i32 8660, i32 104}
!561 = !{!"branch_weights", i32 104, i32 1}
!562 = !{!"function_entry_count", i64 41569}
!563 = !{!"tree-ssa-forwprop.c:next_imm_use_stmt"}
!564 = !{!509, !326, i64 24}
!565 = !{!"branch_weights", i32 12438, i32 29133}
!566 = !{!509, !326, i64 16}
!567 = !{!"branch_weights", i32 1, i32 29133}
!568 = !{!"tree-ssa-forwprop.c:link_use_stmts_after"}
!569 = !{!"branch_weights", i32 3877, i32 37694}
!570 = !{!"branch_weights", i32 3876, i32 1}
!571 = !{!"branch_weights", i32 3971, i32 6383}
!572 = !{!"branch_weights", i32 6477, i32 3876}
!573 = distinct !{!573, !342}
!574 = !{!"branch_weights", i32 1, i32 37694}
!575 = !{!"branch_weights", i32 37693, i32 1}
!576 = !{!"branch_weights", i32 37730, i32 25266}
!577 = !{!"branch_weights", i32 25302, i32 37693}
!578 = distinct !{!578, !342}
!579 = !{!"branch_weights", i32 29133, i32 12438}
!580 = !{!"function_entry_count", i64 277642}
!581 = !{!"tree-ssa-forwprop.c:get_use_from_ptr"}
!582 = !{!503, !326, i64 24}
!583 = !{!"function_entry_count", i64 3876}
!584 = !{!"tree-ssa-forwprop.c:op_iter_init_phiuse"}
!585 = !{!586, !322, i64 0}
!586 = !{!"ssa_operand_iterator_d", !322, i64 0, !321, i64 4, !326, i64 8, !326, i64 16, !321, i64 24, !321, i64 28, !326, i64 32}
!587 = !{!"branch_weights", i32 1, i32 3877}
!588 = !{!586, !326, i64 32}
!589 = !{!586, !321, i64 28}
!590 = !{!586, !321, i64 4}
!591 = !{!"function_entry_count", i64 409517}
!592 = !{!"tree-ssa-forwprop.c:op_iter_done"}
!593 = !{!"function_entry_count", i64 41699}
!594 = !{!"tree-ssa-forwprop.c:move_use_after_head"}
!595 = !{!"branch_weights", i32 41570, i32 131}
!596 = !{!"branch_weights", i32 110, i32 22}
!597 = !{!"tree-ssa-forwprop.c:op_iter_next_use"}
!598 = !{!586, !326, i64 16}
!599 = !{!"branch_weights", i32 183797, i32 225722}
!600 = !{!601, !326, i64 0}
!601 = !{!"use_optype_d", !326, i64 0, !503, i64 8}
!602 = !{!586, !321, i64 24}
!603 = !{!"branch_weights", i32 10353, i32 173445}
!604 = !{!"function_entry_count", i64 169568}
!605 = !{!"tree-ssa-forwprop.c:op_iter_init_use"}
!606 = !{!"branch_weights", i32 -700761576, i32 42392}
!607 = !{!"function_entry_count", i64 0}
!608 = !{!"tree-ssa-forwprop.c:gimple_vuse_op"}
!609 = !{!601, !326, i64 32}
!610 = !{!"function_entry_count", i64 41590}
!611 = !{!"tree-ssa-forwprop.c:delink_imm_use"}
!612 = !{!503, !326, i64 0}
!613 = !{!"branch_weights", i32 1, i32 41591}
!614 = !{!"tree-ssa-forwprop.c:link_imm_use_to_list"}
!615 = !{!"tree-ssa-forwprop.c:gimple_phi_result"}
!616 = !{!"tree-ssa-forwprop.c:clear_and_done_ssa_iter"}
!617 = !{!"tree-ssa-forwprop.c:gimple_phi_num_args"}
!618 = !{!"function_entry_count", i64 10352}
!619 = !{!"tree-ssa-forwprop.c:gimple_phi_arg_imm_use_ptr"}
!620 = !{!"tree-ssa-forwprop.c:gimple_phi_arg"}
!621 = !{!"branch_weights", i32 1, i32 10353}
!622 = !{!"tree-ssa-forwprop.c:op_iter_init"}
!623 = !{!"branch_weights", i32 169569, i32 1}
!624 = !{!586, !326, i64 8}
!625 = !{!626, !326, i64 0}
!626 = !{!"def_optype_d", !326, i64 0, !326, i64 8}
!627 = !{!"branch_weights", i32 1, i32 169569}
!628 = !{!"branch_weights", i32 50657, i32 2147432991}
!629 = !{!"branch_weights", i32 135079, i32 34488}
!630 = !{!"tree-ssa-forwprop.c:gimple_def_ops"}
!631 = !{!"tree-ssa-forwprop.c:gimple_vdef"}
!632 = !{!"tree-ssa-forwprop.c:gimple_use_ops"}
!633 = !{!"function_entry_count", i64 169565}
!634 = !{!"tree-ssa-forwprop.c:gimple_vuse"}
!635 = !{!"branch_weights", i32 423, i32 169144}
!636 = !{!"function_entry_count", i64 625793}
!637 = !{!"tree-ssa-forwprop.c:gimple_has_mem_ops"}
!638 = !{!"function_entry_count", i64 220}
!639 = !{!"tree-ssa-forwprop.c:gimple_assign_set_rhs1"}
!640 = !{!"function_entry_count", i64 127}
!641 = !{!"tree-ssa-forwprop.c:gimple_assign_set_rhs_code"}
!642 = !{!"function_entry_count", i64 15548}
!643 = !{!"tree-ssa-forwprop.c:gimple_assign_lhs_ptr"}
!644 = !{!"function_entry_count", i64 34605}
!645 = !{!"tree-ssa-forwprop.c:handled_component_p"}
!646 = !{!"branch_weights", i32 28263, i32 22, i32 4025, i32 2299, i32 1, i32 1, i32 1, i32 1}
!647 = !{!"function_entry_count", i64 9913}
!648 = !{!"tree-ssa-forwprop.c:tidy_after_forward_propagate_addr"}
!649 = !{!"branch_weights", i32 9914, i32 1}
!650 = !{!"branch_weights", i32 491, i32 9424}
!651 = !{!"function_entry_count", i64 14002}
!652 = !{!"tree-ssa-forwprop.c:gimple_assign_rhs1_ptr"}
!653 = !{!"function_entry_count", i64 231773}
!654 = !{!"tree-ssa-forwprop.c:gimple_assign_rhs2"}
!655 = !{!"branch_weights", i32 231774, i32 1}
!656 = !{!"function_entry_count", i64 756208}
!657 = !{!"tree-ssa-forwprop.c:gimple_location"}
!658 = !{!"function_entry_count", i64 329}
!659 = !{!"tree-ssa-forwprop.c:forward_propagate_addr_into_variable_array_index"}
!660 = !{!"branch_weights", i32 16, i32 315}
!661 = !{!"branch_weights", i32 224, i32 92}
!662 = !{!"branch_weights", i32 224, i32 1}
!663 = !{!"branch_weights", i32 114, i32 111}
!664 = !{!"branch_weights", i32 92, i32 114}
!665 = !{!"branch_weights", i32 1, i32 114}
!666 = !{!"branch_weights", i32 92, i32 1}
!667 = !{!"branch_weights", i32 1, i32 92}
!668 = !{!"branch_weights", i32 9, i32 84}
!669 = !{!"branch_weights", i32 84, i32 1}
!670 = !{!"function_entry_count", i64 1187}
!671 = !{!"tree-ssa-forwprop.c:gimple_set_op"}
!672 = !{!"branch_weights", i32 1, i32 1188}
!673 = !{!"branch_weights", i32 1188, i32 1}
!674 = !{!"function_entry_count", i64 232960}
!675 = !{!"tree-ssa-forwprop.c:gimple_num_ops"}
!676 = !{!"function_entry_count", i64 29550}
!677 = !{!"tree-ssa-forwprop.c:gimple_op_ptr"}
!678 = !{!"branch_weights", i32 1, i32 29551}
!679 = !{!"function_entry_count", i64 647617}
!680 = !{!"tree-ssa-forwprop.c:get_prop_source_stmt"}
!681 = !{!"branch_weights", i32 3577, i32 1}
!682 = !{!"branch_weights", i32 191390, i32 476457}
!683 = !{!"branch_weights", i32 462349, i32 14109}
!684 = !{!"branch_weights", i32 -954864206, i32 14448}
!685 = !{!"branch_weights", i32 27533, i32 434817}
!686 = !{!"branch_weights", i32 1940, i32 432878}
!687 = !{!"branch_weights", i32 29469, i32 4}
!688 = !{!"branch_weights", i32 6249, i32 23221}
!689 = !{!"branch_weights", i32 1, i32 23221}
!690 = !{!"branch_weights", i32 16641, i32 795730, i32 129}
!691 = !{!"branch_weights", i32 -1154120378, i32 1639511268}
!692 = !{!"branch_weights", i32 -1904791780, i32 3577}
!693 = !{!"function_entry_count", i64 456228}
!694 = !{!"tree-ssa-forwprop.c:can_propagate_from"}
!695 = !{!"branch_weights", i32 1, i32 456229}
!696 = !{!"branch_weights", i32 456223, i32 7}
!697 = !{!"branch_weights", i32 258388, i32 197836}
!698 = !{!"branch_weights", i32 65961, i32 131876}
!699 = !{!"branch_weights", i32 131452, i32 425}
!700 = !{!"branch_weights", i32 425, i32 1}
!701 = !{!"branch_weights", i32 131875, i32 1}
!702 = !{!"branch_weights", i32 162728, i32 1}
!703 = !{!"branch_weights", i32 30853, i32 131875}
!704 = distinct !{!704, !342}
!705 = !{!"branch_weights", i32 21413, i32 110464}
!706 = !{!"branch_weights", i32 1940, i32 108525}
!707 = !{!"branch_weights", i32 544942336, i32 210105, i32 23344}
!708 = !{!"branch_weights", i32 1, i32 9}
!709 = !{!"function_entry_count", i64 131875}
!710 = !{!"tree-ssa-forwprop.c:rhs_to_tree"}
!711 = !{!"branch_weights", i32 19881, i32 -2144130279, i32 468845596, i32 8449510}
!712 = !{!"function_entry_count", i64 137395}
!713 = !{!"tree-ssa-forwprop.c:combine_cond_expr_cond"}
!714 = !{!"branch_weights", i32 137396, i32 1}
!715 = !{!"branch_weights", i32 75001, i32 62396}
!716 = !{!"branch_weights", i32 62396, i32 1}
!717 = !{!"branch_weights", i32 43050, i32 19347}
!718 = !{!"branch_weights", i32 5625, i32 13723}
!719 = !{!"branch_weights", i32 13588, i32 136}
!720 = !{!"function_entry_count", i64 6487}
!721 = !{!"tree-ssa-forwprop.c:remove_prop_source_from_use"}
!722 = !{!"branch_weights", i32 104, i32 8660}
!723 = !{!"branch_weights", i32 740, i32 7921}
!724 = !{!"branch_weights", i32 5646, i32 2276}
!725 = !{!"branch_weights", i32 2276, i32 5646}
!726 = distinct !{!726, !342}
!727 = !{!"tree-ssa-forwprop.c:gimple_has_volatile_ops"}
!728 = !{!"tree-ssa-forwprop.c:get_prop_dest_stmt"}
!729 = !{!"branch_weights", i32 1, i32 1628}
!730 = !{!"branch_weights", i32 48827, i32 2259}
!731 = !{!"branch_weights", i32 2259, i32 1}
!732 = !{!"branch_weights", i32 1628, i32 49457}
!733 = !{!"branch_weights", i32 1, i32 48827}
!734 = !{!"function_entry_count", i64 52712}
!735 = !{!"tree-ssa-forwprop.c:single_imm_use"}
!736 = !{!"branch_weights", i32 1, i32 52713}
!737 = !{!"branch_weights", i32 51085, i32 1629}
!738 = !{!"branch_weights", i32 51085, i32 1}
!739 = !{!"branch_weights", i32 1629, i32 1}
!740 = !{!"function_entry_count", i64 56211}
!741 = !{!"tree-ssa-forwprop.c:gimple_assign_cast_p"}
!742 = !{!"branch_weights", i32 2155, i32 54058}
!743 = !{!"function_entry_count", i64 23449}
!744 = !{!"tree-ssa-forwprop.c:gimple_expr_type"}
!745 = !{!"branch_weights", i32 1, i32 2, i32 93800, i32 1}
!746 = !{!"branch_weights", i32 1, i32 23450}
!747 = !{!"tree-ssa-forwprop.c:gimple_call_return_type"}
!748 = !{!"tree-ssa-forwprop.c:gimple_call_fn"}
!749 = !{!"tree-ssa-forwprop.c:gimple_switch_index"}
!750 = !{!"function_entry_count", i64 967}
!751 = !{!"tree-ssa-forwprop.c:gimple_switch_set_index"}
!752 = !{!"branch_weights", i32 3543122, i32 3554114, i32 3550446, i32 3546782, i32 -865225200}
!753 = !{!"branch_weights", i32 1, i32 3872, i32 2, i32 1}
!754 = !{!"function_entry_count", i64 1144462}
!755 = !{!"tree-ssa-forwprop.c:gimple_cond_code"}
!756 = !{!"function_entry_count", i64 1219848}
!757 = !{!"tree-ssa-forwprop.c:gimple_cond_lhs"}
!758 = !{!"function_entry_count", i64 762467}
!759 = !{!"tree-ssa-forwprop.c:gimple_cond_rhs"}
