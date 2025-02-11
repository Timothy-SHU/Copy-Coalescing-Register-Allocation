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
define internal noundef zeroext i8 @gate_ifcombine() #0 {
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @tree_ssa_ifcombine() #1 {
  %1 = tail call ptr @blocks_in_phiopt_order() #10
  %2 = load ptr, ptr @cfun, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !12
  %7 = icmp sgt i32 %6, 2
  br i1 %7, label %8, label %35

8:                                                ; preds = %0, %21
  %9 = phi i64 [ %23, %21 ], [ 0, %0 ]
  %10 = phi i8 [ %22, %21 ], [ 0, %0 ]
  %11 = getelementptr inbounds ptr, ptr %1, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = tail call ptr @last_stmt(ptr noundef %12) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %8
  %16 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %13) #11, !range !14
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = tail call fastcc zeroext i8 @tree_ssa_ifcombine_bb(ptr noundef %12) #11
  %20 = or i8 %19, %10
  br label %21

21:                                               ; preds = %18, %15, %8
  %22 = phi i8 [ %20, %18 ], [ %10, %15 ], [ %10, %8 ]
  %23 = add nuw nsw i64 %9, 1
  %24 = load ptr, ptr @cfun, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !9
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !12
  %29 = add nsw i32 %28, -2
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %23, %30
  br i1 %31, label %8, label %32, !llvm.loop !15

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
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @tree_ssa_ifcombine_bb(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store ptr null, ptr %3, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store ptr null, ptr %4, align 8, !tbaa !5
  %5 = call fastcc zeroext i8 @recognize_if_then_else(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #11, !range !17
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %37, label %7

7:                                                ; preds = %1
  %8 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #11, !range !17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @single_pred(ptr noundef %0) #11
  %12 = call fastcc zeroext i8 @recognize_if_then_else(ptr noundef %11, ptr noundef nonnull %2, ptr noundef nonnull %4) #11, !range !17
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 8, !tbaa !5
  %16 = load ptr, ptr %4, align 8, !tbaa !5
  %17 = tail call fastcc zeroext i8 @same_phi_args_p(ptr noundef %11, ptr noundef %15, ptr noundef %16) #11, !range !17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = tail call fastcc zeroext i8 @bb_no_side_effects_p(ptr noundef %15) #11
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = tail call fastcc zeroext i8 @ifcombine_ifandif(ptr noundef %15, ptr noundef %11) #11, !range !17
  br label %37

24:                                               ; preds = %19, %14, %10
  %25 = call fastcc zeroext i8 @recognize_if_then_else(ptr noundef %11, ptr noundef nonnull %3, ptr noundef nonnull %2) #11, !range !17
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %2, align 8, !tbaa !5
  %29 = load ptr, ptr %3, align 8, !tbaa !5
  %30 = tail call fastcc zeroext i8 @same_phi_args_p(ptr noundef %11, ptr noundef %28, ptr noundef %29) #11, !range !17
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc zeroext i8 @bb_no_side_effects_p(ptr noundef %28) #11
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = tail call fastcc zeroext i8 @ifcombine_iforif(ptr noundef %28, ptr noundef %11) #11, !range !17
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
define internal fastcc noundef zeroext i8 @recognize_if_then_else(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  %6 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %5) #11
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %51

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %5, i32 noundef 0) #11
  %10 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %5, i32 noundef 1) #11
  %11 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !21
  %13 = and i32 %12, 1024
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, ptr %10, ptr %9
  %16 = select i1 %14, ptr %9, ptr %10
  %17 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !21
  %19 = and i32 %18, 1024
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %51, label %21

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !21
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %51, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %1, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !23
  %32 = icmp eq ptr %31, %27
  br i1 %32, label %33, label %51

33:                                               ; preds = %29, %26
  %34 = load ptr, ptr %2, align 8, !tbaa !5
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !23
  %39 = icmp eq ptr %38, %34
  br i1 %39, label %40, label %51

