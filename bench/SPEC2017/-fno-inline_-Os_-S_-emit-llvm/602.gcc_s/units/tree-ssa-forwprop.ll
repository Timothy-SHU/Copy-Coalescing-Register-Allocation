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
define internal zeroext i8 @gate_forwprop() #0 {
  %1 = load i32, ptr @flag_tree_forwprop, align 4, !tbaa !6
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_ssa_forward_propagate_single_use_vars() #1 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  store i1 false, ptr @cfg_changed, align 1
  %3 = load ptr, ptr @cfun, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %141, label %12

12:                                               ; preds = %0, %126
  %13 = phi ptr [ %129, %126 ], [ %8, %0 ]
  %14 = phi i32 [ %127, %126 ], [ 0, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %13) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  %15 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !21
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %126

17:                                               ; preds = %12, %122
  %18 = phi i32 [ %123, %122 ], [ %14, %12 ]
  %19 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16
  %20 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %19) #16, !range !21
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %111, label %22

22:                                               ; preds = %17
  %23 = call fastcc ptr @gimple_assign_lhs(ptr noundef %19) #16
  %24 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %19) #16
  %25 = load i64, ptr %23, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 141
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  br label %122, !llvm.loop !22

29:                                               ; preds = %22
  %30 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %19) #16, !range !24
  %31 = icmp eq i32 %30, 121
  br i1 %31, label %47, label %32

32:                                               ; preds = %29
  %33 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %19) #16, !range !24
  %34 = icmp eq i32 %33, 116
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %19) #16, !range !24
  %37 = icmp eq i32 %36, 113
  br i1 %37, label %38, label %57

38:                                               ; preds = %35, %32
  %39 = load i64, ptr %24, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 121
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !25
  %45 = load i64, ptr %44, align 8
  %46 = trunc i64 %45 to i16
  switch i16 %46, label %57 [
    i16 10, label %47
    i16 12, label %47
  ]

47:                                               ; preds = %42, %42, %29
  %48 = call ptr @tree_strip_nop_conversions(ptr noundef %24) #17
  %49 = call zeroext i8 @stmt_references_abnormal_ssa_name(ptr noundef %19) #17
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = call fastcc zeroext i8 @forward_propagate_addr_expr(ptr noundef nonnull %23, ptr noundef %48) #16, !range !21
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  call void @release_defs(ptr noundef %19) #17
  %55 = or i32 %18, 32768
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #17
  br label %122

56:                                               ; preds = %51, %47
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  br label %122

57:                                               ; preds = %42, %38, %35
  %58 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %19) #16, !range !24
  %59 = icmp eq i32 %58, 66
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %24) #17
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = call zeroext i8 @fold_stmt_inplace(ptr noundef %19) #17
  call fastcc void @update_stmt(ptr noundef %19) #16
  %65 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %19) #16, !range !24
  %66 = icmp eq i32 %65, 66
  br i1 %66, label %67, label %122

67:                                               ; preds = %63
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  br label %122

68:                                               ; preds = %60, %57
  %69 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %19) #16, !range !24
  %70 = icmp eq i32 %69, 90
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %19) #16, !range !24
  %73 = icmp eq i32 %72, 79
  br i1 %73, label %74, label %79

74:                                               ; preds = %71, %68
  %75 = load i64, ptr %24, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 141
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  call fastcc void @simplify_not_neg_expr(ptr noundef nonnull %1) #16
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  br label %122

79:                                               ; preds = %74, %71
  %80 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %19) #16, !range !24
  %81 = icmp eq i32 %80, 56
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  call void @fold_defer_overflow_warnings() #17
  %83 = call fastcc i32 @forward_propagate_into_cond(ptr noundef nonnull %1) #16
  %84 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16
  %85 = icmp eq i32 %83, 2
  br i1 %85, label %86, label %87

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
  %95 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %19) #16, !range !24
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !6
  %99 = icmp eq i32 %98, 5
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = call fastcc zeroext i8 @forward_propagate_comparison(ptr noundef %19) #16, !range !21
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  call void @release_defs(ptr noundef %19) #17
  %104 = or i32 %18, 32768
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #17
  br label %122

105:                                              ; preds = %100
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  br label %122

106:                                              ; preds = %94
  %107 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %19) #16, !range !24
  %108 = icmp eq i32 %107, 89
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  call fastcc void @simplify_bitwise_and(ptr noundef nonnull %1, ptr noundef %19) #16
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  br label %122

110:                                              ; preds = %106
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  br label %122

111:                                              ; preds = %17
  %112 = call fastcc i32 @gimple_code(ptr noundef %19) #16, !range !26
  %113 = trunc i32 %112 to i8
  switch i8 %113, label %121 [
    i8 5, label %114
    i8 1, label %115
  ]

114:                                              ; preds = %111
  call fastcc void @simplify_gimple_switch(ptr noundef %19) #16
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  br label %122

115:                                              ; preds = %111
  call void @fold_defer_overflow_warnings() #17
  %116 = call fastcc i32 @forward_propagate_into_gimple_cond(ptr noundef %19) #16
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %119

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
  %124 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !21
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %17, label %126

126:                                              ; preds = %122, %12
  %127 = phi i32 [ %14, %12 ], [ %123, %122 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #15
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %129 = load ptr, ptr %128, align 8, !tbaa !16
  %130 = load ptr, ptr @cfun, align 8, !tbaa !10
  %131 = getelementptr inbounds %struct.function, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !12
  %133 = getelementptr inbounds %struct.control_flow_graph, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !19
  %135 = icmp eq ptr %129, %134
  br i1 %135, label %136, label %12, !llvm.loop !27

136:                                              ; preds = %126
  %137 = load i1, ptr @cfg_changed, align 1
  %138 = or i32 %127, 32
  %139 = freeze i1 %137
  %140 = select i1 %139, i32 %138, i32 %127
  br label %141

141:                                              ; preds = %136, %0
  %142 = phi i32 [ 0, %0 ], [ %140, %136 ]
  ret i32 %142
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #3 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #16
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #16
  store ptr %4, ptr %0, align 8, !tbaa !28
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !30
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !28
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !28
  %3 = load ptr, ptr %2, align 8, !tbaa !32
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !26
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !28
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  store ptr %4, ptr %0, align 8, !tbaa !28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #16, !range !24
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #16, !range !26
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

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
define internal fastcc zeroext i8 @forward_propagate_addr_expr(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !25
  %8 = tail call fastcc ptr @gimple_bb(ptr noundef %7) #16
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 10
  %10 = load i32, ptr %9, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  %11 = tail call fastcc zeroext i8 @has_single_use(ptr noundef %0) #16
  %12 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %3, ptr noundef %0) #16
  %13 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #16, !range !21
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %59

15:                                               ; preds = %2, %54
  %16 = phi ptr [ %56, %54 ], [ %12, %2 ]
  %17 = phi i8 [ %55, %54 ], [ 1, %2 ]
  %18 = call fastcc i32 @gimple_code(ptr noundef %16) #16, !range !26
  %19 = icmp eq i32 %18, 6
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %16) #16, !range !21
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i8 0, i8 %17
  br label %54

24:                                               ; preds = %15
  %25 = call fastcc ptr @gimple_bb(ptr noundef %16) #16
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 10
  %27 = load i32, ptr %26, align 4, !tbaa !35
  %28 = icmp sgt i32 %27, %10
  br i1 %28, label %54, label %29

29:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %16) #17
  %30 = call fastcc zeroext i8 @forward_propagate_addr_expr_1(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i8 noundef zeroext %11) #16
  %31 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16
  %32 = icmp eq ptr %16, %31
  br i1 %32, label %35, label %33

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
  br i1 %39, label %54, label %40

