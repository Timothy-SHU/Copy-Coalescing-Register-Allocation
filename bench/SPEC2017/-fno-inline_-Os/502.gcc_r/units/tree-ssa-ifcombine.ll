; ModuleID = 'tree-ssa-ifcombine.c'
source_filename = "tree-ssa-ifcombine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }

@.str = private unnamed_addr constant [10 x i8] c"ifcombine\00", align 1
@pass_tree_ifcombine = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_ifcombine, ptr @tree_ssa_ifcombine, ptr null, ptr null, i32 0, i32 168, i32 40, i32 0, i32 0, i32 0, i32 2055 } }, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"optimizing double bit test to \00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c" & T == T\0Awith temporary T = (1 << \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c") | (1 << \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"optimizing two comparisons to \00", align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"optimizing bits or bits test to \00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c" & T != 0\0Awith temporary T = \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" | \00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @gate_ifcombine() #0 !prof !156 !PGOFuncName !157 {
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_ssa_ifcombine() #1 !prof !156 !PGOFuncName !158 {
  %1 = tail call ptr @blocks_in_phiopt_order() #10
  %2 = load ptr, ptr @cfun, align 8, !tbaa !159
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !166
  %7 = icmp sgt i32 %6, 2
  br i1 %7, label %8, label %35, !prof !168

8:                                                ; preds = %0, %21
  %9 = phi i64 [ %23, %21 ], [ 0, %0 ]
  %10 = phi i8 [ %22, %21 ], [ 0, %0 ]
  %11 = getelementptr inbounds ptr, ptr %1, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !159
  %13 = tail call ptr @last_stmt(ptr noundef %12) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15, !prof !169

15:                                               ; preds = %8
  %16 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %13) #11, !range !170
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %21, !prof !171

18:                                               ; preds = %15
  %19 = tail call fastcc zeroext i8 @tree_ssa_ifcombine_bb(ptr noundef %12) #11
  %20 = or i8 %19, %10
  br label %21

21:                                               ; preds = %18, %15, %8
  %22 = phi i8 [ %20, %18 ], [ %10, %15 ], [ %10, %8 ]
  %23 = add nuw nsw i64 %9, 1
  %24 = load ptr, ptr @cfun, align 8, !tbaa !159
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !163
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !166
  %29 = add nsw i32 %28, -2
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %23, %30
  br i1 %31, label %8, label %32, !prof !172, !llvm.loop !173

32:                                               ; preds = %21
  %33 = icmp eq i8 %22, 0
  %34 = select i1 %33, i32 0, i32 32
  br label %35

35:                                               ; preds = %32, %0
  %36 = phi i32 [ 0, %0 ], [ %34, %32 ]
  tail call void @free(ptr noundef %1) #11
  ret i32 %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @blocks_in_phiopt_order() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !175 !PGOFuncName !176 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @tree_ssa_ifcombine_bb(ptr noundef %0) unnamed_addr #1 !prof !177 !PGOFuncName !178 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store ptr null, ptr %3, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store ptr null, ptr %4, align 8, !tbaa !159
  %5 = call fastcc zeroext i8 @recognize_if_then_else(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #11, !range !179
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %37, label %7, !prof !180

7:                                                ; preds = %1
  %8 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #11, !range !179
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %37, label %10, !prof !181

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @single_pred(ptr noundef %0) #11
  %12 = call fastcc zeroext i8 @recognize_if_then_else(ptr noundef %11, ptr noundef nonnull %2, ptr noundef nonnull %4) #11, !range !179
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %24, label %14, !prof !182

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 8, !tbaa !159
  %16 = load ptr, ptr %4, align 8, !tbaa !159
  %17 = tail call fastcc zeroext i8 @same_phi_args_p(ptr noundef %11, ptr noundef %15, ptr noundef %16) #11, !range !179
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19, !prof !183

19:                                               ; preds = %14
  %20 = tail call fastcc zeroext i8 @bb_no_side_effects_p(ptr noundef %15) #11
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22, !prof !184

22:                                               ; preds = %19
  %23 = tail call fastcc zeroext i8 @ifcombine_ifandif(ptr noundef %15, ptr noundef %11) #11, !range !179
  br label %37

24:                                               ; preds = %19, %14, %10
  %25 = call fastcc zeroext i8 @recognize_if_then_else(ptr noundef %11, ptr noundef nonnull %3, ptr noundef nonnull %2) #11, !range !179
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %37, label %27, !prof !185

27:                                               ; preds = %24
  %28 = load ptr, ptr %2, align 8, !tbaa !159
  %29 = load ptr, ptr %3, align 8, !tbaa !159
  %30 = tail call fastcc zeroext i8 @same_phi_args_p(ptr noundef %11, ptr noundef %28, ptr noundef %29) #11, !range !179
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %37, label %32, !prof !186

32:                                               ; preds = %27
  %33 = tail call fastcc zeroext i8 @bb_no_side_effects_p(ptr noundef %28) #11
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35, !prof !187

35:                                               ; preds = %32
  %36 = tail call fastcc zeroext i8 @ifcombine_iforif(ptr noundef %28, ptr noundef %11) #11, !range !179
  br label %37

37:                                               ; preds = %24, %27, %32, %7, %22, %35, %1
  %38 = phi i8 [ 0, %1 ], [ %23, %22 ], [ %36, %35 ], [ 0, %7 ], [ 0, %32 ], [ 0, %27 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i8 %38
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @recognize_if_then_else(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #6 !prof !188 !PGOFuncName !189 {
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !190
  %6 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %5) #11
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %52, !prof !193

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %5, i32 noundef 0) #11
  %10 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %5, i32 noundef 1) #11
  %11 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !194
  %13 = and i32 %12, 1024
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20, !prof !196

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !194
  %18 = and i32 %17, 1024
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %52, label %20, !prof !197

20:                                               ; preds = %8, %15
  %21 = phi ptr [ %9, %15 ], [ %10, %8 ]
  %22 = phi ptr [ %10, %15 ], [ %9, %8 ]
  %23 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !194
  %25 = and i32 %24, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %52, label %27, !prof !198

27:                                               ; preds = %20
  %28 = load ptr, ptr %1, align 8, !tbaa !159
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30, !prof !199

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !200
  %33 = icmp eq ptr %32, %28
  br i1 %33, label %34, label %52, !prof !201

34:                                               ; preds = %30, %27
  %35 = load ptr, ptr %2, align 8, !tbaa !159
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37, !prof !202

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !200
  %40 = icmp eq ptr %39, %35
  br i1 %40, label %41, label %52, !prof !203

41:                                               ; preds = %37, %34
  br i1 %29, label %42, label %46, !prof !204

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !200
  store ptr %44, ptr %1, align 8, !tbaa !159
  %45 = load ptr, ptr %2, align 8, !tbaa !159
  br label %46

46:                                               ; preds = %42, %41
  %47 = phi ptr [ %45, %42 ], [ %35, %41 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52, !prof !204

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !200
  store ptr %51, ptr %2, align 8, !tbaa !159
  br label %52

52:                                               ; preds = %46, %49, %37, %30, %15, %20, %3
  %53 = phi i8 [ 0, %3 ], [ 0, %20 ], [ 0, %15 ], [ 0, %30 ], [ 0, %37 ], [ 1, %49 ], [ 1, %46 ]
  ret i8 %53
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !205 !PGOFuncName !206 {
  %2 = load ptr, ptr %0, align 8, !tbaa !207
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #11
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !208 !PGOFuncName !209 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #11
  %3 = load ptr, ptr %2, align 8, !tbaa !210
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @same_phi_args_p(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !211 !PGOFuncName !212 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = tail call ptr @find_edge(ptr noundef %0, ptr noundef %2) #10
  %6 = tail call ptr @find_edge(ptr noundef %1, ptr noundef %2) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %2) #10
  %7 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #11, !range !179
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %25, !prof !213

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.edge_def, ptr %5, i64 0, i32 6
  %11 = getelementptr inbounds %struct.edge_def, ptr %6, i64 0, i32 6
  br label %12

12:                                               ; preds = %9, %22
  %13 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #11
  %14 = load i32, ptr %10, align 4, !tbaa !214
  %15 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %13, i32 noundef %14) #11
  %16 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %15) #11
  %17 = load i32, ptr %11, align 4, !tbaa !214
  %18 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %13, i32 noundef %17) #11
  %19 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %18) #11
  %20 = call i32 @operand_equal_p(ptr noundef %16, ptr noundef %19, i32 noundef 0) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22, !prof !215

