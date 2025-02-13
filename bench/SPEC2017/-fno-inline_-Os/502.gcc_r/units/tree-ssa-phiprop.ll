; ModuleID = 'tree-ssa-phiprop.c'
source_filename = "tree-ssa-phiprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.phiprop_d = type { ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"phiprop\00", align 1
@pass_phiprop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_phiprop, ptr @tree_ssa_phiprop, ptr null, ptr null, i32 0, i32 75, i32 40, i32 0, i32 0, i32 0, i32 2055 } }, align 8
@flag_tree_phiprop = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"tree-ssa-phiprop.c\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Inserting PHI for result of load \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"  for edge defining \00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c" reusing PHI result \00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c" inserting load \00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_phiprop() #0 !prof !81 !PGOFuncName !82 {
  %1 = load i32, ptr @flag_tree_phiprop, align 4, !tbaa !83
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_ssa_phiprop() #1 !prof !81 !PGOFuncName !87 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  tail call void @calculate_dominance_info(i32 noundef 1) #17
  %4 = load ptr, ptr @cfun, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = getelementptr inbounds %struct.gimple_df, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %8) #18
  %10 = zext i32 %9 to i64
  %11 = tail call ptr @xcalloc(i64 noundef %10, i64 noundef 16) #17
  %12 = load ptr, ptr @cfun, align 8, !tbaa !88
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !96
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  %16 = tail call fastcc ptr @single_succ(ptr noundef %15) #18
  %17 = tail call ptr @get_all_dominated_blocks(i32 noundef 1, ptr noundef %16) #17
  store ptr %17, ptr %1, align 8, !tbaa !88
  %18 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %2) #18, !range !99
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %41, label %20, !prof !100

20:                                               ; preds = %0, %33
  %21 = phi i8 [ %34, %33 ], [ 0, %0 ]
  %22 = phi i32 [ %35, %33 ], [ 0, %0 ]
  %23 = load ptr, ptr %2, align 8, !tbaa !88
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %23) #17
  %24 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !101
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %33, !prof !102

26:                                               ; preds = %20, %26
  %27 = phi i8 [ %30, %26 ], [ %21, %20 ]
  %28 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18
  %29 = call fastcc zeroext i8 @propagate_with_phi(ptr noundef %23, ptr noundef %28, ptr noundef %11, i64 noundef %10) #18
  %30 = or i8 %29, %27
  call fastcc void @gsi_next(ptr noundef nonnull %3) #18
  %31 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !101
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %26, label %33, !prof !103, !llvm.loop !104

33:                                               ; preds = %26, %20
  %34 = phi i8 [ %21, %20 ], [ %30, %26 ]
  %35 = add i32 %22, 1
  %36 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %17, i32 noundef %35, ptr noundef nonnull %2) #18, !range !99
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %20, !prof !106, !llvm.loop !107

38:                                               ; preds = %33
  %39 = icmp eq i8 %34, 0
  br i1 %39, label %41, label %40, !prof !108

40:                                               ; preds = %38
  call void @gsi_commit_edge_inserts() #17
  br label %41

41:                                               ; preds = %0, %40, %38
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %1) #18
  call void @free(ptr noundef %11) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !81 !PGOFuncName !109 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !110

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !111
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_all_dominated_blocks(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !81 !PGOFuncName !113 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_basic_block_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !117 !PGOFuncName !118 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !119

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !120
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !122

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !88
  ret i32 %14
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !123 !PGOFuncName !124 {
  %2 = load ptr, ptr %0, align 8, !tbaa !125
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @propagate_with_phi(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i64 noundef %3) unnamed_addr #1 !prof !127 !PGOFuncName !128 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.immediate_use_iterator_d, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.ssa_operand_iterator_d, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %1) #18
  %12 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #16
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !129
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %169 [
    i16 10, label %17
    i16 12, label %17
  ], !prof !130

17:                                               ; preds = %4, %4
  %18 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !129
  %20 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %19) #17
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %169, label %22, !prof !131

22:                                               ; preds = %17
  %23 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %9, ptr noundef %1, i32 noundef 1) #18
  %24 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %9) #18
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %33, label %26, !prof !132

26:                                               ; preds = %91, %22
  %27 = call fastcc zeroext i8 @single_imm_use(ptr noundef %12, ptr noundef nonnull %8, ptr noundef nonnull %5) #18
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %104, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %5, align 8, !tbaa !88
  %31 = call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef %30) #17
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %104, label %99

33:                                               ; preds = %22, %91
  %34 = phi ptr [ %92, %91 ], [ %23, %22 ]
  %35 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #18
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 4295032831
  %38 = icmp eq i64 %37, 141
  br i1 %38, label %39, label %60, !prof !133

39:                                               ; preds = %33, %55
  %40 = phi i64 [ %57, %55 ], [ %36, %33 ]
  %41 = phi ptr [ %56, %55 ], [ %35, %33 ]
  %42 = getelementptr inbounds %struct.tree_ssa_name, ptr %41, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !129
  %44 = zext i32 %43 to i64
  %45 = icmp ult i64 %44, %3
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.phiprop_d, ptr %2, i64 %44
  %48 = load ptr, ptr %47, align 8, !tbaa !134
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %74, !prof !136

50:                                               ; preds = %39, %46
  %51 = getelementptr inbounds %struct.tree_ssa_name, ptr %41, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !129
  %53 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %52) #17
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %169, label %55

55:                                               ; preds = %50
  %56 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %52) #18
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 4295032831
  %59 = icmp eq i64 %58, 141
  br i1 %59, label %39, label %60, !prof !137, !llvm.loop !138

60:                                               ; preds = %55, %33
  %61 = phi ptr [ %35, %33 ], [ %56, %55 ]
  %62 = phi i64 [ %36, %33 ], [ %57, %55 ]
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 121
  br i1 %64, label %65, label %74, !prof !139

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.tree_exp, ptr %61, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !129
  %68 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !129
  %70 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %69) #17
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %65
  %73 = load i64, ptr %61, align 8
  br label %74

