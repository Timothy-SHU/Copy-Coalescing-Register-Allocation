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

@pass_phiprop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_phiprop, ptr @tree_ssa_phiprop, ptr null, ptr null, i32 0, i32 75, i32 40, i32 0, i32 0, i32 0, i32 2055 } }, align 8
@.str = private unnamed_addr constant [8 x i8] c"phiprop\00", align 1
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
define internal zeroext i8 @gate_phiprop() #0 !prof !195 !PGOFuncName !196 {
  %1 = load i32, ptr @flag_tree_phiprop, align 4, !tbaa !197
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tree_ssa_phiprop() #1 !prof !195 !PGOFuncName !201 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  tail call void @calculate_dominance_info(i32 noundef 1) #17
  %4 = load ptr, ptr @cfun, align 8, !tbaa !202
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !204
  %7 = getelementptr inbounds %struct.gimple_df, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !206
  %9 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %8) #18
  %10 = zext i32 %9 to i64
  %11 = tail call ptr @xcalloc(i64 noundef %10, i64 noundef 16) #17
  %12 = load ptr, ptr @cfun, align 8, !tbaa !202
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !210
  %15 = load ptr, ptr %14, align 8, !tbaa !211
  %16 = tail call fastcc ptr @single_succ(ptr noundef %15) #18
  %17 = tail call ptr @get_all_dominated_blocks(i32 noundef 1, ptr noundef %16) #17
  store ptr %17, ptr %1, align 8, !tbaa !202
  %18 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %2) #18, !range !213
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %41, label %20, !prof !214

20:                                               ; preds = %0, %33
  %21 = phi i8 [ %34, %33 ], [ 0, %0 ]
  %22 = phi i32 [ %35, %33 ], [ 0, %0 ]
  %23 = load ptr, ptr %2, align 8, !tbaa !202
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %23) #17
  %24 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !215
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %33, !prof !216

26:                                               ; preds = %20, %26
  %27 = phi i8 [ %30, %26 ], [ %21, %20 ]
  %28 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18
  %29 = call fastcc zeroext i8 @propagate_with_phi(ptr noundef %23, ptr noundef %28, ptr noundef %11, i64 noundef %10) #18
  %30 = or i8 %29, %27
  call fastcc void @gsi_next(ptr noundef nonnull %3) #18
  %31 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !215
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %26, label %33, !prof !217, !llvm.loop !218

33:                                               ; preds = %26, %20
  %34 = phi i8 [ %21, %20 ], [ %30, %26 ]
  %35 = add i32 %22, 1
  %36 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %17, i32 noundef %35, ptr noundef nonnull %2) #18, !range !213
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %20, !prof !220, !llvm.loop !221

38:                                               ; preds = %33
  %39 = icmp eq i8 %34, 0
  br i1 %39, label %41, label %40, !prof !222

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
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !195 !PGOFuncName !223 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !224

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !225
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
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !195 !PGOFuncName !227 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !228
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_basic_block_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !231 !PGOFuncName !232 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !233

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !234
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !236

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !202
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !202
  ret i32 %14
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !237 !PGOFuncName !238 {
  %2 = load ptr, ptr %0, align 8, !tbaa !239
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @propagate_with_phi(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i64 noundef %3) unnamed_addr #1 !prof !241 !PGOFuncName !242 {
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
  %14 = load ptr, ptr %13, align 8, !tbaa !243
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %169 [
    i16 10, label %17
    i16 12, label %17
  ], !prof !244

17:                                               ; preds = %4, %4
  %18 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !243
  %20 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %19) #17
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %169, label %22, !prof !245

22:                                               ; preds = %17
  %23 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %9, ptr noundef %1, i32 noundef 1) #18
  %24 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %9) #18
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %33, label %26, !prof !246

26:                                               ; preds = %91, %22
  %27 = call fastcc zeroext i8 @single_imm_use(ptr noundef %12, ptr noundef nonnull %8, ptr noundef nonnull %5) #18
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %104, label %29, !prof !247

29:                                               ; preds = %26
  %30 = load ptr, ptr %5, align 8, !tbaa !202
  %31 = call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef %30) #17
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %104, label %99, !prof !248

33:                                               ; preds = %22, %91
  %34 = phi ptr [ %92, %91 ], [ %23, %22 ]
  %35 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #18
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 4295032831
  %38 = icmp eq i64 %37, 141
  br i1 %38, label %39, label %60, !prof !249

39:                                               ; preds = %33, %55
  %40 = phi i64 [ %57, %55 ], [ %36, %33 ]
  %41 = phi ptr [ %56, %55 ], [ %35, %33 ]
  %42 = getelementptr inbounds %struct.tree_ssa_name, ptr %41, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !243
  %44 = zext i32 %43 to i64
  %45 = icmp ult i64 %44, %3
  br i1 %45, label %46, label %50, !prof !250

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.phiprop_d, ptr %2, i64 %44
  %48 = load ptr, ptr %47, align 8, !tbaa !251
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %74, !prof !253

50:                                               ; preds = %39, %46
  %51 = getelementptr inbounds %struct.tree_ssa_name, ptr %41, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !243
  %53 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %52) #17
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %169, label %55, !prof !254

55:                                               ; preds = %50
  %56 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %52) #18
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 4295032831
  %59 = icmp eq i64 %58, 141
  br i1 %59, label %39, label %60, !prof !255, !llvm.loop !256

60:                                               ; preds = %55, %33
  %61 = phi ptr [ %35, %33 ], [ %56, %55 ]
  %62 = phi i64 [ %36, %33 ], [ %57, %55 ]
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 121
  br i1 %64, label %65, label %74, !prof !257

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.tree_exp, ptr %61, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !243
  %68 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !243
  %70 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %69) #17
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %91, !prof !258

72:                                               ; preds = %65
  %73 = load i64, ptr %61, align 8
  br label %74

74:                                               ; preds = %46, %72, %60
  %75 = phi i64 [ %73, %72 ], [ %62, %60 ], [ %40, %46 ]
  %76 = phi ptr [ %61, %72 ], [ %61, %60 ], [ %41, %46 ]
  %77 = and i64 %75, 65535
  %78 = icmp eq i64 %77, 141
  br i1 %78, label %79, label %169, !prof !259

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.tree_ssa_name, ptr %76, i64 0, i32 3
  %81 = load i32, ptr %80, align 8, !tbaa !243
  %82 = zext i32 %81 to i64
  %83 = icmp ult i64 %82, %3
  br i1 %83, label %84, label %169, !prof !260

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.phiprop_d, ptr %2, i64 %82
  %86 = load ptr, ptr %85, align 8, !tbaa !251
  %87 = icmp eq ptr %86, null
  br i1 %87, label %169, label %88, !prof !261

88:                                               ; preds = %84
  %89 = tail call fastcc zeroext i8 @phivn_valid_p(ptr noundef nonnull %2, ptr noundef nonnull %76, ptr noundef %0) #18, !range !215
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %169, label %91, !prof !262

91:                                               ; preds = %88, %65
  %92 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %9) #18
  %93 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %9) #18
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %33, label %26, !prof !263, !llvm.loop !264

95:                                               ; preds = %99
  %96 = load ptr, ptr %5, align 8, !tbaa !202
  %97 = call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef %96) #17
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %104, label %99, !prof !265, !llvm.loop !266

99:                                               ; preds = %29, %95
  %100 = load ptr, ptr %5, align 8, !tbaa !202
  %101 = call fastcc ptr @gimple_assign_lhs(ptr noundef %100) #18
  %102 = call fastcc zeroext i8 @single_imm_use(ptr noundef %101, ptr noundef nonnull %8, ptr noundef nonnull %5) #18
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %95, !prof !267, !llvm.loop !266

104:                                              ; preds = %99, %95, %29, %26
  %105 = phi ptr [ %12, %26 ], [ %12, %29 ], [ %101, %95 ], [ %101, %99 ]
  %106 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %7, ptr noundef %105) #18
  store ptr %106, ptr %5, align 8, !tbaa !202
  %107 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %7) #18, !range !215
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %169, !prof !246