40:                                               ; preds = %36, %33
  br i1 %28, label %41, label %45

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !23
  store ptr %43, ptr %1, align 8, !tbaa !5
  %44 = load ptr, ptr %2, align 8, !tbaa !5
  br label %45

45:                                               ; preds = %41, %40
  %46 = phi ptr [ %44, %41 ], [ %34, %40 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !23
  store ptr %50, ptr %2, align 8, !tbaa !5
  br label %51

51:                                               ; preds = %45, %48, %36, %29, %8, %21, %3
  %52 = phi i8 [ 0, %3 ], [ 0, %21 ], [ 0, %8 ], [ 0, %29 ], [ 0, %36 ], [ 1, %48 ], [ 1, %45 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !24
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #11
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #11
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @same_phi_args_p(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = tail call ptr @find_edge(ptr noundef %0, ptr noundef %2) #10
  %6 = tail call ptr @find_edge(ptr noundef %1, ptr noundef %2) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %2) #10
  %7 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #11, !range !17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.edge_def, ptr %5, i64 0, i32 6
  %11 = getelementptr inbounds %struct.edge_def, ptr %6, i64 0, i32 6
  br label %12

12:                                               ; preds = %9, %22
  %13 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #11
  %14 = load i32, ptr %10, align 4, !tbaa !26
  %15 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %13, i32 noundef %14) #11
  %16 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %15) #11
  %17 = load i32, ptr %11, align 4, !tbaa !26
  %18 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %13, i32 noundef %17) #11
  %19 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %18) #11
  %20 = call i32 @operand_equal_p(ptr noundef %16, ptr noundef %19, i32 noundef 0) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %12
  call fastcc void @gsi_next(ptr noundef nonnull %4) #11
  %23 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #11, !range !17
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %12, label %25, !llvm.loop !27

25:                                               ; preds = %12, %22, %3
  %26 = phi i8 [ 1, %3 ], [ 1, %22 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  ret i8 %26
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bb_no_side_effects_p(ptr noundef %0) unnamed_addr #8 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #11
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #11, !range !17
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1, %12
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #11
  %7 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %6) #11, !range !17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @gimple_vuse(ptr noundef %6) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  call fastcc void @gsi_next(ptr noundef nonnull %2) #11
  %13 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #11, !range !17
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %5, label %15, !llvm.loop !28

15:                                               ; preds = %5, %9, %12, %1
  %16 = phi i8 [ 1, %1 ], [ 1, %12 ], [ 0, %9 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ifcombine_ifandif(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
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
  br i1 %9, label %106, label %10

10:                                               ; preds = %2
  %11 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %8) #11, !range !14
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %106

13:                                               ; preds = %10
  %14 = tail call ptr @last_stmt(ptr noundef %1) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %106, label %16

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %14) #11, !range !14
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %106

19:                                               ; preds = %16
  %20 = call fastcc zeroext i8 @recognize_single_bit_test(ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %6) #11, !range !17
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %64, label %22

22:                                               ; preds = %19
  %23 = call fastcc zeroext i8 @recognize_single_bit_test(ptr noundef nonnull %14, ptr noundef nonnull %5, ptr noundef nonnull %7) #11, !range !17
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %64, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %4, align 8, !tbaa !5
  %27 = load ptr, ptr %5, align 8, !tbaa !5
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %25
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %8) #10
  %30 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !29
  %32 = call ptr @build_int_cst(ptr noundef %31, i64 noundef 1) #10
  %33 = load ptr, ptr %6, align 8, !tbaa !5
  %34 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 83, ptr noundef %31, ptr noundef %32, ptr noundef %33) #10
  %35 = load ptr, ptr %30, align 8, !tbaa !29
  %36 = call ptr @build_int_cst(ptr noundef %35, i64 noundef 1) #10
  %37 = load ptr, ptr %7, align 8, !tbaa !5
  %38 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 83, ptr noundef %35, ptr noundef %36, ptr noundef %37) #10
  %39 = load ptr, ptr %30, align 8, !tbaa !29
  %40 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 87, ptr noundef %39, ptr noundef %34, ptr noundef %38) #10
  %41 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %40, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #10
  %42 = load ptr, ptr %30, align 8, !tbaa !29
  %43 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 89, ptr noundef %42, ptr noundef %26, ptr noundef %41) #10
  %44 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %43, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #10
  %45 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !5
  %46 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 101, ptr noundef %45, ptr noundef %44, ptr noundef %41) #10
  %47 = call ptr @canonicalize_cond_expr_cond(ptr noundef %46) #10
  %48 = icmp eq ptr %47, null
  br i1 %48, label %106, label %49