22:                                               ; preds = %12
  call fastcc void @gsi_next(ptr noundef nonnull %4) #11
  %23 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #11, !range !179
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %12, label %25, !prof !216, !llvm.loop !217

25:                                               ; preds = %12, %22, %3
  %26 = phi i8 [ 1, %3 ], [ 1, %22 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  ret i8 %26
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bb_no_side_effects_p(ptr noundef %0) unnamed_addr #8 !prof !218 !PGOFuncName !219 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #11
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #11, !range !179
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %15, !prof !220

5:                                                ; preds = %1, %12
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #11
  %7 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %6) #11, !range !179
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %15, !prof !221

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @gimple_vuse(ptr noundef %6) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15, !prof !222

12:                                               ; preds = %9
  call fastcc void @gsi_next(ptr noundef nonnull %2) #11
  %13 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #11, !range !179
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %5, label %15, !prof !223, !llvm.loop !224

15:                                               ; preds = %5, %9, %12, %1
  %16 = phi i8 [ 1, %1 ], [ 1, %12 ], [ 0, %9 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ifcombine_ifandif(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !225 !PGOFuncName !226 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  %8 = tail call ptr @last_stmt(ptr noundef %0) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %106, label %10, !prof !227

10:                                               ; preds = %2
  %11 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %8) #11, !range !170
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %106, !prof !228

13:                                               ; preds = %10
  %14 = tail call ptr @last_stmt(ptr noundef %1) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %106, label %16, !prof !227

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %14) #11, !range !170
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %106, !prof !228

19:                                               ; preds = %16
  %20 = call fastcc zeroext i8 @recognize_single_bit_test(ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %6) #11, !range !179
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %64, label %22, !prof !229

22:                                               ; preds = %19
  %23 = call fastcc zeroext i8 @recognize_single_bit_test(ptr noundef nonnull %14, ptr noundef nonnull %5, ptr noundef nonnull %7) #11, !range !179
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %64, label %25, !prof !230

25:                                               ; preds = %22
  %26 = load ptr, ptr %4, align 8, !tbaa !159
  %27 = load ptr, ptr %5, align 8, !tbaa !159
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %64, !prof !231

29:                                               ; preds = %25
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %8) #10
  %30 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !232
  %32 = call ptr @build_int_cst(ptr noundef %31, i64 noundef 1) #10
  %33 = load ptr, ptr %6, align 8, !tbaa !159
  %34 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 83, ptr noundef %31, ptr noundef %32, ptr noundef %33) #10
  %35 = load ptr, ptr %30, align 8, !tbaa !232
  %36 = call ptr @build_int_cst(ptr noundef %35, i64 noundef 1) #10
  %37 = load ptr, ptr %7, align 8, !tbaa !159
  %38 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 83, ptr noundef %35, ptr noundef %36, ptr noundef %37) #10
  %39 = load ptr, ptr %30, align 8, !tbaa !232
  %40 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 87, ptr noundef %39, ptr noundef %34, ptr noundef %38) #10
  %41 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %40, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #10
  %42 = load ptr, ptr %30, align 8, !tbaa !232
  %43 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 89, ptr noundef %42, ptr noundef %26, ptr noundef %41) #10
  %44 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %43, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #10
  %45 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !159
  %46 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 101, ptr noundef %45, ptr noundef %44, ptr noundef %41) #10
  %47 = call ptr @canonicalize_cond_expr_cond(ptr noundef %46) #10
  %48 = icmp eq ptr %47, null
  br i1 %48, label %106, label %49

49:                                               ; preds = %29
  call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %8, ptr noundef nonnull %47) #10
  call fastcc void @update_stmt(ptr noundef nonnull %8) #11
  %50 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !159
  call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %14, ptr noundef %50) #10
  call fastcc void @update_stmt(ptr noundef nonnull %14) #11
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !159
  %52 = icmp eq ptr %51, null
  br i1 %52, label %106, label %53

53:                                               ; preds = %49
  %54 = call i64 @fwrite(ptr nonnull @.str.4, i64 30, i64 1, ptr nonnull %51)
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !159
  call void @print_generic_expr(ptr noundef %55, ptr noundef nonnull %26, i32 noundef 0) #10
  %56 = load ptr, ptr @dump_file, align 8, !tbaa !159
  %57 = call i64 @fwrite(ptr nonnull @.str.5, i64 35, i64 1, ptr %56)
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !159
  call void @print_generic_expr(ptr noundef %58, ptr noundef %33, i32 noundef 0) #10
  %59 = load ptr, ptr @dump_file, align 8, !tbaa !159
  %60 = call i64 @fwrite(ptr nonnull @.str.6, i64 10, i64 1, ptr %59)
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !159
  call void @print_generic_expr(ptr noundef %61, ptr noundef %37, i32 noundef 0) #10
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !159
  %63 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %62)
  br label %106

64:                                               ; preds = %25, %22, %19
  %65 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %8) #11, !range !233
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !234
  %69 = icmp eq i32 %68, 5
  br i1 %69, label %70, label %106, !prof !228

70:                                               ; preds = %64
  %71 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %14) #11, !range !233
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !234
  %75 = icmp eq i32 %74, 5
  br i1 %75, label %76, label %106, !prof !228

76:                                               ; preds = %70
  %77 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %8) #11
  %78 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %14) #11
  %79 = tail call i32 @operand_equal_p(ptr noundef %77, ptr noundef %78, i32 noundef 0) #10
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %106, label %81, !prof !228

81:                                               ; preds = %76
  %82 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %8) #11
  %83 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %14) #11
  %84 = tail call i32 @operand_equal_p(ptr noundef %82, ptr noundef %83, i32 noundef 0) #10
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %81
  %87 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %8) #11, !range !233
  %88 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %14) #11, !range !233
  %89 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !159
  %90 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %14) #11
  %91 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %14) #11
  %92 = tail call ptr @combine_comparisons(i32 noundef 0, i32 noundef 91, i32 noundef %87, i32 noundef %88, ptr noundef %89, ptr noundef %90, ptr noundef %91) #10
  %93 = icmp eq ptr %92, null
  br i1 %93, label %106, label %94

94:                                               ; preds = %86
  %95 = tail call ptr @canonicalize_cond_expr_cond(ptr noundef nonnull %92) #10
  %96 = icmp eq ptr %95, null
  br i1 %96, label %106, label %97

97:                                               ; preds = %94
  tail call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %8, ptr noundef nonnull %95) #10
  tail call fastcc void @update_stmt(ptr noundef nonnull %8) #11
  %98 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !159
  tail call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %14, ptr noundef %98) #10
  tail call fastcc void @update_stmt(ptr noundef nonnull %14) #11
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !159
  %100 = icmp eq ptr %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 30, i64 1, ptr nonnull %99)
  %103 = load ptr, ptr @dump_file, align 8, !tbaa !159
  tail call void @print_generic_expr(ptr noundef %103, ptr noundef nonnull %95, i32 noundef 0) #10
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !159
  %105 = tail call i32 @fputc(i32 10, ptr %104)
  br label %106