109:                                              ; preds = %104, %163
  %110 = phi ptr [ %165, %163 ], [ null, %104 ]
  %111 = phi i8 [ %164, %163 ], [ 0, %104 ]
  %112 = phi ptr [ %166, %163 ], [ %106, %104 ]
  %113 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %112) #18, !range !215
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %163, label %115, !prof !268

115:                                              ; preds = %109
  %116 = call fastcc ptr @gimple_assign_lhs(ptr noundef %112) #18
  %117 = load i64, ptr %116, align 8
  %118 = and i64 %117, 65535
  %119 = icmp eq i64 %118, 141
  br i1 %119, label %120, label %163, !prof !269

120:                                              ; preds = %115
  %121 = load ptr, ptr %5, align 8, !tbaa !202
  %122 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %121) #18, !range !270
  %123 = icmp eq i32 %122, 47
  br i1 %123, label %124, label %163, !prof !271

124:                                              ; preds = %120
  %125 = load ptr, ptr %5, align 8, !tbaa !202
  %126 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %125) #18
  %127 = getelementptr inbounds %struct.tree_exp, ptr %126, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !243
  %129 = icmp eq ptr %128, %105
  br i1 %129, label %130, label %163, !prof !272

130:                                              ; preds = %124
  %131 = load ptr, ptr %5, align 8, !tbaa !202
  %132 = call zeroext i8 @stmt_can_throw_internal(ptr noundef %131) #17
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %163, !prof !272

134:                                              ; preds = %130
  %135 = load ptr, ptr %5, align 8, !tbaa !202
  %136 = call fastcc ptr @gimple_vuse(ptr noundef %135) #18
  %137 = load i64, ptr %136, align 8
  %138 = and i64 %137, 4294967296
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %148, !prof !273

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.tree_ssa_name, ptr %136, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !243
  %143 = call fastcc ptr @gimple_bb(ptr noundef %142) #18
  %144 = icmp eq ptr %143, %0
  br i1 %144, label %163, label %145, !prof !274

145:                                              ; preds = %140
  %146 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %0, ptr noundef %143) #17
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %163, label %148, !prof !275

148:                                              ; preds = %145, %134
  %149 = icmp eq i8 %111, 0
  %150 = load ptr, ptr %5, align 8, !tbaa !202
  br i1 %149, label %151, label %161, !prof !276

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.tree_ssa_name, ptr %105, i64 0, i32 3
  %153 = call fastcc ptr @phiprop_insert_phi(ptr noundef %0, ptr noundef %1, ptr noundef %150, ptr noundef %2, i64 noundef %3) #18
  %154 = load i32, ptr %152, align 8, !tbaa !243
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.phiprop_d, ptr %2, i64 %155
  store ptr %153, ptr %156, align 8, !tbaa !251
  %157 = load i32, ptr %152, align 8, !tbaa !243
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.phiprop_d, ptr %2, i64 %158, i32 1
  store ptr %136, ptr %159, align 8, !tbaa !277
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #16
  %160 = load ptr, ptr %5, align 8, !tbaa !202
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %160) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !278
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #16
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 0) #17
  br label %163

161:                                              ; preds = %148
  call fastcc void @gimple_assign_set_rhs1(ptr noundef %150, ptr noundef %110) #18
  %162 = load ptr, ptr %5, align 8, !tbaa !202
  call fastcc void @update_stmt(ptr noundef %162) #18
  br label %163

163:                                              ; preds = %145, %140, %161, %151, %109, %115, %120, %124, %130
  %164 = phi i8 [ %111, %130 ], [ %111, %124 ], [ %111, %120 ], [ %111, %115 ], [ %111, %109 ], [ 1, %161 ], [ 1, %151 ], [ %111, %140 ], [ %111, %145 ]
  %165 = phi ptr [ %110, %130 ], [ %110, %124 ], [ %110, %120 ], [ %110, %115 ], [ %110, %109 ], [ %110, %161 ], [ %153, %151 ], [ %110, %140 ], [ %110, %145 ]
  %166 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %7) #18
  store ptr %166, ptr %5, align 8, !tbaa !202
  %167 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %7) #18, !range !215
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %109, label %169, !prof !279, !llvm.loop !280

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
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 !prof !241 !PGOFuncName !281 {
  %2 = load ptr, ptr %0, align 8, !tbaa !239
  %3 = load ptr, ptr %2, align 8, !tbaa !282
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #8 !prof !241 !PGOFuncName !284 {
  %2 = load ptr, ptr %0, align 8, !tbaa !239
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !285
  store ptr %4, ptr %0, align 8, !tbaa !239
  ret void
}

; Function Attrs: optsize
declare void @gsi_commit_edge_inserts() local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #9 !prof !195 !PGOFuncName !286 {
  %2 = load ptr, ptr %0, align 8, !tbaa !202
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !224

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !202
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !195 !PGOFuncName !287 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #18, !range !215
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !224

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 645, ptr noundef nonnull @.str.2) #17
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !288
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #18
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !195 !PGOFuncName !290 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !288
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #18
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !291 !PGOFuncName !292 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !202
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !293 !PGOFuncName !294 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !295

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !296
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !241 !PGOFuncName !298 {
  %2 = load ptr, ptr %0, align 8, !tbaa !202
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #11 !prof !241 !PGOFuncName !299 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 !prof !300 !PGOFuncName !301 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #18
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #18
  store i8 0, ptr %0, align 8, !tbaa !302
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !304

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 918, ptr noundef nonnull @.str.2) #17
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #17
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !304

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !302
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !305
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #18
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !306
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !307
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #18
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !308 !PGOFuncName !309 {
  %2 = load i8, ptr %0, align 8, !tbaa !302
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !310 !PGOFuncName !311 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !312
  %4 = load ptr, ptr %3, align 8, !tbaa !202
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 !prof !314 !PGOFuncName !315 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @phivn_valid_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #1 !prof !316 !PGOFuncName !317 {
  %4 = alloca %struct.immediate_use_iterator_d, align 8
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !243
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.phiprop_d, ptr %0, i64 %7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !277
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !318

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 113, ptr noundef nonnull @.str.2) #17
  br label %12

12:                                               ; preds = %3, %11
  %13 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %4, ptr noundef %9) #18
  %14 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %4) #18, !range !215
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %32, !prof !319

16:                                               ; preds = %12, %28
  %17 = phi ptr [ %29, %28 ], [ %13, %12 ]
  %18 = call fastcc ptr @gimple_vdef(ptr noundef %17) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23, !prof !320

20:                                               ; preds = %16
  %21 = call fastcc i32 @gimple_code(ptr noundef %17) #18, !range !321
  %22 = icmp eq i32 %21, 16
  br i1 %22, label %23, label %28, !prof !322

23:                                               ; preds = %20, %16
  %24 = call fastcc ptr @gimple_bb(ptr noundef %17) #18
  %25 = call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %24, ptr noundef %2) #17
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %28, !prof !262

27:                                               ; preds = %23
  call fastcc void @end_imm_use_stmt_traverse(ptr noundef nonnull %4) #18
  br label %32

28:                                               ; preds = %20, %23
  %29 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %4) #18
  %30 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %4) #18, !range !215
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %16, label %32, !prof !323, !llvm.loop !324