49:                                               ; preds = %29
  call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %8, ptr noundef nonnull %47) #10
  call fastcc void @update_stmt(ptr noundef nonnull %8) #11
  %50 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !5
  call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %14, ptr noundef %50) #10
  call fastcc void @update_stmt(ptr noundef nonnull %14) #11
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %52 = icmp eq ptr %51, null
  br i1 %52, label %106, label %53

53:                                               ; preds = %49
  %54 = call i64 @fwrite(ptr nonnull @.str.4, i64 30, i64 1, ptr nonnull %51)
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !5
  call void @print_generic_expr(ptr noundef %55, ptr noundef nonnull %26, i32 noundef 0) #10
  %56 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %57 = call i64 @fwrite(ptr nonnull @.str.5, i64 35, i64 1, ptr %56)
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !5
  call void @print_generic_expr(ptr noundef %58, ptr noundef %33, i32 noundef 0) #10
  %59 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %60 = call i64 @fwrite(ptr nonnull @.str.6, i64 10, i64 1, ptr %59)
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !5
  call void @print_generic_expr(ptr noundef %61, ptr noundef %37, i32 noundef 0) #10
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %63 = call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %62)
  br label %106

64:                                               ; preds = %25, %22, %19
  %65 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %8) #11, !range !30
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !31
  %69 = icmp eq i32 %68, 5
  br i1 %69, label %70, label %106

70:                                               ; preds = %64
  %71 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %14) #11, !range !30
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !31
  %75 = icmp eq i32 %74, 5
  br i1 %75, label %76, label %106

76:                                               ; preds = %70
  %77 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %8) #11
  %78 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %14) #11
  %79 = tail call i32 @operand_equal_p(ptr noundef %77, ptr noundef %78, i32 noundef 0) #10
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %106, label %81

81:                                               ; preds = %76
  %82 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %8) #11
  %83 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %14) #11
  %84 = tail call i32 @operand_equal_p(ptr noundef %82, ptr noundef %83, i32 noundef 0) #10
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %81
  %87 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %8) #11, !range !30
  %88 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %14) #11, !range !30
  %89 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !5
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
  %98 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !5
  tail call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %14, ptr noundef %98) #10
  tail call fastcc void @update_stmt(ptr noundef nonnull %14) #11
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %100 = icmp eq ptr %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 30, i64 1, ptr nonnull %99)
  %103 = load ptr, ptr @dump_file, align 8, !tbaa !5
  tail call void @print_generic_expr(ptr noundef %103, ptr noundef nonnull %95, i32 noundef 0) #10
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !5
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
define internal fastcc noundef zeroext i8 @ifcombine_iforif(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
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
  br i1 %9, label %151, label %10

10:                                               ; preds = %2
  %11 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %8) #11, !range !14
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %151

13:                                               ; preds = %10
  %14 = tail call ptr @last_stmt(ptr noundef %1) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %151, label %16

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %14) #11, !range !14
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %151

19:                                               ; preds = %16
  %20 = call fastcc zeroext i8 @recognize_bits_test(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %5) #11, !range !17
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %109, label %22