74:                                               ; preds = %46, %72, %60
  %75 = phi i64 [ %73, %72 ], [ %62, %60 ], [ %40, %46 ]
  %76 = phi ptr [ %61, %72 ], [ %61, %60 ], [ %41, %46 ]
  %77 = and i64 %75, 65535
  %78 = icmp eq i64 %77, 141
  br i1 %78, label %79, label %169, !prof !136

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.tree_ssa_name, ptr %76, i64 0, i32 3
  %81 = load i32, ptr %80, align 8, !tbaa !129
  %82 = zext i32 %81 to i64
  %83 = icmp ult i64 %82, %3
  br i1 %83, label %84, label %169

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.phiprop_d, ptr %2, i64 %82
  %86 = load ptr, ptr %85, align 8, !tbaa !134
  %87 = icmp eq ptr %86, null
  br i1 %87, label %169, label %88

88:                                               ; preds = %84
  %89 = tail call fastcc zeroext i8 @phivn_valid_p(ptr noundef nonnull %2, ptr noundef nonnull %76, ptr noundef %0) #18, !range !101
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %169, label %91

91:                                               ; preds = %88, %65
  %92 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %9) #18
  %93 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %9) #18
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %33, label %26, !prof !140, !llvm.loop !141

95:                                               ; preds = %99
  %96 = load ptr, ptr %5, align 8, !tbaa !88
  %97 = call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef %96) #17
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %104, label %99, !llvm.loop !142

99:                                               ; preds = %29, %95
  %100 = load ptr, ptr %5, align 8, !tbaa !88
  %101 = call fastcc ptr @gimple_assign_lhs(ptr noundef %100) #18
  %102 = call fastcc zeroext i8 @single_imm_use(ptr noundef %101, ptr noundef nonnull %8, ptr noundef nonnull %5) #18
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %95, !llvm.loop !142

104:                                              ; preds = %99, %95, %29, %26
  %105 = phi ptr [ %12, %26 ], [ %12, %29 ], [ %101, %95 ], [ %101, %99 ]
  %106 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %7, ptr noundef %105) #18
  store ptr %106, ptr %5, align 8, !tbaa !88
  %107 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %7) #18, !range !101
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %169

109:                                              ; preds = %104, %163
  %110 = phi ptr [ %165, %163 ], [ null, %104 ]
  %111 = phi i8 [ %164, %163 ], [ 0, %104 ]
  %112 = phi ptr [ %166, %163 ], [ %106, %104 ]
  %113 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %112) #18, !range !101
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %163, label %115

115:                                              ; preds = %109
  %116 = call fastcc ptr @gimple_assign_lhs(ptr noundef %112) #18
  %117 = load i64, ptr %116, align 8
  %118 = and i64 %117, 65535
  %119 = icmp eq i64 %118, 141
  br i1 %119, label %120, label %163

120:                                              ; preds = %115
  %121 = load ptr, ptr %5, align 8, !tbaa !88
  %122 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %121) #18, !range !143
  %123 = icmp eq i32 %122, 47
  br i1 %123, label %124, label %163

124:                                              ; preds = %120
  %125 = load ptr, ptr %5, align 8, !tbaa !88
  %126 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %125) #18
  %127 = getelementptr inbounds %struct.tree_exp, ptr %126, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !129
  %129 = icmp eq ptr %128, %105
  br i1 %129, label %130, label %163

130:                                              ; preds = %124
  %131 = load ptr, ptr %5, align 8, !tbaa !88
  %132 = call zeroext i8 @stmt_can_throw_internal(ptr noundef %131) #17
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %163

134:                                              ; preds = %130
  %135 = load ptr, ptr %5, align 8, !tbaa !88
  %136 = call fastcc ptr @gimple_vuse(ptr noundef %135) #18
  %137 = load i64, ptr %136, align 8
  %138 = and i64 %137, 4294967296
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.tree_ssa_name, ptr %136, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !129
  %143 = call fastcc ptr @gimple_bb(ptr noundef %142) #18
  %144 = icmp eq ptr %143, %0
  br i1 %144, label %163, label %145

145:                                              ; preds = %140
  %146 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %0, ptr noundef %143) #17
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %163, label %148

148:                                              ; preds = %145, %134
  %149 = icmp eq i8 %111, 0
  %150 = load ptr, ptr %5, align 8, !tbaa !88
  br i1 %149, label %151, label %161

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.tree_ssa_name, ptr %105, i64 0, i32 3
  %153 = call fastcc ptr @phiprop_insert_phi(ptr noundef %0, ptr noundef %1, ptr noundef %150, ptr noundef %2, i64 noundef %3) #18
  %154 = load i32, ptr %152, align 8, !tbaa !129
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.phiprop_d, ptr %2, i64 %155
  store ptr %153, ptr %156, align 8, !tbaa !134
  %157 = load i32, ptr %152, align 8, !tbaa !129
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.phiprop_d, ptr %2, i64 %158, i32 1
  store ptr %136, ptr %159, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #16
  %160 = load ptr, ptr %5, align 8, !tbaa !88
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %160) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !145
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #16
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 0) #17
  br label %163

161:                                              ; preds = %148
  call fastcc void @gimple_assign_set_rhs1(ptr noundef %150, ptr noundef %110) #18
  %162 = load ptr, ptr %5, align 8, !tbaa !88
  call fastcc void @update_stmt(ptr noundef %162) #18
  br label %163

163:                                              ; preds = %145, %140, %161, %151, %109, %115, %120, %124, %130
  %164 = phi i8 [ %111, %130 ], [ %111, %124 ], [ %111, %120 ], [ %111, %115 ], [ %111, %109 ], [ 1, %161 ], [ 1, %151 ], [ %111, %140 ], [ %111, %145 ]
  %165 = phi ptr [ %110, %130 ], [ %110, %124 ], [ %110, %120 ], [ %110, %115 ], [ %110, %109 ], [ %110, %161 ], [ %153, %151 ], [ %110, %140 ], [ %110, %145 ]
  %166 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %7) #18
  store ptr %166, ptr %5, align 8, !tbaa !88
  %167 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %7) #18, !range !101
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %109, label %169, !llvm.loop !146