32:                                               ; preds = %28, %12, %27
  %33 = phi i8 [ 0, %27 ], [ 1, %12 ], [ 1, %28 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #16
  ret i8 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #1 !prof !308 !PGOFuncName !325 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !326
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !327

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !328
  store ptr %7, ptr %2, align 8, !tbaa !326
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !330
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !306
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !331

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !305
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !330
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #18
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !302
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @single_imm_use(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !332 !PGOFuncName !333 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !334
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %9, !prof !335

8:                                                ; preds = %22, %13, %3
  store ptr null, ptr %1, align 8, !tbaa !202
  store ptr null, ptr %2, align 8, !tbaa !202
  br label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !334
  %12 = icmp eq ptr %4, %11
  br i1 %12, label %13, label %22, !prof !336

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !243
  %16 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %15) #18, !range !215
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %8, !prof !337

18:                                               ; preds = %13
  store ptr %6, ptr %1, align 8, !tbaa !202
  %19 = load ptr, ptr %5, align 8, !tbaa !334
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !243
  store ptr %21, ptr %2, align 8, !tbaa !202
  br label %27

22:                                               ; preds = %9
  %23 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !197
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %8, label %25, !prof !338

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
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 !prof !339 !PGOFuncName !340 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !341 !PGOFuncName !342 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !343
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !334
  store ptr %6, ptr %0, align 8, !tbaa !345
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #18, !range !215
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14, !prof !346

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #18
  %11 = load ptr, ptr %0, align 8, !tbaa !345
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !243
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !347 !PGOFuncName !348 {
  %2 = load ptr, ptr %0, align 8, !tbaa !345
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !343
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !349 !PGOFuncName !350 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !321
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #1 !prof !351 !PGOFuncName !352 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #18, !range !270
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #18, !range !321
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !353

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
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !354 !PGOFuncName !355 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #18, !range !215
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !356

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !243
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !357 !PGOFuncName !358 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !243
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @phiprop_insert_phi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4) unnamed_addr #1 !prof !359 !PGOFuncName !360 {
  %6 = alloca %struct.edge_iterator, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %8 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %2) #18, !range !215
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10, !prof !361

10:                                               ; preds = %5
  %11 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %2) #18, !range !270
  %12 = icmp eq i32 %11, 47
  br i1 %12, label %14, label %13, !prof !362

13:                                               ; preds = %10, %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 143, ptr noundef nonnull @.str.2) #17
  br label %14

14:                                               ; preds = %10, %13
  %15 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %2) #18
  %16 = tail call ptr @create_phi_node(ptr noundef %15, ptr noundef %0) #17
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %15, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !243
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !202
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20, !prof !362

20:                                               ; preds = %14
  %21 = load i32, ptr @dump_flags, align 4, !tbaa !197
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 33, i64 1, ptr nonnull %18)
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !202
  tail call void @print_gimple_stmt(ptr noundef %26, ptr noundef %2, i32 noundef 0, i32 noundef 0) #17
  br label %27

27:                                               ; preds = %24, %20, %14
  %28 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #18
  store i32 0, ptr %6, align 8, !tbaa.struct !363
  %29 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %28, ptr %29, align 8, !tbaa.struct !364
  %30 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %28, ptr noundef nonnull %7) #18, !range !215
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %143, label %32, !prof !365

32:                                               ; preds = %27, %137
  %33 = load ptr, ptr %7, align 8, !tbaa !202
  %34 = getelementptr inbounds %struct.edge_def, ptr %33, i64 0, i32 6
  %35 = load i32, ptr %34, align 4, !tbaa !366
  %36 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %1, i32 noundef %35) #18
  %37 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %36) #18
  %38 = tail call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %1, ptr noundef %33) #18
  %39 = load i64, ptr %37, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 141
  br i1 %41, label %42, label %62, !prof !367

42:                                               ; preds = %32, %54
  %43 = phi i64 [ %59, %54 ], [ %39, %32 ]
  %44 = phi ptr [ %57, %54 ], [ %37, %32 ]
  %45 = phi i32 [ %58, %54 ], [ %38, %32 ]
  %46 = getelementptr inbounds %struct.tree_ssa_name, ptr %44, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !243
  %48 = zext i32 %47 to i64
  %49 = icmp ult i64 %48, %4
  br i1 %49, label %50, label %54, !prof !368

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.phiprop_d, ptr %3, i64 %48
  %52 = load ptr, ptr %51, align 8, !tbaa !251
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %62, !prof !369

54:                                               ; preds = %42, %50
  %55 = getelementptr inbounds %struct.tree_ssa_name, ptr %44, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !243
  %57 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %56) #18
  %58 = tail call fastcc i32 @gimple_location(ptr noundef %56) #18
  %59 = load i64, ptr %57, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 141
  br i1 %61, label %42, label %62, !prof !370, !llvm.loop !371

62:                                               ; preds = %50, %54, %32
  %63 = phi i32 [ %38, %32 ], [ %58, %54 ], [ %45, %50 ]
  %64 = phi ptr [ %37, %32 ], [ %57, %54 ], [ %44, %50 ]
  %65 = phi i64 [ %39, %32 ], [ %59, %54 ], [ %43, %50 ]
  %66 = trunc i64 %65 to i16
  switch i16 %66, label %96 [
    i16 141, label %67
    i16 121, label %97
  ], !prof !372

67:                                               ; preds = %62
  %68 = load ptr, ptr @dump_file, align 8, !tbaa !202
  %69 = icmp eq ptr %68, null
  br i1 %69, label %90, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr @dump_flags, align 4, !tbaa !197
  %72 = and i32 %71, 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %70
  %75 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 20, i64 1, ptr nonnull %68)
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !202
  %77 = load i32, ptr %34, align 4, !tbaa !366
  %78 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %1, i32 noundef %77) #18
  %79 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %78) #18
  tail call void @print_generic_expr(ptr noundef %76, ptr noundef %79, i32 noundef 0) #17
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !202
  %81 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 20, i64 1, ptr %80)
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !202
  %83 = getelementptr inbounds %struct.tree_ssa_name, ptr %64, i64 0, i32 3
  %84 = load i32, ptr %83, align 8, !tbaa !243
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.phiprop_d, ptr %3, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !251
  tail call void @print_generic_expr(ptr noundef %82, ptr noundef %87, i32 noundef 0) #17
  %88 = load ptr, ptr @dump_file, align 8, !tbaa !202
  %89 = tail call i32 @fputc(i32 10, ptr %88)
  br label %90

90:                                               ; preds = %74, %70, %67
  %91 = getelementptr inbounds %struct.tree_ssa_name, ptr %64, i64 0, i32 3
  %92 = load i32, ptr %91, align 8, !tbaa !243
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.phiprop_d, ptr %3, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !251
  br label %137

96:                                               ; preds = %62
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 191, ptr noundef nonnull @.str.2) #17
  br label %97

97:                                               ; preds = %62, %96
  %98 = getelementptr inbounds %struct.tree_exp, ptr %64, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !243
  %100 = getelementptr inbounds %struct.tree_common, ptr %99, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !243
  %102 = tail call ptr @create_tmp_var(ptr noundef %101, ptr noundef null) #17
  %103 = tail call ptr @unshare_expr(ptr noundef %99) #17
  %104 = tail call ptr @gimple_build_assign_stat(ptr noundef %102, ptr noundef %103) #17
  %105 = load ptr, ptr %100, align 8, !tbaa !243
  %106 = load i64, ptr %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = and i32 %107, 65535
  %109 = add nsw i32 %108, -13
  %110 = icmp ult i32 %109, 2
  br i1 %110, label %111, label %115, !prof !373

111:                                              ; preds = %97
  %112 = getelementptr inbounds %struct.tree_decl_common, ptr %102, i64 0, i32 2
  %113 = load i64, ptr %112, align 8
  %114 = or i64 %113, 134217728
  store i64 %114, ptr %112, align 8
  br label %115

115:                                              ; preds = %97, %111
  %116 = tail call zeroext i8 @is_gimple_reg(ptr noundef %102) #17
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %119, !prof !374

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
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !202
  %123 = icmp eq ptr %122, null
  br i1 %123, label %137, label %124, !prof !375

124:                                              ; preds = %119
  %125 = load i32, ptr @dump_flags, align 4, !tbaa !197
  %126 = and i32 %125, 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %137, label %128

128:                                              ; preds = %124
  %129 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 20, i64 1, ptr nonnull %122)
  %130 = load ptr, ptr @dump_file, align 8, !tbaa !202
  %131 = load i32, ptr %34, align 4, !tbaa !366
  %132 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %1, i32 noundef %131) #18
  %133 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %132) #18
  tail call void @print_generic_expr(ptr noundef %130, ptr noundef %133, i32 noundef 0) #17
  %134 = load ptr, ptr @dump_file, align 8, !tbaa !202
  %135 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 16, i64 1, ptr %134)
  %136 = load ptr, ptr @dump_file, align 8, !tbaa !202
  tail call void @print_gimple_stmt(ptr noundef %136, ptr noundef %104, i32 noundef 0, i32 noundef 0) #17
  br label %137