22:                                               ; preds = %19
  %23 = call fastcc zeroext i8 @recognize_bits_test(ptr noundef nonnull %14, ptr noundef nonnull %4, ptr noundef nonnull %6) #11, !range !17
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %109, label %25

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  %26 = load ptr, ptr %3, align 8, !tbaa !5
  %27 = load ptr, ptr %4, align 8, !tbaa !5
  %28 = icmp eq ptr %26, %27
  %29 = load ptr, ptr %5, align 8, !tbaa !5
  %30 = load ptr, ptr %6, align 8, !tbaa !5
  br i1 %28, label %37, label %31

31:                                               ; preds = %25
  %32 = icmp eq ptr %29, %30
  br i1 %32, label %37, label %33

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
  %42 = load ptr, ptr %41, align 8, !tbaa !29
  %43 = getelementptr inbounds %struct.tree_type, ptr %42, i64 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 1023
  %46 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !29
  %48 = getelementptr inbounds %struct.tree_type, ptr %47, i64 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 1023
  %51 = icmp ult i32 %45, %50
  br i1 %51, label %63, label %52

52:                                               ; preds = %37
  %53 = tail call ptr @unsigned_type_for(ptr noundef nonnull %42) #10
  %54 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %53, ptr noundef nonnull %40) #10
  %55 = getelementptr inbounds %struct.tree_common, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !29
  %57 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %56, ptr noundef %38) #10
  %58 = load ptr, ptr %46, align 8, !tbaa !29
  %59 = tail call ptr @unsigned_type_for(ptr noundef %58) #10
  %60 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %59, ptr noundef nonnull %39) #10
  %61 = load ptr, ptr %55, align 8, !tbaa !29
  %62 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %61, ptr noundef %60) #10
  br label %74

63:                                               ; preds = %37
  %64 = tail call ptr @unsigned_type_for(ptr noundef nonnull %47) #10
  %65 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %64, ptr noundef nonnull %39) #10
  %66 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !29
  %68 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %67, ptr noundef %38) #10
  %69 = load ptr, ptr %41, align 8, !tbaa !29
  %70 = tail call ptr @unsigned_type_for(ptr noundef %69) #10
  %71 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %70, ptr noundef nonnull %40) #10
  %72 = load ptr, ptr %66, align 8, !tbaa !29
  %73 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %72, ptr noundef %71) #10
  br label %74

74:                                               ; preds = %63, %52
  %75 = phi ptr [ %65, %63 ], [ %62, %52 ]
  %76 = phi ptr [ %68, %63 ], [ %57, %52 ]
  %77 = phi ptr [ %73, %63 ], [ %54, %52 ]
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef nonnull %8) #10
  %78 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !29
  %80 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 87, ptr noundef %79, ptr noundef %77, ptr noundef %75) #10
  %81 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %7, ptr noundef %80, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #10
  %82 = load ptr, ptr %78, align 8, !tbaa !29
  %83 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 89, ptr noundef %82, ptr noundef %76, ptr noundef %81) #10
  %84 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %7, ptr noundef %83, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #10
  %85 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !5
  %86 = getelementptr inbounds %struct.tree_common, ptr %84, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !29
  %88 = call ptr @build_int_cst(ptr noundef %87, i64 noundef 0) #10
  %89 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 102, ptr noundef %85, ptr noundef %84, ptr noundef %88) #10
  %90 = call ptr @canonicalize_cond_expr_cond(ptr noundef %89) #10
  %91 = icmp eq ptr %90, null
  br i1 %91, label %107, label %92

92:                                               ; preds = %74
  call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %8, ptr noundef nonnull %90) #10
  call fastcc void @update_stmt(ptr noundef nonnull %8) #11
  %93 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !5
  call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %14, ptr noundef %93) #10
  call fastcc void @update_stmt(ptr noundef nonnull %14) #11
  %94 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %95 = icmp eq ptr %94, null
  br i1 %95, label %107, label %96