169:                                              ; preds = %88, %84, %79, %74, %50, %163, %104, %17, %4
  %170 = phi i8 [ 0, %4 ], [ 0, %17 ], [ 0, %104 ], [ %164, %163 ], [ 0, %50 ], [ 0, %74 ], [ 0, %79 ], [ 0, %84 ], [ 0, %88 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i8 %170
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 !prof !127 !PGOFuncName !147 {
  %2 = load ptr, ptr %0, align 8, !tbaa !125
  %3 = load ptr, ptr %2, align 8, !tbaa !148
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #8 !prof !127 !PGOFuncName !150 {
  %2 = load ptr, ptr %0, align 8, !tbaa !125
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !151
  store ptr %4, ptr %0, align 8, !tbaa !125
  ret void
}

; Function Attrs: optsize
declare void @gsi_commit_edge_inserts() local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #9 !prof !81 !PGOFuncName !152 {
  %2 = load ptr, ptr %0, align 8, !tbaa !88
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !110

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !81 !PGOFuncName !153 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #18, !range !101
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !110

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 645, ptr noundef nonnull @.str.2) #17
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !154
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #18
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !81 !PGOFuncName !156 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #18
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !81 !PGOFuncName !157 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !81 !PGOFuncName !158 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !110

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !159
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !127 !PGOFuncName !161 {
  %2 = load ptr, ptr %0, align 8, !tbaa !88
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #11 !prof !127 !PGOFuncName !162 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 !prof !163 !PGOFuncName !164 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #18
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #18
  store i8 0, ptr %0, align 8, !tbaa !165
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !136

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 918, ptr noundef nonnull @.str.2) #17
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #17
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !136

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !165
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !167
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #18
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !168
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !169
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #18
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !163 !PGOFuncName !170 {
  %2 = load i8, ptr %0, align 8, !tbaa !165
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !163 !PGOFuncName !171 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !172
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 !prof !174 !PGOFuncName !175 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @phivn_valid_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #1 !prof !174 !PGOFuncName !176 {
  %4 = alloca %struct.immediate_use_iterator_d, align 8
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !129
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.phiprop_d, ptr %0, i64 %7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 113, ptr noundef nonnull @.str.2) #17
  br label %12

12:                                               ; preds = %3, %11
  %13 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %4, ptr noundef %9) #18
  %14 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %4) #18, !range !101
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %12, %28
  %17 = phi ptr [ %29, %28 ], [ %13, %12 ]
  %18 = call fastcc ptr @gimple_vdef(ptr noundef %17) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = call fastcc i32 @gimple_code(ptr noundef %17) #18, !range !177
  %22 = icmp eq i32 %21, 16
  br i1 %22, label %23, label %28

23:                                               ; preds = %20, %16
  %24 = call fastcc ptr @gimple_bb(ptr noundef %17) #18
  %25 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %24, ptr noundef %2) #17
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  call fastcc void @end_imm_use_stmt_traverse(ptr noundef nonnull %4) #18
  br label %32

28:                                               ; preds = %20, %23
  %29 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %4) #18
  %30 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %4) #18, !range !101
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %16, label %32, !llvm.loop !178

32:                                               ; preds = %28, %12, %27
  %33 = phi i8 [ 0, %27 ], [ 1, %12 ], [ 1, %28 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #16
  ret i8 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #1 !prof !163 !PGOFuncName !179 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !180
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !181

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !182
  store ptr %7, ptr %2, align 8, !tbaa !180
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !184
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !168
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !181

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !167
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !184
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #18
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !165
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @single_imm_use(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !174 !PGOFuncName !185 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !186
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %22, %13, %3
  store ptr null, ptr %1, align 8, !tbaa !88
  store ptr null, ptr %2, align 8, !tbaa !88
  br label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !186
  %12 = icmp eq ptr %4, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !129
  %16 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %15) #18, !range !101
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %8

18:                                               ; preds = %13
  store ptr %6, ptr %1, align 8, !tbaa !88
  %19 = load ptr, ptr %5, align 8, !tbaa !186
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !129
  store ptr %21, ptr %2, align 8, !tbaa !88
  br label %27

22:                                               ; preds = %9
  %23 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !83
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %8, label %25

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #17
  br label %27

27:                                               ; preds = %25, %18, %8
  %28 = phi i8 [ 0, %8 ], [ 1, %18 ], [ %26, %25 ]
  ret i8 %28
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 !prof !174 !PGOFuncName !187 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !174 !PGOFuncName !188 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !189
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !186
  store ptr %6, ptr %0, align 8, !tbaa !191
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #18, !range !101
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #18
  %11 = load ptr, ptr %0, align 8, !tbaa !191
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !129
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !174 !PGOFuncName !192 {
  %2 = load ptr, ptr %0, align 8, !tbaa !191
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !189
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !174 !PGOFuncName !193 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !177
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #1 !prof !174 !PGOFuncName !194 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #18, !range !143
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #18, !range !177
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #18
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: optsize
declare zeroext i8 @stmt_can_throw_internal(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !174 !PGOFuncName !195 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #18, !range !101
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !129
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !174 !PGOFuncName !196 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @phiprop_insert_phi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4) unnamed_addr #1 !prof !174 !PGOFuncName !197 {
  %6 = alloca %struct.edge_iterator, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %8 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %2) #18, !range !101
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %2) #18, !range !143
  %12 = icmp eq i32 %11, 47
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 143, ptr noundef nonnull @.str.2) #17
  br label %14

14:                                               ; preds = %10, %13
  %15 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %2) #18
  %16 = tail call ptr @create_phi_node(ptr noundef %15, ptr noundef %0) #17
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %15, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !129
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !88
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = load i32, ptr @dump_flags, align 4, !tbaa !83
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 33, i64 1, ptr nonnull %18)
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !88
  tail call void @print_gimple_stmt(ptr noundef %26, ptr noundef %2, i32 noundef 0, i32 noundef 0) #17
  br label %27

27:                                               ; preds = %24, %20, %14
  %28 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #18
  store i32 0, ptr %6, align 8, !tbaa.struct !198
  %29 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %28, ptr %29, align 8, !tbaa.struct !199
  %30 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %28, ptr noundef nonnull %7) #18, !range !101
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %143, label %32