106:                                              ; preds = %81, %76, %70, %64, %86, %94, %101, %97, %29, %53, %49, %13, %16, %2, %10
  %107 = phi i8 [ 0, %10 ], [ 0, %2 ], [ 0, %16 ], [ 0, %13 ], [ 0, %29 ], [ 1, %53 ], [ 1, %49 ], [ 0, %86 ], [ 0, %94 ], [ 1, %101 ], [ 1, %97 ], [ 0, %64 ], [ 0, %70 ], [ 0, %76 ], [ 0, %81 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret i8 %107
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ifcombine_iforif(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !235 !PGOFuncName !236 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  %8 = tail call ptr @last_stmt(ptr noundef %0) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %151, label %10, !prof !237

10:                                               ; preds = %2
  %11 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %8) #11, !range !170
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %151, !prof !238

13:                                               ; preds = %10
  %14 = tail call ptr @last_stmt(ptr noundef %1) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %151, label %16, !prof !237

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %14) #11, !range !170
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %151, !prof !238

19:                                               ; preds = %16
  %20 = call fastcc zeroext i8 @recognize_bits_test(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %5) #11, !range !179
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %109, label %22, !prof !239

22:                                               ; preds = %19
  %23 = call fastcc zeroext i8 @recognize_bits_test(ptr noundef nonnull %14, ptr noundef nonnull %4, ptr noundef nonnull %6) #11, !range !179
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %109, label %25, !prof !240

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  %26 = load ptr, ptr %3, align 8, !tbaa !159
  %27 = load ptr, ptr %4, align 8, !tbaa !159
  %28 = icmp eq ptr %26, %27
  %29 = load ptr, ptr %5, align 8, !tbaa !159
  %30 = load ptr, ptr %6, align 8, !tbaa !159
  br i1 %28, label %37, label %31, !prof !241

31:                                               ; preds = %25
  %32 = icmp eq ptr %29, %30
  br i1 %32, label %37, label %33, !prof !242

33:                                               ; preds = %31
  %34 = icmp eq ptr %26, %30
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = icmp eq ptr %29, %27
  br i1 %36, label %37, label %107

37:                                               ; preds = %35, %33, %31, %25
  %38 = phi ptr [ %26, %25 ], [ %29, %31 ], [ %26, %33 ], [ %27, %35 ]
  %39 = phi ptr [ %30, %25 ], [ %27, %31 ], [ %27, %33 ], [ %30, %35 ]
  %40 = phi ptr [ %29, %25 ], [ %26, %31 ], [ %29, %33 ], [ %26, %35 ]
  %41 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !232
  %43 = getelementptr inbounds %struct.tree_type, ptr %42, i64 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 1023
  %46 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !232
  %48 = getelementptr inbounds %struct.tree_type, ptr %47, i64 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 1023
  %51 = icmp ult i32 %45, %50
  br i1 %51, label %63, label %52, !prof !241

52:                                               ; preds = %37
  %53 = tail call ptr @unsigned_type_for(ptr noundef nonnull %42) #10
  %54 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %53, ptr noundef nonnull %40) #10
  %55 = getelementptr inbounds %struct.tree_common, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !232
  %57 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %56, ptr noundef %38) #10
  %58 = load ptr, ptr %46, align 8, !tbaa !232
  %59 = tail call ptr @unsigned_type_for(ptr noundef %58) #10
  %60 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %59, ptr noundef nonnull %39) #10
  %61 = load ptr, ptr %55, align 8, !tbaa !232
  %62 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %61, ptr noundef %60) #10
  br label %74

63:                                               ; preds = %37
  %64 = tail call ptr @unsigned_type_for(ptr noundef nonnull %47) #10
  %65 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %64, ptr noundef nonnull %39) #10
  %66 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !232
  %68 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %67, ptr noundef %38) #10
  %69 = load ptr, ptr %41, align 8, !tbaa !232
  %70 = tail call ptr @unsigned_type_for(ptr noundef %69) #10
  %71 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %70, ptr noundef nonnull %40) #10
  %72 = load ptr, ptr %66, align 8, !tbaa !232
  %73 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %72, ptr noundef %71) #10
  br label %74

74:                                               ; preds = %63, %52
  %75 = phi ptr [ %65, %63 ], [ %62, %52 ]
  %76 = phi ptr [ %68, %63 ], [ %57, %52 ]
  %77 = phi ptr [ %73, %63 ], [ %54, %52 ]
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef nonnull %8) #10
  %78 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !232
  %80 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 87, ptr noundef %79, ptr noundef %77, ptr noundef %75) #10
  %81 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %7, ptr noundef %80, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #10
  %82 = load ptr, ptr %78, align 8, !tbaa !232
  %83 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 89, ptr noundef %82, ptr noundef %76, ptr noundef %81) #10
  %84 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %7, ptr noundef %83, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #10
  %85 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !159
  %86 = getelementptr inbounds %struct.tree_common, ptr %84, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !232
  %88 = call ptr @build_int_cst(ptr noundef %87, i64 noundef 0) #10
  %89 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 102, ptr noundef %85, ptr noundef %84, ptr noundef %88) #10
  %90 = call ptr @canonicalize_cond_expr_cond(ptr noundef %89) #10
  %91 = icmp eq ptr %90, null
  br i1 %91, label %107, label %92, !prof !241

92:                                               ; preds = %74
  call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %8, ptr noundef nonnull %90) #10
  call fastcc void @update_stmt(ptr noundef nonnull %8) #11
  %93 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !159
  call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %14, ptr noundef %93) #10
  call fastcc void @update_stmt(ptr noundef nonnull %14) #11
  %94 = load ptr, ptr @dump_file, align 8, !tbaa !159
  %95 = icmp eq ptr %94, null
  br i1 %95, label %107, label %96, !prof !242

96:                                               ; preds = %92
  %97 = call i64 @fwrite(ptr nonnull @.str.10, i64 32, i64 1, ptr nonnull %94)
  %98 = load ptr, ptr @dump_file, align 8, !tbaa !159
  call void @print_generic_expr(ptr noundef %98, ptr noundef nonnull %76, i32 noundef 0) #10
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !159
  %100 = call i64 @fwrite(ptr nonnull @.str.11, i64 29, i64 1, ptr %99)
  %101 = load ptr, ptr @dump_file, align 8, !tbaa !159
  call void @print_generic_expr(ptr noundef %101, ptr noundef %77, i32 noundef 0) #10
  %102 = load ptr, ptr @dump_file, align 8, !tbaa !159
  %103 = call i64 @fwrite(ptr nonnull @.str.12, i64 3, i64 1, ptr %102)
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !159
  call void @print_generic_expr(ptr noundef %104, ptr noundef %75, i32 noundef 0) #10
  %105 = load ptr, ptr @dump_file, align 8, !tbaa !159
  %106 = call i32 @fputc(i32 10, ptr %105)
  br label %107

107:                                              ; preds = %92, %96, %74, %35
  %108 = phi i8 [ 0, %35 ], [ 0, %74 ], [ 1, %96 ], [ 1, %92 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  br label %151

109:                                              ; preds = %22, %19
  %110 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %8) #11, !range !233
  %111 = zext nneg i32 %110 to i64
  %112 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !234
  %114 = icmp eq i32 %113, 5
  br i1 %114, label %115, label %151, !prof !243

115:                                              ; preds = %109
  %116 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %14) #11, !range !233
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !234
  %120 = icmp eq i32 %119, 5
  br i1 %120, label %121, label %151, !prof !243

121:                                              ; preds = %115
  %122 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %8) #11
  %123 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %14) #11
  %124 = tail call i32 @operand_equal_p(ptr noundef %122, ptr noundef %123, i32 noundef 0) #10
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %151, label %126, !prof !244

126:                                              ; preds = %121
  %127 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %8) #11
  %128 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %14) #11
  %129 = tail call i32 @operand_equal_p(ptr noundef %127, ptr noundef %128, i32 noundef 0) #10
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %151, label %131, !prof !245