137:                                              ; preds = %119, %124, %128, %90
  %138 = phi ptr [ %95, %90 ], [ %121, %128 ], [ %121, %124 ], [ %121, %119 ]
  tail call void @add_phi_arg(ptr noundef %16, ptr noundef %138, ptr noundef %33, i32 noundef %63) #17
  call fastcc void @ei_next(ptr noundef nonnull %6) #18
  %139 = load i32, ptr %6, align 8
  %140 = load ptr, ptr %29, align 8
  %141 = call fastcc zeroext i8 @ei_cond(i32 %139, ptr %140, ptr noundef nonnull %7) #18, !range !215
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %32, !prof !376, !llvm.loop !377

143:                                              ; preds = %137, %27
  tail call fastcc void @update_stmt(ptr noundef %16) #18
  %144 = load ptr, ptr @dump_file, align 8, !tbaa !202
  %145 = icmp eq ptr %144, null
  br i1 %145, label %151, label %146, !prof !362

146:                                              ; preds = %143
  %147 = load i32, ptr @dump_flags, align 4, !tbaa !197
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
define internal fastcc void @gimple_assign_set_rhs1(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !378 !PGOFuncName !379 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #1 !prof !380 !PGOFuncName !381 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !215
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !382

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #17
  tail call void @update_stmt_operands(ptr noundef %0) #17
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #1 !prof !383 !PGOFuncName !384 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !385
  store ptr %4, ptr %0, align 8, !tbaa !345
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #18, !range !215
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !386

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !387
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !388

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #18
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #18
  %12 = load ptr, ptr %0, align 8, !tbaa !345
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !243
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !300 !PGOFuncName !389 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !243
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #12 !prof !300 !PGOFuncName !390 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !302
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !300 !PGOFuncName !391 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !243
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !392 !PGOFuncName !393 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !215
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !394

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #18
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !202
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !395 !PGOFuncName !396 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !321
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !397 !PGOFuncName !398 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #18
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !399
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !400

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.2) #17
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !401 !PGOFuncName !402 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !397 !PGOFuncName !403 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !321
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #18
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #11 !prof !397 !PGOFuncName !404 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !197
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !405 !PGOFuncName !406 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #18, !range !215
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !407

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !243
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @end_imm_use_stmt_traverse(ptr nocapture noundef %0) unnamed_addr #13 !prof !408 !PGOFuncName !409 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !410 !PGOFuncName !411 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !321
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #13 !prof !412 !PGOFuncName !413 {
  %2 = load ptr, ptr %0, align 8, !tbaa !414
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !415

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !334
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !334
  store ptr %2, ptr %6, align 8, !tbaa !414
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !416 !PGOFuncName !417 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #18
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !418 !PGOFuncName !419 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !243
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !420

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.2) #17
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !421 !PGOFuncName !422 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !321
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !412 !PGOFuncName !423 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !243
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #16
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #17
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #18, !range !321
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28, !prof !424

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #18
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #18
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53, !prof !425

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #18
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23, !prof !426

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #18
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #18
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #18
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !prof !427, !llvm.loop !428

28:                                               ; preds = %2
  br i1 %8, label %45, label %29, !prof !429

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #18
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #18
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53, !prof !430

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #18
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40, !prof !431

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #18
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #18
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #18
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !prof !432, !llvm.loop !433

45:                                               ; preds = %28
  %46 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %5) #18
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48, !prof !434

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #18
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %51, label %53, !prof !435

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @move_use_after_head(ptr noundef nonnull %46, ptr noundef nonnull %0, ptr noundef nonnull %0) #18
  br label %53

53:                                               ; preds = %40, %23, %29, %11, %48, %51, %45
  %54 = phi ptr [ %52, %51 ], [ %0, %48 ], [ %0, %45 ], [ %0, %11 ], [ %0, %29 ], [ %24, %23 ], [ %41, %40 ]
  %55 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !387
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58, !prof !436

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #18
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #13 !prof !412 !PGOFuncName !437 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5, !prof !438

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !334
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
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !prof !439 !PGOFuncName !440 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6, !prof !441

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 771, ptr noundef nonnull @.str.2) #17
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #18
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !307
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #18
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #7 !prof !442 !PGOFuncName !443 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #18, !range !215
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4, !prof !434

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !243
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8, !prof !434

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !444
  %11 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  %13 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1
  %14 = select i1 %12, ptr %13, ptr null, !prof !435
  br label %15