32:                                               ; preds = %27, %137
  %33 = load ptr, ptr %7, align 8, !tbaa !88
  %34 = getelementptr inbounds %struct.edge_def, ptr %33, i64 0, i32 6
  %35 = load i32, ptr %34, align 4, !tbaa !200
  %36 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %1, i32 noundef %35) #18
  %37 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %36) #18
  %38 = tail call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %1, ptr noundef %33) #18
  %39 = load i64, ptr %37, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 141
  br i1 %41, label %42, label %62

42:                                               ; preds = %32, %54
  %43 = phi i64 [ %59, %54 ], [ %39, %32 ]
  %44 = phi ptr [ %57, %54 ], [ %37, %32 ]
  %45 = phi i32 [ %58, %54 ], [ %38, %32 ]
  %46 = getelementptr inbounds %struct.tree_ssa_name, ptr %44, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !129
  %48 = zext i32 %47 to i64
  %49 = icmp ult i64 %48, %4
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.phiprop_d, ptr %3, i64 %48
  %52 = load ptr, ptr %51, align 8, !tbaa !134
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %42, %50
  %55 = getelementptr inbounds %struct.tree_ssa_name, ptr %44, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !129
  %57 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %56) #18
  %58 = tail call fastcc i32 @gimple_location(ptr noundef %56) #18
  %59 = load i64, ptr %57, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 141
  br i1 %61, label %42, label %62, !llvm.loop !201

62:                                               ; preds = %50, %54, %32
  %63 = phi i32 [ %38, %32 ], [ %58, %54 ], [ %45, %50 ]
  %64 = phi ptr [ %37, %32 ], [ %57, %54 ], [ %44, %50 ]
  %65 = phi i64 [ %39, %32 ], [ %59, %54 ], [ %43, %50 ]
  %66 = trunc i64 %65 to i16
  switch i16 %66, label %96 [
    i16 141, label %67
    i16 121, label %97
  ]

67:                                               ; preds = %62
  %68 = load ptr, ptr @dump_file, align 8, !tbaa !88
  %69 = icmp eq ptr %68, null
  br i1 %69, label %90, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr @dump_flags, align 4, !tbaa !83
  %72 = and i32 %71, 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %70
  %75 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 20, i64 1, ptr nonnull %68)
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !88
  %77 = load i32, ptr %34, align 4, !tbaa !200
  %78 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %1, i32 noundef %77) #18
  %79 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %78) #18
  tail call void @print_generic_expr(ptr noundef %76, ptr noundef %79, i32 noundef 0) #17
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !88
  %81 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 20, i64 1, ptr %80)
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !88
  %83 = getelementptr inbounds %struct.tree_ssa_name, ptr %64, i64 0, i32 3
  %84 = load i32, ptr %83, align 8, !tbaa !129
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.phiprop_d, ptr %3, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !134
  tail call void @print_generic_expr(ptr noundef %82, ptr noundef %87, i32 noundef 0) #17
  %88 = load ptr, ptr @dump_file, align 8, !tbaa !88
  %89 = tail call i32 @fputc(i32 10, ptr %88)
  br label %90

90:                                               ; preds = %74, %70, %67
  %91 = getelementptr inbounds %struct.tree_ssa_name, ptr %64, i64 0, i32 3
  %92 = load i32, ptr %91, align 8, !tbaa !129
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.phiprop_d, ptr %3, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !134
  br label %137

96:                                               ; preds = %62
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 191, ptr noundef nonnull @.str.2) #17
  br label %97

97:                                               ; preds = %62, %96
  %98 = getelementptr inbounds %struct.tree_exp, ptr %64, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !129
  %100 = getelementptr inbounds %struct.tree_common, ptr %99, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !129
  %102 = tail call ptr @create_tmp_var(ptr noundef %101, ptr noundef null) #17
  %103 = tail call ptr @unshare_expr(ptr noundef %99) #17
  %104 = tail call ptr @gimple_build_assign_stat(ptr noundef %102, ptr noundef %103) #17
  %105 = load ptr, ptr %100, align 8, !tbaa !129
  %106 = load i64, ptr %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = and i32 %107, 65535
  %109 = add nsw i32 %108, -13
  %110 = icmp ult i32 %109, 2
  br i1 %110, label %111, label %115

111:                                              ; preds = %97
  %112 = getelementptr inbounds %struct.tree_decl_common, ptr %102, i64 0, i32 2
  %113 = load i64, ptr %112, align 8
  %114 = or i64 %113, 134217728
  store i64 %114, ptr %112, align 8
  br label %115

115:                                              ; preds = %97, %111
  %116 = tail call zeroext i8 @is_gimple_reg(ptr noundef %102) #17
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 198, ptr noundef nonnull @.str.2) #17
  br label %119

119:                                              ; preds = %115, %118
  %120 = tail call zeroext i8 @add_referenced_var(ptr noundef %102) #17
  %121 = tail call fastcc ptr @make_ssa_name(ptr noundef %102, ptr noundef %104) #18
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %104, ptr noundef %121) #18
  tail call fastcc void @gimple_set_location(ptr noundef %104, i32 noundef %63) #18
  tail call void @gsi_insert_on_edge(ptr noundef %33, ptr noundef %104) #17
  tail call fastcc void @update_stmt(ptr noundef %104) #18
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !88
  %123 = icmp eq ptr %122, null
  br i1 %123, label %137, label %124

124:                                              ; preds = %119
  %125 = load i32, ptr @dump_flags, align 4, !tbaa !83
  %126 = and i32 %125, 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %137, label %128

128:                                              ; preds = %124
  %129 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 20, i64 1, ptr nonnull %122)
  %130 = load ptr, ptr @dump_file, align 8, !tbaa !88
  %131 = load i32, ptr %34, align 4, !tbaa !200
  %132 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %1, i32 noundef %131) #18
  %133 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %132) #18
  tail call void @print_generic_expr(ptr noundef %130, ptr noundef %133, i32 noundef 0) #17
  %134 = load ptr, ptr @dump_file, align 8, !tbaa !88
  %135 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 16, i64 1, ptr %134)
  %136 = load ptr, ptr @dump_file, align 8, !tbaa !88
  tail call void @print_gimple_stmt(ptr noundef %136, ptr noundef %104, i32 noundef 0, i32 noundef 0) #17
  br label %137