40:                                               ; preds = %35
  %41 = call fastcc ptr @gimple_assign_lhs(ptr noundef %36) #16
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 141
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load i64, ptr %38, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 141
  br i1 %48, label %49, label %54

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
  %57 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #16, !range !21
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %15, label %59, !llvm.loop !36

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
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #17
  tail call void @update_stmt_operands(ptr noundef %0) #17
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @simplify_not_neg_expr(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %3 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %5) #16, !range !21
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %5) #16, !range !24
  %10 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %2) #16, !range !24
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %19

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
define internal fastcc i32 @forward_propagate_into_cond(ptr noundef %0) unnamed_addr #1 {
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
  store i8 0, ptr %2, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  store i8 0, ptr %3, align 1, !tbaa !25
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !6
  %14 = icmp eq i32 %13, 5
  br i1 %14, label %15, label %88

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  br i1 %20, label %21, label %88

21:                                               ; preds = %15
  %22 = call fastcc ptr @get_prop_source_stmt(ptr noundef nonnull %17, i8 noundef zeroext 0, ptr noundef nonnull %2) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %21
  %25 = call fastcc zeroext i8 @can_propagate_from(ptr noundef nonnull %22) #16, !range !21
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !25
  %30 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !25
  %32 = call fastcc ptr @rhs_to_tree(ptr noundef %31, ptr noundef nonnull %22) #16
  %33 = load i64, ptr %9, align 8
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 65535
  %36 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !10
  %37 = load i8, ptr %2, align 1, !tbaa !25
  %38 = icmp eq i8 %37, 0
  %39 = zext i1 %38 to i8
  %40 = call fastcc ptr @combine_cond_expr_cond(i32 noundef %5, i32 noundef %35, ptr noundef %36, ptr noundef %32, ptr noundef %29, i8 noundef zeroext %39) #16
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %107

42:                                               ; preds = %21, %24, %27
  %43 = phi ptr [ %32, %27 ], [ null, %24 ], [ null, %21 ]
  %44 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !25
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 141
  br i1 %48, label %49, label %128

49:                                               ; preds = %42
  %50 = load ptr, ptr %16, align 8, !tbaa !25
  %51 = call fastcc ptr @get_prop_source_stmt(ptr noundef nonnull %45, i8 noundef zeroext 0, ptr noundef nonnull %3) #16
  %52 = icmp eq ptr %51, null
  br i1 %52, label %120, label %53

53:                                               ; preds = %49
  %54 = call fastcc zeroext i8 @can_propagate_from(ptr noundef nonnull %51) #16, !range !21
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %120, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !25
  %59 = call fastcc ptr @rhs_to_tree(ptr noundef %58, ptr noundef nonnull %51) #16
  %60 = load i64, ptr %9, align 8
  %61 = trunc i64 %60 to i32
  %62 = and i32 %61, 65535
  %63 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !10
  %64 = load i8, ptr %3, align 1, !tbaa !25
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
  %77 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !10
  %78 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !25
  %80 = call ptr @fold_convert_loc(i32 noundef %5, ptr noundef %79, ptr noundef nonnull %59) #17
  %81 = load i8, ptr %2, align 1, !tbaa !25
  %82 = icmp eq i8 %81, 0
  %83 = load i8, ptr %3, align 1
  %84 = icmp eq i8 %83, 0
  %85 = select i1 %82, i1 true, i1 %84
  %86 = zext i1 %85 to i8
  %87 = call fastcc ptr @combine_cond_expr_cond(i32 noundef %5, i32 noundef %76, ptr noundef %77, ptr noundef nonnull %43, ptr noundef %80, i8 noundef zeroext %86) #16
  br label %103

88:                                               ; preds = %15, %6
  %89 = icmp eq i64 %11, 141
  br i1 %89, label %90, label %128

90:                                               ; preds = %88
  %91 = call fastcc ptr @get_prop_source_stmt(ptr noundef nonnull %9, i8 noundef zeroext 1, ptr noundef null) #16
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %120

93:                                               ; preds = %90
  %94 = call fastcc zeroext i8 @can_propagate_from(ptr noundef null) #16, !range !21
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %120, label %96

96:                                               ; preds = %93
  %97 = call fastcc ptr @gimple_assign_rhs1(ptr noundef null) #16
  %98 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !10
  %99 = getelementptr inbounds %struct.tree_common, ptr %97, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !25
  %101 = call ptr @build_int_cst(ptr noundef %100, i64 noundef 0) #17
  %102 = call fastcc ptr @combine_cond_expr_cond(i32 noundef %5, i32 noundef 102, ptr noundef %98, ptr noundef %97, ptr noundef %101, i8 noundef zeroext 0) #16
  br label %103

103:                                              ; preds = %96, %56, %73
  %104 = phi ptr [ %87, %73 ], [ %67, %56 ], [ %102, %96 ]
  %105 = phi ptr [ %45, %73 ], [ %45, %56 ], [ %9, %96 ]
  %106 = icmp eq ptr %104, null
  br i1 %106, label %128, label %107

107:                                              ; preds = %27, %103
  %108 = phi ptr [ %105, %103 ], [ %17, %27 ]
  %109 = phi ptr [ %104, %103 ], [ %40, %27 ]
  %110 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %111 = icmp eq ptr %110, null
  br i1 %111, label %121, label %112

112:                                              ; preds = %107
  %113 = call i64 @fwrite(ptr nonnull @.str.5, i64 12, i64 1, ptr nonnull %110)
  %114 = load ptr, ptr @dump_file, align 8, !tbaa !10
  call void @print_generic_expr(ptr noundef %114, ptr noundef nonnull %9, i32 noundef 0) #17
  %115 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %116 = call i64 @fwrite(ptr nonnull @.str.6, i64 8, i64 1, ptr %115)
  %117 = load ptr, ptr @dump_file, align 8, !tbaa !10
  call void @print_generic_expr(ptr noundef %117, ptr noundef nonnull %109, i32 noundef 0) #17
  %118 = load ptr, ptr @dump_file, align 8, !tbaa !10
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
define internal fastcc noundef zeroext i8 @forward_propagate_comparison(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %4 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #16
  store ptr %4, ptr %2, align 8, !tbaa !10
  %5 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 4194304
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %430

14:                                               ; preds = %9, %1
  %15 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #16
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 141
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #16
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 4194304
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %430

24:                                               ; preds = %19, %14
  %25 = call fastcc ptr @get_prop_dest_stmt(ptr noundef %4, ptr noundef nonnull %2) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %430, label %27

27:                                               ; preds = %24
  %28 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef nonnull %25) #16, !range !21
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %430, label %30

30:                                               ; preds = %27
  %31 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %25) #16, !range !24
  %32 = icmp eq i32 %31, 116
  br i1 %32, label %45, label %33

33:                                               ; preds = %30
  %34 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %25) #16, !range !24
  %35 = icmp eq i32 %34, 113
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %25) #16, !range !24
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !6
  %41 = icmp eq i32 %40, 5
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %25) #16, !range !24
  %44 = icmp eq i32 %43, 96
  br i1 %44, label %45, label %430

45:                                               ; preds = %42, %36, %33, %30
  %46 = call fastcc ptr @gimple_assign_lhs(ptr noundef nonnull %25) #16
  %47 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !25
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 6
  br i1 %51, label %66, label %52

52:                                               ; preds = %45
  %53 = call fastcc ptr @gimple_assign_lhs(ptr noundef nonnull %25) #16
  %54 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !25
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 7
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = call fastcc ptr @gimple_assign_lhs(ptr noundef nonnull %25) #16
  %61 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !25
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 8
  br i1 %65, label %66, label %430

66:                                               ; preds = %59, %52, %45
  %67 = call fastcc ptr @gimple_assign_lhs(ptr noundef nonnull %25) #16
  %68 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %25) #16, !range !24
  %69 = icmp eq i32 %68, 116
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %25) #16, !range !24
  %72 = icmp eq i32 %71, 113
  br i1 %72, label %73, label %75

73:                                               ; preds = %70, %66
  %74 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !24
  br label %397