96:                                               ; preds = %92
  %97 = call i64 @fwrite(ptr nonnull @.str.10, i64 32, i64 1, ptr nonnull %94)
  %98 = load ptr, ptr @dump_file, align 8, !tbaa !5
  call void @print_generic_expr(ptr noundef %98, ptr noundef nonnull %76, i32 noundef 0) #10
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %100 = call i64 @fwrite(ptr nonnull @.str.11, i64 29, i64 1, ptr %99)
  %101 = load ptr, ptr @dump_file, align 8, !tbaa !5
  call void @print_generic_expr(ptr noundef %101, ptr noundef %77, i32 noundef 0) #10
  %102 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %103 = call i64 @fwrite(ptr nonnull @.str.12, i64 3, i64 1, ptr %102)
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !5
  call void @print_generic_expr(ptr noundef %104, ptr noundef %75, i32 noundef 0) #10
  %105 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %106 = call i32 @fputc(i32 10, ptr %105)
  br label %107

107:                                              ; preds = %92, %96, %74, %35
  %108 = phi i8 [ 0, %35 ], [ 0, %74 ], [ 1, %96 ], [ 1, %92 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  br label %151

109:                                              ; preds = %22, %19
  %110 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %8) #11, !range !30
  %111 = zext nneg i32 %110 to i64
  %112 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !31
  %114 = icmp eq i32 %113, 5
  br i1 %114, label %115, label %151

115:                                              ; preds = %109
  %116 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %14) #11, !range !30
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !31
  %120 = icmp eq i32 %119, 5
  br i1 %120, label %121, label %151

121:                                              ; preds = %115
  %122 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %8) #11
  %123 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %14) #11
  %124 = tail call i32 @operand_equal_p(ptr noundef %122, ptr noundef %123, i32 noundef 0) #10
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %151, label %126

126:                                              ; preds = %121
  %127 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %8) #11
  %128 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %14) #11
  %129 = tail call i32 @operand_equal_p(ptr noundef %127, ptr noundef %128, i32 noundef 0) #10
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %151, label %131

131:                                              ; preds = %126
  %132 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %8) #11, !range !30
  %133 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %14) #11, !range !30
  %134 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !5
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
  %143 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !5
  tail call void @gimple_cond_set_condition_from_tree(ptr noundef nonnull %14, ptr noundef %143) #10
  tail call fastcc void @update_stmt(ptr noundef nonnull %14) #11
  %144 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %145 = icmp eq ptr %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %142
  %147 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 30, i64 1, ptr nonnull %144)
  %148 = load ptr, ptr @dump_file, align 8, !tbaa !5
  tail call void @print_generic_expr(ptr noundef %148, ptr noundef nonnull %140, i32 noundef 0) #10
  %149 = load ptr, ptr @dump_file, align 8, !tbaa !5
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
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !32
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #11, !range !17
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 655, ptr noundef nonnull @.str.2) #10
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !24
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
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  ret ptr %3
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #11
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  store ptr %4, ptr %0, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !29
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3103, ptr noundef nonnull @.str.2) #10
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #6 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #11
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #11
  store ptr %4, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #11, !range !17
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #11, !range !17
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !29
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !43
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !44
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !14
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @recognize_single_bit_test(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 {
  %4 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #11, !range !30
  %5 = icmp eq i32 %4, 102
  br i1 %5, label %6, label %148

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #11
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 141
  br i1 %10, label %11, label %148

11:                                               ; preds = %6
  %12 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #11
  %13 = tail call i32 @integer_zerop(ptr noundef %12) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %148, label %15

15:                                               ; preds = %11
  %16 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #11
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !29
  %19 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %18) #11, !range !17
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %148, label %21

21:                                               ; preds = %15
  %22 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %18) #11, !range !30
  %23 = icmp eq i32 %22, 89
  br i1 %23, label %24, label %84

24:                                               ; preds = %21
  %25 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %18) #11
  %26 = tail call i32 @integer_onep(ptr noundef %25) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %84, label %28

28:                                               ; preds = %24
  %29 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #11
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 141
  br i1 %32, label %33, label %84