131:                                              ; preds = %126
  %132 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %8) #11, !range !233
  %133 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %14) #11, !range !233
  %134 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !159
  %135 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %14) #11
  %136 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %14) #11
  %137 = tail call ptr @combine_comparisons(i32 noundef 0, i32 noundef 92, i32 noundef %132, i32 noundef %133, ptr noundef %134, ptr noundef %135, ptr noundef %136) #10
  %138 = icmp eq ptr %137, null
  br i1 %138, label %151, label %139

139:                                              ; preds = %131
  %140 = tail call ptr @canonicalize_cond_expr_cond(ptr noundef nonnull %137) #10
  %141 = icmp eq ptr %140, null
  br i1 %141, label %151, label %142

142:                                              ; preds = %139
  tail call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %8, ptr noundef nonnull %140) #10
  tail call fastcc void @update_stmt(ptr noundef nonnull %8) #11
  %143 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !159
  tail call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %14, ptr noundef %143) #10
  tail call fastcc void @update_stmt(ptr noundef nonnull %14) #11
  %144 = load ptr, ptr @dump_file, align 8, !tbaa !159
  %145 = icmp eq ptr %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %142
  %147 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 30, i64 1, ptr nonnull %144)
  %148 = load ptr, ptr @dump_file, align 8, !tbaa !159
  tail call void @print_generic_expr(ptr noundef %148, ptr noundef nonnull %140, i32 noundef 0) #10
  %149 = load ptr, ptr @dump_file, align 8, !tbaa !159
  %150 = tail call i32 @fputc(i32 10, ptr %149)
  br label %151

151:                                              ; preds = %126, %121, %115, %109, %131, %139, %146, %142, %13, %16, %2, %10, %107
  %152 = phi i8 [ %108, %107 ], [ 0, %10 ], [ 0, %2 ], [ 0, %16 ], [ 0, %13 ], [ 0, %131 ], [ 0, %139 ], [ 1, %146 ], [ 1, %142 ], [ 0, %109 ], [ 0, %115 ], [ 0, %121 ], [ 0, %126 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i8 %152
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !246 !PGOFuncName !247 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !248

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !249
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !251 !PGOFuncName !252 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !159
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !208 !PGOFuncName !253 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #11, !range !179
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !254

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 655, ptr noundef nonnull @.str.2) #10
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !207
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #11
  ret ptr %7
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !255 !PGOFuncName !256 {
  %2 = load ptr, ptr %0, align 8, !tbaa !257
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 !prof !259 !PGOFuncName !260 {
  %2 = load ptr, ptr %0, align 8, !tbaa !257
  %3 = load ptr, ptr %2, align 8, !tbaa !261
  ret ptr %3
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !263 !PGOFuncName !264 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !265
  %4 = load ptr, ptr %3, align 8, !tbaa !159
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !263 !PGOFuncName !267 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #11
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #6 !prof !268 !PGOFuncName !269 {
  %2 = load ptr, ptr %0, align 8, !tbaa !257
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !270
  store ptr %4, ptr %0, align 8, !tbaa !257
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !263 !PGOFuncName !271 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !232
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !272

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3103, ptr noundef nonnull @.str.2) #10
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #6 !prof !218 !PGOFuncName !273 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #11
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #11
  store ptr %4, ptr %0, align 8, !tbaa !257
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !274
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !275
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !276 !PGOFuncName !277 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #11, !range !179
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !278

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !276 !PGOFuncName !279 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #11, !range !179
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !278

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !232
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !218 !PGOFuncName !280 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !281
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !282

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !232
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !283

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !284
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 !prof !218 !PGOFuncName !286 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !283

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !287
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !289 !PGOFuncName !290 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !170
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @recognize_single_bit_test(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 !prof !291 !PGOFuncName !292 {
  %4 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #11, !range !233
  %5 = icmp eq i32 %4, 102
  br i1 %5, label %6, label %148, !prof !293

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #11
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 141
  br i1 %10, label %11, label %148, !prof !294

11:                                               ; preds = %6
  %12 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #11
  %13 = tail call i32 @integer_zerop(ptr noundef %12) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %148, label %15, !prof !295

15:                                               ; preds = %11
  %16 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #11
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !232
  %19 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %18) #11, !range !179
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %148, label %21, !prof !296

21:                                               ; preds = %15
  %22 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %18) #11, !range !233
  %23 = icmp eq i32 %22, 89
  br i1 %23, label %24, label %84, !prof !297

24:                                               ; preds = %21
  %25 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %18) #11
  %26 = tail call i32 @integer_onep(ptr noundef %25) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %84, label %28, !prof !298

28:                                               ; preds = %24
  %29 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #11
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 141
  br i1 %32, label %33, label %84, !prof !299

33:                                               ; preds = %28
  %34 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #11
  %35 = getelementptr inbounds %struct.tree_ssa_name, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !232
  %37 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %36) #11, !range !179
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %69, label %39, !prof !300

39:                                               ; preds = %33, %63
  %40 = phi ptr [ %66, %63 ], [ %36, %33 ]
  %41 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %40) #11, !range !233
  %42 = icmp eq i32 %41, 116
  br i1 %42, label %46, label %43, !prof !298

43:                                               ; preds = %39
  %44 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %40) #11, !range !233
  %45 = icmp eq i32 %44, 113
  br i1 %45, label %46, label %60, !prof !298

46:                                               ; preds = %43, %39
  %47 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %40) #11
  %48 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !232
  %50 = getelementptr inbounds %struct.tree_type, ptr %49, i64 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 1023
  %53 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %40) #11
  %54 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !232
  %56 = getelementptr inbounds %struct.tree_type, ptr %55, i64 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 1023
  %59 = icmp ugt i32 %52, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %46, %43
  %61 = tail call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef %40) #10
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %69, label %63, !prof !299

63:                                               ; preds = %46, %60
  %64 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %40) #11
  %65 = getelementptr inbounds %struct.tree_ssa_name, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !232
  %67 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %66) #11, !range !179
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %39, !prof !301, !llvm.loop !302

69:                                               ; preds = %60, %63, %33
  %70 = phi ptr [ %36, %33 ], [ %66, %63 ], [ %40, %60 ]
  %71 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %70) #11, !range !179
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %79, label %73, !prof !298

73:                                               ; preds = %69
  %74 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %70) #11, !range !233
  %75 = icmp eq i32 %74, 84
  br i1 %75, label %76, label %79, !prof !299

76:                                               ; preds = %73
  %77 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %70) #11
  store ptr %77, ptr %2, align 8, !tbaa !159
  %78 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %70) #11
  br label %82

79:                                               ; preds = %73, %69
  %80 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !159
  store ptr %80, ptr %2, align 8, !tbaa !159
  %81 = tail call fastcc ptr @get_name_for_bit_test(ptr noundef %34) #11
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi ptr [ %81, %79 ], [ %78, %76 ]
  store ptr %83, ptr %1, align 8, !tbaa !159
  br label %148

84:                                               ; preds = %28, %24, %21
  %85 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %18) #11, !range !233
  %86 = icmp eq i32 %85, 89
  br i1 %86, label %87, label %103, !prof !303

87:                                               ; preds = %84
  %88 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #11
  %89 = load i64, ptr %88, align 8
  %90 = and i64 %89, 65535
  %91 = icmp eq i64 %90, 141
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %18) #11
  %94 = tail call i32 @integer_pow2p(ptr noundef %93) #10
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %92
  %97 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #11
  store ptr %97, ptr %1, align 8, !tbaa !159
  %98 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !159
  %99 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %18) #11
  %100 = tail call i32 @tree_log2(ptr noundef %99) #10
  %101 = sext i32 %100 to i64
  %102 = tail call ptr @build_int_cst(ptr noundef %98, i64 noundef %101) #10
  store ptr %102, ptr %2, align 8, !tbaa !159
  br label %148