75:                                               ; preds = %70
  %76 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %25) #16, !range !24
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !6
  %80 = icmp eq i32 %79, 5
  br i1 %80, label %81, label %105

81:                                               ; preds = %75
  %82 = call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %25) #16
  %83 = load i64, ptr %82, align 8
  %84 = and i64 %83, 65535
  %85 = icmp eq i64 %84, 141
  br i1 %85, label %86, label %105

86:                                               ; preds = %81
  %87 = call fastcc ptr @gimple_assign_rhs2(ptr noundef nonnull %25) #16
  %88 = load i64, ptr %87, align 8
  %89 = and i64 %88, 65535
  %90 = icmp eq i64 %89, 23
  br i1 %90, label %91, label %105

91:                                               ; preds = %86
  %92 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %25) #16, !range !24
  %93 = call fastcc ptr @gimple_assign_rhs2(ptr noundef nonnull %25) #16
  %94 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !24
  %95 = getelementptr inbounds %struct.tree_common, ptr %93, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !25
  %97 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %98 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #16
  %99 = call ptr @build2_stat(i32 noundef %94, ptr noundef %96, ptr noundef %97, ptr noundef %98) #17
  %100 = call fastcc i32 @gimple_location(ptr noundef nonnull %25) #16
  %101 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !25
  %103 = call fastcc ptr @combine_cond_expr_cond(i32 noundef %100, i32 noundef %92, ptr noundef %102, ptr noundef %99, ptr noundef %93, i8 noundef zeroext 0) #16
  %104 = icmp eq ptr %103, null
  br i1 %104, label %430, label %404

105:                                              ; preds = %86, %81, %75
  %106 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %25) #16, !range !24
  %107 = icmp eq i32 %106, 96
  br i1 %107, label %108, label %430

108:                                              ; preds = %105
  %109 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %110 = getelementptr inbounds %struct.tree_common, ptr %109, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !25
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
  %128 = load i8, ptr %127, align 1, !tbaa !25
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
  %146 = load i8, ptr %145, align 1, !tbaa !25
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
  %164 = load i8, ptr %163, align 1, !tbaa !25
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
  %180 = load i8, ptr %179, align 1, !tbaa !25
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
  %201 = load i8, ptr %200, align 1, !tbaa !25
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
  %219 = load i8, ptr %218, align 1, !tbaa !25
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
  %246 = load i8, ptr %245, align 1, !tbaa !25
  %247 = zext i8 %246 to i32
  br label %248

248:                                              ; preds = %225, %227, %242
  %249 = phi i32 [ %247, %242 ], [ %226, %225 ], [ %231, %227 ]
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %250
  %252 = load i8, ptr %251, align 1, !tbaa !25
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
  %271 = load i8, ptr %270, align 1, !tbaa !25
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
  %289 = load i8, ptr %288, align 1, !tbaa !25
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
  %316 = load i8, ptr %315, align 1, !tbaa !25
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
  %332 = load i8, ptr %331, align 1, !tbaa !25
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
  %350 = load i8, ptr %349, align 1, !tbaa !25
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
  %377 = load i8, ptr %376, align 1, !tbaa !25
  %378 = zext i8 %377 to i32
  br label %379

379:                                              ; preds = %373, %358, %356, %312, %297, %295
  %380 = phi i32 [ %317, %312 ], [ %296, %295 ], [ %301, %297 ], [ %378, %373 ], [ %357, %356 ], [ %362, %358 ]
  %381 = add i32 %380, -38
  %382 = zext i32 %381 to i64
  %383 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %382
  %384 = load ptr, ptr %383, align 8, !tbaa !10
  %385 = getelementptr inbounds %struct.real_format, ptr %384, i64 0, i32 11
  %386 = load i8, ptr %385, align 2, !tbaa !37
  %387 = icmp eq i8 %386, 0
  br i1 %387, label %392, label %388

388:                                              ; preds = %379
  %389 = load i32, ptr @flag_finite_math_only, align 4, !tbaa !6
  %390 = icmp eq i32 %389, 0
  %391 = zext i1 %390 to i8
  br label %392

392:                                              ; preds = %388, %379, %176
  %393 = phi i8 [ 0, %379 ], [ 0, %176 ], [ %391, %388 ]
  %394 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !24
  %395 = call i32 @invert_tree_comparison(i32 noundef %394, i8 noundef zeroext %393) #17
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %430, label %397

397:                                              ; preds = %392, %73
  %398 = phi i32 [ %74, %73 ], [ %395, %392 ]
  %399 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %400 = load ptr, ptr %399, align 8, !tbaa !25
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
  %408 = load ptr, ptr %2, align 8, !tbaa !10
  call fastcc void @remove_prop_source_from_use(ptr noundef %408, ptr noundef %0) #16
  %409 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %410 = icmp eq ptr %409, null
  br i1 %410, label %430, label %411

411:                                              ; preds = %404
  %412 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %413 = and i32 %412, 8
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %430, label %415

415:                                              ; preds = %411
  %416 = call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #16
  %417 = getelementptr inbounds %struct.tree_common, ptr %416, i64 0, i32 2
  %418 = load ptr, ptr %417, align 8, !tbaa !25
  %419 = call fastcc ptr @rhs_to_tree(ptr noundef %418, ptr noundef %0) #16
  %420 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %421 = call i64 @fwrite(ptr nonnull @.str.5, i64 12, i64 1, ptr %420)
  %422 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %423 = load i32, ptr @dump_flags, align 4, !tbaa !6
  call void @print_generic_expr(ptr noundef %422, ptr noundef %419, i32 noundef %423) #17
  %424 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %425 = call i64 @fwrite(ptr nonnull @.str.6, i64 8, i64 1, ptr %424)
  %426 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %427 = load i32, ptr @dump_flags, align 4, !tbaa !6
  call void @print_generic_expr(ptr noundef %426, ptr noundef %405, i32 noundef %427) #17
  %428 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %429 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %428)
  br label %430

430:                                              ; preds = %392, %27, %42, %59, %91, %105, %415, %411, %404, %24, %9, %19
  %431 = phi i8 [ 0, %19 ], [ 0, %9 ], [ 0, %24 ], [ 0, %91 ], [ 0, %105 ], [ 1, %415 ], [ 1, %411 ], [ 1, %404 ], [ 0, %59 ], [ 0, %42 ], [ 0, %27 ], [ 0, %392 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i8 %431
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @simplify_bitwise_and(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #16
  %4 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %1) #16
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 23
  br i1 %7, label %8, label %50

8:                                                ; preds = %2
  %9 = load i64, ptr %3, align 8
  %10 = and i64 %9, 4295032831
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !25
  %15 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %14) #16, !range !21
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %12
  %18 = tail call fastcc ptr @gimple_expr_type(ptr noundef %14) #16
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 6
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = tail call fastcc ptr @gimple_expr_type(ptr noundef %14) #16
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 7
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = tail call fastcc ptr @gimple_expr_type(ptr noundef %14) #16
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %32, label %38

32:                                               ; preds = %27, %22, %17
  %33 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %14) #16
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 121
  %37 = select i1 %36, ptr %33, ptr %3
  br label %38

38:                                               ; preds = %12, %27, %32, %8
  %39 = phi ptr [ %3, %8 ], [ %37, %32 ], [ %3, %27 ], [ %3, %12 ]
  %40 = tail call fastcc i32 @gimple_location(ptr noundef %1) #16
  %41 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %1) #16
  %42 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !25
  %44 = tail call ptr @fold_binary_loc(i32 noundef %40, i32 noundef 89, ptr noundef %43, ptr noundef %39, ptr noundef nonnull %4) #17
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %44) #17
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef %0, ptr noundef nonnull %44) #17
  tail call fastcc void @update_stmt(ptr noundef %1) #16
  br label %50

50:                                               ; preds = %38, %46, %49, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @simplify_gimple_switch(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #16
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %48

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !25
  %9 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %8) #16, !range !21
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %48, label %11