33:                                               ; preds = %28
  %34 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #11
  %35 = getelementptr inbounds %struct.tree_ssa_name, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !29
  %37 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %36) #11, !range !17
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %69, label %39

39:                                               ; preds = %33, %63
  %40 = phi ptr [ %66, %63 ], [ %36, %33 ]
  %41 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %40) #11, !range !30
  %42 = icmp eq i32 %41, 116
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %40) #11, !range !30
  %45 = icmp eq i32 %44, 113
  br i1 %45, label %46, label %60

46:                                               ; preds = %43, %39
  %47 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %40) #11
  %48 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !29
  %50 = getelementptr inbounds %struct.tree_type, ptr %49, i64 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 1023
  %53 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %40) #11
  %54 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !29
  %56 = getelementptr inbounds %struct.tree_type, ptr %55, i64 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 1023
  %59 = icmp ugt i32 %52, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %46, %43
  %61 = tail call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef %40) #10
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %46, %60
  %64 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %40) #11
  %65 = getelementptr inbounds %struct.tree_ssa_name, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !29
  %67 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %66) #11, !range !17
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %39, !llvm.loop !48

69:                                               ; preds = %60, %63, %33
  %70 = phi ptr [ %36, %33 ], [ %66, %63 ], [ %40, %60 ]
  %71 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %70) #11, !range !17
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %70) #11, !range !30
  %75 = icmp eq i32 %74, 84
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %70) #11
  store ptr %77, ptr %2, align 8, !tbaa !5
  %78 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %70) #11
  br label %82

79:                                               ; preds = %73, %69
  %80 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !5
  store ptr %80, ptr %2, align 8, !tbaa !5
  %81 = tail call fastcc ptr @get_name_for_bit_test(ptr noundef %34) #11
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi ptr [ %81, %79 ], [ %78, %76 ]
  store ptr %83, ptr %1, align 8, !tbaa !5
  br label %148

84:                                               ; preds = %28, %24, %21
  %85 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %18) #11, !range !30
  %86 = icmp eq i32 %85, 89
  br i1 %86, label %87, label %103

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
  store ptr %97, ptr %1, align 8, !tbaa !5
  %98 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !5
  %99 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %18) #11
  %100 = tail call i32 @tree_log2(ptr noundef %99) #10
  %101 = sext i32 %100 to i64
  %102 = tail call ptr @build_int_cst(ptr noundef %98, i64 noundef %101) #10
  store ptr %102, ptr %2, align 8, !tbaa !5
  br label %148

103:                                              ; preds = %92, %87, %84
  %104 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %18) #11, !range !30
  %105 = icmp eq i32 %104, 89
  br i1 %105, label %106, label %148

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
  %119 = load ptr, ptr %118, align 8, !tbaa !29
  %120 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %119) #11, !range !17
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %132, label %122

122:                                              ; preds = %116
  %123 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %119) #11, !range !30
  %124 = icmp eq i32 %123, 83
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %119) #11
  %127 = tail call i32 @integer_onep(ptr noundef %126) #10
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %125
  %130 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %18) #11
  store ptr %130, ptr %1, align 8, !tbaa !5
  %131 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %119) #11
  store ptr %131, ptr %2, align 8, !tbaa !5
  br label %148

132:                                              ; preds = %125, %122, %116
  %133 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %18) #11
  %134 = getelementptr inbounds %struct.tree_ssa_name, ptr %133, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !29
  %136 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %135) #11, !range !17
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %132
  %139 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %135) #11, !range !30
  %140 = icmp eq i32 %139, 83
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %135) #11
  %143 = tail call i32 @integer_onep(ptr noundef %142) #10
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %141
  %146 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #11
  store ptr %146, ptr %1, align 8, !tbaa !5
  %147 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %135) #11
  store ptr %147, ptr %2, align 8, !tbaa !5
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
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #11, !range !17
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

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
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #11
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @combine_comparisons(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !14
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #11, !range !30
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #11, !range !14
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

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
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #11
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #11
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_name_for_bit_test(ptr noundef %0) unnamed_addr #1 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = tail call fastcc zeroext i8 @has_single_use(ptr noundef nonnull %0) #11
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !29
  %11 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %10) #11, !range !17
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %8
  %14 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %10) #11, !range !30
  %15 = icmp eq i32 %14, 116
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %10) #11, !range !30
  %18 = icmp eq i32 %17, 113
  br i1 %18, label %19, label %34