137:                                              ; preds = %119, %124, %128, %90
  %138 = phi ptr [ %95, %90 ], [ %121, %128 ], [ %121, %124 ], [ %121, %119 ]
  tail call void @add_phi_arg(ptr noundef %16, ptr noundef %138, ptr noundef %33, i32 noundef %63) #17
  call fastcc void @ei_next(ptr noundef nonnull %6) #18
  %139 = load i32, ptr %6, align 8
  %140 = load ptr, ptr %29, align 8
  %141 = call fastcc zeroext i8 @ei_cond(i32 %139, ptr %140, ptr noundef nonnull %7) #18, !range !101
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %32, !llvm.loop !202

143:                                              ; preds = %137, %27
  tail call fastcc void @update_stmt(ptr noundef %16) #18
  %144 = load ptr, ptr @dump_file, align 8, !tbaa !88
  %145 = icmp eq ptr %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %143
  %147 = load i32, ptr @dump_flags, align 4, !tbaa !83
  %148 = and i32 %147, 8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  tail call void @print_gimple_stmt(ptr noundef nonnull %144, ptr noundef %16, i32 noundef 0, i32 noundef 0) #17
  br label %151

151:                                              ; preds = %150, %146, %143
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  ret ptr %15
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_rhs1(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !174 !PGOFuncName !203 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #1 !prof !174 !PGOFuncName !204 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !101
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
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #1 !prof !174 !PGOFuncName !205 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !206
  store ptr %4, ptr %0, align 8, !tbaa !191
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #18, !range !101
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !207
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #18
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #18
  %12 = load ptr, ptr %0, align 8, !tbaa !191
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !129
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !163 !PGOFuncName !208 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #12 !prof !163 !PGOFuncName !209 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !165
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !163 !PGOFuncName !210 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !129
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !174 !PGOFuncName !211 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !101
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #18
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !174 !PGOFuncName !212 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !177
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !174 !PGOFuncName !213 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #18
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !214
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #17
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !174 !PGOFuncName !215 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !174 !PGOFuncName !216 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !177
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #18
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #11 !prof !174 !PGOFuncName !217 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !83
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !174 !PGOFuncName !218 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #18, !range !101
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !129
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @end_imm_use_stmt_traverse(ptr nocapture noundef %0) unnamed_addr #13 !prof !174 !PGOFuncName !219 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !174 !PGOFuncName !220 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !177
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #13 !prof !174 !PGOFuncName !221 {
  %2 = load ptr, ptr %0, align 8, !tbaa !222
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !186
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !186
  store ptr %2, ptr %6, align 8, !tbaa !222
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !163 !PGOFuncName !223 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #18
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !163 !PGOFuncName !224 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !129
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !136

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.2) #17
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !174 !PGOFuncName !225 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !177
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !174 !PGOFuncName !226 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !129
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #16
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #17
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #18, !range !177
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #18
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #18
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #18
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #18
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #18
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #18
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !llvm.loop !227

28:                                               ; preds = %2
  br i1 %8, label %45, label %29

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #18
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #18
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #18
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #18
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #18
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #18
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !llvm.loop !228

45:                                               ; preds = %28
  %46 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %5) #18
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #18
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @move_use_after_head(ptr noundef nonnull %46, ptr noundef nonnull %0, ptr noundef nonnull %0) #18
  br label %53