11:                                               ; preds = %6
  %12 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %8) #16, !range !24
  %13 = icmp eq i32 %12, 116
  br i1 %13, label %14, label %48

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %8) #16
  %16 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !25
  %20 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1023
  %23 = load i64, ptr %19, align 8
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 65535
  %26 = add nsw i32 %25, -6
  %27 = icmp ult i32 %26, 3
  br i1 %27, label %28, label %48

28:                                               ; preds = %14
  %29 = load i64, ptr %17, align 8
  %30 = and i64 %29, 2097152
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %35, label %32

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
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  tail call fastcc void @gimple_switch_set_index(ptr noundef %0, ptr noundef nonnull %15) #16
  tail call fastcc void @update_stmt(ptr noundef %0) #16
  br label %48

48:                                               ; preds = %14, %39, %47, %6, %11, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @forward_propagate_into_gimple_cond(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = tail call fastcc i32 @gimple_location(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #15
  store i8 0, ptr %2, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  store i8 0, ptr %3, align 1, !tbaa !25
  %5 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #16, !range !24
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !6
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %109

10:                                               ; preds = %1, %98
  %11 = phi i32 [ %104, %98 ], [ %5, %1 ]
  %12 = phi i32 [ %103, %98 ], [ 0, %1 ]
  %13 = call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #16
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %109

17:                                               ; preds = %10
  %18 = call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #16
  %19 = call fastcc ptr @get_prop_source_stmt(ptr noundef %18, i8 noundef zeroext 0, ptr noundef nonnull %2) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %17
  %22 = call fastcc zeroext i8 @can_propagate_from(ptr noundef nonnull %19) #16, !range !21
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #16
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !25
  %28 = call fastcc ptr @rhs_to_tree(ptr noundef %27, ptr noundef nonnull %19) #16
  %29 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !10
  %30 = load i8, ptr %2, align 1, !tbaa !25
  %31 = icmp eq i8 %30, 0
  %32 = zext i1 %31 to i8
  %33 = call fastcc ptr @combine_cond_expr_cond(i32 noundef %4, i32 noundef %11, ptr noundef %29, ptr noundef %28, ptr noundef %25, i8 noundef zeroext %32) #16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %79

35:                                               ; preds = %17, %21, %24
  %36 = phi ptr [ %28, %24 ], [ null, %21 ], [ null, %17 ]
  %37 = call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #16
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 141
  br i1 %40, label %41, label %109

41:                                               ; preds = %35
  %42 = call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #16
  %43 = call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #16
  %44 = call fastcc ptr @get_prop_source_stmt(ptr noundef %43, i8 noundef zeroext 0, ptr noundef nonnull %3) #16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = call fastcc zeroext i8 @can_propagate_from(ptr noundef nonnull %44) #16, !range !21
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41, %46
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  br label %111

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !25
  %53 = call fastcc ptr @rhs_to_tree(ptr noundef %52, ptr noundef nonnull %44) #16
  %54 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !10
  %55 = load i8, ptr %3, align 1, !tbaa !25
  %56 = icmp eq i8 %55, 0
  %57 = zext i1 %56 to i8
  %58 = call fastcc ptr @combine_cond_expr_cond(i32 noundef %4, i32 noundef %11, ptr noundef %54, ptr noundef %42, ptr noundef %53, i8 noundef zeroext %57) #16
  %59 = icmp eq ptr %58, null
  %60 = icmp ne ptr %36, null
  %61 = and i1 %60, %59
  %62 = icmp ne ptr %53, null
  %63 = and i1 %62, %61
  br i1 %63, label %64, label %76

64:                                               ; preds = %50
  %65 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !10
  %66 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !25
  %68 = call ptr @fold_convert_loc(i32 noundef %4, ptr noundef %67, ptr noundef nonnull %53) #17
  %69 = load i8, ptr %2, align 1, !tbaa !25
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
  br i1 %78, label %109, label %79

79:                                               ; preds = %24, %76
  %80 = phi ptr [ %77, %76 ], [ %33, %24 ]
  %81 = phi ptr [ %43, %76 ], [ %18, %24 ]
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %83 = icmp eq ptr %82, null
  br i1 %83, label %98, label %84

84:                                               ; preds = %79
  %85 = call fastcc i32 @gimple_cond_code(ptr noundef %0) #16, !range !24
  %86 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !10
  %87 = call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #16
  %88 = call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #16
  %89 = call ptr @build2_stat(i32 noundef %85, ptr noundef %86, ptr noundef %87, ptr noundef %88) #17
  %90 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %91 = call i64 @fwrite(ptr nonnull @.str.5, i64 12, i64 1, ptr %90)
  %92 = load ptr, ptr @dump_file, align 8, !tbaa !10
  call void @print_generic_expr(ptr noundef %92, ptr noundef %89, i32 noundef 0) #17
  %93 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %94 = call i64 @fwrite(ptr nonnull @.str.6, i64 8, i64 1, ptr %93)
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !10
  call void @print_generic_expr(ptr noundef %95, ptr noundef nonnull %80, i32 noundef 0) #17
  %96 = load ptr, ptr @dump_file, align 8, !tbaa !10
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
  %103 = select i1 %101, i32 %102, i32 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #15
  store i8 0, ptr %2, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  store i8 0, ptr %3, align 1, !tbaa !25
  %104 = call fastcc i32 @gimple_cond_code(ptr noundef %0) #16, !range !24
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !6
  %108 = icmp eq i32 %107, 5
  br i1 %108, label %10, label %109

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
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !39
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !40
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !42
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !21
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #16
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !26
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #16
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !44
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #17
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !26
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #16
  ret i32 %3
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #8 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !6
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !26
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ]

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
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #8 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !25
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_single_use(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %2, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !25
  %13 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %12) #16, !range !21
  %14 = xor i8 %13, 1
  br label %20

15:                                               ; preds = %6
  %16 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #17
  br label %20

20:                                               ; preds = %15, %1, %18, %10
  %21 = phi i8 [ %14, %10 ], [ %19, %18 ], [ 0, %1 ], [ 0, %15 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  store ptr %6, ptr %0, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #16, !range !21
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #16
  %11 = load ptr, ptr %0, align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !25
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !26
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @forward_propagate_addr_expr_1(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #1 {
  %5 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %2) #16
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 121
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 735, ptr noundef nonnull @.str.2) #17
  br label %10

10:                                               ; preds = %4, %9
  %11 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %5) #16
  %12 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %5) #16, !range !24
  %13 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %5) #16
  %14 = load i64, ptr %11, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %65

17:                                               ; preds = %10
  %18 = trunc i32 %12 to i16
  switch i16 %18, label %65 [
    i16 141, label %19
    i16 116, label %21
    i16 113, label %21
  ]

19:                                               ; preds = %17
  %20 = icmp eq ptr %13, %0
  br i1 %20, label %21, label %65

21:                                               ; preds = %17, %17, %19
  %22 = icmp eq i8 %3, 0
  br i1 %22, label %52, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !25
  %26 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !25
  %28 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %25, ptr noundef %27) #17
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %23
  %31 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1) #17
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %24, align 8, !tbaa !25
  %35 = load i64, ptr %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = and i32 %36, 65535
  %38 = add nsw i32 %37, -6
  %39 = icmp ult i32 %38, 3
  br i1 %39, label %40, label %54

40:                                               ; preds = %33
  %41 = load ptr, ptr %26, align 8, !tbaa !25
  %42 = load i64, ptr %41, align 8
  %43 = trunc i64 %42 to i16
  switch i16 %43, label %54 [
    i16 10, label %44
    i16 12, label %44
  ]

44:                                               ; preds = %40, %40
  %45 = getelementptr inbounds %struct.tree_type, ptr %34, i64 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 1023
  %48 = getelementptr inbounds %struct.tree_type, ptr %41, i64 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 1023
  %51 = icmp ugt i32 %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44, %30, %21
  %53 = tail call fastcc zeroext i8 @forward_propagate_addr_expr(ptr noundef nonnull %11, ptr noundef nonnull %1) #16, !range !21
  br label %279