15:                                               ; preds = %8, %4, %1
  %16 = phi ptr [ null, %1 ], [ null, %4 ], [ %14, %8 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #13 !prof !412 !PGOFuncName !445 {
  store ptr %1, ptr %0, align 8, !tbaa !414
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !334
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !334
  store ptr %0, ptr %4, align 8, !tbaa !414
  store ptr %0, ptr %3, align 8, !tbaa !334
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !prof !439 !PGOFuncName !446 {
  %4 = and i32 %2, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !447

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
  br i1 %12, label %13, label %15, !prof !447

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %14, align 8, !tbaa !448
  br label %24

15:                                               ; preds = %10
  %16 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #18
  %17 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !448
  %18 = icmp eq ptr %16, null
  br i1 %18, label %24, label %19, !prof !449

19:                                               ; preds = %15
  %20 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #18
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %16, align 8, !tbaa !450
  store ptr %23, ptr %17, align 8, !tbaa !448
  br label %24

24:                                               ; preds = %13, %22, %19, %15
  %25 = and i32 %2, 5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29, !prof !452

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %28, align 8, !tbaa !326
  br label %40

29:                                               ; preds = %24
  %30 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #18
  %31 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %30, ptr %31, align 8, !tbaa !326
  %32 = icmp ne i32 %4, 0
  %33 = icmp eq ptr %30, null
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %40, label %35, !prof !453

35:                                               ; preds = %29
  %36 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #18
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38, !prof !454

38:                                               ; preds = %35
  %39 = load ptr, ptr %30, align 8, !tbaa !328
  store ptr %39, ptr %31, align 8, !tbaa !326
  br label %40

40:                                               ; preds = %27, %38, %35, %29
  store i8 0, ptr %0, align 8, !tbaa !302
  %41 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !455 !PGOFuncName !456 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !215
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !243
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !439 !PGOFuncName !457 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !215
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !452

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !243
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !351 !PGOFuncName !458 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !321
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !459

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
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #11 !prof !351 !PGOFuncName !460 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !243
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #11 !prof !359 !PGOFuncName !461 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 !prof !462 !PGOFuncName !463 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #18, !range !215
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !464

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #18
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !202
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !465 !PGOFuncName !466 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !366
  %5 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %4) #18
  %6 = getelementptr inbounds %struct.phi_arg_d, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !467
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !469 !PGOFuncName !470 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !243
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
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !465 !PGOFuncName !471 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !202
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #17
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !465 !PGOFuncName !472 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #18
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4, !prof !374

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10, !prof !375

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !243
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #12 !prof !465 !PGOFuncName !473 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !243
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #1 !prof !465 !PGOFuncName !474 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !374

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #18
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #18
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !375

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 738, ptr noundef nonnull @.str.2) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !475
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !475
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #1 !prof !462 !PGOFuncName !477 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !478

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #1 !prof !465 !PGOFuncName !479 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !374

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #18
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #1 !prof !480 !PGOFuncName !481 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !482

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 687, ptr noundef nonnull @.str.2) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !202
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 !prof !483 !PGOFuncName !484 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !215
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !485

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #18
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9, !prof !486

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1665, ptr noundef nonnull @.str.2) #17
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #18
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !202
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !483 !PGOFuncName !487 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !243
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!194}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193}
!36 = !{ptr @tree_ssa_phiprop, ptr @calculate_dominance_info, i64 6652}
!37 = !{ptr @tree_ssa_phiprop, ptr @VEC_tree_base_length, i64 6652}
!38 = !{ptr @tree_ssa_phiprop, ptr @xcalloc, i64 6652}
!39 = !{ptr @tree_ssa_phiprop, ptr @single_succ, i64 6652}
!40 = !{ptr @tree_ssa_phiprop, ptr @get_all_dominated_blocks, i64 6652}
!41 = !{ptr @tree_ssa_phiprop, ptr @VEC_basic_block_base_iterate, i64 260631}
!42 = !{ptr @tree_ssa_phiprop, ptr @gsi_start_phis, i64 253979}
!43 = !{ptr @tree_ssa_phiprop, ptr @gsi_end_p, i64 352379}
!44 = !{ptr @tree_ssa_phiprop, ptr @gsi_stmt, i64 98400}
!45 = !{ptr @tree_ssa_phiprop, ptr @propagate_with_phi, i64 98400}
!46 = !{ptr @tree_ssa_phiprop, ptr @gsi_next, i64 98400}
!47 = !{ptr @tree_ssa_phiprop, ptr @gsi_commit_edge_inserts, i64 67}
!48 = !{ptr @tree_ssa_phiprop, ptr @VEC_basic_block_heap_free, i64 6652}
!49 = !{ptr @tree_ssa_phiprop, ptr @free, i64 6652}
!50 = !{ptr @single_succ, ptr @single_succ_edge, i64 6652}
!51 = !{ptr @propagate_with_phi, ptr @gimple_phi_result_ptr, i64 98414}
!52 = !{ptr @propagate_with_phi, ptr @get_def_from_ptr, i64 98414}
!53 = !{ptr @propagate_with_phi, ptr @is_gimple_reg_type, i64 26787}
!54 = !{ptr @propagate_with_phi, ptr @op_iter_init_phiuse, i64 4182}
!55 = !{ptr @propagate_with_phi, ptr @op_iter_done, i64 4906}
!56 = !{ptr @propagate_with_phi, ptr @single_imm_use, i64 89}
!57 = !{ptr @propagate_with_phi, ptr @gimple_assign_ssa_name_copy_p, i64 85}
!58 = !{ptr @propagate_with_phi, ptr @get_use_from_ptr, i64 4823}
!59 = !{ptr @propagate_with_phi, ptr @gimple_assign_single_p, i64 2687}
!60 = !{ptr @propagate_with_phi, ptr @gimple_assign_rhs1, i64 905}
!61 = !{ptr @propagate_with_phi, ptr @phivn_valid_p, i64 12}
!62 = !{ptr @propagate_with_phi, ptr @op_iter_next_use, i64 724}
!63 = !{ptr @propagate_with_phi, ptr @gimple_assign_lhs, i64 81}
!64 = !{ptr @propagate_with_phi, ptr @first_imm_use_stmt, i64 83}
!65 = !{ptr @propagate_with_phi, ptr @end_imm_use_stmt_p, i64 210}
!66 = !{ptr @propagate_with_phi, ptr @is_gimple_assign, i64 127}
!67 = !{ptr @propagate_with_phi, ptr @gimple_assign_rhs_code, i64 53}
!68 = !{ptr @propagate_with_phi, ptr @stmt_can_throw_internal, i64 52}
!69 = !{ptr @propagate_with_phi, ptr @gimple_vuse, i64 51}
!70 = !{ptr @propagate_with_phi, ptr @gimple_bb, i64 47}
!71 = !{ptr @propagate_with_phi, ptr @dominated_by_p, i64 45}
!72 = !{ptr @propagate_with_phi, ptr @phiprop_insert_phi, i64 18}
!73 = !{ptr @propagate_with_phi, ptr @gsi_for_stmt, i64 18}
!74 = !{ptr @propagate_with_phi, ptr @gsi_remove, i64 18}
!75 = !{ptr @propagate_with_phi, ptr @gimple_assign_set_rhs1, i64 29}
!76 = !{ptr @propagate_with_phi, ptr @update_stmt, i64 29}
!77 = !{ptr @propagate_with_phi, ptr @next_imm_use_stmt, i64 127}
!78 = !{ptr @VEC_basic_block_heap_free, ptr @free, i64 6651}
!79 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 6652}
!80 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!81 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 6652}
!82 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 6652}
!83 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_result, i64 4252}
!84 = !{ptr @op_iter_init_phiuse, ptr @clear_and_done_ssa_iter, i64 4252}
!85 = !{ptr @op_iter_init_phiuse, ptr @fancy_abort, i64 1}
!86 = !{ptr @op_iter_init_phiuse, ptr @is_gimple_reg, i64 4252}
!87 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_num_args, i64 4251}
!88 = !{ptr @op_iter_init_phiuse, ptr @op_iter_next_use, i64 4251}
!89 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 2336}
!90 = !{ptr @phivn_valid_p, ptr @fancy_abort, i64 1}
!91 = !{ptr @phivn_valid_p, ptr @first_imm_use_stmt, i64 4}
!92 = !{ptr @phivn_valid_p, ptr @end_imm_use_stmt_p, i64 14}
!93 = !{ptr @phivn_valid_p, ptr @gimple_vdef, i64 13}
!94 = !{ptr @phivn_valid_p, ptr @gimple_code, i64 12}
!95 = !{ptr @phivn_valid_p, ptr @gimple_bb, i64 4}
!96 = !{ptr @phivn_valid_p, ptr @dominated_by_p, i64 4}
!97 = !{ptr @phivn_valid_p, ptr @end_imm_use_stmt_traverse, i64 3}
!98 = !{ptr @phivn_valid_p, ptr @next_imm_use_stmt, i64 10}
!99 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 6762}
!100 = !{ptr @single_imm_use, ptr @is_gimple_debug, i64 407}
!101 = !{ptr @single_imm_use, ptr @single_imm_use_1, i64 1}
!102 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 735}
!103 = !{ptr @first_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 625}
!104 = !{ptr @first_imm_use_stmt, ptr @link_use_stmts_after, i64 534}
!105 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 1085}
!106 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 534}
!107 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 534}
!108 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 523}
!109 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 1272}
!110 = !{ptr @phiprop_insert_phi, ptr @is_gimple_assign, i64 134}
!111 = !{ptr @phiprop_insert_phi, ptr @gimple_assign_rhs_code, i64 133}
!112 = !{ptr @phiprop_insert_phi, ptr @fancy_abort, i64 4}
!113 = !{ptr @phiprop_insert_phi, ptr @gimple_assign_lhs, i64 134}
!114 = !{ptr @phiprop_insert_phi, ptr @create_phi_node, i64 134}
!115 = !{ptr @phiprop_insert_phi, ptr @ei_start_1, i64 134}
!116 = !{ptr @phiprop_insert_phi, ptr @ei_cond, i64 422}
!117 = !{ptr @phiprop_insert_phi, ptr @gimple_phi_arg_imm_use_ptr, i64 288}
!118 = !{ptr @phiprop_insert_phi, ptr @get_use_from_ptr, i64 288}
!119 = !{ptr @phiprop_insert_phi, ptr @gimple_phi_arg_location_from_edge, i64 288}
!120 = !{ptr @phiprop_insert_phi, ptr @gimple_assign_rhs1, i64 82}
!121 = !{ptr @phiprop_insert_phi, ptr @gimple_location, i64 82}
!122 = !{ptr @phiprop_insert_phi, ptr @create_tmp_var, i64 287}
!123 = !{ptr @phiprop_insert_phi, ptr @unshare_expr, i64 287}
!124 = !{ptr @phiprop_insert_phi, ptr @gimple_build_assign_stat, i64 287}
!125 = !{ptr @phiprop_insert_phi, ptr @is_gimple_reg, i64 287}
!126 = !{ptr @phiprop_insert_phi, ptr @add_referenced_var, i64 287}
!127 = !{ptr @phiprop_insert_phi, ptr @make_ssa_name, i64 287}
!128 = !{ptr @phiprop_insert_phi, ptr @gimple_assign_set_lhs, i64 287}
!129 = !{ptr @phiprop_insert_phi, ptr @gimple_set_location, i64 287}
!130 = !{ptr @phiprop_insert_phi, ptr @gsi_insert_on_edge, i64 287}
!131 = !{ptr @phiprop_insert_phi, ptr @update_stmt, i64 421}
!132 = !{ptr @phiprop_insert_phi, ptr @add_phi_arg, i64 288}
!133 = !{ptr @phiprop_insert_phi, ptr @ei_next, i64 288}
!134 = !{ptr @gimple_assign_set_rhs1, ptr @gimple_set_op, i64 219}
!135 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 642}
!136 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 507}
!137 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 507}
!138 = !{ptr @next_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 964}
!139 = !{ptr @next_imm_use_stmt, ptr @delink_imm_use, i64 531}
!140 = !{ptr @next_imm_use_stmt, ptr @link_use_stmts_after, i64 432}
!141 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 3071}
!142 = !{ptr @gimple_op, ptr @gimple_ops, i64 3070}
!143 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 5104}
!144 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 3579}
!145 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!146 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 3579}
!147 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 3579}
!148 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 16}
!149 = !{ptr @end_imm_use_stmt_traverse, ptr @delink_imm_use, i64 3}
!150 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 1301}
!151 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 7052}
!152 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!153 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 408}
!154 = !{ptr @link_use_stmts_after, ptr @get_use_from_ptr, i64 3201}
!155 = !{ptr @link_use_stmts_after, ptr @is_gimple_reg, i64 967}
!156 = !{ptr @link_use_stmts_after, ptr @gimple_code, i64 967}
!157 = !{ptr @link_use_stmts_after, ptr @op_iter_init_phiuse, i64 72}
!158 = !{ptr @link_use_stmts_after, ptr @op_iter_done, i64 3174}
!159 = !{ptr @link_use_stmts_after, ptr @move_use_after_head, i64 965}
!160 = !{ptr @link_use_stmts_after, ptr @op_iter_next_use, i64 2221}
!161 = !{ptr @link_use_stmts_after, ptr @op_iter_init_use, i64 881}
!162 = !{ptr @link_use_stmts_after, ptr @gimple_vuse_op, i64 14}
!163 = !{ptr @link_use_stmts_after, ptr @delink_imm_use, i64 432}
!164 = !{ptr @link_use_stmts_after, ptr @link_imm_use_to_list, i64 967}
!165 = !{ptr @move_use_after_head, ptr @delink_imm_use, i64 1}
!166 = !{ptr @move_use_after_head, ptr @link_imm_use_to_list, i64 1}
!167 = !{ptr @op_iter_init_use, ptr @fancy_abort, i64 2}
!168 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 883}
!169 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 883}
!170 = !{ptr @gimple_vuse_op, ptr @gimple_has_mem_ops, i64 13}
!171 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 1}
!172 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 1}
!173 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 882}
!174 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 881}
!175 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 883}
!176 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 534}
!177 = !{ptr @ei_cond, ptr @ei_end_p, i64 423}
!178 = !{ptr @ei_cond, ptr @ei_edge, i64 289}
!179 = !{ptr @gimple_phi_arg_location_from_edge, ptr @gimple_phi_arg, i64 289}
!180 = !{ptr @make_ssa_name, ptr @make_ssa_name_fn, i64 289}
!181 = !{ptr @gimple_assign_set_lhs, ptr @gimple_set_op, i64 289}
!182 = !{ptr @ei_next, ptr @ei_container, i64 577}
!183 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 289}
!184 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!185 = !{ptr @ei_end_p, ptr @ei_container, i64 845}
!186 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 423}
!187 = !{ptr @ei_edge, ptr @ei_container, i64 577}
!188 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 289}
!189 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!190 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 508}
!191 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 507}
!192 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!193 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 508}
!194 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!195 = !{!"function_entry_count", i64 6652}
!196 = !{!"tree-ssa-phiprop.c:gate_phiprop"}
!197 = !{!198, !198, i64 0}
!198 = !{!"int", !199, i64 0}
!199 = !{!"omnipotent char", !200, i64 0}
!200 = !{!"Simple C/C++ TBAA"}
!201 = !{!"tree-ssa-phiprop.c:tree_ssa_phiprop"}
!202 = !{!203, !203, i64 0}
!203 = !{!"any pointer", !199, i64 0}
!204 = !{!205, !203, i64 24}
!205 = !{!"function", !203, i64 0, !203, i64 8, !203, i64 16, !203, i64 24, !203, i64 32, !203, i64 40, !203, i64 48, !203, i64 56, !203, i64 64, !203, i64 72, !203, i64 80, !203, i64 88, !203, i64 96, !198, i64 104, !198, i64 108, !198, i64 112, !198, i64 116, !198, i64 120, !198, i64 124, !203, i64 128, !198, i64 136, !198, i64 137, !198, i64 138, !198, i64 138, !198, i64 138, !198, i64 138, !198, i64 138, !198, i64 138, !198, i64 138, !198, i64 139, !198, i64 139, !198, i64 139, !198, i64 139, !198, i64 139, !198, i64 139, !198, i64 139}
!206 = !{!207, !203, i64 16}
!207 = !{!"gimple_df", !203, i64 0, !203, i64 8, !203, i64 16, !203, i64 24, !208, i64 32, !208, i64 48, !203, i64 64, !203, i64 72, !203, i64 80, !203, i64 88, !198, i64 96, !209, i64 104}
!208 = !{!"pt_solution", !198, i64 0, !198, i64 0, !198, i64 0, !198, i64 0, !198, i64 0, !198, i64 0, !203, i64 8}
!209 = !{!"ssa_operands", !203, i64 0, !198, i64 8, !198, i64 12, !199, i64 16, !203, i64 24, !203, i64 32}
!210 = !{!205, !203, i64 8}
!211 = !{!212, !203, i64 0}
!212 = !{!"control_flow_graph", !203, i64 0, !203, i64 8, !203, i64 16, !198, i64 24, !198, i64 28, !198, i64 32, !203, i64 40, !198, i64 48, !199, i64 52, !199, i64 60, !198, i64 68, !198, i64 72}
!213 = !{i32 0, i32 2}
!214 = !{!"branch_weights", i32 1, i32 6652}
!215 = !{i8 0, i8 2}
!216 = !{!"branch_weights", i32 98415, i32 155602}
!217 = !{!"branch_weights", i32 0, i32 98415}
!218 = distinct !{!218, !219}
!219 = !{!"llvm.loop.mustprogress"}
!220 = !{!"branch_weights", i32 6652, i32 247365}
!221 = distinct !{!221, !219}
!222 = !{!"branch_weights", i32 2125857103, i32 21626545}
!223 = !{!"tree-ssa-phiprop.c:VEC_tree_base_length"}
!224 = !{!"branch_weights", i32 1, i32 6653}
!225 = !{!226, !198, i64 0}
!226 = !{!"VEC_tree_base", !198, i64 0, !198, i64 4, !199, i64 8}
!227 = !{!"tree-ssa-phiprop.c:single_succ"}
!228 = !{!229, !203, i64 8}
!229 = !{!"edge_def", !203, i64 0, !203, i64 8, !199, i64 16, !203, i64 24, !203, i64 32, !198, i64 40, !198, i64 44, !198, i64 48, !198, i64 52, !230, i64 56}
!230 = !{!"long", !199, i64 0}
!231 = !{!"function_entry_count", i64 260668}
!232 = !{!"tree-ssa-phiprop.c:VEC_basic_block_base_iterate"}
!233 = !{!"branch_weights", i32 1, i32 260669}
!234 = !{!235, !198, i64 0}
!235 = !{!"VEC_basic_block_base", !198, i64 0, !198, i64 4, !199, i64 8}
!236 = !{!"branch_weights", i32 254017, i32 6653}
!237 = !{!"function_entry_count", i64 352430}
!238 = !{!"tree-ssa-phiprop.c:gsi_end_p"}
!239 = !{!240, !203, i64 0}
!240 = !{!"", !203, i64 0, !203, i64 8, !203, i64 16}
!241 = !{!"function_entry_count", i64 98414}
!242 = !{!"tree-ssa-phiprop.c:propagate_with_phi"}
!243 = !{!199, !199, i64 0}
!244 = !{!"branch_weights", i32 -1677778396, i32 942973725, i32 36174}
!245 = !{!"branch_weights", i32 21886, i32 4182}
!246 = !{!"branch_weights", i32 621, i32 1}
!247 = !{!"branch_weights", i32 1, i32 255}
!248 = !{!"branch_weights", i32 579, i32 43}
!249 = !{!"branch_weights", i32 13280203, i32 1}
!250 = !{!"branch_weights", i32 3860, i32 5}
!251 = !{!252, !203, i64 0}
!252 = !{!"phiprop_d", !203, i64 0, !203, i64 8}
!253 = !{!"branch_weights", i32 3860, i32 3266}
!254 = !{!"branch_weights", i32 2636, i32 1225}
!255 = !{!"branch_weights", i32 2442413, i32 13280203}
!256 = distinct !{!256, !219}
!257 = !{!"branch_weights", i32 -2147483648, i32 0}
!258 = !{!"branch_weights", i32 1, i32 2340}
!259 = !{!"branch_weights", i32 210, i32 718}
!260 = !{!"branch_weights", i32 210, i32 1}
!261 = !{!"branch_weights", i32 206, i32 5}
!262 = !{!"branch_weights", i32 4, i32 2}
!263 = !{!"branch_weights", i32 5280, i32 621}
!264 = distinct !{!264, !219}
!265 = !{!"branch_weights", i32 43, i32 0}
!266 = distinct !{!266, !219}
!267 = !{!"branch_weights", i32 255, i32 154}
!268 = !{!"branch_weights", i32 393, i32 560}
!269 = !{!"branch_weights", i32 401, i32 160}
!270 = !{i32 0, i32 65536}
!271 = !{!"branch_weights", i32 390, i32 12}
!272 = !{!"branch_weights", i32 390, i32 1}
!273 = !{!"branch_weights", i32 356, i32 35}
!274 = !{!"branch_weights", i32 15, i32 342}
!275 = !{!"branch_weights", i32 23, i32 320}
!276 = !{!"branch_weights", i32 135, i32 220}
!277 = !{!252, !203, i64 8}
!278 = !{i64 0, i64 8, !202, i64 8, i64 8, !202, i64 16, i64 8, !202}
!279 = !{!"branch_weights", i32 331, i32 621}
!280 = distinct !{!280, !219}
!281 = !{!"tree-ssa-phiprop.c:gsi_stmt"}
!282 = !{!283, !203, i64 0}
!283 = !{!"gimple_seq_node_d", !203, i64 0, !203, i64 8, !203, i64 16}
!284 = !{!"tree-ssa-phiprop.c:gsi_next"}
!285 = !{!283, !203, i64 16}
!286 = !{!"tree-ssa-phiprop.c:VEC_basic_block_heap_free"}
!287 = !{!"tree-ssa-phiprop.c:single_succ_edge"}
!288 = !{!289, !203, i64 8}
!289 = !{!"basic_block_def", !203, i64 0, !203, i64 8, !203, i64 16, !203, i64 24, !199, i64 32, !203, i64 48, !203, i64 56, !199, i64 64, !230, i64 72, !198, i64 80, !198, i64 84, !198, i64 88, !198, i64 92, !198, i64 96}
!290 = !{!"tree-ssa-phiprop.c:single_succ_p"}
!291 = !{!"function_entry_count", i64 6941}
!292 = !{!"tree-ssa-phiprop.c:VEC_edge_base_index"}
!293 = !{!"function_entry_count", i64 7364}
!294 = !{!"tree-ssa-phiprop.c:VEC_edge_base_length"}
!295 = !{!"branch_weights", i32 1, i32 7365}
!296 = !{!297, !198, i64 0}
!297 = !{!"VEC_edge_base", !198, i64 0, !198, i64 4, !199, i64 8}
!298 = !{!"tree-ssa-phiprop.c:get_def_from_ptr"}
!299 = !{!"tree-ssa-phiprop.c:gimple_phi_result_ptr"}
!300 = !{!"function_entry_count", i64 4252}
!301 = !{!"tree-ssa-phiprop.c:op_iter_init_phiuse"}
!302 = !{!303, !199, i64 0}
!303 = !{!"ssa_operand_iterator_d", !199, i64 0, !198, i64 4, !203, i64 8, !203, i64 16, !198, i64 24, !198, i64 28, !203, i64 32}
!304 = !{!"branch_weights", i32 1, i32 4253}
!305 = !{!303, !203, i64 32}
!306 = !{!303, !198, i64 28}
!307 = !{!303, !198, i64 4}
!308 = !{!"function_entry_count", i64 9700}
!309 = !{!"tree-ssa-phiprop.c:op_iter_done"}
!310 = !{!"function_entry_count", i64 9394}
!311 = !{!"tree-ssa-phiprop.c:get_use_from_ptr"}
!312 = !{!313, !203, i64 24}
!313 = !{!"ssa_use_operand_d", !203, i64 0, !203, i64 8, !199, i64 16, !203, i64 24}
!314 = !{!"function_entry_count", i64 2336}
!315 = !{!"tree-ssa-phiprop.c:gimple_assign_rhs1"}
!316 = !{!"function_entry_count", i64 4}
!317 = !{!"tree-ssa-phiprop.c:phivn_valid_p"}
!318 = !{!"branch_weights", i32 1, i32 5}
!319 = !{!"branch_weights", i32 127, i32 1}
!320 = !{!"branch_weights", i32 16, i32 2}
!321 = !{i32 0, i32 256}
!322 = !{!"branch_weights", i32 4, i32 13}
!323 = !{!"branch_weights", i32 961, i32 127}
!324 = distinct !{!324, !219}
!325 = !{!"tree-ssa-phiprop.c:op_iter_next_use"}
!326 = !{!303, !203, i64 16}
!327 = !{!"branch_weights", i32 8339, i32 1363}
!328 = !{!329, !203, i64 0}
!329 = !{!"use_optype_d", !203, i64 0, !313, i64 8}
!330 = !{!303, !198, i64 24}
!331 = !{!"branch_weights", i32 6764, i32 1576}
!332 = !{!"function_entry_count", i64 663}
!333 = !{!"tree-ssa-phiprop.c:single_imm_use"}
!334 = !{!313, !203, i64 8}
!335 = !{!"branch_weights", i32 91, i32 574}
!336 = !{!"branch_weights", i32 409, i32 166}
!337 = !{!"branch_weights", i32 409, i32 1}
!338 = !{!"branch_weights", i32 166, i32 1}
!339 = !{!"function_entry_count", i64 735}
!340 = !{!"tree-ssa-phiprop.c:gimple_assign_lhs"}
!341 = !{!"function_entry_count", i64 625}
!342 = !{!"tree-ssa-phiprop.c:first_imm_use_stmt"}
!343 = !{!344, !203, i64 8}
!344 = !{!"immediate_use_iterator_d", !203, i64 0, !203, i64 8, !313, i64 16, !203, i64 48}
!345 = !{!344, !203, i64 0}
!346 = !{!"branch_weights", i32 536, i32 91}
!347 = !{!"function_entry_count", i64 3178}
!348 = !{!"tree-ssa-phiprop.c:end_imm_use_stmt_p"}
!349 = !{!"function_entry_count", i64 1085}
!350 = !{!"tree-ssa-phiprop.c:is_gimple_assign"}
!351 = !{!"function_entry_count", i64 534}
!352 = !{!"tree-ssa-phiprop.c:gimple_assign_rhs_code"}
!353 = !{!"branch_weights", i32 525, i32 11}
!354 = !{!"function_entry_count", i64 1272}
!355 = !{!"tree-ssa-phiprop.c:gimple_vuse"}
!356 = !{!"branch_weights", i32 5, i32 1269}
!357 = !{!"function_entry_count", i64 700}
!358 = !{!"tree-ssa-phiprop.c:gimple_bb"}
!359 = !{!"function_entry_count", i64 134}
!360 = !{!"tree-ssa-phiprop.c:phiprop_insert_phi"}
!361 = !{!"branch_weights", i32 1, i32 135}
!362 = !{!"branch_weights", i32 135, i32 1}
!363 = !{i64 0, i64 4, !197, i64 8, i64 8, !202}
!364 = !{i64 0, i64 8, !202}
!365 = !{!"branch_weights", i32 1, i32 134}
!366 = !{!229, !198, i64 44}
!367 = !{!"branch_weights", i32 200, i32 90}
!368 = !{!"branch_weights", i32 200, i32 1}
!369 = !{!"branch_weights", i32 200, i32 290}
!370 = !{!"branch_weights", i32 0, i32 200}
!371 = distinct !{!371, !219}
!372 = !{!"branch_weights", i32 290, i32 291, i32 84100}
!373 = !{!"branch_weights", i32 581, i32 84100}
!374 = !{!"branch_weights", i32 1, i32 290}
!375 = !{!"branch_weights", i32 290, i32 1}
!376 = !{!"branch_weights", i32 134, i32 156}
!377 = distinct !{!377, !219}
!378 = !{!"function_entry_count", i64 219}
!379 = !{!"tree-ssa-phiprop.c:gimple_assign_set_rhs1"}
!380 = !{!"function_entry_count", i64 642}
!381 = !{!"tree-ssa-phiprop.c:update_stmt"}
!382 = !{!"branch_weights", i32 135, i32 509}
!383 = !{!"function_entry_count", i64 964}
!384 = !{!"tree-ssa-phiprop.c:next_imm_use_stmt"}
!385 = !{!344, !203, i64 24}
!386 = !{!"branch_weights", i32 433, i32 533}
!387 = !{!344, !203, i64 16}
!388 = !{!"branch_weights", i32 1, i32 533}
!389 = !{!"tree-ssa-phiprop.c:gimple_phi_result"}
!390 = !{!"tree-ssa-phiprop.c:clear_and_done_ssa_iter"}
!391 = !{!"tree-ssa-phiprop.c:gimple_phi_num_args"}
!392 = !{!"function_entry_count", i64 3071}
!393 = !{!"tree-ssa-phiprop.c:gimple_op"}
!394 = !{!"branch_weights", i32 1, i32 3072}
!395 = !{!"function_entry_count", i64 5104}
!396 = !{!"tree-ssa-phiprop.c:gimple_has_ops"}
!397 = !{!"function_entry_count", i64 3579}
!398 = !{!"tree-ssa-phiprop.c:gimple_ops"}
!399 = !{!230, !230, i64 0}
!400 = !{!"branch_weights", i32 1, i32 3580}
!401 = !{!"function_entry_count", i64 19394}
!402 = !{!"tree-ssa-phiprop.c:gimple_code"}
!403 = !{!"tree-ssa-phiprop.c:gimple_statement_structure"}
!404 = !{!"tree-ssa-phiprop.c:gss_for_code"}
!405 = !{!"function_entry_count", i64 16}
!406 = !{!"tree-ssa-phiprop.c:gimple_vdef"}
!407 = !{!"branch_weights", i32 4, i32 14}
!408 = !{!"function_entry_count", i64 3}
!409 = !{!"tree-ssa-phiprop.c:end_imm_use_stmt_traverse"}
!410 = !{!"function_entry_count", i64 1301}
!411 = !{!"tree-ssa-phiprop.c:gimple_has_mem_ops"}
!412 = !{!"function_entry_count", i64 967}
!413 = !{!"tree-ssa-phiprop.c:delink_imm_use"}
!414 = !{!313, !203, i64 0}
!415 = !{!"branch_weights", i32 1, i32 968}
!416 = !{!"function_entry_count", i64 7052}
!417 = !{!"tree-ssa-phiprop.c:gimple_phi_arg_imm_use_ptr"}
!418 = !{!"function_entry_count", i64 7341}
!419 = !{!"tree-ssa-phiprop.c:gimple_phi_arg"}
!420 = !{!"branch_weights", i32 1, i32 7342}
!421 = !{!"function_entry_count", i64 408}
!422 = !{!"tree-ssa-phiprop.c:is_gimple_debug"}
!423 = !{!"tree-ssa-phiprop.c:link_use_stmts_after"}
!424 = !{!"branch_weights", i32 72, i32 897}
!425 = !{!"branch_weights", i32 143, i32 1}
!426 = !{!"branch_weights", i32 72, i32 793}
!427 = !{!"branch_weights", i32 1585, i32 143}
!428 = distinct !{!428, !219}
!429 = !{!"branch_weights", i32 14, i32 884}
!430 = !{!"branch_weights", i32 883, i32 1}
!431 = !{!"branch_weights", i32 884, i32 480}
!432 = !{!"branch_weights", i32 480, i32 883}
!433 = distinct !{!433, !219}
!434 = !{!"branch_weights", i32 1, i32 14}
!435 = !{!"branch_weights", i32 14, i32 1}
!436 = !{!"branch_weights", i32 536, i32 433}
!437 = !{!"tree-ssa-phiprop.c:move_use_after_head"}
!438 = !{!"branch_weights", i32 968, i32 1}
!439 = !{!"function_entry_count", i64 883}
!440 = !{!"tree-ssa-phiprop.c:op_iter_init_use"}
!441 = !{!"branch_weights", i32 781456, i32 1769}
!442 = !{!"function_entry_count", i64 13}
!443 = !{!"tree-ssa-phiprop.c:gimple_vuse_op"}
!444 = !{!329, !203, i64 32}
!445 = !{!"tree-ssa-phiprop.c:link_imm_use_to_list"}
!446 = !{!"tree-ssa-phiprop.c:op_iter_init"}
!447 = !{!"branch_weights", i32 884, i32 1}
!448 = !{!303, !203, i64 8}
!449 = !{!"branch_weights", i32 0, i32 -2147483648}
!450 = !{!451, !203, i64 0}
!451 = !{!"def_optype_d", !203, i64 0, !203, i64 8}
!452 = !{!"branch_weights", i32 1, i32 884}
!453 = !{!"branch_weights", i32 2426536, i32 2145057112}
!454 = !{!"branch_weights", i32 126, i32 759}
!455 = !{!"function_entry_count", i64 0}
!456 = !{!"tree-ssa-phiprop.c:gimple_def_ops"}
!457 = !{!"tree-ssa-phiprop.c:gimple_use_ops"}
!458 = !{!"tree-ssa-phiprop.c:gimple_expr_code"}
!459 = !{!"branch_weights", i32 1, i32 2140, i32 2, i32 1}
!460 = !{!"tree-ssa-phiprop.c:get_gimple_rhs_class"}
!461 = !{!"tree-ssa-phiprop.c:ei_start_1"}
!462 = !{!"function_entry_count", i64 423}
!463 = !{!"tree-ssa-phiprop.c:ei_cond"}
!464 = !{!"branch_weights", i32 290, i32 135}
!465 = !{!"function_entry_count", i64 289}
!466 = !{!"tree-ssa-phiprop.c:gimple_phi_arg_location_from_edge"}
!467 = !{!468, !198, i64 40}
!468 = !{!"phi_arg_d", !313, i64 0, !203, i64 32, !198, i64 40}
!469 = !{!"function_entry_count", i64 199}
!470 = !{!"tree-ssa-phiprop.c:gimple_location"}
!471 = !{!"tree-ssa-phiprop.c:make_ssa_name"}
!472 = !{!"tree-ssa-phiprop.c:gimple_assign_set_lhs"}
!473 = !{!"tree-ssa-phiprop.c:gimple_set_location"}
!474 = !{!"tree-ssa-phiprop.c:ei_next"}
!475 = !{!476, !198, i64 0}
!476 = !{!"", !198, i64 0, !203, i64 8}
!477 = !{!"tree-ssa-phiprop.c:ei_end_p"}
!478 = !{!"branch_weights", i32 1, i32 424}
!479 = !{!"tree-ssa-phiprop.c:ei_edge"}
!480 = !{!"function_entry_count", i64 2002}
!481 = !{!"tree-ssa-phiprop.c:ei_container"}
!482 = !{!"branch_weights", i32 1, i32 2003}
!483 = !{!"function_entry_count", i64 508}
!484 = !{!"tree-ssa-phiprop.c:gimple_set_op"}
!485 = !{!"branch_weights", i32 1, i32 509}
!486 = !{!"branch_weights", i32 509, i32 1}
!487 = !{!"tree-ssa-phiprop.c:gimple_num_ops"}