53:                                               ; preds = %40, %23, %29, %11, %48, %51, %45
  %54 = phi ptr [ %52, %51 ], [ %0, %48 ], [ %0, %45 ], [ %0, %11 ], [ %0, %29 ], [ %24, %23 ], [ %41, %40 ]
  %55 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !207
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #18
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #13 !prof !174 !PGOFuncName !229 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !186
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #18
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #18
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !prof !174 !PGOFuncName !230 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 771, ptr noundef nonnull @.str.2) #17
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #18
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !169
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #18
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #7 !prof !174 !PGOFuncName !231 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #18, !range !101
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !129
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !232
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
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !174 !PGOFuncName !233 {
  store ptr %1, ptr %0, align 8, !tbaa !222
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !186
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !186
  store ptr %0, ptr %4, align 8, !tbaa !222
  store ptr %0, ptr %3, align 8, !tbaa !186
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !prof !174 !PGOFuncName !234 {
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
  store ptr null, ptr %13, align 8, !tbaa !235
  br label %23

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #18
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !235
  %17 = icmp eq ptr %15, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !236
  store ptr %22, ptr %16, align 8, !tbaa !235
  br label %23

23:                                               ; preds = %12, %21, %18, %14
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !180
  br label %37

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #18
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !180
  %30 = icmp eq ptr %28, null
  %31 = select i1 %5, i1 true, i1 %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !182
  store ptr %36, ptr %29, align 8, !tbaa !180
  br label %37

37:                                               ; preds = %25, %35, %32, %27
  store i8 0, ptr %0, align 8, !tbaa !165
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !174 !PGOFuncName !238 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !101
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !129
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !174 !PGOFuncName !239 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !101
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !129
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !174 !PGOFuncName !240 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !177
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1446, ptr noundef nonnull @.str.2) #17
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #11 !prof !174 !PGOFuncName !241 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !129
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #11 !prof !174 !PGOFuncName !242 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 !prof !174 !PGOFuncName !243 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #18, !range !101
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #18
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !88
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !174 !PGOFuncName !244 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !200
  %5 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %4) #18
  %6 = getelementptr inbounds %struct.phi_arg_d, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !245
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !174 !PGOFuncName !247 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !129
  ret i32 %3
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !174 !PGOFuncName !248 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !88
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #17
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !174 !PGOFuncName !249 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #18
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !129
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #12 !prof !174 !PGOFuncName !250 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !129
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #1 !prof !174 !PGOFuncName !251 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #18
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #18
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 738, ptr noundef nonnull @.str.2) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !252
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !252
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #1 !prof !174 !PGOFuncName !254 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #1 !prof !174 !PGOFuncName !255 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #18
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #1 !prof !174 !PGOFuncName !256 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 687, ptr noundef nonnull @.str.2) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !88
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 !prof !174 !PGOFuncName !257 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !101
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #18
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1665, ptr noundef nonnull @.str.2) #17
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #18
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !174 !PGOFuncName !258 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !129
  ret i32 %3
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!80}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!35 = !{ptr @tree_ssa_phiprop, ptr @calculate_dominance_info, i64 38}
!36 = !{ptr @tree_ssa_phiprop, ptr @VEC_tree_base_length, i64 38}
!37 = !{ptr @tree_ssa_phiprop, ptr @xcalloc, i64 38}
!38 = !{ptr @tree_ssa_phiprop, ptr @single_succ, i64 38}
!39 = !{ptr @tree_ssa_phiprop, ptr @get_all_dominated_blocks, i64 38}
!40 = !{ptr @tree_ssa_phiprop, ptr @VEC_basic_block_base_iterate, i64 142931}
!41 = !{ptr @tree_ssa_phiprop, ptr @gsi_start_phis, i64 142893}
!42 = !{ptr @tree_ssa_phiprop, ptr @gsi_end_p, i64 182960}
!43 = !{ptr @tree_ssa_phiprop, ptr @gsi_stmt, i64 40067}
!44 = !{ptr @tree_ssa_phiprop, ptr @propagate_with_phi, i64 40067}
!45 = !{ptr @tree_ssa_phiprop, ptr @gsi_next, i64 40067}
!46 = !{ptr @tree_ssa_phiprop, ptr @gsi_commit_edge_inserts, i64 1}
!47 = !{ptr @tree_ssa_phiprop, ptr @VEC_basic_block_heap_free, i64 38}
!48 = !{ptr @tree_ssa_phiprop, ptr @free, i64 38}
!49 = !{ptr @single_succ, ptr @single_succ_edge, i64 38}
!50 = !{ptr @propagate_with_phi, ptr @gimple_phi_result_ptr, i64 41120}
!51 = !{ptr @propagate_with_phi, ptr @get_def_from_ptr, i64 41120}
!52 = !{ptr @propagate_with_phi, ptr @is_gimple_reg_type, i64 21}
!53 = !{ptr @propagate_with_phi, ptr @op_iter_init_phiuse, i64 7}
!54 = !{ptr @propagate_with_phi, ptr @op_iter_done, i64 9}
!55 = !{ptr @propagate_with_phi, ptr @get_use_from_ptr, i64 8}
!56 = !{ptr @propagate_with_phi, ptr @phivn_valid_p, i64 1}
!57 = !{ptr @propagate_with_phi, ptr @op_iter_next_use, i64 2}
!58 = !{ptr @propagate_with_phi, ptr @gimple_assign_ssa_name_copy_p, i64 2}
!59 = !{ptr @propagate_with_phi, ptr @gimple_assign_lhs, i64 4}
!60 = !{ptr @propagate_with_phi, ptr @single_imm_use, i64 2}
!61 = !{ptr @propagate_with_phi, ptr @is_gimple_assign, i64 3}
!62 = !{ptr @propagate_with_phi, ptr @gimple_assign_rhs_code, i64 1}
!63 = !{ptr @propagate_with_phi, ptr @gimple_assign_rhs1, i64 1}
!64 = !{ptr @propagate_with_phi, ptr @next_imm_use_stmt, i64 3}
!65 = !{ptr @propagate_with_phi, ptr @end_imm_use_stmt_p, i64 3}
!66 = !{ptr @VEC_basic_block_heap_free, ptr @free, i64 37}
!67 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 38}
!68 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!69 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 38}
!70 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 38}
!71 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_result, i64 6}
!72 = !{ptr @op_iter_init_phiuse, ptr @clear_and_done_ssa_iter, i64 6}
!73 = !{ptr @op_iter_init_phiuse, ptr @fancy_abort, i64 1}
!74 = !{ptr @op_iter_init_phiuse, ptr @is_gimple_reg, i64 6}
!75 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_num_args, i64 5}
!76 = !{ptr @op_iter_init_phiuse, ptr @op_iter_next_use, i64 5}
!77 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 5}
!78 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 6}
!79 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!80 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!81 = !{!"function_entry_count", i64 38}
!82 = !{!"tree-ssa-phiprop.c:gate_phiprop"}
!83 = !{!84, !84, i64 0}
!84 = !{!"int", !85, i64 0}
!85 = !{!"omnipotent char", !86, i64 0}
!86 = !{!"Simple C/C++ TBAA"}
!87 = !{!"tree-ssa-phiprop.c:tree_ssa_phiprop"}
!88 = !{!89, !89, i64 0}
!89 = !{!"any pointer", !85, i64 0}
!90 = !{!91, !89, i64 24}
!91 = !{!"function", !89, i64 0, !89, i64 8, !89, i64 16, !89, i64 24, !89, i64 32, !89, i64 40, !89, i64 48, !89, i64 56, !89, i64 64, !89, i64 72, !89, i64 80, !89, i64 88, !89, i64 96, !84, i64 104, !84, i64 108, !84, i64 112, !84, i64 116, !84, i64 120, !84, i64 124, !89, i64 128, !84, i64 136, !84, i64 137, !84, i64 138, !84, i64 138, !84, i64 138, !84, i64 138, !84, i64 138, !84, i64 138, !84, i64 138, !84, i64 139, !84, i64 139, !84, i64 139, !84, i64 139, !84, i64 139, !84, i64 139, !84, i64 139}
!92 = !{!93, !89, i64 16}
!93 = !{!"gimple_df", !89, i64 0, !89, i64 8, !89, i64 16, !89, i64 24, !94, i64 32, !94, i64 48, !89, i64 64, !89, i64 72, !89, i64 80, !89, i64 88, !84, i64 96, !95, i64 104}
!94 = !{!"pt_solution", !84, i64 0, !84, i64 0, !84, i64 0, !84, i64 0, !84, i64 0, !84, i64 0, !89, i64 8}
!95 = !{!"ssa_operands", !89, i64 0, !84, i64 8, !84, i64 12, !85, i64 16, !89, i64 24, !89, i64 32}
!96 = !{!91, !89, i64 8}
!97 = !{!98, !89, i64 0}
!98 = !{!"control_flow_graph", !89, i64 0, !89, i64 8, !89, i64 16, !84, i64 24, !84, i64 28, !84, i64 32, !89, i64 40, !84, i64 48, !85, i64 52, !85, i64 60, !84, i64 68, !84, i64 72}
!99 = !{i32 0, i32 2}
!100 = !{!"branch_weights", i32 1, i32 155}
!101 = !{i8 0, i8 2}
!102 = !{!"branch_weights", i32 41121, i32 105532}
!103 = !{!"branch_weights", i32 0, i32 41121}
!104 = distinct !{!104, !105}
!105 = !{!"llvm.loop.mustprogress"}
!106 = !{!"branch_weights", i32 155, i32 586457}
!107 = distinct !{!107, !105}
!108 = !{!"branch_weights", i32 2093450190, i32 54033458}
!109 = !{!"tree-ssa-phiprop.c:VEC_tree_base_length"}
!110 = !{!"branch_weights", i32 1, i32 39}
!111 = !{!112, !84, i64 0}
!112 = !{!"VEC_tree_base", !84, i64 0, !84, i64 4, !85, i64 8}
!113 = !{!"tree-ssa-phiprop.c:single_succ"}
!114 = !{!115, !89, i64 8}
!115 = !{!"edge_def", !89, i64 0, !89, i64 8, !85, i64 16, !89, i64 24, !89, i64 32, !84, i64 40, !84, i64 44, !84, i64 48, !84, i64 52, !116, i64 56}
!116 = !{!"long", !85, i64 0}
!117 = !{!"function_entry_count", i64 146690}
!118 = !{!"tree-ssa-phiprop.c:VEC_basic_block_base_iterate"}
!119 = !{!"branch_weights", i32 1, i32 146691}
!120 = !{!121, !84, i64 0}
!121 = !{!"VEC_basic_block_base", !84, i64 0, !84, i64 4, !85, i64 8}
!122 = !{!"branch_weights", i32 146653, i32 39}
!123 = !{!"function_entry_count", i64 187772}
!124 = !{!"tree-ssa-phiprop.c:gsi_end_p"}
!125 = !{!126, !89, i64 0}
!126 = !{!"", !89, i64 0, !89, i64 8, !89, i64 16}
!127 = !{!"function_entry_count", i64 41120}
!128 = !{!"tree-ssa-phiprop.c:propagate_with_phi"}
!129 = !{!85, !85, i64 0}
!130 = !{!"branch_weights", i32 1689456609, i32 780976, i32 41103}
!131 = !{!"branch_weights", i32 13, i32 7}
!132 = !{!"branch_weights", i32 127, i32 1}
!133 = !{!"branch_weights", i32 1, i32 14}
!134 = !{!135, !89, i64 0}
!135 = !{!"phiprop_d", !89, i64 0, !89, i64 8}
!136 = !{!"branch_weights", i32 1, i32 7}
!137 = !{!"branch_weights", i32 0, i32 1}
!138 = distinct !{!138, !105}
!139 = !{!"branch_weights", i32 276264823, i32 1871218825}
!140 = !{!"branch_weights", i32 769, i32 127}
!141 = distinct !{!141, !105}
!142 = distinct !{!142, !105}
!143 = !{i32 0, i32 65536}
!144 = !{!135, !89, i64 8}
!145 = !{i64 0, i64 8, !88, i64 8, i64 8, !88, i64 16, i64 8, !88}
!146 = distinct !{!146, !105}
!147 = !{!"tree-ssa-phiprop.c:gsi_stmt"}
!148 = !{!149, !89, i64 0}
!149 = !{!"gimple_seq_node_d", !89, i64 0, !89, i64 8, !89, i64 16}
!150 = !{!"tree-ssa-phiprop.c:gsi_next"}
!151 = !{!149, !89, i64 16}
!152 = !{!"tree-ssa-phiprop.c:VEC_basic_block_heap_free"}
!153 = !{!"tree-ssa-phiprop.c:single_succ_edge"}
!154 = !{!155, !89, i64 8}
!155 = !{!"basic_block_def", !89, i64 0, !89, i64 8, !89, i64 16, !89, i64 24, !85, i64 32, !89, i64 48, !89, i64 56, !85, i64 64, !116, i64 72, !84, i64 80, !84, i64 84, !84, i64 88, !84, i64 92, !84, i64 96}
!156 = !{!"tree-ssa-phiprop.c:single_succ_p"}
!157 = !{!"tree-ssa-phiprop.c:VEC_edge_base_index"}
!158 = !{!"tree-ssa-phiprop.c:VEC_edge_base_length"}
!159 = !{!160, !84, i64 0}
!160 = !{!"VEC_edge_base", !84, i64 0, !84, i64 4, !85, i64 8}
!161 = !{!"tree-ssa-phiprop.c:get_def_from_ptr"}
!162 = !{!"tree-ssa-phiprop.c:gimple_phi_result_ptr"}
!163 = !{!"function_entry_count", i64 6}
!164 = !{!"tree-ssa-phiprop.c:op_iter_init_phiuse"}
!165 = !{!166, !85, i64 0}
!166 = !{!"ssa_operand_iterator_d", !85, i64 0, !84, i64 4, !89, i64 8, !89, i64 16, !84, i64 24, !84, i64 28, !89, i64 32}
!167 = !{!166, !89, i64 32}
!168 = !{!166, !84, i64 28}
!169 = !{!166, !84, i64 4}
!170 = !{!"tree-ssa-phiprop.c:op_iter_done"}
!171 = !{!"tree-ssa-phiprop.c:get_use_from_ptr"}
!172 = !{!173, !89, i64 24}
!173 = !{!"ssa_use_operand_d", !89, i64 0, !89, i64 8, !85, i64 16, !89, i64 24}
!174 = !{!"function_entry_count", i64 0}
!175 = !{!"tree-ssa-phiprop.c:gimple_assign_rhs1"}
!176 = !{!"tree-ssa-phiprop.c:phivn_valid_p"}
!177 = !{i32 0, i32 256}
!178 = distinct !{!178, !105}
!179 = !{!"tree-ssa-phiprop.c:op_iter_next_use"}
!180 = !{!166, !89, i64 16}
!181 = !{!"branch_weights", i32 7, i32 1}
!182 = !{!183, !89, i64 0}
!183 = !{!"use_optype_d", !89, i64 0, !173, i64 8}
!184 = !{!166, !84, i64 24}
!185 = !{!"tree-ssa-phiprop.c:single_imm_use"}
!186 = !{!173, !89, i64 8}
!187 = !{!"tree-ssa-phiprop.c:gimple_assign_lhs"}
!188 = !{!"tree-ssa-phiprop.c:first_imm_use_stmt"}
!189 = !{!190, !89, i64 8}
!190 = !{!"immediate_use_iterator_d", !89, i64 0, !89, i64 8, !173, i64 16, !89, i64 48}
!191 = !{!190, !89, i64 0}
!192 = !{!"tree-ssa-phiprop.c:end_imm_use_stmt_p"}
!193 = !{!"tree-ssa-phiprop.c:is_gimple_assign"}
!194 = !{!"tree-ssa-phiprop.c:gimple_assign_rhs_code"}
!195 = !{!"tree-ssa-phiprop.c:gimple_vuse"}
!196 = !{!"tree-ssa-phiprop.c:gimple_bb"}
!197 = !{!"tree-ssa-phiprop.c:phiprop_insert_phi"}
!198 = !{i64 0, i64 4, !83, i64 8, i64 8, !88}
!199 = !{i64 0, i64 8, !88}
!200 = !{!115, !84, i64 44}
!201 = distinct !{!201, !105}
!202 = distinct !{!202, !105}
!203 = !{!"tree-ssa-phiprop.c:gimple_assign_set_rhs1"}
!204 = !{!"tree-ssa-phiprop.c:update_stmt"}
!205 = !{!"tree-ssa-phiprop.c:next_imm_use_stmt"}
!206 = !{!190, !89, i64 24}
!207 = !{!190, !89, i64 16}
!208 = !{!"tree-ssa-phiprop.c:gimple_phi_result"}
!209 = !{!"tree-ssa-phiprop.c:clear_and_done_ssa_iter"}
!210 = !{!"tree-ssa-phiprop.c:gimple_phi_num_args"}
!211 = !{!"tree-ssa-phiprop.c:gimple_op"}
!212 = !{!"tree-ssa-phiprop.c:gimple_has_ops"}
!213 = !{!"tree-ssa-phiprop.c:gimple_ops"}
!214 = !{!116, !116, i64 0}
!215 = !{!"tree-ssa-phiprop.c:gimple_code"}
!216 = !{!"tree-ssa-phiprop.c:gimple_statement_structure"}
!217 = !{!"tree-ssa-phiprop.c:gss_for_code"}
!218 = !{!"tree-ssa-phiprop.c:gimple_vdef"}
!219 = !{!"tree-ssa-phiprop.c:end_imm_use_stmt_traverse"}
!220 = !{!"tree-ssa-phiprop.c:gimple_has_mem_ops"}
!221 = !{!"tree-ssa-phiprop.c:delink_imm_use"}
!222 = !{!173, !89, i64 0}
!223 = !{!"tree-ssa-phiprop.c:gimple_phi_arg_imm_use_ptr"}
!224 = !{!"tree-ssa-phiprop.c:gimple_phi_arg"}
!225 = !{!"tree-ssa-phiprop.c:is_gimple_debug"}
!226 = !{!"tree-ssa-phiprop.c:link_use_stmts_after"}
!227 = distinct !{!227, !105}
!228 = distinct !{!228, !105}
!229 = !{!"tree-ssa-phiprop.c:move_use_after_head"}
!230 = !{!"tree-ssa-phiprop.c:op_iter_init_use"}
!231 = !{!"tree-ssa-phiprop.c:gimple_vuse_op"}
!232 = !{!183, !89, i64 32}
!233 = !{!"tree-ssa-phiprop.c:link_imm_use_to_list"}
!234 = !{!"tree-ssa-phiprop.c:op_iter_init"}
!235 = !{!166, !89, i64 8}
!236 = !{!237, !89, i64 0}
!237 = !{!"def_optype_d", !89, i64 0, !89, i64 8}
!238 = !{!"tree-ssa-phiprop.c:gimple_def_ops"}
!239 = !{!"tree-ssa-phiprop.c:gimple_use_ops"}
!240 = !{!"tree-ssa-phiprop.c:gimple_expr_code"}
!241 = !{!"tree-ssa-phiprop.c:get_gimple_rhs_class"}
!242 = !{!"tree-ssa-phiprop.c:ei_start_1"}
!243 = !{!"tree-ssa-phiprop.c:ei_cond"}
!244 = !{!"tree-ssa-phiprop.c:gimple_phi_arg_location_from_edge"}
!245 = !{!246, !84, i64 40}
!246 = !{!"phi_arg_d", !173, i64 0, !89, i64 32, !84, i64 40}
!247 = !{!"tree-ssa-phiprop.c:gimple_location"}
!248 = !{!"tree-ssa-phiprop.c:make_ssa_name"}
!249 = !{!"tree-ssa-phiprop.c:gimple_assign_set_lhs"}
!250 = !{!"tree-ssa-phiprop.c:gimple_set_location"}
!251 = !{!"tree-ssa-phiprop.c:ei_next"}
!252 = !{!253, !84, i64 0}
!253 = !{!"", !84, i64 0, !89, i64 8}
!254 = !{!"tree-ssa-phiprop.c:ei_end_p"}
!255 = !{!"tree-ssa-phiprop.c:ei_edge"}
!256 = !{!"tree-ssa-phiprop.c:ei_container"}
!257 = !{!"tree-ssa-phiprop.c:gimple_set_op"}
!258 = !{!"tree-ssa-phiprop.c:gimple_num_ops"}