54:                                               ; preds = %33, %40, %44, %23
  %55 = tail call ptr @unshare_expr(ptr noundef nonnull %1) #17
  tail call fastcc void @gimple_assign_set_rhs1(ptr noundef %5, ptr noundef %55) #16
  %56 = load ptr, ptr %24, align 8, !tbaa !25
  %57 = load ptr, ptr %26, align 8, !tbaa !25
  %58 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %56, ptr noundef %57) #17
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = load i64, ptr %1, align 8
  %62 = trunc i64 %61 to i32
  %63 = and i32 %62, 65535
  tail call fastcc void @gimple_assign_set_rhs_code(ptr noundef %5, i32 noundef %63) #16
  br label %279

64:                                               ; preds = %54
  tail call fastcc void @gimple_assign_set_rhs_code(ptr noundef %5, i32 noundef 116) #16
  br label %279

65:                                               ; preds = %19, %17, %10
  %66 = tail call fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %5) #16
  br label %67

67:                                               ; preds = %67, %65
  %68 = phi ptr [ %66, %65 ], [ %72, %67 ]
  %69 = load ptr, ptr %68, align 8, !tbaa !10
  %70 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %69) #16, !range !21
  %71 = icmp eq i8 %70, 0
  %72 = getelementptr inbounds %struct.tree_exp, ptr %69, i64 0, i32 3
  br i1 %71, label %73, label %67, !llvm.loop !50

73:                                               ; preds = %67
  %74 = load i64, ptr %69, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 47
  br i1 %76, label %77, label %101

77:                                               ; preds = %73
  %78 = load ptr, ptr %72, align 8, !tbaa !25
  %79 = icmp eq ptr %78, %0
  br i1 %79, label %80, label %101

80:                                               ; preds = %77
  %81 = tail call zeroext i8 @may_propagate_address_into_dereference(ptr noundef nonnull %1, ptr noundef nonnull %69) #17
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %101, label %83

83:                                               ; preds = %80
  %84 = tail call fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %5) #16
  %85 = icmp eq ptr %68, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !25
  %89 = getelementptr inbounds %struct.tree_common, ptr %88, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !25
  %91 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !25
  %93 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %90, ptr noundef %92) #17
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %86, %83
  %96 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !25
  %98 = tail call ptr @unshare_expr(ptr noundef %97) #17
  store ptr %98, ptr %68, align 8, !tbaa !10
  %99 = tail call zeroext i8 @fold_stmt_inplace(ptr noundef %5) #17
  tail call fastcc void @tidy_after_forward_propagate_addr(ptr noundef %5) #16
  %100 = icmp eq i8 %3, 0
  br i1 %100, label %101, label %279

101:                                              ; preds = %80, %86, %95, %77, %73
  %102 = phi i8 [ 1, %95 ], [ 1, %77 ], [ 1, %73 ], [ 0, %86 ], [ 0, %80 ]
  %103 = tail call fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %5) #16
  br label %104

104:                                              ; preds = %112, %101
  %105 = phi ptr [ %103, %101 ], [ %113, %112 ]
  %106 = load ptr, ptr %105, align 8, !tbaa !10
  %107 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %106) #16, !range !21
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i64, ptr %106, align 8
  %111 = trunc i64 %110 to i16
  switch i16 %111, label %128 [
    i16 121, label %112
    i16 47, label %114
  ]

112:                                              ; preds = %109, %104
  %113 = getelementptr inbounds %struct.tree_exp, ptr %106, i64 0, i32 3
  br label %104, !llvm.loop !51

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.tree_exp, ptr %106, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !25
  %117 = icmp eq ptr %116, %0
  br i1 %117, label %118, label %128

118:                                              ; preds = %114
  %119 = tail call zeroext i8 @may_propagate_address_into_dereference(ptr noundef nonnull %1, ptr noundef nonnull %106) #17
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i64, ptr %106, align 8
  br label %128

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !25
  %126 = tail call ptr @unshare_expr(ptr noundef %125) #17
  store ptr %126, ptr %105, align 8, !tbaa !10
  %127 = tail call zeroext i8 @fold_stmt_inplace(ptr noundef %5) #17
  tail call fastcc void @tidy_after_forward_propagate_addr(ptr noundef %5) #16
  br label %279

128:                                              ; preds = %109, %121, %114
  %129 = phi i64 [ %122, %121 ], [ %110, %114 ], [ %110, %109 ]
  %130 = and i64 %129, 65535
  %131 = icmp eq i64 %130, 47
  br i1 %131, label %132, label %197

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.tree_exp, ptr %106, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !25
  %135 = icmp eq ptr %134, %0
  br i1 %135, label %136, label %197

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.tree_common, ptr %106, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !25
  %139 = getelementptr inbounds %struct.tree_type, ptr %138, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !25
  %141 = icmp eq ptr %140, null
  br i1 %141, label %197, label %142

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !25
  %145 = getelementptr inbounds %struct.tree_common, ptr %144, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !25
  %147 = getelementptr inbounds %struct.tree_type, ptr %146, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !25
  %149 = icmp eq ptr %148, null
  br i1 %149, label %197, label %150

150:                                              ; preds = %142
  %151 = load i64, ptr %144, align 8
  %152 = and i64 %151, 65535
  %153 = icmp eq i64 %152, 29
  br i1 %153, label %197, label %154

154:                                              ; preds = %150
  %155 = load i64, ptr %138, align 8
  %156 = and i64 %155, 524288
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %197

158:                                              ; preds = %154
  %159 = load i64, ptr %146, align 8
  %160 = and i64 %159, 524288
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %197

162:                                              ; preds = %158
  %163 = tail call i32 @operand_equal_p(ptr noundef nonnull %140, ptr noundef nonnull %148, i32 noundef 0) #17
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %197, label %165

165:                                              ; preds = %162
  %166 = load ptr, ptr %143, align 8, !tbaa !25
  %167 = tail call i32 @get_alias_set(ptr noundef %166) #17
  %168 = tail call i32 @get_alias_set(ptr noundef nonnull %106) #17
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %197

170:                                              ; preds = %165
  %171 = load ptr, ptr %143, align 8, !tbaa !25
  %172 = tail call ptr @unshare_expr(ptr noundef %171) #17
  %173 = load ptr, ptr %137, align 8, !tbaa !25
  %174 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 118, ptr noundef %173, ptr noundef %172) #17
  %175 = load i64, ptr %174, align 8
  %176 = and i64 %175, 65535
  %177 = icmp eq i64 %176, 118
  br i1 %177, label %183, label %178

178:                                              ; preds = %170
  %179 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %5) #16
  %180 = icmp eq ptr %106, %179
  br i1 %180, label %181, label %279

181:                                              ; preds = %178
  %182 = tail call ptr @force_gimple_operand_gsi(ptr noundef %2, ptr noundef nonnull %174, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 0) #17
  tail call fastcc void @gimple_assign_set_rhs1(ptr noundef %5, ptr noundef %182) #16
  tail call fastcc void @tidy_after_forward_propagate_addr(ptr noundef %5) #16
  br label %279

183:                                              ; preds = %170, %183
  %184 = phi ptr [ %188, %183 ], [ %143, %170 ]
  %185 = load ptr, ptr %184, align 8, !tbaa !25
  %186 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %185) #16, !range !21
  %187 = icmp eq i8 %186, 0
  %188 = getelementptr inbounds %struct.tree_exp, ptr %185, i64 0, i32 3
  br i1 %187, label %189, label %183, !llvm.loop !52

189:                                              ; preds = %183
  %190 = load i64, ptr %185, align 8
  %191 = trunc i64 %190 to i32
  %192 = and i32 %191, 65535
  %193 = add nsw i32 %192, -47
  %194 = icmp ult i32 %193, 3
  br i1 %194, label %197, label %195