103:                                              ; preds = %92, %87, %84
  %104 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %18) #11, !range !233
  %105 = icmp eq i32 %104, 89
  br i1 %105, label %106, label %148, !prof !303

106:                                              ; preds = %103
  %107 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #11
  %108 = load i64, ptr %107, align 8
  %109 = and i64 %108, 65535
  %110 = icmp eq i64 %109, 141
  br i1 %110, label %111, label %148

111:                                              ; preds = %106
  %112 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %18) #11
  %113 = load i64, ptr %112, align 8
  %114 = and i64 %113, 65535
  %115 = icmp eq i64 %114, 141
  br i1 %115, label %116, label %148

116:                                              ; preds = %111
  %117 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #11
  %118 = getelementptr inbounds %struct.tree_ssa_name, ptr %117, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !232
  %120 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %119) #11, !range !179
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %132, label %122

122:                                              ; preds = %116
  %123 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %119) #11, !range !233
  %124 = icmp eq i32 %123, 83
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %119) #11
  %127 = tail call i32 @integer_onep(ptr noundef %126) #10
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %125
  %130 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %18) #11
  store ptr %130, ptr %1, align 8, !tbaa !159
  %131 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %119) #11
  store ptr %131, ptr %2, align 8, !tbaa !159
  br label %148

132:                                              ; preds = %125, %122, %116
  %133 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %18) #11
  %134 = getelementptr inbounds %struct.tree_ssa_name, ptr %133, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !232
  %136 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %135) #11, !range !179
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %132
  %139 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %135) #11, !range !233
  %140 = icmp eq i32 %139, 83
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %135) #11
  %143 = tail call i32 @integer_onep(ptr noundef %142) #10
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %141
  %146 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #11
  store ptr %146, ptr %1, align 8, !tbaa !159
  %147 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %135) #11
  store ptr %147, ptr %2, align 8, !tbaa !159
  br label %148

148:                                              ; preds = %129, %145, %103, %106, %111, %132, %138, %141, %15, %3, %6, %11, %96, %82
  %149 = phi i8 [ 1, %82 ], [ 1, %96 ], [ 0, %11 ], [ 0, %6 ], [ 0, %3 ], [ 0, %15 ], [ 0, %141 ], [ 0, %138 ], [ 0, %132 ], [ 0, %111 ], [ 0, %106 ], [ 0, %103 ], [ 1, %145 ], [ 1, %129 ]
  ret i8 %149
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @canonicalize_cond_expr_cond(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_cond_set_condition_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #1 !prof !304 !PGOFuncName !305 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #11, !range !179
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !306

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #10
  tail call void @update_stmt_operands(ptr noundef %0) #10
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !307 !PGOFuncName !308 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #1 !prof !309 !PGOFuncName !310 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #1 !prof !311 !PGOFuncName !312 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #11
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @combine_comparisons(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !313 !PGOFuncName !314 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !170
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #1 !prof !315 !PGOFuncName !316 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #11, !range !233
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #11, !range !170
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !317

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #11
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #1 !prof !291 !PGOFuncName !318 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #11
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !319

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #11
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 !prof !320 !PGOFuncName !321 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 !prof !322 !PGOFuncName !323 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_name_for_bit_test(ptr noundef %0) unnamed_addr #1 !prof !324 !PGOFuncName !325 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %34, !prof !326

5:                                                ; preds = %1
  %6 = tail call fastcc zeroext i8 @has_single_use(ptr noundef nonnull %0) #11
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %34, label %8, !prof !327

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !232
  %11 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %10) #11, !range !179
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %34, label %13, !prof !327

13:                                               ; preds = %8
  %14 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %10) #11, !range !233
  %15 = icmp eq i32 %14, 116
  br i1 %15, label %19, label %16, !prof !327

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %10) #11, !range !233
  %18 = icmp eq i32 %17, 113
  br i1 %18, label %19, label %34, !prof !327

19:                                               ; preds = %16, %13
  %20 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !232
  %22 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1023
  %25 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %10) #11
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !232
  %28 = getelementptr inbounds %struct.tree_type, ptr %27, i64 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1023
  %31 = icmp ugt i32 %24, %30
  br i1 %31, label %34, label %32

32:                                               ; preds = %19
  %33 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %10) #11
  br label %34

34:                                               ; preds = %8, %16, %19, %1, %5, %32
  %35 = phi ptr [ %33, %32 ], [ %0, %5 ], [ %0, %1 ], [ %0, %19 ], [ %0, %16 ], [ %0, %8 ]
  ret ptr %35
}

; Function Attrs: optsize
declare i32 @integer_pow2p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @tree_log2(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !315 !PGOFuncName !328 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !170
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !329

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.2) #10
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #0 !prof !315 !PGOFuncName !330 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !232
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !291 !PGOFuncName !331 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !232
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !332 !PGOFuncName !333 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #11, !range !179
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !334

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #11
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !335 !PGOFuncName !336 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !170
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !332 !PGOFuncName !337 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #11
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !338
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !334

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #10
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !332 !PGOFuncName !339 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !170
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #11
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #0 !prof !332 !PGOFuncName !340 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !234
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_single_use(ptr noundef %0) unnamed_addr #1 !prof !324 !PGOFuncName !341 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !342
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %20, label %6, !prof !327

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !342
  %9 = icmp eq ptr %2, %8
  br i1 %9, label %10, label %15, !prof !326

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !232
  %13 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %12) #11, !range !179
  %14 = xor i8 %13, 1
  br label %20

15:                                               ; preds = %6
  %16 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !234
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #10
  br label %20

20:                                               ; preds = %15, %1, %18, %10
  %21 = phi i8 [ %14, %10 ], [ %19, %18 ], [ 0, %1 ], [ 0, %15 ]
  ret i8 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !324 !PGOFuncName !343 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !170
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @recognize_bits_test(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 !prof !344 !PGOFuncName !345 {
  %4 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #11, !range !233
  %5 = icmp eq i32 %4, 102
  br i1 %5, label %6, label %28, !prof !346

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #11
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 141
  br i1 %10, label %11, label %28, !prof !347

11:                                               ; preds = %6
  %12 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #11
  %13 = tail call i32 @integer_zerop(ptr noundef %12) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15, !prof !348

15:                                               ; preds = %11
  %16 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #11
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !232
  %19 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %18) #11, !range !179
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21, !prof !349

21:                                               ; preds = %15
  %22 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %18) #11, !range !233
  %23 = icmp eq i32 %22, 89
  br i1 %23, label %24, label %28, !prof !350

24:                                               ; preds = %21
  %25 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #11
  %26 = tail call fastcc ptr @get_name_for_bit_test(ptr noundef %25) #11
  store ptr %26, ptr %1, align 8, !tbaa !159
  %27 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %18) #11
  store ptr %27, ptr %2, align 8, !tbaa !159
  br label %28