19:                                               ; preds = %16, %13
  %20 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !29
  %22 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1023
  %25 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %10) #11
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !29
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
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !14
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.2) #10
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #0 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !29
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !29
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #11, !range !17
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #11
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !14
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #11
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !49
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #10
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !14
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #11
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #0 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !31
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_single_use(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = icmp eq ptr %2, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !29
  %13 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %12) #11, !range !17
  %14 = xor i8 %13, 1
  br label %20

15:                                               ; preds = %6
  %16 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !31
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
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !14
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
define internal fastcc noundef zeroext i8 @recognize_bits_test(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 {
  %4 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #11, !range !30
  %5 = icmp eq i32 %4, 102
  br i1 %5, label %6, label %28

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #11
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 141
  br i1 %10, label %11, label %28

11:                                               ; preds = %6
  %12 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #11
  %13 = tail call i32 @integer_zerop(ptr noundef %12) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #11
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !29
  %19 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %18) #11, !range !17
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %18) #11, !range !30
  %23 = icmp eq i32 %22, 89
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %18) #11
  %26 = tail call fastcc ptr @get_name_for_bit_test(ptr noundef %25) #11
  store ptr %26, ptr %1, align 8, !tbaa !5
  %27 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %18) #11
  store ptr %27, ptr %2, align 8, !tbaa !5
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 8}
!10 = !{!"function", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !6, i64 128, !11, i64 136, !11, i64 137, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139}
!11 = !{!"int", !7, i64 0}
!12 = !{!13, !11, i64 24}
!13 = !{!"control_flow_graph", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !6, i64 40, !11, i64 48, !7, i64 52, !7, i64 60, !11, i64 68, !11, i64 72}
!14 = !{i32 0, i32 256}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{i8 0, i8 2}
!18 = !{!19, !6, i64 8}
!19 = !{!"basic_block_def", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 48, !6, i64 56, !7, i64 64, !20, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96}
!20 = !{!"long", !7, i64 0}
!21 = !{!22, !11, i64 48}
!22 = !{!"edge_def", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 24, !6, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !20, i64 56}
!23 = !{!22, !6, i64 8}
!24 = !{!19, !6, i64 0}
!25 = !{!22, !6, i64 0}
!26 = !{!22, !11, i64 44}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = !{!7, !7, i64 0}
!30 = !{i32 0, i32 65536}
!31 = !{!11, !11, i64 0}
!32 = !{!33, !11, i64 0}
!33 = !{!"VEC_edge_base", !11, i64 0, !11, i64 4, !7, i64 8}
!34 = !{!35, !6, i64 0}
!35 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16}
!36 = !{!37, !6, i64 0}
!37 = !{!"gimple_seq_node_d", !6, i64 0, !6, i64 8, !6, i64 16}
!38 = !{!39, !6, i64 24}
!39 = !{!"ssa_use_operand_d", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 24}
!40 = !{!37, !6, i64 16}
!41 = !{!35, !6, i64 8}
!42 = !{!35, !6, i64 16}
!43 = !{!19, !11, i64 96}
!44 = !{!45, !6, i64 0}
!45 = !{!"gimple_bb_info", !6, i64 0, !6, i64 8}
!46 = !{!47, !6, i64 0}
!47 = !{!"gimple_seq_d", !6, i64 0, !6, i64 8, !6, i64 16}
!48 = distinct !{!48, !16}
!49 = !{!20, !20, i64 0}
!50 = !{!39, !6, i64 8}