195:                                              ; preds = %189
  store ptr %174, ptr %105, align 8, !tbaa !10
  %196 = tail call zeroext i8 @fold_stmt_inplace(ptr noundef %5) #17
  tail call fastcc void @tidy_after_forward_propagate_addr(ptr noundef %5) #16
  br label %279

197:                                              ; preds = %189, %165, %162, %158, %154, %150, %142, %136, %132, %128
  %198 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %5) #16, !range !24
  %199 = icmp eq i32 %198, 66
  br i1 %199, label %200, label %279

200:                                              ; preds = %197
  %201 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %5) #16
  %202 = icmp eq ptr %201, %0
  br i1 %202, label %203, label %279

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !25
  %206 = load i64, ptr %205, align 8
  %207 = and i64 %206, 65535
  %208 = icmp eq i64 %207, 45
  br i1 %208, label %209, label %279

209:                                              ; preds = %203
  %210 = getelementptr inbounds %struct.tree_exp, ptr %205, i64 0, i32 3
  %211 = load ptr, ptr %210, align 8, !tbaa !25
  %212 = getelementptr inbounds %struct.tree_common, ptr %211, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !25
  %214 = load i64, ptr %213, align 8
  %215 = and i64 %214, 65535
  %216 = icmp eq i64 %215, 15
  br i1 %216, label %217, label %279

217:                                              ; preds = %209
  %218 = getelementptr inbounds %struct.tree_exp, ptr %205, i64 1
  %219 = load ptr, ptr %218, align 8, !tbaa !25
  %220 = load i64, ptr %219, align 8
  %221 = and i64 %220, 65535
  %222 = icmp eq i64 %221, 23
  br i1 %222, label %223, label %279

223:                                              ; preds = %217
  %224 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %5) #16
  %225 = load i64, ptr %224, align 8
  %226 = and i64 %225, 65535
  %227 = icmp eq i64 %226, 23
  br i1 %227, label %228, label %256

228:                                              ; preds = %223
  %229 = tail call fastcc i32 @gimple_location(ptr noundef %5) #16
  %230 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !25
  %232 = tail call ptr @maybe_fold_stmt_addition(i32 noundef %229, ptr noundef %231, ptr noundef nonnull %1, ptr noundef nonnull %224) #17
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %236

234:                                              ; preds = %228
  %235 = load i64, ptr %224, align 8
  br label %256

236:                                              ; preds = %228
  %237 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %5) #16
  %238 = getelementptr inbounds %struct.tree_common, ptr %237, i64 0, i32 2
  %239 = load ptr, ptr %238, align 8, !tbaa !25
  %240 = tail call ptr @unshare_expr(ptr noundef nonnull %232) #17
  %241 = getelementptr inbounds %struct.tree_common, ptr %240, i64 0, i32 2
  %242 = load ptr, ptr %241, align 8, !tbaa !25
  %243 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %239, ptr noundef %242) #17
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %236
  %246 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %240) #17
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = tail call ptr @force_gimple_operand_gsi(ptr noundef %2, ptr noundef nonnull %240, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #17
  br label %250

250:                                              ; preds = %248, %245
  %251 = phi ptr [ %240, %245 ], [ %249, %248 ]
  %252 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %239, ptr noundef %251) #17
  br label %253

253:                                              ; preds = %236, %250
  %254 = phi ptr [ %240, %236 ], [ %252, %250 ]
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef %2, ptr noundef %254) #17
  %255 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %2) #16
  tail call fastcc void @update_stmt(ptr noundef %255) #16
  tail call fastcc void @tidy_after_forward_propagate_addr(ptr noundef %255) #16
  br label %279

256:                                              ; preds = %234, %223
  %257 = phi i64 [ %235, %234 ], [ %225, %223 ]
  %258 = and i64 %257, 65535
  %259 = icmp eq i64 %258, 141
  br i1 %259, label %260, label %279

260:                                              ; preds = %256
  %261 = load ptr, ptr %218, align 8, !tbaa !25
  %262 = tail call i32 @integer_zerop(ptr noundef %261) #17
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %279, label %264

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %266 = load ptr, ptr %265, align 8, !tbaa !25
  %267 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %268 = load ptr, ptr %267, align 8, !tbaa !25
  %269 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %266, ptr noundef %268) #17
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %279, label %271

271:                                              ; preds = %264
  %272 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  %273 = load ptr, ptr %272, align 8, !tbaa !25
  %274 = load ptr, ptr %267, align 8, !tbaa !25
  %275 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %273, ptr noundef %274) #17
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %279, label %277

277:                                              ; preds = %271
  %278 = tail call fastcc zeroext i8 @forward_propagate_addr_into_variable_array_index(ptr noundef nonnull %224, ptr noundef nonnull %1, ptr noundef %2) #16, !range !21
  br label %279

279:                                              ; preds = %178, %195, %181, %253, %256, %260, %264, %271, %203, %209, %217, %197, %200, %95, %60, %64, %277, %123, %52
  %280 = phi i8 [ %53, %52 ], [ %102, %123 ], [ %278, %277 ], [ 1, %253 ], [ 1, %64 ], [ 1, %60 ], [ 1, %95 ], [ 0, %200 ], [ 0, %197 ], [ 0, %217 ], [ 0, %209 ], [ 0, %203 ], [ 0, %271 ], [ 0, %264 ], [ 0, %260 ], [ 0, %256 ], [ 0, %178 ], [ %102, %195 ], [ %102, %181 ]
  ret i8 %280
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_zero_uses(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %2) #17
  br label %11

11:                                               ; preds = %6, %1, %9
  %12 = phi i8 [ %10, %9 ], [ 1, %1 ], [ 0, %6 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  store ptr %4, ptr %0, align 8, !tbaa !49
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #16, !range !21
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !54
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #16
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #16
  %12 = load ptr, ptr %0, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !25
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: optsize
declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #15
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #17
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #16, !range !26
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #16
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #16
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #16
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #16
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #16
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #16
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !llvm.loop !55

28:                                               ; preds = %2
  br i1 %8, label %45, label %29

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #16
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #16
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #16
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #16
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #16
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #16
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !llvm.loop !56

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
  %56 = load ptr, ptr %55, align 8, !tbaa !54
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #16
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #16
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #16
  store i8 0, ptr %0, align 8, !tbaa !58
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 918, ptr noundef nonnull @.str.2) #17
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #17
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !58
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !60
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #16
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !61
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !62
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #16
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i8, ptr %0, align 8, !tbaa !58
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #9 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #16
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #16
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !64
  store ptr %7, ptr %2, align 8, !tbaa !63
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !61
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !66
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #16
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !58
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 771, ptr noundef nonnull @.str.2) #17
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #16
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !62
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #16
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !67
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
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !68
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !45
  store ptr %2, ptr %6, align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #9 {
  store ptr %1, ptr %0, align 8, !tbaa !68
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !45
  store ptr %0, ptr %4, align 8, !tbaa !68
  store ptr %0, ptr %3, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !25
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #16
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !25
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3103, ptr noundef nonnull @.str.2) #17
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 {
  %4 = and i32 %2, 4
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 5
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 747, ptr noundef nonnull @.str.2) #17
  br label %9

9:                                                ; preds = %3, %8
  %10 = and i32 %2, 10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !69
  br label %23

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #16
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !69
  %17 = icmp eq ptr %15, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !70
  store ptr %22, ptr %16, align 8, !tbaa !69
  br label %23

23:                                               ; preds = %12, %21, %18, %14
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !63
  br label %37

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #16
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !63
  %30 = icmp eq ptr %28, null
  %31 = select i1 %5, i1 true, i1 %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !64
  store ptr %36, ptr %29, align 8, !tbaa !63
  br label %37