28:                                               ; preds = %15, %21, %3, %6, %11, %24
  %29 = phi i8 [ 1, %24 ], [ 0, %11 ], [ 0, %6 ], [ 0, %3 ], [ 0, %21 ], [ 0, %15 ]
  ret i8 %29
}

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @unsigned_type_for(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!155}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154}
!35 = !{ptr @tree_ssa_ifcombine, ptr @blocks_in_phiopt_order, i64 38}
!36 = !{ptr @tree_ssa_ifcombine, ptr @last_stmt, i64 141558}
!37 = !{ptr @tree_ssa_ifcombine, ptr @gimple_code, i64 139082}
!38 = !{ptr @tree_ssa_ifcombine, ptr @tree_ssa_ifcombine_bb, i64 138391}
!39 = !{ptr @tree_ssa_ifcombine, ptr @free, i64 38}
!40 = !{ptr @tree_ssa_ifcombine_bb, ptr @recognize_if_then_else, i64 326877}
!41 = !{ptr @tree_ssa_ifcombine_bb, ptr @single_pred_p, i64 142033}
!42 = !{ptr @tree_ssa_ifcombine_bb, ptr @single_pred, i64 92776}
!43 = !{ptr @tree_ssa_ifcombine_bb, ptr @same_phi_args_p, i64 73042}
!44 = !{ptr @tree_ssa_ifcombine_bb, ptr @bb_no_side_effects_p, i64 32269}
!45 = !{ptr @tree_ssa_ifcombine_bb, ptr @ifcombine_ifandif, i64 709}
!46 = !{ptr @tree_ssa_ifcombine_bb, ptr @ifcombine_iforif, i64 5216}
!47 = !{ptr @recognize_if_then_else, ptr @VEC_edge_base_length, i64 326880}
!48 = !{ptr @recognize_if_then_else, ptr @VEC_edge_base_index, i64 642906}
!49 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 234811}
!50 = !{ptr @single_pred, ptr @single_pred_edge, i64 92777}
!51 = !{ptr @same_phi_args_p, ptr @find_edge, i64 146086}
!52 = !{ptr @same_phi_args_p, ptr @gsi_start_phis, i64 73043}
!53 = !{ptr @same_phi_args_p, ptr @gsi_end_p, i64 105986}
!54 = !{ptr @same_phi_args_p, ptr @gsi_stmt, i64 89508}
!55 = !{ptr @same_phi_args_p, ptr @gimple_phi_arg_imm_use_ptr, i64 179016}
!56 = !{ptr @same_phi_args_p, ptr @get_use_from_ptr, i64 179016}
!57 = !{ptr @same_phi_args_p, ptr @operand_equal_p, i64 89508}
!58 = !{ptr @same_phi_args_p, ptr @gsi_next, i64 32943}
!59 = !{ptr @bb_no_side_effects_p, ptr @gsi_start_bb, i64 32269}
!60 = !{ptr @bb_no_side_effects_p, ptr @gsi_end_p, i64 57726}
!61 = !{ptr @bb_no_side_effects_p, ptr @gsi_stmt, i64 54663}
!62 = !{ptr @bb_no_side_effects_p, ptr @gimple_has_volatile_ops, i64 54663}
!63 = !{ptr @bb_no_side_effects_p, ptr @gimple_vuse, i64 54662}
!64 = !{ptr @bb_no_side_effects_p, ptr @gsi_next, i64 25457}
!65 = !{ptr @ifcombine_ifandif, ptr @last_stmt, i64 1414}
!66 = !{ptr @ifcombine_ifandif, ptr @gimple_code, i64 1412}
!67 = !{ptr @ifcombine_ifandif, ptr @recognize_single_bit_test, i64 1160}
!68 = !{ptr @ifcombine_ifandif, ptr @gsi_for_stmt, i64 1}
!69 = !{ptr @ifcombine_ifandif, ptr @build_int_cst, i64 2}
!70 = !{ptr @ifcombine_ifandif, ptr @fold_build2_stat_loc, i64 5}
!71 = !{ptr @ifcombine_ifandif, ptr @force_gimple_operand_gsi, i64 2}
!72 = !{ptr @ifcombine_ifandif, ptr @canonicalize_cond_expr_cond, i64 1}
!73 = !{ptr @ifcombine_ifandif, ptr @gimple_cond_set_condition_from_tree, i64 2}
!74 = !{ptr @ifcombine_ifandif, ptr @update_stmt, i64 2}
!75 = !{ptr @ifcombine_ifandif, ptr @gimple_cond_code, i64 1407}
!76 = !{ptr @ifcombine_ifandif, ptr @gimple_cond_lhs, i64 1403}
!77 = !{ptr @ifcombine_ifandif, ptr @operand_equal_p, i64 702}
!78 = !{ptr @ifcombine_ifandif, ptr @gimple_cond_rhs, i64 3}
!79 = !{ptr @ifcombine_ifandif, ptr @combine_comparisons, i64 1}
!80 = !{ptr @ifcombine_iforif, ptr @last_stmt, i64 10430}
!81 = !{ptr @ifcombine_iforif, ptr @gimple_code, i64 10428}
!82 = !{ptr @ifcombine_iforif, ptr @recognize_bits_test, i64 5217}
!83 = !{ptr @ifcombine_iforif, ptr @unsigned_type_for, i64 6}
!84 = !{ptr @ifcombine_iforif, ptr @fold_convert_loc, i64 12}
!85 = !{ptr @ifcombine_iforif, ptr @gsi_for_stmt, i64 3}
!86 = !{ptr @ifcombine_iforif, ptr @fold_build2_stat_loc, i64 9}
!87 = !{ptr @ifcombine_iforif, ptr @force_gimple_operand_gsi, i64 6}
!88 = !{ptr @ifcombine_iforif, ptr @build_int_cst, i64 3}
!89 = !{ptr @ifcombine_iforif, ptr @canonicalize_cond_expr_cond, i64 4}
!90 = !{ptr @ifcombine_iforif, ptr @gimple_cond_set_condition_from_tree, i64 4}
!91 = !{ptr @ifcombine_iforif, ptr @update_stmt, i64 4}
!92 = !{ptr @ifcombine_iforif, ptr @gimple_cond_code, i64 10419}
!93 = !{ptr @ifcombine_iforif, ptr @gimple_cond_lhs, i64 10415}
!94 = !{ptr @ifcombine_iforif, ptr @operand_equal_p, i64 5287}
!95 = !{ptr @ifcombine_iforif, ptr @gimple_cond_rhs, i64 161}
!96 = !{ptr @ifcombine_iforif, ptr @combine_comparisons, i64 1}
!97 = !{ptr @single_pred_edge, ptr @single_pred_p, i64 92777}
!98 = !{ptr @single_pred_edge, ptr @fancy_abort, i64 1}
!99 = !{ptr @single_pred_edge, ptr @VEC_edge_base_index, i64 92777}
!100 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 129040}
!101 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!102 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 32269}
!103 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 32269}
!104 = !{ptr @gimple_has_volatile_ops, ptr @gimple_has_mem_ops, i64 49310}
!105 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 49310}
!106 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 98620}
!107 = !{ptr @recognize_single_bit_test, ptr @gimple_cond_code, i64 1167}
!108 = !{ptr @recognize_single_bit_test, ptr @gimple_cond_lhs, i64 1406}
!109 = !{ptr @recognize_single_bit_test, ptr @gimple_cond_rhs, i64 761}
!110 = !{ptr @recognize_single_bit_test, ptr @integer_zerop, i64 761}
!111 = !{ptr @recognize_single_bit_test, ptr @is_gimple_assign, i64 1796}
!112 = !{ptr @recognize_single_bit_test, ptr @gimple_assign_rhs_code, i64 2496}
!113 = !{ptr @recognize_single_bit_test, ptr @gimple_assign_rhs2, i64 1152}
!114 = !{ptr @recognize_single_bit_test, ptr @integer_onep, i64 577}
!115 = !{ptr @recognize_single_bit_test, ptr @gimple_assign_rhs1, i64 1730}
!116 = !{ptr @recognize_single_bit_test, ptr @gimple_assign_lhs, i64 2}
!117 = !{ptr @recognize_single_bit_test, ptr @gimple_assign_ssa_name_copy_p, i64 571}
!118 = !{ptr @recognize_single_bit_test, ptr @get_name_for_bit_test, i64 2}
!119 = !{ptr @recognize_single_bit_test, ptr @integer_pow2p, i64 1}
!120 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 6}
!121 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 5}
!122 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 5}
!123 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 23341}
!124 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 6015}
!125 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 6809}
!126 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 7528}
!127 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 7528}
!128 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 199}
!129 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 1167}
!130 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 1166}
!131 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 1945}
!132 = !{ptr @get_name_for_bit_test, ptr @has_single_use, i64 6}
!133 = !{ptr @get_name_for_bit_test, ptr @is_gimple_assign, i64 6}
!134 = !{ptr @get_name_for_bit_test, ptr @gimple_assign_rhs_code, i64 9}
!135 = !{ptr @get_name_for_bit_test, ptr @gimple_assign_rhs1, i64 2}
!136 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 7528}
!137 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 32468}
!138 = !{ptr @gimple_op, ptr @gimple_ops, i64 32467}
!139 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 32474}
!140 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 32468}
!141 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!142 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 32468}
!143 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 32468}
!144 = !{ptr @has_single_use, ptr @is_gimple_debug, i64 6}
!145 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 7}
!146 = !{ptr @recognize_bits_test, ptr @gimple_cond_code, i64 5220}
!147 = !{ptr @recognize_bits_test, ptr @gimple_cond_lhs, i64 10087}
!148 = !{ptr @recognize_bits_test, ptr @gimple_cond_rhs, i64 5093}
!149 = !{ptr @recognize_bits_test, ptr @integer_zerop, i64 5093}
!150 = !{ptr @recognize_bits_test, ptr @is_gimple_assign, i64 4993}
!151 = !{ptr @recognize_bits_test, ptr @gimple_assign_rhs_code, i64 4992}
!152 = !{ptr @recognize_bits_test, ptr @gimple_assign_rhs1, i64 8}
!153 = !{ptr @recognize_bits_test, ptr @get_name_for_bit_test, i64 8}
!154 = !{ptr @recognize_bits_test, ptr @gimple_assign_rhs2, i64 8}
!155 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!156 = !{!"function_entry_count", i64 38}
!157 = !{!"tree-ssa-ifcombine.c:gate_ifcombine"}
!158 = !{!"tree-ssa-ifcombine.c:tree_ssa_ifcombine"}
!159 = !{!160, !160, i64 0}
!160 = !{!"any pointer", !161, i64 0}
!161 = !{!"omnipotent char", !162, i64 0}
!162 = !{!"Simple C/C++ TBAA"}
!163 = !{!164, !160, i64 8}
!164 = !{!"function", !160, i64 0, !160, i64 8, !160, i64 16, !160, i64 24, !160, i64 32, !160, i64 40, !160, i64 48, !160, i64 56, !160, i64 64, !160, i64 72, !160, i64 80, !160, i64 88, !160, i64 96, !165, i64 104, !165, i64 108, !165, i64 112, !165, i64 116, !165, i64 120, !165, i64 124, !160, i64 128, !165, i64 136, !165, i64 137, !165, i64 138, !165, i64 138, !165, i64 138, !165, i64 138, !165, i64 138, !165, i64 138, !165, i64 138, !165, i64 139, !165, i64 139, !165, i64 139, !165, i64 139, !165, i64 139, !165, i64 139, !165, i64 139}
!165 = !{!"int", !161, i64 0}
!166 = !{!167, !165, i64 24}
!167 = !{!"control_flow_graph", !160, i64 0, !160, i64 8, !160, i64 16, !165, i64 24, !165, i64 28, !165, i64 32, !160, i64 40, !165, i64 48, !161, i64 52, !161, i64 60, !165, i64 68, !165, i64 72}
!168 = !{!"branch_weights", i32 155, i32 1}
!169 = !{!"branch_weights", i32 2541, i32 142743}
!170 = !{i32 0, i32 256}
!171 = !{!"branch_weights", i32 142035, i32 709}
!172 = !{!"branch_weights", i32 580977, i32 155}
!173 = distinct !{!173, !174}
!174 = !{!"llvm.loop.mustprogress"}
!175 = !{!"function_entry_count", i64 451742}
!176 = !{!"tree-ssa-ifcombine.c:gimple_code"}
!177 = !{!"function_entry_count", i64 142034}
!178 = !{!"tree-ssa-ifcombine.c:tree_ssa_ifcombine_bb"}
!179 = !{i8 0, i8 2}
!180 = !{!"branch_weights", i32 1, i32 142035}
!181 = !{!"branch_weights", i32 49258, i32 92778}
!182 = !{!"branch_weights", i32 38342, i32 54437}
!183 = !{!"branch_weights", i32 37252, i32 17186}
!184 = !{!"branch_weights", i32 16478, i32 709}
!185 = !{!"branch_weights", i32 73463, i32 18608}
!186 = !{!"branch_weights", i32 3524, i32 15085}
!187 = !{!"branch_weights", i32 9869, i32 5217}
!188 = !{!"function_entry_count", i64 326880}
!189 = !{!"tree-ssa-ifcombine.c:recognize_if_then_else"}
!190 = !{!191, !160, i64 8}
!191 = !{!"basic_block_def", !160, i64 0, !160, i64 8, !160, i64 16, !160, i64 24, !161, i64 32, !160, i64 48, !160, i64 56, !161, i64 64, !192, i64 72, !165, i64 80, !165, i64 84, !165, i64 88, !165, i64 92, !165, i64 96}
!192 = !{!"long", !161, i64 0}
!193 = !{!"branch_weights", i32 321455, i32 5427}
!194 = !{!195, !165, i64 48}
!195 = !{!"edge_def", !160, i64 0, !160, i64 8, !161, i64 16, !160, i64 24, !160, i64 32, !165, i64 40, !165, i64 44, !165, i64 48, !165, i64 52, !192, i64 56}
!196 = !{!"branch_weights", i32 7, i32 321449}
!197 = !{!"branch_weights", i32 -2147483648, i32 0}
!198 = !{!"branch_weights", i32 1, i32 321449}
!199 = !{!"branch_weights", i32 142035, i32 179415}
!200 = !{!195, !160, i64 8}
!201 = !{!"branch_weights", i32 85852, i32 93564}
!202 = !{!"branch_weights", i32 142035, i32 85852}
!203 = !{!"branch_weights", i32 73044, i32 12809}
!204 = !{!"branch_weights", i32 142035, i32 73044}
!205 = !{!"function_entry_count", i64 234811}
!206 = !{!"tree-ssa-ifcombine.c:single_pred_p"}
!207 = !{!191, !160, i64 0}
!208 = !{!"function_entry_count", i64 92777}
!209 = !{!"tree-ssa-ifcombine.c:single_pred"}
!210 = !{!195, !160, i64 0}
!211 = !{!"function_entry_count", i64 73043}
!212 = !{!"tree-ssa-ifcombine.c:same_phi_args_p"}
!213 = !{!"branch_weights", i32 32269, i32 1}
!214 = !{!195, !165, i64 44}
!215 = !{!"branch_weights", i32 40775, i32 23747}
!216 = !{!"branch_weights", i32 32252, i32 32269}
!217 = distinct !{!217, !174}
!218 = !{!"function_entry_count", i64 32269}
!219 = !{!"tree-ssa-ifcombine.c:bb_no_side_effects_p"}
!220 = !{!"branch_weights", i32 5924, i32 1}
!221 = !{!"branch_weights", i32 49311, i32 1}
!222 = !{!"branch_weights", i32 22966, i32 26346}
!223 = !{!"branch_weights", i32 43387, i32 5924}
!224 = distinct !{!224, !174}
!225 = !{!"function_entry_count", i64 708}
!226 = !{!"tree-ssa-ifcombine.c:ifcombine_ifandif"}
!227 = !{!"branch_weights", i32 1, i32 709}
!228 = !{!"branch_weights", i32 709, i32 1}
!229 = !{!"branch_weights", i32 250, i32 460}
!230 = !{!"branch_weights", i32 339, i32 122}
!231 = !{!"branch_weights", i32 1, i32 122}
!232 = !{!161, !161, i64 0}
!233 = !{i32 0, i32 65536}
!234 = !{!165, !165, i64 0}
!235 = !{!"function_entry_count", i64 5216}
!236 = !{!"tree-ssa-ifcombine.c:ifcombine_iforif"}
!237 = !{!"branch_weights", i32 1, i32 5217}
!238 = !{!"branch_weights", i32 5217, i32 1}
!239 = !{!"branch_weights", i32 5213, i32 5}
!240 = !{!"branch_weights", i32 2, i32 4}
!241 = !{!"branch_weights", i32 1, i32 4}
!242 = !{!"branch_weights", i32 4, i32 1}
!243 = !{!"branch_weights", i32 5214, i32 1}
!244 = !{!"branch_weights", i32 5135, i32 80}
!245 = !{!"branch_weights", i32 80, i32 1}
!246 = !{!"function_entry_count", i64 561691}
!247 = !{!"tree-ssa-ifcombine.c:VEC_edge_base_length"}
!248 = !{!"branch_weights", i32 1, i32 561692}
!249 = !{!250, !165, i64 0}
!250 = !{!"VEC_edge_base", !165, i64 0, !165, i64 4, !161, i64 8}
!251 = !{!"function_entry_count", i64 735685}
!252 = !{!"tree-ssa-ifcombine.c:VEC_edge_base_index"}
!253 = !{!"tree-ssa-ifcombine.c:single_pred_edge"}
!254 = !{!"branch_weights", i32 1, i32 92778}
!255 = !{!"function_entry_count", i64 152023}
!256 = !{!"tree-ssa-ifcombine.c:gsi_end_p"}
!257 = !{!258, !160, i64 0}
!258 = !{!"", !160, i64 0, !160, i64 8, !160, i64 16}
!259 = !{!"function_entry_count", i64 113830}
!260 = !{!"tree-ssa-ifcombine.c:gsi_stmt"}
!261 = !{!262, !160, i64 0}
!262 = !{!"gimple_seq_node_d", !160, i64 0, !160, i64 8, !160, i64 16}
!263 = !{!"function_entry_count", i64 129040}
!264 = !{!"tree-ssa-ifcombine.c:get_use_from_ptr"}
!265 = !{!266, !160, i64 24}
!266 = !{!"ssa_use_operand_d", !160, i64 0, !160, i64 8, !161, i64 16, !160, i64 24}
!267 = !{!"tree-ssa-ifcombine.c:gimple_phi_arg_imm_use_ptr"}
!268 = !{!"function_entry_count", i64 46711}
!269 = !{!"tree-ssa-ifcombine.c:gsi_next"}
!270 = !{!262, !160, i64 16}
!271 = !{!"tree-ssa-ifcombine.c:gimple_phi_arg"}
!272 = !{!"branch_weights", i32 1, i32 129041}
!273 = !{!"tree-ssa-ifcombine.c:gsi_start_bb"}
!274 = !{!258, !160, i64 8}
!275 = !{!258, !160, i64 16}
!276 = !{!"function_entry_count", i64 49310}
!277 = !{!"tree-ssa-ifcombine.c:gimple_has_volatile_ops"}
!278 = !{!"branch_weights", i32 5925, i32 43387}
!279 = !{!"tree-ssa-ifcombine.c:gimple_vuse"}
!280 = !{!"tree-ssa-ifcombine.c:bb_seq"}
!281 = !{!191, !165, i64 96}
!282 = !{!"branch_weights", i32 32270, i32 1}
!283 = !{!"branch_weights", i32 1, i32 32270}
!284 = !{!285, !160, i64 0}
!285 = !{!"gimple_bb_info", !160, i64 0, !160, i64 8}
!286 = !{!"tree-ssa-ifcombine.c:gimple_seq_first"}
!287 = !{!288, !160, i64 0}
!288 = !{!"gimple_seq_d", !160, i64 0, !160, i64 8, !160, i64 16}
!289 = !{!"function_entry_count", i64 98620}
!290 = !{!"tree-ssa-ifcombine.c:gimple_has_mem_ops"}
!291 = !{!"function_entry_count", i64 1167}
!292 = !{!"tree-ssa-ifcombine.c:recognize_single_bit_test"}
!293 = !{!"branch_weights", i32 763, i32 406}
!294 = !{!"branch_weights", i32 763, i32 1}
!295 = !{!"branch_weights", i32 117, i32 647}
!296 = !{!"branch_weights", i32 1, i32 647}
!297 = !{!"branch_weights", i32 581, i32 67}
!298 = !{!"branch_weights", i32 1, i32 581}
!299 = !{!"branch_weights", i32 581, i32 1}
!300 = !{!"branch_weights", i32 1, i32 127}
!301 = !{!"branch_weights", i32 127, i32 74241}
!302 = distinct !{!302, !174}
!303 = !{!"branch_weights", i32 1, i32 67}
!304 = !{!"function_entry_count", i64 6}
!305 = !{!"tree-ssa-ifcombine.c:update_stmt"}
!306 = !{!"branch_weights", i32 1, i32 7}
!307 = !{!"function_entry_count", i64 18229}
!308 = !{!"tree-ssa-ifcombine.c:gimple_cond_code"}
!309 = !{!"function_entry_count", i64 23341}
!310 = !{!"tree-ssa-ifcombine.c:gimple_cond_lhs"}
!311 = !{!"function_entry_count", i64 6015}
!312 = !{!"tree-ssa-ifcombine.c:gimple_cond_rhs"}
!313 = !{!"function_entry_count", i64 6809}
!314 = !{!"tree-ssa-ifcombine.c:is_gimple_assign"}
!315 = !{!"function_entry_count", i64 7528}
!316 = !{!"tree-ssa-ifcombine.c:gimple_assign_rhs_code"}
!317 = !{!"branch_weights", i32 199, i32 7331}
!318 = !{!"tree-ssa-ifcombine.c:gimple_assign_rhs2"}
!319 = !{!"branch_weights", i32 1168, i32 1}
!320 = !{!"function_entry_count", i64 1945}
!321 = !{!"tree-ssa-ifcombine.c:gimple_assign_rhs1"}
!322 = !{!"function_entry_count", i64 0}
!323 = !{!"tree-ssa-ifcombine.c:gimple_assign_lhs"}
!324 = !{!"function_entry_count", i64 7}
!325 = !{!"tree-ssa-ifcombine.c:get_name_for_bit_test"}
!326 = !{!"branch_weights", i32 8, i32 1}
!327 = !{!"branch_weights", i32 1, i32 8}
!328 = !{!"tree-ssa-ifcombine.c:gimple_expr_code"}
!329 = !{!"branch_weights", i32 1, i32 30116, i32 2, i32 1}
!330 = !{!"tree-ssa-ifcombine.c:get_gimple_rhs_class"}
!331 = !{!"tree-ssa-ifcombine.c:gimple_num_ops"}
!332 = !{!"function_entry_count", i64 32468}
!333 = !{!"tree-ssa-ifcombine.c:gimple_op"}
!334 = !{!"branch_weights", i32 1, i32 32469}
!335 = !{!"function_entry_count", i64 32474}
!336 = !{!"tree-ssa-ifcombine.c:gimple_has_ops"}
!337 = !{!"tree-ssa-ifcombine.c:gimple_ops"}
!338 = !{!192, !192, i64 0}
!339 = !{!"tree-ssa-ifcombine.c:gimple_statement_structure"}
!340 = !{!"tree-ssa-ifcombine.c:gss_for_code"}
!341 = !{!"tree-ssa-ifcombine.c:has_single_use"}
!342 = !{!266, !160, i64 8}
!343 = !{!"tree-ssa-ifcombine.c:is_gimple_debug"}
!344 = !{!"function_entry_count", i64 5220}
!345 = !{!"tree-ssa-ifcombine.c:recognize_bits_test"}
!346 = !{!"branch_weights", i32 5096, i32 126}
!347 = !{!"branch_weights", i32 5096, i32 1}
!348 = !{!"branch_weights", i32 100, i32 4997}
!349 = !{!"branch_weights", i32 1, i32 4997}
!350 = !{!"branch_weights", i32 8, i32 4990}