37:                                               ; preds = %25, %35, %32, %27
  store i8 0, ptr %0, align 8, !tbaa !58
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !26
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_rhs1(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_assign_set_rhs_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #11 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #5 {
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
  ]

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @may_propagate_address_into_dereference(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tidy_after_forward_propagate_addr(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %0, ptr noundef %0) #17
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4

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
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  tail call void @recompute_tree_invariant_for_addr_expr(ptr noundef %15) #17
  br label %16

16:                                               ; preds = %14, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %0) unnamed_addr #1 {
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
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

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
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !25
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @forward_propagate_addr_into_variable_array_index(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !25
  %10 = tail call i32 @host_integerp(ptr noundef %9, i32 noundef 1) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %92, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !25
  %15 = tail call i32 @integer_onep(ptr noundef %9) #17
  %16 = icmp eq i32 %15, 0
  %17 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %14) #16, !range !21
  %18 = icmp eq i8 %17, 0
  br i1 %16, label %23, label %19

19:                                               ; preds = %12
  br i1 %18, label %82, label %20

20:                                               ; preds = %19
  %21 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %14) #16, !range !24
  %22 = icmp eq i32 %21, 65
  br i1 %22, label %92, label %82

23:                                               ; preds = %12
  br i1 %18, label %92, label %24

24:                                               ; preds = %23
  %25 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %14) #16, !range !24
  %26 = icmp eq i32 %25, 65
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %14) #16
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 23
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %14) #16
  %34 = tail call i32 @tree_int_cst_equal(ptr noundef %33, ptr noundef %9) #17
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %14) #16
  br label %82

38:                                               ; preds = %32, %27, %24
  %39 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %14) #16, !range !24
  %40 = icmp eq i32 %39, 63
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %14) #16, !range !24
  %43 = icmp eq i32 %42, 64
  br i1 %43, label %44, label %92

44:                                               ; preds = %41, %38
  %45 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %14) #16
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 141
  br i1 %48, label %49, label %92

49:                                               ; preds = %44
  %50 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %14) #16
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 23
  br i1 %53, label %54, label %92

54:                                               ; preds = %49
  %55 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %14) #16
  %56 = tail call ptr @div_if_zero_remainder(i32 noundef 76, ptr noundef %55, ptr noundef %9) #17
  %57 = icmp eq ptr %56, null
  br i1 %57, label %92, label %58

58:                                               ; preds = %54
  %59 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %14) #16
  %60 = getelementptr inbounds %struct.tree_ssa_name, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !25
  %62 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %61) #16, !range !21
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %92, label %64

64:                                               ; preds = %58
  %65 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %61) #16, !range !24
  %66 = icmp eq i32 %65, 65
  br i1 %66, label %67, label %92

67:                                               ; preds = %64
  %68 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %61) #16
  %69 = load i64, ptr %68, align 8
  %70 = and i64 %69, 65535
  %71 = icmp eq i64 %70, 23
  br i1 %71, label %72, label %92

72:                                               ; preds = %67
  %73 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %61) #16
  %74 = tail call i32 @tree_int_cst_equal(ptr noundef %73, ptr noundef %9) #17
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %92, label %76

76:                                               ; preds = %72
  %77 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %14) #16, !range !24
  %78 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !25
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
  %89 = load ptr, ptr %88, align 8, !tbaa !25
  %90 = getelementptr inbounds %struct.tree_exp, ptr %89, i64 1
  store ptr %84, ptr %90, align 8, !tbaa !25
  %91 = tail call zeroext i8 @fold_stmt_inplace(ptr noundef %86) #17
  tail call fastcc void @tidy_after_forward_propagate_addr(ptr noundef %86) #16
  br label %92

92:                                               ; preds = %58, %64, %67, %72, %41, %44, %49, %54, %23, %20, %3, %82
  %93 = phi i8 [ 1, %82 ], [ 0, %3 ], [ 0, %20 ], [ 0, %23 ], [ 0, %54 ], [ 0, %49 ], [ 0, %44 ], [ 0, %41 ], [ 0, %72 ], [ 0, %67 ], [ 0, %64 ], [ 0, %58 ]
  ret i8 %93
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1665, ptr noundef nonnull @.str.2) #17
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #16
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !25
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !21
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

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
define internal fastcc ptr @get_prop_source_stmt(ptr noundef %0, i8 noundef zeroext %1, ptr noundef writeonly %2) unnamed_addr #1 {
  %4 = icmp eq i8 %1, 0
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !25
  %9 = tail call fastcc zeroext i8 @has_single_use(ptr noundef %0) #16
  %10 = icmp ne i8 %9, 0
  %11 = or i1 %10, %4
  br i1 %11, label %12, label %64

12:                                               ; preds = %3
  %13 = zext i1 %10 to i8
  br label %14

14:                                               ; preds = %12, %56
  %15 = phi i8 [ %13, %12 ], [ %63, %56 ]
  %16 = phi ptr [ %8, %12 ], [ %59, %56 ]
  %17 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %16) #16, !range !21
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %64, label %19

19:                                               ; preds = %14
  %20 = tail call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef %16) #17
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %19
  br i1 %6, label %23, label %24

23:                                               ; preds = %22
  store i8 %15, ptr %2, align 1, !tbaa !25
  br label %24

24:                                               ; preds = %23, %22
  %25 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %16) #16
  %26 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %16) #16, !range !24
  %27 = icmp eq i32 %26, 116
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %16) #16, !range !24
  %30 = icmp eq i32 %29, 113
  br i1 %30, label %31, label %64

31:                                               ; preds = %28, %24
  %32 = load i64, ptr %25, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 141
  br i1 %34, label %35, label %64

35:                                               ; preds = %31
  %36 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %16) #16
  %37 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !25
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 10
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %16) #16
  %44 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !25
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 12
  br i1 %48, label %49, label %64

49:                                               ; preds = %42, %35
  %50 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !25
  %52 = load i64, ptr %51, align 8
  %53 = trunc i64 %52 to i16
  switch i16 %53, label %64 [
    i16 10, label %56
    i16 12, label %56
  ]

54:                                               ; preds = %19
  %55 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %16) #16
  br label %56

56:                                               ; preds = %49, %49, %54
  %57 = phi ptr [ %55, %54 ], [ %25, %49 ], [ %25, %49 ]
  %58 = getelementptr inbounds %struct.tree_ssa_name, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !25
  %60 = tail call fastcc zeroext i8 @has_single_use(ptr noundef %57) #16
  %61 = icmp ne i8 %60, 0
  %62 = or i1 %61, %4
  %63 = select i1 %61, i8 %15, i8 0
  br i1 %62, label %14, label %64

64:                                               ; preds = %14, %49, %42, %31, %28, %56, %3
  %65 = phi ptr [ null, %3 ], [ null, %14 ], [ %16, %49 ], [ %16, %42 ], [ %16, %31 ], [ %16, %28 ], [ null, %56 ]
  ret ptr %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @can_propagate_from(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #15
  %3 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #16, !range !21
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 266, ptr noundef nonnull @.str.2) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #16, !range !21
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %61

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !24
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !6
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %61, label %15

15:                                               ; preds = %9
  %16 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !24
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !6
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %61, label %21

21:                                               ; preds = %15
  %22 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #17
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %26 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %25) #17
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %24, %21
  %29 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 1) #16
  %30 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #16
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28, %38
  %33 = phi ptr [ %39, %38 ], [ %29, %28 ]
  %34 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %33) #16
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 4194304
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %32
  %39 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %2) #16
  %40 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %32, label %42, !llvm.loop !72

42:                                               ; preds = %38, %28
  %43 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !24
  %44 = icmp eq i32 %43, 116
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !24
  %47 = icmp eq i32 %46, 113
  br i1 %47, label %48, label %61

48:                                               ; preds = %45, %42
  %49 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %50 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !25
  %52 = load i64, ptr %51, align 8
  %53 = trunc i64 %52 to i16
  switch i16 %53, label %60 [
    i16 10, label %54
    i16 12, label %54
  ]

54:                                               ; preds = %48, %48
  %55 = getelementptr inbounds %struct.tree_common, ptr %51, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !25
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 65535
  %59 = icmp eq i64 %58, 20
  br i1 %59, label %61, label %60

60:                                               ; preds = %48, %54
  br label %61

61:                                               ; preds = %32, %45, %60, %54, %24, %9, %15, %6
  %62 = phi i8 [ 0, %6 ], [ 0, %15 ], [ 0, %9 ], [ 1, %24 ], [ 0, %54 ], [ 1, %60 ], [ 1, %45 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #15
  ret i8 %62
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rhs_to_tree(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc i32 @gimple_location(ptr noundef %1) #16
  %4 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #16, !range !24
  %5 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %4) #16, !range !26
  %6 = trunc i32 %5 to i8
  switch i8 %6, label %16 [
    i8 1, label %7
    i8 2, label %11
    i8 3, label %14
  ]

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
define internal fastcc ptr @combine_cond_expr_cond(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #1 {
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !6
  %10 = icmp eq i32 %9, 5
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 370, ptr noundef nonnull @.str.2) #17
  br label %12

12:                                               ; preds = %6, %11
  %13 = tail call ptr @fold_binary_loc(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  %18 = load i64, ptr %17, align 8
  %19 = load i64, ptr %2, align 8
  %20 = xor i64 %19, %18
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 377, ptr noundef nonnull @.str.2) #17
  br label %24

24:                                               ; preds = %15, %23
  %25 = tail call ptr @canonicalize_cond_expr_cond(ptr noundef nonnull %13) #17
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = icmp eq i8 %5, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %25) #17
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

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
define internal fastcc void @remove_prop_source_from_use(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #1 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  br label %5

5:                                                ; preds = %19, %2
  %6 = phi ptr [ %0, %2 ], [ %17, %19 ]
  %7 = call fastcc zeroext i8 @has_zero_uses(ptr noundef %6) #16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !25
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %11) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  call void @release_defs(ptr noundef %11) #17
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #17
  %14 = call zeroext i8 @gimple_assign_copy_p(ptr noundef %11) #17
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %11) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i64, ptr %17, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 141
  br i1 %22, label %5, label %23, !llvm.loop !73

23:                                               ; preds = %13, %19, %16, %9, %5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4

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
define internal fastcc ptr @get_prop_dest_stmt(ptr noundef %0, ptr noundef writeonly %1) unnamed_addr #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %5 = call fastcc zeroext i8 @single_imm_use(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %2, %16
  %8 = phi ptr [ %18, %16 ], [ %0, %2 ]
  %9 = load ptr, ptr %4, align 8, !tbaa !10
  %10 = call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef %9) #17
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %4, align 8, !tbaa !10
  %14 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %13) #16
  %15 = icmp eq ptr %14, %8
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load ptr, ptr %4, align 8, !tbaa !10
  %18 = call fastcc ptr @gimple_assign_lhs(ptr noundef %17) #16
  %19 = call fastcc zeroext i8 @single_imm_use(ptr noundef %18, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %26, label %7

21:                                               ; preds = %7, %12
  %22 = icmp eq ptr %1, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  store ptr %8, ptr %1, align 8, !tbaa !10
  br label %24

24:                                               ; preds = %23, %21
  %25 = load ptr, ptr %4, align 8, !tbaa !10
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
define internal fastcc zeroext i8 @single_imm_use(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %22, %13, %3
  store ptr null, ptr %1, align 8, !tbaa !10
  store ptr null, ptr %2, align 8, !tbaa !10
  br label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %4, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !25
  %16 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %15) #16, !range !21
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %8

18:                                               ; preds = %13
  store ptr %6, ptr %1, align 8, !tbaa !10
  %19 = load ptr, ptr %5, align 8, !tbaa !45
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !25
  store ptr %21, ptr %2, align 8, !tbaa !10
  br label %27

22:                                               ; preds = %9
  %23 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %8, label %25

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #17
  br label %27

27:                                               ; preds = %25, %18, %8
  %28 = phi i8 [ 0, %8 ], [ 1, %18 ], [ %26, %25 ]
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #16, !range !21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !24
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
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !26
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #16
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !24
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !25
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #17
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !25
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !10
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !10
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !25
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !25
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_switch_set_index(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %10 [
    i16 32, label %16
    i16 34, label %16
    i16 36, label %16
    i16 141, label %5
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !25
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %10 [
    i16 32, label %16
    i16 34, label %16
    i16 36, label %16
  ]

10:                                               ; preds = %5, %2
  %11 = and i64 %3, 65535
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !6
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
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #1 {
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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !11, i64 8}
!13 = !{!"function", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !11, i64 128, !7, i64 136, !7, i64 137, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139}
!14 = !{!15, !11, i64 0}
!15 = !{!"control_flow_graph", !11, i64 0, !11, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !11, i64 40, !7, i64 48, !8, i64 52, !8, i64 60, !7, i64 68, !7, i64 72}
!16 = !{!17, !11, i64 56}
!17 = !{!"basic_block_def", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !11, i64 48, !11, i64 56, !8, i64 64, !18, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!18 = !{!"long", !8, i64 0}
!19 = !{!15, !11, i64 8}
!20 = !{i64 0, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 8, !10}
!21 = !{i8 0, i8 2}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{i32 0, i32 65536}
!25 = !{!8, !8, i64 0}
!26 = !{i32 0, i32 256}
!27 = distinct !{!27, !23}
!28 = !{!29, !11, i64 0}
!29 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16}
!30 = !{!29, !11, i64 8}
!31 = !{!29, !11, i64 16}
!32 = !{!33, !11, i64 0}
!33 = !{!"gimple_seq_node_d", !11, i64 0, !11, i64 8, !11, i64 16}
!34 = !{!33, !11, i64 16}
!35 = !{!17, !7, i64 84}
!36 = distinct !{!36, !23}
!37 = !{!38, !8, i64 46}
!38 = !{!"real_format", !11, i64 0, !11, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !8, i64 44, !8, i64 45, !8, i64 46, !8, i64 47, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51}
!39 = !{!17, !7, i64 96}
!40 = !{!41, !11, i64 0}
!41 = !{!"gimple_bb_info", !11, i64 0, !11, i64 8}
!42 = !{!43, !11, i64 0}
!43 = !{!"gimple_seq_d", !11, i64 0, !11, i64 8, !11, i64 16}
!44 = !{!18, !18, i64 0}
!45 = !{!46, !11, i64 8}
!46 = !{!"ssa_use_operand_d", !11, i64 0, !11, i64 8, !8, i64 16, !11, i64 24}
!47 = !{!48, !11, i64 8}
!48 = !{!"immediate_use_iterator_d", !11, i64 0, !11, i64 8, !46, i64 16, !11, i64 48}
!49 = !{!48, !11, i64 0}
!50 = distinct !{!50, !23}
!51 = distinct !{!51, !23}
!52 = distinct !{!52, !23}
!53 = !{!48, !11, i64 24}
!54 = !{!48, !11, i64 16}
!55 = distinct !{!55, !23}
!56 = distinct !{!56, !23}
!57 = !{!46, !11, i64 24}
!58 = !{!59, !8, i64 0}
!59 = !{!"ssa_operand_iterator_d", !8, i64 0, !7, i64 4, !11, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !11, i64 32}
!60 = !{!59, !11, i64 32}
!61 = !{!59, !7, i64 28}
!62 = !{!59, !7, i64 4}
!63 = !{!59, !11, i64 16}
!64 = !{!65, !11, i64 0}
!65 = !{!"use_optype_d", !11, i64 0, !46, i64 8}
!66 = !{!59, !7, i64 24}
!67 = !{!65, !11, i64 32}
!68 = !{!46, !11, i64 0}
!69 = !{!59, !11, i64 8}
!70 = !{!71, !11, i64 0}
!71 = !{!"def_optype_d", !11, i64 0, !11, i64 8}
!72 = distinct !{!72, !23}
!73 = distinct !{!73, !23}
